# 全量重审报告（v1.3）

> 目标：独立于旧 `audit.json`，从 130 个 APK 的原始清单重新解析，核对
> **19 条已有漏洞是否有误报**，以及**是否有遗漏的漏洞**。
>
> 数据源：`_work/rea_scan.py` → `analysis/rea_components.tsv`（3203 组件）
>
> 复核身份：**UID 10159 普通应用，无 adb、无 root**（同旧审计）。

---

## 0. 结论摘要

| 项目 | 结果 |
|---|---|
| 旧基线（audit.json） | 3204 组件 / 2262 导出 / 21 system UID 包 |
| **新基线（本次重解析）** | **3203 组件 / 2261 导出 / 20 system UID 包** |
| 差异性质 | **旧基线有 1 处虚构、1 处类型错标（涉及 49 条）** |
| 19 条的成立性 | **18 条成立，1 条已是修正态（V15）；无一条需撤销** |
| 漏报 | **新增 4 条实质性发现（V22–V25）**，另有 3 项待定 |

---

## 1. 旧基线的三个错误（必须修正）

### 1.1 `com.android.wallpaperbackup` 是**虚构条目**

```
audit.json:  pkg=com.android.wallpaperbackup
             apk=/system/app/WallpaperBackup/WallpaperBackup.apk
             shared=android.uid.system
             comps=0
```

实测：

```bash
$ ls /system/app/WallpaperBackup/WallpaperBackup.apk
（不存在）
$ pm path com.android.wallpaperbackup
（无输出）
```

**判定：该 APK 在本机上不存在。** 旧审计把它计入「21 个 system UID 包」，
导致该数字偏高 1。正确值是 **20**。

影响：「21」被 README / HANDOFF / CHANGELOG 多次引用，需全部改为 20。

### 1.2 49 个 `activity-alias` 被错标为 `activity`

旧 `audit.json` 把 49 个 `<activity-alias>` 记录成 `type=activity`。
这不是无关紧要的分类问题：

| 属性 | `activity` | `activity-alias` |
|---|---|---|
| `exported` | 决定自身是否可外部启动 | **独立于 targetActivity**，需单独声明 |
| `permission` | 保护自身 | **保护的是 alias，不是 target** |
| `targetActivity` | 无 | 实际被拉起的组件 |
| 外部可达性 | 看自身 exported | **看 alias 的 exported + permission** |

这导致旧审计对 49 个组件的可达性判断可能整体偏差。本次已按
`activity-alias` 重新分类（`rea_components.tsv` 的 `targetActivity` 列）。

其中真正有价值的发现见 §2.3。

### 1.3 `com.readboy.aicourseopen` 的空 name

已在 `analysis/README.md` §2.2 说明：解析残缺，非真缺陷。本次重解析确认
该包 6 个 provider，`com.readboy.personal.personalProvider` 的 name 仍为空
（`authorities` 有值），**不影响任何结论**。

---

## 2. 漏报（新增发现）

### V22 — `ContactsDumpActivity` + `DumpFileProvider`：联系人数据库可被导出

| 项 | 值 |
|---|---|
| **严重性** | 🟠 高 |
| **包** | `com.android.providers.contacts`（`sharedUserId=android.uid.shared`） |
| **组件 1** | `com.android.providers.contacts.debug.ContactsDumpActivity`<br>`activity` · `exported=true` · **无 permission** |
| **组件 2** | `com.android.providers.contacts.debug.DumpFileProvider`<br>`provider` · `exported=true` · **无 permission** |
| **来源** | `analysis/rea_components.tsv` |
| **实机验证** | ❌ 未验证（见 §5） |
| **AOSP 语义** | `ContactsDumpActivity` 把联系人库导出到 `/sdcard/contacts_debug/`；`DumpFileProvider` 共享该目录。AOSP 在用户版应通过 `debuggable`/`config` 关闭这两个组件的导出 |

**为什么旧审计漏了**：旧口径只统计「permission/read/write 三字段全空」的
**provider**；`ContactsDumpActivity` 是 **activity**，不在统计范围内；
`DumpFileProvider` 虽在 52 条里，却没被单独立条。

**修复**：`android:exported="false"`，或加 `signature` 级权限。

---

### V23 — `Settings$WifiAPITestActivity` / `WifiStatusTest`：WiFi 测试接口开放

| 项 | 值 |
|---|---|
| **严重性** | 🟡 中 |
| **包** | `com.android.settings`（`sharedUserId=android.uid.system`） |
| **组件 1** | `com.android.settings.Settings$WifiAPITestActivity`<br>`exported=true` · 无 permission · category=`DEVELOPMENT_PREFERENCE` |
| **组件 2** | `com.android.settings.wifi.WifiStatusTest`<br>`exported=true` · 无 permission · category=`DEVELOPMENT_PREFERENCE` |
| **来源** | `analysis/rea_probe2_raw.txt:16-37`（manifest 原文） |
| **实机验证** | ❌ 未验证 |
| **AOSP 语义** | `WifiAPITest` 直接调 `WifiManager` 的 `setWifiEnabled`/`addNetwork`/`saveConfiguration`；`WifiStatusTest` 可读 RSSI/链路速率等详细状态。AOSP 中本就导出（供调试），正式产品应关闭 |

**关键**：这两个 Activity 跑在 **system UID** 上下文，绕过普通应用没有
`CHANGE_WIFI_STATE` 的限制。这是典型的**权限借用**面，与 V07 同类。

**为什么旧审计漏了**：`com.android.settings` 有 265 个零权限导出组件，
旧审计整体当作「AOSP 组件，影响面大但不单列」。但这两个是**有明确功能语义的
调试接口**，不该和普通 Settings 页面混为一谈。

**修复**：`exported="false"`（AOSP 后续版本已这么做）。

---

### V24 — `SystemUI.DemoMode` alias → `TunerActivity`：SystemUI Tuner 可从外部拉起

| 项 | 值 |
|---|---|
| **严重性** | 🟡 中 |
| **包** | `com.android.systemui`（`sharedUserId=android.uid.systemui`） |
| **组件** | `com.android.systemui.DemoMode`<br>**`activity-alias`** · `exported=true` · **无 permission** |
| **targetActivity** | `com.android.systemui.tuner.TunerActivity` |
| **process** | `:tuner`（独立进程） |
| **来源** | `analysis/rea_probe2_raw.txt:129` + manifest 片段 |
| **实机验证** | ❌ 未验证 |
| **AOSP 语义** | `TunerActivity` 是 SystemUI Tuner，可改状态栏图标、快捷设置瓷砖、动画倍速、演示模式。AOSP 通过 `DemoMode` alias 暴露它（供 Settings 调用），但**没有加权限**，任何第三方应用都能直接拉起 |

**影响**：
1. 可直接进 Tuner 改 SystemUI 行为（状态栏、动画倍速）
2. `:tuner` 进程是 system UID，Tuner 内操作以 system 身份执行
3. 不构成提权，但是**用户可见的 UI 篡改** + 系统状态被改

**为什么旧审计漏了**：正是 §1.2 的 alias 错标 —— 旧数据记成 `type=activity`，
且没有 `targetActivity` 字段，看不出目标是 Tuner。

---

### V25 — `PackageInstaller.UninstallerActivity` 导出（无权限）

| 项 | 值 |
|---|---|
| **严重性** | ⚪ 低 |
| **包** | `com.android.packageinstaller` |
| **组件** | `com.android.packageinstaller.UninstallerActivity`<br>`exported=true` · 无 permission |
| **来源** | `analysis/rea_probe2_raw.txt:96-103` |
| **实机验证** | ❌ 未验证 |

**语义**：任意应用可拉起卸载确认界面。单独看只是「弹个卸载对话框」，
但配合 **V03（OTA Provider 静默卸载）** 可形成社工链。

**为什么漏**：`packageinstaller` 不在 9 个重点包内，未纳入人工复核。

**说明**：证据强度弱于 V22–V24（「弹卸载框」本身危害低）。定级「低」，
或并入 V03 作为补充面。

---

## 3. 待定（不单列，但需记录）

### 3.1 `com.android.managedprovisioning` 的 `PreBootListener`

```xml
<receiver android:name="...ota.PreBootListener" android:exported="true">
  <intent-filter><action android:name="android.intent.action.PRE_BOOT_COMPLETED"/></intent-filter>
</receiver>
```

`PRE_BOOT_COMPLETED` 是 **protected broadcast**，第三方应用发不出。
`exported=true` 只影响显式 `-n` 投递，但该 receiver 无可被利用的自定义逻辑。
**判定：不构成漏洞，仅记录。**

### 3.2 `com.android.server.telecom.AppUninstallBroadcastReceiver`

```xml
<receiver android:name="...components.AppUninstallBroadcastReceiver"
          android:exported="true" android:process="system">
  <intent-filter>
    <action android:name="android.intent.action.PACKAGE_FULLY_REMOVED"/>
    <data android:scheme="package"/>
  </intent-filter>
</receiver>
```

`PACKAGE_FULLY_REMOVED` 也是**受保护广播**。**不构成漏洞。**

### 3.3 `com.baidu.launcher` 的 21 个零权限导出组件

旧 README 记录「5 个无保护导出 Provider」。本次重解析确认该包
（UID 10077，**非** system UID）共有 **21 个**「导出+零权限」的
provider/receiver，比旧记录多。

**为什么不单列**：非 system UID，危害限于该应用自身数据，不构成跨应用提权。
但**旧记录的「5」需修正为 21**（口径：所有导出类型，不只 provider）。

---

## 4. 19 条已有漏洞的成立性复核

| ID | 复核依据 | 结论 |
|---|---|---|
| V01 | manifest 确认 `instructions.FactoryReset` **exported=true, 无 permission**，且带 action `com.sprocomm.mmi.FactoryReset` | ✅ 成立（且**可达性比原描述更宽**：隐式 action 也能拉起） |
| V02 | manifest 确认 `PingActivity` **exported=false** | ✅ 成立（需 UI 进入） |
| V03 | manifest 确认 `ThirdAppContentProvider` **exported=true, 三字段全空** | ✅ 成立 |
| V04 | manifest 确认 `DuerGuardContentProvider` **只有 readPermission，无 writePermission** | ✅ 成立 |
| V05 | 代码静态 | ✅ 成立 |
| V06 | `AudioStationUpdateActivity` exported | ✅ 成立 |
| V07 | `QmmiBroadcastReceiver2` exported 无权限 | ✅ 成立 |
| V08 | manifest 确认 `exported=true` + **`intent-filter android:priority="1000"`** + **`directBootAware="true"`** | ✅ 成立（**比原描述更严重**，见 §4.1） |
| V10 | `ModemAssertReceiver` | ✅ 成立 |
| V11/V12 | `PhoneBootReceiver` | ✅ 成立 |
| V13 | manifest 确认 `SrmiManager` **exported=true，无 permission，无 protectionLevel** | ✅ 成立 |
| V14 | manifest 确认 `SystemLogRequestReceiver` **是该包唯一的零权限导出组件** | ✅ 成立 |
| V15 | 代码 + RSA 链（上轮已修正「无调用者」） | ✅ 成立（形态完美、入口被签名锁死） |
| V16 | `CountryCodeSettings` exported | ✅ 成立 |
| V17 | `SAVE_PHASECHECK` 缺 protectionLevel | ✅ 成立 |
| V18 | manifest 确认 `UniSilentRebootReceiver` **exported=false**，Service 有 `BIND_JOB_SERVICE` | ✅ 成立（调度面，非外部可达） |
| V19 | `QmmiBroadcastReceiver` 引用未声明权限 | ✅ 成立 |
| V20 | SELinux 模板（治理项） | ✅ 保留为治理项 |

**没有一条需要撤销。** 两处需加强表述：

### 4.1 V08 应补充「priority=1000 + directBootAware」

```xml
<receiver android:name="com.sprd.validationtools.ValidationToolsBroadcastReceiver"
          android:exported="true" android:directBootAware="true">
  <intent-filter android:priority="1000">
    <action android:name="android.intent.action.BOOT_COMPLETED"/>
```

旧文档只说「导出」，没提 **priority=1000（最高优先级）** 与
**directBootAware=true**。这两点让它能在**开机锁屏前**（Direct Boot）
抢在其他接收者之前执行 —— 属于**加强**该漏洞，不是削弱。

### 4.2 V01 的 intent-filter action 是 `com.sprocomm.mmi.FactoryReset`

旧文档只写组件名，未提该 Activity 带一个**自定义 action 的 intent-filter**。
这意味着除显式 `-n` 外，还能通过**隐式 action 匹配**拉起，可达性更宽。

---

## 5. 复核方法与局限（必须说明）

### 5.1 本次能做与不能做

| 能力 | 状态 |
|---|---|
| 从 APK 原始清单重解析 3203 个组件 | ✅ 已完成 |
| 逐个核对 exported / permission / read / write | ✅ 已完成 |
| 区分 activity 与 activity-alias（含 targetActivity） | ✅ 已完成（旧数据缺此项） |
| `<permission>` 声明及 protectionLevel | ✅ 93 条（`rea_perm_decls.tsv`） |
| `<uses-permission>` | ✅ 2330 条（`rea_uses_perm.tsv`） |
| **实机验证组件能否被拉起** | ❌ **做不到** |
| **实机验证权限拒绝日志** | ❌ **做不到** |

### 5.2 为什么做不到实机验证

三种尝试全部失败：

```
$ am start -W -n com.android.settings/...WifiAPITestActivity
Starting: Intent { ... }        ← 只回显，没有 Status
$ dumpsys activity activities
（无输出）
$ logcat -d
（无输出）
```

原因：**UID 10159 下 `dumpsys activity` 与 `logcat` 被
`android.permission.DUMP` / `READ_LOGS` 拒绝**（SELinux 域
`untrusted_app_27` 也不允许）。本轮环境**没有 adb**：
应用崩溃后 MCP `termux` 包失效，改用 `super_admin:terminal` 的 Ubuntu 环境，
该环境无 adb 二进制、无 Android 系统服务访问权限。

**因此 V22–V25 全部是「静态确认」**，与 V16/V17 同级别。
不得写成「已实机验证」。

### 5.3 复现命令

```bash
cd /storage/emulated/0/漏洞

# 1) 重解析全固件清单（需要 Termux 的 aapt）
python3 _work/rea_scan.py

# 2) 单项 manifest 核对（termux 内）
aapt dump xmltree /system/priv-app/ContactsProvider/ContactsProvider.apk \
  AndroidManifest.xml | grep -A8 ContactsDumpActivity
```

---

## 6. 需要联动修改的地方

| 位置 | 现在 | 应改为 |
|---|---|---|
| `README.md` 头部 | 「21 个 system UID 应用」 | **20 个** |
| `README.md` 索引表 | 19 条 | **23 条**（V01–V20 除 V09 + V22–V25；V21 是文档编号不是漏洞） |
| `HANDOFF.md` §2 | 「21 个 system UID 包」 | **20 个** |
| `HANDOFF.md` §8.2 | 「`com.baidu.launcher` 有 5 个无保护导出 Provider」 | **21 个**（口径：所有导出类型） |
| `analysis/README.md` §2.1 | 11 条 `exported="def"` | 追加：49 个 `activity-alias` 需按 alias 口径重算 |
| 新增 `docs/V22`–`docs/V25` | — | 每条的 manifest 原文 + 语义 + 修复 |
| `poc/poc.sh` | 覆盖 V01–V20 | 追加 V22–V25 的只读断言 |