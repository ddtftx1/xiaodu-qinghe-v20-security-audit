# Changelog

## [1.1.0] - 2026-11

### 新增漏洞

- **V16** `CountryCodeSettings` phasecheck miscdata 任意偏移写入（偏移 9252 / 11216，任意字节，≤4080B）
- **V17** `SAVE_PHASECHECK` 权限未声明 protectionLevel（默认 normal），任意 station 可被篡改
- **V18** `UniSilentRebootReceiver` 静默重启调度面（`persist.silent.reboot.enabled` 默认 true，不校验 action）
- **V19** `QmmiBroadcastReceiver` 引用未声明的自定义权限 `com.example.receiver.receivebroadcast`
- **V20** 产测框架 `prod_file` 全权读写模板缺陷（影响 validationtools / autoslt / coulomb 等产测应用）
- **V04**（补录）`DuerGuardContentProvider` 写操作无权限保护 —— v1.0 已列此条，
  但表述为「无权限」不准确。v1.1 修正为：读操作受 `readPermission`（signatureOrSystem）保护，
  **写操作与 `call()` 因缺失 `writePermission` 而无任何保护**。条目本身成立，理由已改正。

### 修正

- **V04** 理由修正（见上）。判断依据：清单原文
  `<provider ... android:readPermission="com.baidu.duerguard.read" android:exported="true" />`
  中**没有 `writePermission` 也没有 `android:permission`**。`query()` 受保护，
  `insert/update/delete/call` 不受保护。
- **CVE-2024-31317 评估**：不可利用的原因从「缺少 `WRITE_SECURE_SETTINGS` 权限」
  修正为「缺少键名可控的 Settings.Global 写入入口」。该权限实际由
  `com.sprd.engineermode` 持有。
- **V05 隐藏码表**：由 5 个补全为 8 个，新增 `837868`（cgversioninfo）、
  `837866`（yulongversioninfo），二者均需 `ro.product.board.customer == cgmobile`。
- **V06 同源风险**：补充 `TYPE_WRITE_OFFSET(17)` 的外部入口（即 V16）。
- **V10 组件名**：`ModemAssertReceiver` 实为内部类
  `ModemAssertInfoActivity$ModemAssertReceiver`，README 索引表已更正全名。
- **V01 组件名**：实际为 `com.sprd.validationtools.instructions.FactoryReset`
  （含 `instructions` 包段），README 索引表已更正。
- **导出组件统计**：v1.0 声称「1081 个导出组件」，实为 `exported="true"` 的数量；
  未含 `exported="def"`（有 intent-filter，实际导出）的 1181 个，合计 **2262**。
- **实机验证统计**：v1.0 声称「8 个已实机验证」，但索引表中仅 6 条 ✅ + 1 条部分 ✅，
  与数字不符。v1.1 据实统计为 **6 条完整验证 + 1 条部分验证 + 12 条静态确认**。
- **DuerShowLauncher Provider 描述**：v1.0「已被排除的路径」表写「9 个 Provider
  实际受权限保护（误报）」。实测该包共 23 个 Provider，其中 **5 个确实导出且无任何
  权限保护**，14 个受保护，4 个未导出。因该包非 system UID，影响面有限未单列条目，
  但不应描述为「误报」。
- **`poc.sh` 内部类名转义**：`RCV_MODEM` 由双引号 + `\$` 改为单引号包裹，
  避免 shell 二次解析导致 `am` 找不到组件。

### 新增分析

- SELinux 专用域 × APK 交叉比对：13 个专用域中 7 个为空域
  （对应 APK 不在本固件）。空域应用安装后会因 SELinux 域未定义而无法运行，
  **不构成提权**（`seapp_contexts` 要求 `seinfo=platform`，普通应用无法满足），
  但说明该机型存在未随本固件发布的产测组件。
- `sprd_validationtools_app` 与 `sprd_autoslt_app` 均对 `prod_file` 拥有完整读写权限，
  且均可连接 `phasecheckserver`，属产测框架模板层面的系统性设计问题。
- 全固件自定义权限定级扫描：59 个非系统自定义权限，确认
  `SAVE_PHASECHECK` 缺失 `protectionLevel`，`DuerGuard` 三个权限均为 `signatureOrSystem`。
- `poc.sh` 新增 V16 / V17 段落，并标注两者的预期失败原因
  （V16 因风险默认不执行；V17 因 shell 不持有该权限必然被拒）。

### 未完成

- V16 / V17 均未实机验证。`super_admin:shell` 通道不可用
  （`accessibility executor unavailable`），Ubuntu 侧无 adb 二进制，
  无法安装 PoC APK。静态证据链完整，详见各文档「实机验证」章节。
- V20 的 `prod_file` 实际落点未验证：`/productinfo`、`/systeminfo`、
  `/mnt/vendor/productinfo` 在实机上均无法 list，可能是挂载命名空间屏蔽，
  也可能本固件未生成这些目录。**不建议在报告中当作可利用漏洞。**

---

## [1.1.1] - 2026-11-27（文档补齐）

### 新增文档

- 补齐 V1.1 新增条目缺失的技术文档：
  - `docs/V18-silent-reboot-surface.md`（`UniSilentRebootService/Receiver`，
    代码取自 UniSilentReboot.apk 的 jadx 反编译；确认总开关
    `persist.silent.reboot.enabled` 默认 true、时间窗命中即
    `PowerManager.reboot("quiescent")`、Receiver 不校验 action）
  - `docs/V19-undeclared-perm-receiver.md`（`QmmiBroadcastReceiver` 引用
    全固件未声明的 `com.example.receiver.receivebroadcast`；全固件 130 个
    APK 的 `perms` 扫描无命中；与 V07 的 Receiver2 一并整改）
  - `docs/V20-prod-file-selinux-template.md`（`prod_file` 全权读写域清单
    取自 vendor SELinux CIL 实扫：14 个域 full_rw=True；域→应用映射取自
    `vendor_seapp_contexts`，`seinfo=platform` 限制了直接提权边界；
    `prod_file` 实际落点仍未验证，维持「模板治理项、不作可利用漏洞」口径）

### 新增文件

- `HANDOFF.md` 项目交接书（仓库真实 git 状态 / 19 漏洞速览 / 4 项仓库质量
  风险（含 `_work/` 5373 文件被跟踪）/ 复现工具链 / 安全红线 / 接手 Checklist）
- `README.md` 目录结构同步更新（补 V18–V20 文档与 HANDOFF.md 条目）

### 说明

- 本提交不新增漏洞编号，仅补齐 v1.1 的 3 个文档 + 交接材料；
  漏洞总数与验证状态统计不变（19 个，6 完整 ✅ + 1 部分 ✅ + 12 静态）。

---

## [1.0.0] - 2025-11

### 首次发布

审计目标：Android 12 (SPRD/Unisoc ums9230, 补丁 2023-06-05)

新增漏洞记录：

- V01 FactoryReset 导出
- V02 PingActivity system UID 命令执行面
- V03 ThirdAppContentProvider 无权限
- V04 DuerGuardContentProvider 无权限
- V05 EMStartReceiver 隐藏属性写后门
- V06 AudioStationUpdateActivity phasecheck 写入（已实测）
- V07 QmmiBroadcastReceiver2 Settings/NVRAM 写入（已实测）
- V08 ValidationToolsBroadcastReceiver 工厂模式入口
- V10 ModemAssertReceiver 私有目录任意写入（已实测）
- V11 agingtest PhoneBootReceiver 拉起老化测试（已实测）
- V12 factorytest PhoneBootReceiver 拉起老化测试（已实测）
- V13 SrmiManager 导出 Binder 服务
- V14 SystemLogRequestReceiver 系统日志外泄
- V15 CommandExecutor system UID sh 执行原语

新增：
- CVE-2024-31317 适用性评估
- 分析数据（130 APK 的组件/权限清单）
- PoC 集合（shell + Java Binder 客户端）
