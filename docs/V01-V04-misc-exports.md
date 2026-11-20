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

## V04 — `DuerGuardContentProvider` 写操作无权限保护

| 项 | 值 |
|----|----|
| 严重性 | 🟡 中 |
| 应用 | `com.baidu.duerguard` (UID 1000) |
| 组件 | `com.baidu.duerguard.DuerGuardContentProvider` |
| authorities | `com.baidu.duerguard` |
| exported | true |
| **readPermission** | `com.baidu.duerguard.read`（`signatureOrSystem`）|
| **writePermission** | **未声明 —— 写操作无任何保护** |

### 清单原文

```xml
<provider android:name="com.baidu.duerguard.DuerGuardContentProvider"
          android:readPermission="com.baidu.duerguard.read"
          android:enabled="true"
          android:exported="true"
          android:authorities="com.baidu.duerguard" />
```

注意：**只有 `readPermission`，没有 `writePermission`，也没有 `android:permission`。**

`DuerGuard` 是百度小度的设备守护模块。该 Provider 暴露设备扫描/校验类接口
（如 `scanDeviceCrack`），调用方可传入路径等参数。

### 关键机制：读写权限是分离的

`ContentProvider` 的权限模型是**按操作类型分别校验**的：

| 操作 | 受哪个属性约束 | 本组件实际情况 |
|------|---------------|--------------|
| `query()` | `readPermission` | ✅ 受 `signatureOrSystem` 保护 |
| `insert()` / `update()` / `delete()` | `writePermission` | ❌ **无保护** |
| `call()` | `writePermission` | ❌ **无保护**（`call()` 走写权限） |
| `openFile()` / `openAssetFile()` | `readPermission` 或 `writePermission`（取决于 mode） | ⚠️ 部分无保护 |

因此：**第三方应用无法读取数据，但可以调用写入 / call 类接口。**
对于 `scanDeviceCrack` 这类通过 `call()` 暴露的方法，等于完全没有保护。

### 影响

1. `call("scanDeviceCrack", ...)` 可被任意应用触发，以 **system UID** 执行设备校验逻辑
2. 传入路径参数存在目录遍历 / 信息探测面
3. `insert` / `update` / `delete` 可修改 DuerGuard 的内部数据库状态，
   可能影响守护策略（如关闭隐私监控记录）

**修复**：补上 `android:writePermission`，与 `readPermission` 保持同级：

```xml
<provider android:name="com.baidu.duerguard.DuerGuardContentProvider"
          android:readPermission="com.baidu.duerguard.read"
          android:writePermission="com.baidu.duerguard.write"
          android:exported="true"
          android:authorities="com.baidu.duerguard" />
```

并新增：

```xml
<permission android:name="com.baidu.duerguard.write"
            android:protectionLevel="signatureOrSystem" />
```

---

> 📌 **v1.1 修订说明（两次方向的纠正记录）**
>
> 本条目的表述在 v1.1 修订中经过两次反复，最终结论与 v1.0 一致，
> 但**理由已修正**。记录过程以免后续再次误改：
>
> 1. **初版（v1.0）**：「无权限保护」。结论正确，但表述不精确——
>    实际上读操作是有保护的，只有写操作无保护。
> 2. **第一次误改**：发现 `audit.json` 中 `read` 字段为
>    `com.baidu.duerguard.read`，且该权限声明为 `signatureOrSystem`，
>    于是误判为「读写都受保护，V04 应排除」。
>    **错误原因：把 `readPermission` 误当作覆盖全部操作。**
> 3. **第二次误改**：发现该组件不在 `prov_unsafe.json` 中，于是认定
>    「审计者已人工复核、判定为安全」，再次错误地维持了排除结论。
>    **错误原因：误解了 `prov_unsafe.json` 的筛选口径**——
>    该文件收录的是「`permission` / `read` / `write` 三字段**全为空**」的
>    Provider（已脚本验证：52 条全部满足此条件）。
>    `DuerGuardContentProvider` 因有 `readPermission` 而不满足该口径，
>    所以**不在**该文件中，这与「它是否安全」无关。
> 4. **最终结论**：回到清单原文，确认 `writePermission` 缺失，
>    V04 成立，理由改为「写操作无保护」。
>
> **教训**：判断 Provider 是否受保护，不能只看有没有权限字段，
> 必须分别核对 `readPermission` 与 `writePermission`；
> 也不能用「不在 prov_unsafe.json 中」反推「安全」，
> 那只是另一个统计口径。
