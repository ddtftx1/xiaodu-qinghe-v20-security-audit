# V19 — `QmmiBroadcastReceiver` 引用未声明的自定义权限（偶然有效）

| 项 | 值 |
|----|----|
| **严重性** | ⚪ 低 |
| **CWE** | CWE-285 Improper Authorization（保护机制本身无效，偶然生效） |
| **受影响应用** | `com.sprd.validationtools` (MMITools.apk, /system/app) |
| **UID** | **1000 (android.uid.system)** |
| **组件** | `com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver` |
| **exported** | `true` |
| **permission** | `com.example.receiver.receivebroadcast`（**全设备未声明**） |
| **实机验证** | 静态确认 |

---

## 1. 摘要

`QmmiBroadcastReceiver` 是一个**导出**的 `BroadcastReceiver`，它的
`android:permission` 填了一个**全设备没有任何 APK 声明过的权限名**：

```xml
<receiver android:name="com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver"
          android:permission="com.example.receiver.receivebroadcast"
          android:exported="true" />
```

`com.example.receiver.receivebroadcast` 是典型的「示例代码占位符命名」
（`com.example.*` 是 Android 文档里的保留示例命名空间），说明这段代码
是从某处**复制而来、权限名从未被实际配置**。它引用了一个**不存在的权限**。

### 1.1 为什么「偶然有效」

Android 对「引用了未声明权限」的处理：

- 权限未被任何应用 `declare`，意味着**没有任何应用能被授予该权限**
- 因此任何第三方应用 `sendBroadcast` 时，权限校验**必然失败** → 广播被拒
- 结果：这个 receiver **事实上不可被外部触发**，保护「有效」——
  但这是**偶然的**，不是设计意图

### 1.2 为什么仍要单独列条

- 它引用的权限**一旦将来被任何 APK 声明为 `normal` 级**，保护**立即失效**，
  任意应用即可触发（`Qmmi` 是产测 MMI 通道，能写 Settings / NVRAM / 读条码）。
- 它与 **V07**（`QmmiBroadcastReceiver2`，导出且**无**权限保护，已实测可写
  Settings/NVRAM）是**同一模块的姊妹组件**：`Receiver2` 是真的漏洞，
  `Receiver1` 是靠「占位符权限名」侥幸没被触发。两者应**一并整改**。
- 定级「低」：当前不可利用，风险是**未来的**（依赖他人未来声明同名权限）。

---

## 2. 证据

### 2.1 清单原文（jadx 反编译自 MMITools.apk）

```xml
<!-- MMITools.apk AndroidManifest.xml -->
<receiver android:name="com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver"
          android:permission="com.example.receiver.receivebroadcast"
          android:exported="true" />
<!-- 对照：同包的 Receiver2（V07，无 permission） -->
<receiver android:name="com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver2"
          android:exported="true" />   <!-- 无 permission → 真漏洞 -->
```

### 2.2 全固件扫描：无 APK 声明 `com.example.receiver.receivebroadcast`

对 `/system`、`/system_ext`、`/vendor`、`/product` 全部 130 个 APK 的清单做
权限声明扫描（`analysis/audit.json` 的 `perms` 字段），**未找到任何 APK 声明
`com.example.receiver.receivebroadcast`**。`com.example.*` 命名空间本身是文档
占位符，厂商代码中不应出现。

### 2.3 组件能力（为什么「一旦可触发」危害不低）

`QmmiBroadcastReceiver` 的 `onReceive` 能（jadx 反编译自 classes.dex）：

- 读 / 写**条码**（`witeBarCodeToProuctNv2`）
- 写 **modem NVRAM**（`NvramAgentHelper`）
- 写 `Settings`（`Settings.System`）
- 解析 `host` / `station` / `cmdOrder` 等 extra，分发到产测逻辑

即「写 NVRAM / Settings」的能力与 V07 同源。V07 已实测可被任意应用触发；
V19 只是**当前**被占位符权限名挡着。

---

## 3. 影响

1. **当前不可利用**（无应用可持有该权限）→ 实机无法复现外部触发。
2. **未来风险**：任何 APK（包括第三方）只要 `declare` 一个同名 `normal` 权限，
   即可触发该 receiver，获得 system UID 的 NVRAM/Settings 写能力。
3. **命名治理问题**：`com.example.*` 出现在产线代码，说明该模块质量较低，
   同类复制粘贴缺陷可能在产测模块其他位置存在（建议全量复查）。

---

## 4. 复现（静态验证，不触发 receiver）

```bash
# 1. 确认该 receiver 引用了未声明权限
aapt dump xmltree /system/app/MMITools/MMITools.apk AndroidManifest.xml \
  | grep -A3 'QmmiBroadcastReceiver'

# 2. 全固件确认无 APK 声明 com.example.receiver.receivebroadcast
#    （本仓库 analysis/audit.json 的 perms 字段已扫描，无命中）
python3 - <<'PY'
import json, os
REPO = os.getcwd()          # 在仓库根执行
d = json.load(open(os.path.join(REPO, 'analysis/audit.json'), encoding='utf-8'))
for x in d:
    for p in x.get('perms', []) or []:
        if 'com.example' in p:
            print(x['pkg'], p)
print('com.example 权限声明扫描完成')
PY
```

> **回滚**：本条为静态确认，未做任何实机写入，无回滚项。

---

## 5. 修复建议

- 将 `android:permission` 改为**显式声明的 `signatureOrSystem` 权限**
  （与 `V17` 的 `SAVE_PHASECHECK`、`DuerGuard` 系列同一治理方案），
  并去掉 `com.example.*` 占位符命名。
- 与 V07（`QmmiBroadcastReceiver2`）**一并整改**：给 `Receiver2` 补上
  签名权限，或将其 `exported` 置为 `false`（若仅产测内部使用）。

---

## 6. 实机验证状态

静态确认。证据链：清单原文（2.1）+ 全固件权限声明扫描（2.2，无命中）+
组件能力分析（2.3）。未做实机广播触发（且外部本就无应用能持有该权限，
触发必然被拒）。与 V07 的差异见 §1.1、§2.1。
