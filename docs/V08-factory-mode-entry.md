# V08 — `ValidationToolsBroadcastReceiver` 隐藏工厂模式入口

| 项 | 值 |
|----|----|
| **严重性** | 🟡 中 |
| **CWE** | CWE-862 |
| **应用** | `com.sprd.validationtools` |
| **UID** | 1000 |
| **组件** | `com.sprd.validationtools.ValidationToolsBroadcastReceiver` |
| **exported** | true / permission 无 |

## 漏洞代码

```java
Uri data = intent.getData();
if (data == null) return;
String host = data.getHost();

if ("83789".equals(host)) {                          // ← 任意应用可触发
    intent3.setClass(context, ValidationToolsMainActivity.class);
    context.startActivity(intent3);
    return;
}
if (Const.isBoardISharkL210c10()) {
    if ("654987".equals(host))      { /* 主界面 */ }
    else if ("833".equals(host))    { /* ListItemTestActivity */ }
}
```

## 隐藏码表

| host | 目标 | 条件 |
|------|------|------|
| `83789` | ValidationToolsMainActivity（工厂测试主界面）| 无条件 |
| `654987` | ValidationToolsMainActivity | 仅 iSharkL210c10 |
| `833` | ListItemTestActivity（单项测试）| 仅 iSharkL210c10 |

「83789」在 T9 键盘上对应「TEST」，与 EngineerMode 的 83781/83782 属同一套隐藏码体系。

## 复现

```bash
adb shell am broadcast -a android.intent.action.MAIN \
  -n com.sprd.validationtools/com.sprd.validationtools.ValidationToolsBroadcastReceiver \
  -d "https://83789/"
```

## 影响

工厂测试界面包含系统测试（需工位校验）、单项测试（摄像头/音频/传感器等）、
Touch test、TP firmware version 等。虽然多数子项有 `stationCheck` 保护，
但界面暴露本身即可辅助社工，且部分单项测试无二次校验。

## 修复

```xml
<receiver android:name="...ValidationToolsBroadcastReceiver"
          android:exported="false" />
```
