# Settings.Global 写入入口全量复核（v1.2）

> 本文对应 `xiaodu-qinghe-v20-security-audit-该怎么做.md` 的 §5 与附录 E6。
> 所有数据由仓库内脚本生成，可复跑（在**仓库根**执行）：
>
> ```bash
> python3 _work/sinks.py               # engineermode → em_settings_sinks.tsv / em_put_global.md
> python3 _work/fw_scan.py             # 全固件 APK dex 层 → settings_sinks_firmware.tsv
> python3 _work/sink_candidates.py     # 交叉过滤 → settings_sink_candidates.tsv
> ```
>
> `sinks.py` 默认只扫 `_work/em_keyfiles` 与 `_work/ds_keyfiles`（证据链上的关键 java 文件）。
> 要扫全量反编译产物（63MB，不入库），用 `--roots` 指向本地目录：
>
> ```bash
> python3 _work/sinks.py --roots em_keyfiles=/path/to/em_jadx em_full1=/path/to/em_full1
> ```

---

## 0. 结论（先说）

**在 CVE-2024-31317 需要的「键名可控的 `Settings.Global` 写入」这一项上，
本固件确认不存在可用入口。**

复核范围与结论分两层：

| 层 | 范围 | 命中 | 变量键 |
|---|---|---|---|
| engineermode 单包 | `com.sprd.engineermode` 6 个 dex / 6 个 jadx 目录 | `Settings.Global.put*` **17 处** | **0**（6 处 `getSetting(...)` 进一步确认是反射硬编码字段名） |
| `com.baidu.duershow.statistic` 单包 | `classes.dex` | `Settings.Global.put*` **2 处** | **0**（`isRestart` / `duer_statistic_shutdown_reason`，字面量） |
| 两包合计 | — | **19 处** | **0** |
| 全固件 | 130 个 APK 的 dex 层 | 43 个 APK 引用 `Settings$Global;` + `put*` | 收窄到 8 个「uid 1000 + 有无权限导出组件」候选，均需逐包人工复核 |

> 📌 这一条同时**修正 README 的口径**：原文写「engineermode 全部 60 处
> `SystemPropertiesProxy.set` 与 6 处 `Settings.Global.put*`」。实测两处数字都不对：
> `SystemPropertiesProxy.set` **136 处**（engineermode 单包），
> `Settings.Global.put*` **17 处**（engineermode）+ **2 处**（duershow.statistic）= **19 处**。
> 原文的「60/6」既不是实测数，也没有对应的落盘清单，属于无法复核的表述（即附录 E6）。

---

## 1. engineermode 单包：17 处 `Settings.Global.put*` 全清单

由 `_work/sinks.py` 从 jadx 产物统计（`analysis/em_settings_sinks.tsv`）。

| 文件 | 行 | 键名解析 | 键名 |
|---|---|---|---|
| `GcfTestImpl` | 23 | 常量字段 | `message_send_retries` |
| `GcfTestImpl` | 28 | 常量字段 | `message_send_retries` |
| `UsbDebugImpl` | 17 | 字面量 | `development_settings_enabled` |
| `UsbDebugImpl` | 18 | 字面量 | `adb_enabled` |
| `UsbDebugImpl` | 23 | 字面量 | `adb_enabled` |
| `UsbDebugImpl` | 24 | 字面量 | `development_settings_enabled` |
| `AppSettingsPrefActivity` | 59 | 常量字段 | `custom_user_agent_string` |
| `AppSettingsPrefActivity` | 64 | 常量字段 | `user_agent_choice` |
| `AppSettingsPrefActivity` | 68 | 常量字段 | `other_user_agent_string` |
| `DmSwitchImpl` | 21 | 常量字段 | `dm_switch` |
| `UsbActiveImpl` | 17 | 常量字段 | `switch_for_usb_active` |
| `NetModeSelectActivity` | 185/200/215/230/245/260 | 表达式 | `getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)` |

### 1.0 附：`com.baidu.duershow.statistic` 的 2 处（v1.2 补充）

| 文件 | 行 | 键名解析 | 键名 |
|---|---|---|---|
| `CommonInfoData` | 166 | 字面量 | `isRestart` |
| `CommonInfoData` | 169 | 字面量 | `duer_statistic_shutdown_reason` |

这两处用于 OTA 重启统计（`getRebootInfo`），键名硬编码，与 31317 无关。

**12 个可静态定值的键名 + 6 处表达式**（engineermode），且这 6 处表达式已逐个追到底：

```java
// SettingsProxy.java:29   —— Kotlin 对象初始化
PREFERRED_NETWORK_MODE = global.getFieldValue("PREFERRED_NETWORK_MODE");

// SettingsProxy.java:48-52
private final String getFieldValue(String fieldName) throws IllegalAccessException {
    Object obj = Settings.Global.class.getField(fieldName).get(null);  // ← 反射
    if (obj != null) return (String) obj;
    throw new NullPointerException(...);
}
```

即 `"PREFERRED_NETWORK_MODE"` 是**硬编码字符串**，反射取到的也是
`Settings.Global.PREFERRED_NETWORK_MODE` 这个 AOSP 常量的值
（`preferred_network_mode` + 订阅后缀）。**不是外部可控**。

### 1.1 这 17 处的外部可达性

`NetModeSelectActivity` 的宿主 Activity 均已核对：

```
NetworkModeActivity    android:exported="false"    ← 有 intent-filter 但显式不导出
NetModeSelectActivity  仅被 NetworkModeActivity 内部调用
```

`UsbDebugImpl` 是 V-readme 已记录的**死代码**（`UsbDebug` 构造器 0 调用者，
且不在 `assets/modules.json`），这里再次确认：`UsbDebugImpl` 的 4 处
`putInt(adb_enabled / development_settings_enabled)` 全部无外部入口。

**结论：engineermode 内 17 处 `Settings.Global.put*`，键名 100% 硬编码，
且写 `adb_enabled` 的 4 处位于死代码。与 v1.1 的判断方向一致，但数字已修正。**

---

## 2. 全固件：43 个 APK 引用 `Settings$Global`

`_work/fw_scan.py` 在 dex 字节流上做 substr 匹配（不反编译），
判据是同一 APK 内同时出现 `Settings$Global;` 与 `put*` 方法名。

按「能否被第三方应用从外部触发」收窄（`_work/sink_candidates.py`）：

```
全固件 APK                      130
引用 Settings$Global; + put*     43
uid 1000 且有导出组件             8   ← 见下
```

### 2.1 八个候选包

| APK | 包名 | 导出组件 | 其中零权限 | 备注 |
|---|---|---|---|---|
| `Settings.apk` | `com.android.settings` | 314 | 265 | AOSP Settings，攻击面极大但均需权限或需交互 |
| `DuerDeskClock.apk` | `com.android.deskclock` | 24 | 21 | 时钟 |
| `MMITools.apk` | `com.sprd.validationtools` | 21 | 19 | **已收录 V06/V07/V16/V17/V19** |
| `Telecom.apk` | `com.android.server.telecom` | 14 | 11 | 通话 |
| `EngineerMode.apk` | `com.sprd.engineermode` | 8 | 8 | **已收录 V02/V05/V10，§1 已全量复核** |
| `DuerShowOTA.apk` | `com.baidu.duer.ota` | 8 | 7 | **已收录 V03** |
| `DuerShowStatistic.apk` | `com.baidu.duershow.statistic` | 5 | 1 | **已收录 V14/V15，§3 已复核** |
| `SettingsProvider.apk` | `com.android.providers.settings` | 2 | 1 | 本身就是 Settings 的 Provider |

其中 4 个已在 19 条漏洞里覆盖，且都被判定为「键名硬编码」。
剩余 4 个（Settings / DeskClock / Telecom / SettingsProvider）属于
AOSP 或半 AOSP 组件，`Settings.Global.put*` 的键名均为 AOSP 常量。

### 2.2 四种形态的覆盖情况

§5 要求的四种形态，逐个说明：

| 形态 | 检测手段 | 结果 |
|---|---|---|
| **A** `Settings.Global.put*(cr, <变量>, v)` | `_work/sinks.py`（反编译层，按实参下标切分）+ `_work/fw_scan.py`（字节码层） | engineermode 17 处已全量落盘；全固件 43 APK 已收窄至 8 候选 |
| **B** `ContentResolver.update(Settings.Global.CONTENT_URI, ContentValues)` | `_work/sinks.py` 的 `ContentResolver.update` 规则 | engineermode 内 **0 处**；AOSP Settings 内部有，但键名是 `Settings.NameValueTable.NAME` 常量 |
| **C** `IContentProvider.call("PUT_global", name, extras)` | `_work/fw_scan.py` 的 `PUT_global` 探针 | 仅 `SettingsProvider.apk` 命中（它是**服务端**，不是调用方）。固件内**没有**其它 APK 用这个通道写 Settings |
| **D** Provider 转发，name 来自 `Uri` path segment | `audit.json` 的 52 个零保护 Provider 交叉 `Settings$Global;` | **0 处**（52 个零保护 Provider 全部与 Settings 无关，见 V03/V04 与本表） |

> 📌 形态 C 值得强调：`SettingsProvider.call("PUT_global", ...)` 这条路
> 在 uid 1000 下确实能过鉴权，但它需要**调用方自己拼出这个 call**。
> 全固件扫描结果是没有第三方 APK 走这条路 —— 也就是说这条路不是「被厂商代码
> 用错了」，而是「压根没人用」。

---

## 3. `com.baidu.duershow.statistic` 的 V15 复核（推翻「唯一可变部分」的假设）

附录 E8 把 V15 定为「从 root 视角的头号候选」。本次把整条链拉出来看，
**结论是它确实形态完美，但输入被 RSA 签名锁死**。

### 3.1 原语（形态完美）

```java
// CommandExecutor.java:35    —— 已在本次复核中重新反编译确认
public static CommandResult execCommand(String str) throws Throwable {
    Process processExec = Runtime.getRuntime().exec("sh");     // exec("sh")
    DataOutputStream dos = new DataOutputStream(processExec.getOutputStream());
    dos.write(str.getBytes());                                 // 任意字符串进 stdin
    dos.writeBytes("\n");
    dos.flush();
    dos.writeBytes("exit\n");
    ...
}
```

这就是 §4/§5 想要的扳机形态：**uid 1000 进程里，一个任意字符串 → shell**。

### 3.2 唯一调用链

```
PullConfigThread.run() / CrabSDK.pullConfigManually()
  └─ HttpURLConnSender.pullFromServer(1)          ← POST 到 pullConfUrl
       └─ CommonUtil.parseResult(response)        ← 取 response 全文
            └─ 必须含 "<sign>:" 分隔
                 └─ RSAUtils.verify(body, sign)   ← SHA1withRSA，公钥硬编码
                      └─ JSON 里的 data.hw.proc 数组
                           └─ HardwareMonitor.setProcArray(JSONArray)
                                └─ new Task(C.MEM_INFO, " dumpsys meminfo --local " + procName)
                                     └─ CommandExecutor.execCommand(cmd)   ← 到这里才执行
```

### 3.3 为什么不通

```java
// RSAUtils.java:16
private static final String publicKey =
    "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDcNo7OFl4AMWXHXHQ/Uyr5Qwmi1EJXbxtkWHQP"
  + "iT3tBxAgCApZyZXI8Sc0L+g2e3csrK+Mi/uD0W7AFmxdqSunmbiCEP4N8o5+X8NyREPRofM8cfFtIY/"
  + "kHemCWR65V69FLv++/tPp5DlJQaHERWIvWL5aJXNGhUNzqUQMjRzEPwIDAQAB";

// RSAUtils.java:61-67
public static boolean verify(byte[] bArr, String str) throws Exception {
    PublicKey k = KeyFactory.getInstance("RSA")
        .generatePublic(new X509EncodedKeySpec(Base64.decode(publicKey, 0)));
    Signature s = Signature.getInstance("SHA1withRSA");
    s.initVerify(k);
    s.update(bArr);
    return s.verify(Base64.decode(str, 0));
}
```

- **签名算法**：`SHA1withRSA`，1024-bit RSA（公钥 128 字节）
- **私钥**：只在百度服务端；`CrabConfig.getPullConfUrl()` 的 online 分支指向
  `https://qapm.baidu.com/api/dueros/pull-conf`
- **offline 分支** 指向 `http://yq01-crab-offline01.epc.baidu.com:8111/...`（明文 HTTP），
  但**签名校验与传输层无关**，明文拦截也改不了签名

**因此：能注入 `execCommand` 的唯一入口需要百度服务端私钥签名的配置下发。
这是供应链侧路径，不是本地可达到的路径。**

> 📌 与 README 原文的差异：原文说「`HardwareMonitor.setProcArray(JSONArray)`
> 虽为 public，但**无任何内部调用者**」。实测**有调用者**：
> `CommonUtil.java:536`。原文的这一条是错的。
> 但修正后结论不变 —— 因为调用者被 RSA 签名挡住。

### 3.4 这条链仍然值得单列为「待兑现的扳机」

一旦出现以下任一情况，`execCommand` 就是 root 级 RCE：

1. 私钥泄漏（服务端侧）
2. `parseResult` 被任何其它入口以无签名数据调用
3. 任何新增的 `execCommand(String)` 调用点

建议在文档里保留「形态完美、入口被签名锁死」这个措辞，而不是「不可注入」。

---

## 4. 对 §5 三张表的落盘位置

| 产物 | 内容 | 生成脚本 |
|---|---|---|
| `analysis/em_settings_sinks.tsv` | 168 个写入点（19 Global / 2 System / 136 SysPropProxy / 4 SystemProperties / 7 exec） | `_work/sinks.py` |
| `analysis/em_put_global.md` | 只列 `Settings.Global.put*` 的可读版本 | `_work/sinks.py` |
| `analysis/settings_sinks_firmware.tsv` | 全固件 130 APK 的 dex 层命中 | `_work/fw_scan.py` |
| `analysis/settings_sink_candidates.tsv` | 交叉过滤后的 8 个候选（uid1000 + 导出 + Global.put） | `_work/sink_candidates.py` |

四个脚本都不含硬编码的绝对路径假设：`REPO` 由 `__file__` 推导，
jadx 产物路径通过 `--roots tag=path` 覆盖，符合附录 E6 与 §9 第 2 条的要求。

---

## 5. 与 V02 的联合结论（§11 的答案）

§11 说「如果只做一件，就把 PingActivity 的 START 回调那几行源码拉到眼前」。
这件事已完成，结果是否定的：

```java
// PingActivity.java:98-100
public String runCMD(String[] cmd) {
    Process processExec = Runtime.getRuntime().exec(cmd);   // ← String[]，走 execve
}

// PingActivity.java:164-170
public String[] GenerateCMD(String strCMD) {
    return strCMD.replaceAll("\\\\", "/").split("\\s+");    // ← 按空白切分
}
```

`exec(String[])` **不经过 shell**，`;` `|` `$()` 全部退化成分隔符并被拆成独立参数，
最终作为 `ping` 的 host 参数（`ping -c 4 -s 8 8.8.8.8; settings put ...` 会被拆成
`["ping","-c","4","8.8.8.8;","settings","put","..."]`，`ping` 直接报
`unknown host 8.8.8.8;`）。**主链（§3）不成立。**

同时 `PingActivity` 的 `exported` 状态也再确认一次：

```
android:name="...pingpackages.PingActivity"
android:exported="false"
```

即：即使注入成立，也必须先有无障碍服务把 UI 驱动到输入框 —— 这条路径就算通，
也已经是「需用户开无障碍 + 需交互」的量级，不是零点击。

**因此 §11 的判定结果：主链死。转入 §4（SRMI native）或 §5（已在本文件完成）→
§5 的答案是「也不通」。剩下的只有 §4。**

---

## 6. 待办（明确未完成项）

| 项 | 状态 |
|---|---|
| §4 拆 `libsrmi_jni.so` 找 native 越界面 | **未开始**（下一步） |
| 8 个候选包里 Settings/DeskClock/Telecom/SettingsProvider 的人工逐行复核 | **未做**（AOSP 常量，优先级低于 §4） |
| 形态 D（Provider path segment）的更深扫描 | 已按 52 个零保护 Provider 交叉，结论 0 命中；若 §4 也不通需换判据重扫 |
| V15 的 `parseResult` 是否存在其它调用入口 | 已确认只有 2 处，均为网络拉取 |
