# 小度青禾学习手机v20 Android 12 (SPRD/Unisoc ums9230)

> 目标设备：Android 12 / SDK 31 / 安全补丁 2023-06-05
> 平台：Unisoc ums9230 (`ro.board.platform=ums9230`)
> 审计时间：2025-11（v1.0）/ 2026-11（v1.1）
> 审计范围：130 个系统 APK（/system、/system_ext、/vendor、/product），3204 个组件记录，其中 **2262 个导出组件**（`exported="true"` 1081 个 + `exported="def"` 且含 intent-filter 1181 个），21 个 system UID 应用

> 📌 **v1.1 统计口径修正**：v1.0 写「1081 个导出组件」，该数字实为
> `exported="true"` 的组件数，未含 `exported="def"`（未显式声明但有
> intent-filter，实际导出）的 1181 个。两者合计 2262。已由脚本验证。

---

## 概要

本次审计共确认 **19 个有效漏洞**（v1.0 收录 13 个，v1.1 新增 6 个）。

**实机验证状态统计**（与下方索引表逐行对应）：

| 状态 | 数量 | 条目 |
|------|------|------|
| ✅ 已实机验证 | 6 | V06、V07、V10、V11、V12、V02 |
| 部分验证 | 1 | V14（广播可达，任务受属性前置条件限制）|
| 静态确认 | 12 | V01、V03、V04、V05、V08、V13、V15、V16、V17、V18、V19、V20 |
| **合计** | **19** | 编号 V01–V20，其中 **V09 空缺**（见下）|

> 📌 **v1.1 修正**：v1.0 写「8 个已在实机验证」，但同一文档的索引表中只有
> 6 条标记 ✅（V06/V07/V10/V11/V12/V02）+ 1 条「部分 ✅」（V14），共 7 条，
> 与「8 个」不符。且 `CHANGELOG` 也未列出第 8 条。
> 本版按索引表据实统计为 6 条完整验证 + 1 条部分验证。
>
> 📌 **关于 V09**：编号体系从 v1.0 起就没有 V09（V08 之后直接是 V10），
> 属早期编号跳号而非本版遗漏。为不破坏外部引用，v1.1 **保持原编号不变**，
> 仅在此显式说明。今后新增条目从 **V21** 起编号，**不复用 V09**。

**最严重的发现是 `SrmiManager`（V13）—— 一个完全导出、无权限保护的 Binder 服务，暴露 20+ 个 native 方法，可向系统/基带发送任意 SRMI 消息。**

所有实机验证操作均已回滚，设备状态干净（UID 10159，无提权，无残留属性/文件）。

---

## 漏洞索引

| ID | 漏洞名称 | 组件 | 包 | UID | 严重性 | 实机验证 |
|----|---------|------|-----|-----|--------|---------|
| V06 | phasecheck 分区任意写入 | `AudioStationUpdateActivity` | com.sprd.validationtools | 1000 | 严重 | ✅ |
| V07 | Settings/NVRAM 任意写入 | `QmmiBroadcastReceiver2` | com.sprd.validationtools | 1000 | 严重 | ✅ |
| V13 | 导出 Binder 服务，任意 SRMI 消息 | `SrmiManager` | com.sprd.srmi | 1000 | 严重 | 静态确认 |
| V10 | system 私有目录任意文件写入 | `ModemAssertInfoActivity$ModemAssertReceiver` | com.sprd.engineermode | 1000 | 高 | ✅ |
| V11 | 任意拉起老化测试（含重启） | `PhoneBootReceiver` | com.sprd.agingtest | 1000 | 高 | ✅ |
| V12 | 任意拉起老化测试（含重启） | `PhoneBootReceiver` | com.sprd.factorytest | 1000 | 高 | ✅ |
| V14 | 系统日志外泄至 sdcard | `SystemLogRequestReceiver` | com.baidu.duershow.statistic | 1000 | 高 | 部分 ✅ |
| V15 | system UID 下的 sh 执行原语 | `CommandExecutor` | com.baidu.duershow.statistic | 1000 | 高 | 静态确认 |
| V16 | phasecheck miscdata 任意偏移写入 | `CountryCodeSettings` | com.sprd.validationtools | 1000 | 高 | 静态确认 |
| V17 | 权限未定级，任意 station 篡改 | `PhaseCheckBroadcastReceiver` | com.sprd.validationtools | 1000 | 高 | 静态确认 |
| V18 | 静默重启调度面（属性默认开启） | `UniSilentRebootReceiver` | com.unisoc.silent.reboot | 1000 | 中 | 静态确认 |
| V20 | 产测框架 `prod_file` 全权读写模板缺陷 | 多个产测应用 | — | 1000 | 中 | 静态确认 |
| V01 | 恢复出厂设置可被拉起 | `instructions.FactoryReset` | com.sprd.validationtools | 1000 | 中 | 静态确认 |
| V08 | 隐藏工厂模式入口 | `ValidationToolsBroadcastReceiver` | com.sprd.validationtools | 1000 | 中 | 静态确认 |
| V03 | ContentProvider 写操作无权限，可卸载应用 | `ThirdAppContentProvider` | com.baidu.duer.ota | 1000 | 中 | 静态确认 |
| V04 | ContentProvider 写操作无权限 | `DuerGuardContentProvider` | com.baidu.duerguard | 1000 | 中 | 静态确认 |
| V05 | 隐藏系统属性写后门 | `EMStartReceiver` | com.sprd.engineermode | 1000 | 中 | 静态确认 |
| V02 | system UID 执行 ping，地址可控 | `PingActivity` | com.sprd.engineermode | 1000 | 低 | ✅（需 UI 进入）|
| V19 | 引用未声明的自定义权限（偶然有效） | `QmmiBroadcastReceiver` | com.sprd.validationtools | 1000 | 低 | 静态确认 |

---

## 目录结构

```
漏洞/
├── README.md                 ← 本文件（总索引）
├── docs/                     ← 每个漏洞的详细技术文档
│   ├── V01-V04-misc-exports.md
│   ├── V02-ping-activity.md
│   ├── ...
│   ├── V16-phasecheck-miscdata-write.md    (v1.1)
│   └── V17-save-phasecheck-permission.md   (v1.1)
├── poc/                      ← 概念验证脚本
│   ├── README.md             ← PoC 使用说明
│   ├── poc.sh                ← 一键执行脚本（adb）
│   ├── lib/                  ← 辅助库
│   └── java/                 ← Java/Binder 客户端样例
└── analysis/                 ← 审计原始数据（JSON）
    ├── audit.json            ← 130 个 APK 的组件/权限清单
    ├── prov_unsafe.json      ← 52 个真正无权限保护的 Provider
    └── exec_callers.json     ← 全部 exec 调用点
```

---

## 关于 CVE-2024-31317

本设备**满足**该 CVE 的版本条件：

| 条件 | 状态 |
|------|------|
| Android 12（影响范围 9–13）| ✅ 符合 |
| 安全补丁 2023-06-05（< 2024-06）| ✅ 未修补 |
| 需要 `WRITE_SECURE_SETTINGS` 权限 | ⚠️ **权限存在，但无法借用** |

**结论：设备存在该漏洞，但缺少把 payload 送达 `hidden_api_blacklist_exemptions` 的通道，无法利用。**

> 📌 **v1.1 修正**：v1.0 写「需要 `WRITE_SECURE_SETTINGS` 权限 → ❌ 无法获得」，
> 这不够准确。该权限在设备上**确实存在**，由 `com.sprd.engineermode` 持有
> （清单原文 `<uses-permission android:name="android.permission.WRITE_SECURE_SETTINGS" />`）。
> 真正缺的不是权限本身，而是**一个键名可控的 Settings.Global 写入入口**。
> 这个区别影响修复方向：应当收紧 engineermode 内的调用点，而不是去检查权限授予。
> 详见 `docs/CVE-2024-31317-assessment.md`。

全量审计 130 个 APK 后，仍未找到能把 payload 送达 `settings put global hidden_api_blacklist_exemptions` 的路径。v1.1 复核对 `com.sprd.engineermode` 全部 60 处 `SystemPropertiesProxy.set` 与 6 处 `Settings.Global.put*` 逐条验证，**键名无一例外为硬编码**。

---

## 已被排除的路径（重要）

审计中发现的若干看似可利用的入口，经深入分析后确认不可用，记录在此以避免重复劳动：

| 目标 | 排除原因 |
|------|---------|
| `UsbDebug.openDebugMode()`（写 `adb_enabled=1`）| **死代码**，构造函数 0 调用者，且不在 `modules.json` |
| `ValidationToolsMainActivity` case 6（开 ADB）| 代码存在但**菜单项被厂商删除**：`mListItemString` 实际只有 5 项（索引 0–4），`case 6` 无入口 |
| `CpuFreqListActivity`（`cpu_policy` 注入 `execShellCmd`）| 注入点真实，但 Activity **未导出**，启动者传内核目录名 |
| `cmd_skt` root socket（`CmdUtils.run`）| 唯一调用者 `SystemSettingActivity` 的 `isSupport()` 要求硬件含 `9620`，本机 `ums9230` → false |
| `EngineInitBroadcastReceiver` | 仅 `Log.d`，无害 |
| 各 `SystemProperties.set` 调用 | 键名全部硬编码（v1.1 复核 engineermode 全部 60 处，无一例外）|
| `com.sprd.engineermode` 内 `AdbShellCMDActivity` / `SystemSettingActivity` / `CpuFreqListActivity` / `LauncherDebugSettingActivity` / `DumpVideoFilesActivity` / `WatchDogActivity` / `PreCheckApkActivity` / `AndroidUtilsActivity` | 均 `exported="false"`，只能从 EngineerMode UI 进入 |

### 关于 `DuerShowLauncher` 的 Provider（v1.1 修正）

v1.0 此处写「9 个 Provider 实际受 `readPermission`/`writePermission` 保护（初版审计误报）」，
该表述**不准确**，已修正。实测该包（`com.baidu.launcher`，非 system UID）共有 **23 个 Provider**，情况分三类：

| 类别 | 数量 | 说明 |
|------|------|------|
| 完全无保护且导出 | **5** | `CastContentProvider`、`GlobalSettingContentProvider`、`CallStateProvider`、`MediaUpgradeProvider`、`DatabaseContentProvider` |
| 有 `permission` 或 `readPermission` 保护 | 14 | 受 `com.baidu.launcher.permission.*`、`com.baidu.baiduaccount.permission.*` 等约束 |
| 未导出 | 4 | `FileProvider`、`ProcessLifecycleOwnerInitializer` 等 |

那 5 个无保护的 Provider **确实导出了**，只是该包不是 system UID（`sharedUserId` 为空），
影响面低于产测类应用，故未单列为漏洞条目。**不应将其描述为「误报」**——
更准确的说法是「已确认导出，但影响面有限，未纳入漏洞编号」。

---

## 免责声明

本项目仅用于**授权范围内的安全研究与漏洞披露**。所有 PoC 均在自有测试设备上编写与验证，默认包含安全护栏（如确认提示、回滚逻辑）。

**严禁用于未授权的设备或系统。** 使用者需自行承担全部法律责任。

发现这些漏洞后，建议通过厂商安全响应渠道（或 CNVD/CVE）进行负责任披露。

---

## License

MIT
