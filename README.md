# 小度青禾学习手机v20 Android 12 (SPRD/Unisoc ums9230)

> 目标设备：Android 12 / SDK 31 / 安全补丁 2023-06-05
> 平台：Unisoc ums9230 (`ro.board.platform=ums9230`)
> 审计时间：2025-11（v1.0）/ 2026-11（v1.1）
> 审计范围：130 个系统 APK（/system、/system_ext、/vendor、/product），**3203 个组件记录**，其中 **2261 个导出组件**（`exported="true"` 1081 个 + `exported="def"` 且含 intent-filter 1180 个），**20 个 system UID 应用**

> 📌 **v1.3 重审更正（重要）**：以上三个数字是从 APK 原始清单**重新解析**得出的，
> 与 v1.2 的旧基线（3204 / 2262 / 21）相差 1，原因已查实：
>
> 1. **`com.android.wallpaperbackup` 是虚构条目** —— `audit.json` 把它列为
>    system UID 包，但 `/system/app/WallpaperBackup/WallpaperBackup.apk`
>    **在本机上不存在**（`pm path` 也无输出），且它 0 个组件。
>    「21 个 system UID 包」应为 **20**。
> 2. **49 个 `activity-alias` 在旧数据里被错标为 `activity`** —— 这不是分类洁癖：
>    alias 的 `exported`/`permission` 独立于 `targetActivity`，旧数据缺
>    `targetActivity` 字段，导致这 49 条的可达性判断整体失真。
>    详见 `docs/REA-1.3-全量重审报告.md`。
>
> 重解析脚本：`_work/rea_scan.py` → `analysis/rea_components.tsv`。

> 📌 **v1.1 统计口径修正**：v1.0 写「1081 个导出组件」，该数字实为
> `exported="true"` 的组件数，未含 `exported="def"`（未显式声明但有
> intent-filter，实际导出）的 1181 个。两者合计 2262。已由脚本验证。

---

## 概要

本次审计共确认 **23 个有效漏洞**（v1.0 收录 13 个，v1.1 新增 6 个，**v1.3 重审新增 4 个**）。

**统计口径（v1.3 更新）**：

| 维度 | 数字 | 说明 |
|---|---|---|
| 漏洞条目 | **23** | V01–V20（V09 跳号）+ **V22–V25**；**V21 是复核文档编号，不是漏洞** |
| **独立根因** | **15** | 在 v1.2 的 12 个基础上，v1.3 新增 3 个（见下） |
| 实机验证 | **7** | 6 完整 ✅（V02/V06/V07/V10/V11/V12）+ 1 部分 ✅（V14） |
| 静态确认 | **16** | 含 v1.3 的 V22–V25（无 adb 环境，无法实机验证） |
| 证据在仓库外 | **5** | V02/V05/V10/V14/V15 |

> 📌 **v1.3 新增的 3 个独立根因**：
>
> | 根因 | 对应条目 |
> |---|---|
> | AOSP debug 组件在用户版未关闭导出 | **V22**（ContactsDump）、**V25**（Uninstaller） |
> | AOSP 调试 Activity 在 system UID 下零权限导出 | **V23**（WifiAPITest） |
> | `activity-alias` 未加权限（目标组件本体可能受保护） | **V24**（DemoMode→Tuner） |
>
> 15 = v1.2 的 12 + 3。**修 8 个根因即覆盖 16 条**（v1.2 的 5 个根因覆盖 10 条，
> 加 v1.3 的 3 个覆盖 4 条，去重后 8 个根因覆盖 14 条；另有 9 条各自独立）。

> 📌 **19 条 → 12 个独立根因的归并关系**：
>
> | 根因 | 合并的条目 | 条数 |
> |---|---|---|
> | 自定义权限 `protectionLevel` 缺失 / 未声明 | V17、V19 | 2 → 1 |
> | `PhoneBootReceiver` 不校验 action + URI 隐藏码可拉起 | V11、V12 | 2 → 1 |
> | 导出的 phasecheck 写入组件（共用 `PhaseCheckParse`） | V06、V16 | 2 → 1 |
> | 隐藏码广播拉起工程/产测界面 | V05、V08 | 2 → 1 |
> | ContentProvider 写权限缺失 | V03、V04 | 2 → 1 |
> | 其余各条独立 | V01、V02、V07、V10、V13、V14、V15、V18、V20 | 9 |
>
> 12 = 1+1+1+1+1+9。**这不是删条目，是说明「同一个修法能覆盖多条」**，
> 便于排优先级：修 5 个根因即覆盖 10 条。
>
> 📌 **「证据在仓库外」的 5 条**：V02（PingActivity 需 UI 进入）、
> V05（隐藏码需实体触发）、V10（实机写入后靠 UI 清除）、
> V14（属性前置条件未满足）、V15（无 Frida/root 无法验证注入点）。
> 这 5 条的 ✅ 标记依赖**仓库里没有的现场记录**，外部无法复核。
> 按 §9 的原则「留一条查不到出处的 ✅，比降级难看」，v1.2 **不擅自降级**，
> 但在此显式标注，让读者自己决定信任程度。

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
| **V22** | **联系人数据库导出接口开放** | `ContactsDumpActivity` + `DumpFileProvider` | com.android.providers.contacts | shared | **高** | 静态确认（v1.3） |
| **V23** | **WiFi 测试接口开放（system UID 权限借用）** | `Settings$WifiAPITestActivity` + `WifiStatusTest` | com.android.settings | 1000 | **中** | 静态确认（v1.3） |
| **V24** | **SystemUI Tuner 可被任意应用拉起（alias 无权限）** | `DemoMode` → `TunerActivity` | com.android.systemui | systemui | **中** | 静态确认（v1.3） |
| **V25** | **卸载确认界面可被拉起（配合 V03 成社工链）** | `UninstallerActivity` | com.android.packageinstaller | — | 低 | 静态确认（v1.3） |

---

## 目录结构

```
漏洞/
├── README.md                 ← 本文件（总索引）
├── HANDOFF.md                ← 项目交接书（仓库状态/质量风险/接手 Checklist）
├── CHANGELOG.md              ← 版本变更记录
├── LICENSE                   ← MIT
├── docs/                     ← 每个漏洞的详细技术文档（18 个 .md）
│   ├── V01-V04-misc-exports.md
│   ├── V05-emstart-backdoor.md
│   ├── V06-phasecheck-write.md
│   ├── V07-qmmi-settings-nvram.md
│   ├── V08-factory-mode-entry.md
│   ├── V10-modem-assert-file-write.md
│   ├── V11-V12-agingtest-launch.md
│   ├── V13-srmi-binder-service.md
│   ├── V13-native-srmi-audit.md            (v1.2)
│   ├── V14-systemlog-exfil.md
│   ├── V15-cmd-executor.md
│   ├── V16-phasecheck-miscdata-write.md    (v1.1)
│   ├── V17-save-phasecheck-permission.md   (v1.1)
│   ├── V18-silent-reboot-surface.md        (v1.1)
│   ├── V19-undeclared-perm-receiver.md     (v1.1)
│   ├── V20-prod-file-selinux-template.md   (v1.1)
│   ├── V21-settings-global-sink-audit.md   (v1.2)
│   └── CVE-2024-31317-assessment.md
├── poc/                      ← 概念验证脚本
│   ├── README.md             ← PoC 使用说明
│   ├── poc.sh                ← 一键执行脚本（adb）
│   ├── lib/                  ← 辅助库
│   └── java/                 ← Java/Binder 客户端样例
├── _work/                    ← 反编译/分析工作区（脚本、jadx 产物）
│   ├── sinks.py              ← (v1.2) engineermode 写入点扫描
│   ├── fw_scan.py            ← (v1.2) 全固件 dex 层 Settings 粗筛
│   └── sink_candidates.py    ← (v1.2) 与 audit.json 交叉过滤
└── analysis/                 ← 审计原始数据
    ├── README.md             ← (v1.2) 各文件口径说明
    ├── audit.json            ← 130 个 APK 的组件/权限清单
    ├── prov_unsafe.json      ← 52 个 exported="true" 且零保护的 Provider
    ├── exec_callers.json     ← 全部 exec 调用点
    ├── em_settings_sinks.tsv           ← (v1.2) 168 个写入点
    ├── em_put_global.md                ← (v1.2) Settings.Global.put* 摘要
    ├── settings_sinks_firmware.tsv     ← (v1.2) 全固件 43 APK 粗筛
    └── settings_sink_candidates.tsv    ← (v1.2) 收窄至 8 个候选
```

> 📌 **v1.2 修正**：此处原写 `V02-ping-activity.md`，该文件**不存在**
> （V02 的内容在 `V01-V04-misc-exports.md` 的第 2 节）。已按实际文件列表重写，
> 且每个条目都可通过 `ls docs/` 验证。

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

全量审计 130 个 APK 后，仍未找到能把 payload 送达 `settings put global hidden_api_blacklist_exemptions` 的路径。

> 📌 **v1.2 勘误（E6）**：v1.1 在这里写「对 `com.sprd.engineermode` 全部 **60 处**
> `SystemPropertiesProxy.set` 与 **6 处** `Settings.Global.put*` 逐条验证」。
> 这两个数字**不是实测值**，且当时**没有任何落盘清单**，无法复核。
>
> 本次已实测并落盘（`_work/sinks.py` → `analysis/em_settings_sinks.tsv`）：
>
> | API | v1.1 声称 | **v1.2 实测** |
> |---|---|---|
> | `SystemPropertiesProxy.set` | 60 | **136** |
> | `Settings.Global.put*` | 6 | **17** |
> | `Settings.System.put*` | — | 2 |
> | `Runtime.exec` | — | 6 |
> | 合计 | 66 | **161** |
>
> 逐条复核结论：**17 处 `Settings.Global.put*` 的键名 100% 可静态定值**，
> 其中 6 处看似表达式 `getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)`，
> 追到 `SettingsProxy.getFieldValue()` 后确认是**反射硬编码字段名**；
> 写 `adb_enabled` 的 4 处位于死代码 `UsbDebugImpl`。
>
> 另有 6 处 `Runtime.exec`，全部已核对调用点（见 `docs/V21-settings-global-sink-audit.md` §2）。
>
> 全固件层面另做了四形态扫描（`_work/fw_scan.py` + `_work/sink_candidates.py`）：
> 130 APK → 43 个引用 `Settings$Global;` → 收窄 8 个「uid1000 + 有导出组件」候选
> → **0 处变量键**。详见 `docs/V21-settings-global-sink-audit.md`。

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

那 **5 个**无保护的 Provider **确实导出了**，只是该包不是 system UID（`sharedUserId` 为空），
影响面低于产测类应用，故未单列为漏洞条目。**不应将其描述为「误报」**——
更准确的说法是「已确认导出，但影响面有限，未纳入漏洞编号」。

> 📌 **v1.3 更正**：上面说的「5 个」是**只数 Provider** 的口径。
> 按「所有导出类型（activity/service/receiver/provider）+ 零权限」重算，
> 该包共有 **21 个**组件（含 receiver 与 activity）。数字差异是口径不同，
> 两个数都对，但引用时必须说清是哪个口径。
> 详见 `docs/REA-1.3-全量重审报告.md` §3.3。

---

## 免责声明

本项目仅用于**授权范围内的安全研究与漏洞披露**。所有 PoC 均在自有测试设备上编写与验证，默认包含安全护栏（如确认提示、回滚逻辑）。

**严禁用于未授权的设备或系统。** 使用者需自行承担全部法律责任。

发现这些漏洞后，建议通过厂商安全响应渠道（或 CNVD/CVE）进行负责任披露。

---

## License

MIT
