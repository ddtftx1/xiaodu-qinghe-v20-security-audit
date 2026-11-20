# V05 — `EMStartReceiver` 隐藏系统属性写后门

| 项 | 值 |
|----|----|
| **严重性** | 🟡 中 |
| **CWE** | CWE-862 / CWE-15 External Control of System Setting |
| **应用** | `com.sprd.engineermode` |
| **UID** | 1000 |
| **组件** | `com.sprd.engineermode.EMStartReceiver` |
| **exported** | true / permission 无 |

## 漏洞代码

```java
public void onReceive(Context context, Intent intent) {
    Uri uri = intent.getData();
    if (uri == null) return;
    String host = uri.getHost();

    if ("83781".equals(host)) { startActivity(EngineerModeActivity); return; }
    if ("83782".equals(host)) { startActivity(EngineerModeActivity_2); return; }
    if ("1688".equals(host))  { startActivity(SensorsIDActivity); return; }
    if ("33284".equals(host) && Const.isBoardISharkL210c10()) { ... }
    if ("0000".equals(host))  { /* 仅 ctcc 产品 -> PhoneInfoActivity */ }

    // ↓↓↓ 危险: 无鉴权的系统属性写入 ↓↓↓
    if ("3682".equals(host)) {
        SystemPropertiesProxy.set(
            "persist.sys.local.update.support",
            SystemPropertiesProxy.get("persist.sys.local.update.support", "0")
                .equalsIgnoreCase("1") ? "0" : "1");
        return;
    }
    ...
}
```

## 隐藏码表

| host | 行为 | 说明 |
|------|------|------|
| `83781` | EngineerModeActivity | 「TEST」T9 |
| `83782` | EngineerModeActivity_2 | |
| `1688` | SensorsIDActivity | |
| `33284` | EngineerModeActivity | 「ENG」T9，仅 iSharkL210c10 |
| `0000` | PhoneInfoActivity | 仅 ctpro 产品名含 ctcc |
| `3682` | **翻转 `persist.sys.local.update.support`** | **「ENG」T9 变体** |

## 影响

- 任意应用可拉起工程模式各页面
- `3682` 是**无鉴权的系统属性写入通道**（虽然键名硬编码）
- `persist.sys.local.update.support` 若被安全更新流程信任，翻转后可能改变升级行为

## 复现

```bash
# 读取当前值
adb shell getprop persist.sys.local.update.support

# 翻转（谨慎，仅测试机）
adb shell am broadcast -a android.intent.action.MAIN \
  -n com.sprd.engineermode/com.sprd.engineermode.EMStartReceiver \
  -d "https://3682/"
```

## 修复

```xml
<receiver android:name=".EMStartReceiver" android:exported="false" />
```
