# V01–V04 — 其他导出组件风险

## V01 — `FactoryReset` 可被任意拉起

| 项 | 值 |
|----|----|
| 严重性 | 🟡 中 |
| 应用 | `com.sprd.validationtools` (UID 1000) |
| 组件 | `com.sprd.validationtools.FactoryReset` |
| exported | true / permission 无 |

```java
// ValidationToolsMainActivity case 5 (菜单项已被厂商移除, 但 Activity 仍导出)
new AlertDialog.Builder(this)
    .setTitle(R.string.reset)
    .setMessage(R.string.factory_reset_message)
    .setNegativeButton(android.R.string.ok, (d, w) -> {
        Intent i = new Intent("android.intent.action.FACTORY_RESET");
        i.setPackage("android");
        i.putExtra("android.intent.extra.REASON", "MasterClearConfirm");
        sendBroadcast(i);
    }).show();
```

**危害**：任意应用拉起恢复出厂界面；一次误点即丢失全部数据。

**复现**（不要真的点确认）：
```bash
adb shell am start -n com.sprd.validationtools/com.sprd.validationtools.FactoryReset
```

**修复**：`android:exported="false"`

---

## V02 — `PingActivity` system UID 执行 ping

| 项 | 值 |
|----|----|
| 严重性 | 🟡 中 |
| 应用 | `com.sprd.engineermode` (UID 1000) |
| 组件 | `...designfortest.pingpackages.PingActivity` |
| exported | **false**（未导出，需从 UI 进入）|

```java
// EDIT: ping_addr / ping_size / ping_count
// START 后调用 system UID 下的 ping 命令
```

**价值**：演示 system UID 下的命令执行面（参数来自 UI 输入框）。
因未导出，外部应用无法直接调用，需通过 EngineerMode → Design For Test 进入。

---

## V03 — `ThirdAppContentProvider` 无权限，可静默卸载应用

| 项 | 值 |
|----|----|
| 严重性 | 🟡 中 |
| 应用 | `com.baidu.duer.ota` (UID 1000) |
| 组件 | `com.baidu.duer.ota.ThirdAppContentProvider` |
| authorities | `com.baidu.duershow.thirdApp.provider` |
| exported | true / permission 无 |

该 Provider 用于 OTA 场景下的第三方应用管理，支持卸载请求。
任意应用可通过它触发对其它应用的卸载（system UID 执行）。

**修复**：加 signature 级权限。

---

## V04 — `DuerGuardContentProvider` 无权限 Binder

| 项 | 值 |
|----|----|
| 严重性 | 🟡 中 |
| 应用 | `com.baidu.duerguard` (UID 1000) |
| 组件 | `com.baidu.duerguard.DuerGuardContentProvider` |
| authorities | `com.baidu.duerguard` |
| exported | true / permission 无 |

`DuerGuard` 是百度小度的设备守护模块。其 Provider 无权限保护，
暴露设备扫描/校验类接口（如 `scanDeviceCrack`）。
调用方可传入路径等参数，存在信息探测面。

**修复**：加 signature 级权限。
