# Android 12 (SPRD/Unisoc ums9230) 系统应用安全审计报告

> 目标设备：Android 12 / SDK 31 / 安全补丁 2023-06-05
> 平台：Unisoc ums9230 (`ro.board.platform=ums9230`)
> 审计时间：2025-11
> 审计范围：130 个系统 APK（/system、/system_ext、/vendor、/product），1081 个导出组件，21 个 system UID 应用

---

## 概要

本次审计共确认 **13 个有效漏洞**，其中 8 个已在实机上完成验证（标记 ✅），5 个通过静态分析确认但受前置条件限制。

**最严重的发现是 `SrmiManager`（V13）—— 一个完全导出、无权限保护的 Binder 服务，暴露 20+ 个 native 方法，可向系统/基带发送任意 SRMI 消息。**

所有实机验证操作均已回滚，设备状态干净（UID 10159，无提权，无残留属性/文件）。

---

## 漏洞索引

| ID | 漏洞名称 | 组件 | 包 | UID | 严重性 | 实机验证 |
|----|---------|------|-----|-----|--------|---------|
| V06 | phasecheck 分区任意写入 | `AudioStationUpdateActivity` | com.sprd.validationtools | 1000 | 严重 | ✅ |
| V07 | Settings/NVRAM 任意写入 | `QmmiBroadcastReceiver2` | com.sprd.validationtools | 1000 | 严重 | ✅ |
| V10 | system 私有目录任意文件写入 | `ModemAssertReceiver` | com.sprd.engineermode | 1000 | 高 | ✅ |
| V11 | 任意拉起老化测试（含重启） | `PhoneBootReceiver` | com.sprd.agingtest | 1000 | 高 | ✅ |
| V12 | 任意拉起老化测试（含重启） | `PhoneBootReceiver` | com.sprd.factorytest | 1000 | 高 | ✅ |
| V13 | 导出 Binder 服务，任意 SRMI 消息 | `SrmiManager` | com.sprd.srmi | 1000 | 严重 | 静态确认 |
| V14 | 系统日志外泄至 sdcard | `SystemLogRequestReceiver` | com.baidu.duershow.statistic | 1000 | 高 | 部分 ✅ |
| V15 | system UID 下的 sh 执行原语 | `CommandExecutor` | com.baidu.duershow.statistic | 1000 | 高 | 静态确认 |
| V08 | 隐藏工厂模式入口 | `ValidationToolsBroadcastReceiver` | com.sprd.validationtools | 1000 | 中 | 静态确认 |
| V05 | 隐藏系统属性写后门 | `EMStartReceiver` | com.sprd.engineermode | 1000 | 中 | 静态确认 |
| V01 | 恢复出厂设置可被拉起 | `FactoryReset` | com.sprd.validationtools | 1000 | 中 | 静态确认 |
| V02 | system UID 执行 ping，地址可控 | `PingActivity` | com.sprd.engineermode | 1000 | 中 | ✅ |
| V03 | ContentProvider 无权限，可卸载应用 | `ThirdAppContentProvider` | com.baidu.duer.ota | 1000 | 中 | 静态确认 |

---

## 目录结构

```
漏洞/
├── README.md                 ← 本文件（总索引）
├── docs/                     ← 每个漏洞的详细技术文档
│   ├── V01-factory-reset.md
│   ├── V02-ping-activity.md
│   ├── ...
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
| 需要 `WRITE_SECURE_SETTINGS` 权限 | ❌ **无法获得** |

**结论：设备存在该漏洞，但缺少触发它所需的权限，无法利用。**

全量审计 130 个 APK 后，仍未找到能把 payload 送达 `settings put global hidden_api_blacklist_exemptions` 的路径——所有 system UID 应用写入 Settings 时键名均为硬编码。详见 `docs/CVE-2024-31317-assessment.md`。

---

## 已被排除的路径（重要）

审计中发现的若干看似可利用的入口，经深入分析后确认不可用，记录在此以避免重复劳动：

| 目标 | 排除原因 |
|------|---------|
| `UsbDebug.openDebugMode()`（写 `adb_enabled=1`）| **死代码**，构造函数 0 调用者，且不在 `modules.json` |
| `ValidationToolsMainActivity` case 6（开 ADB）| 代码存在但**菜单项被厂商删除**（列表仅 5 项）|
| `CpuFreqListActivity`（`cpu_policy` 注入 `execShellCmd`）| 注入点真实，但 Activity **未导出**，启动者传内核目录名 |
| `cmd_skt` root socket（`CmdUtils.run`）| 唯一调用者 `SystemSettingActivity` 的 `isSupport()` 要求硬件含 `9620`，本机 `ums9230` → false |
| `DuerShowLauncher` 的 9 个 Provider | 实际受 `readPermission`/`writePermission` 保护（初版审计误报）|
| `EngineInitBroadcastReceiver` | 仅 `Log.d`，无害 |
| 各 `SystemProperties.set` 调用 | 键名全部硬编码 |

---

## 免责声明

本项目仅用于**授权范围内的安全研究与漏洞披露**。所有 PoC 均在自有测试设备上编写与验证，默认包含安全护栏（如确认提示、回滚逻辑）。

**严禁用于未授权的设备或系统。** 使用者需自行承担全部法律责任。

发现这些漏洞后，建议通过厂商安全响应渠道（或 CNVD/CVE）进行负责任披露。

---

## License

MIT
