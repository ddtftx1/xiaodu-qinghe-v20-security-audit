# Changelog

## [1.2.0] - 2026-11-27（root 链可行性复核 + 勘误）

> 本轮不改漏洞条目数量（仍 19 条），做三件事：
> **① 按「能否拿到 root」的目标重排证据链；② 修 8 条勘误；③ 把「无法复核」的表述落成可复跑的数据。**

### 核心结论（新增）

**三条可能的 root 路径全部不通**，证据见下：

| 路径 | 内容 | 结论 | 文档 |
|---|---|---|---|
| 主链 §3 | V08/V05 隐藏码 → 无障碍填 `PingActivity` 输入框 → uid 1000 shell → 31317 | ❌ **死** | `docs/V21` §5 |
| 退路 §5 | 找一个「键名可控的 `Settings.Global` 写入入口」 | ❌ **死**（0 处） | `docs/V21` |
| 备链 §4 | V13 SRMI native 层内存破坏 → 同进程代码执行 | ❌ **死** | `docs/V13-native-srmi-audit.md` |

三条关键证据：

1. **`PingActivity` 用的是 `exec(String[])`，不是 `exec(String)`**
   ```java
   public String runCMD(String[] cmd) { Runtime.getRuntime().exec(cmd); }
   public String[] GenerateCMD(String s) { return s.replaceAll("\\\\","/").split("\\s+"); }
   ```
   分号被 `split("\\s+")` 拆成独立参数，`ping` 只会报 `unknown host`。
   且该 Activity `exported="false"`，本身也无法从外部启动。

2. **`Settings.Global` 写入点全固件 0 处变量键**
   - engineermode：17 处 `put*`，键名 100% 可静态定值
   - 全固件：130 APK → 43 个引用 → 8 个 uid1000 候选 → 0 处变量键
   - 6 处看似表达式的 `getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)`
     追到底是 `Settings.Global.class.getField("PREFERRED_NETWORK_MODE")` 反射硬编码

3. **SRMI native 层没有可利用的溢出**
   - `strcpy`/`strcat`/`sprintf`/`vsprintf`：**0 个**
   - 唯一共享 putter（0x5458）的边界检查正确：`w22` 是完整 32 位、`b.le` 比较
   - `& 0xffff` 截断只造成静默截断，检查与 `memcpy` 用同一值
   - 接收上限来自固定 40 字节头，报文无法放大

### 新增文档

- `docs/V21-settings-global-sink-audit.md` —— §5 的全量复核
  （17 处 Global.put 清单 / 四形态覆盖 / V15 被 RSA 锁死的完整调用链 / V02 联合结论）
- `docs/V13-native-srmi-audit.md` —— §4 的 native 层审计
  （缓冲区布局 / 共享 putter 汇编分析 / 接收路径 / JNI 输入处理 / 逐条排除表）
- `analysis/README.md` —— 各数据文件的口径说明（52 vs 63、空 name 等）

### 新增数据与脚本

| 文件 | 内容 |
|---|---|
| `_work/sinks.py` | engineermode 写入点扫描（按实参下标取键名） |
| `_work/fw_scan.py` | 全固件 dex 层 Settings 粗筛（`bytes.find`，1.9s 扫完 /system_ext） |
| `_work/sink_candidates.py` | 与 `audit.json` 交叉过滤 → 8 个候选 |
| `analysis/em_settings_sinks.tsv` | 168 个写入点（19 Global / 2 System / 136 SysPropProxy / 4 SystemProperties / 7 exec） |
| `analysis/em_put_global.md` | `Settings.Global.put*` 可读摘要 |
| `analysis/settings_sinks_firmware.tsv` | 43 个 APK 粗筛结果 |
| `analysis/settings_sink_candidates.tsv` | 收窄至 8 个候选 |

### 勘误（附录 A 的 8 条）

| # | 位置 | 修正内容 |
|---|---|---|
| **E1** | `docs/V17` §6.2 | `BroadcastReceiver.onReceive` 里 `Binder.getCallingUid()` **无效**（主线程，返回本进程 UID，对任何调用方恒真）。`getSentFromUid()` 是 API 34+，本机用不了。广播侧只能靠 `signature` 级权限 |
| **E2** | `docs/V06` §6 | 同上，`Activity.onCreate` 里同样无效。改用 `getCallingPackage()` 且**必须判空**，并明确它不是 `exported=false` 的替代 |
| **E3** | `docs/V13` §5 | **这条本来是对的，保留**。补了「Binder 线程池 vs 主线程」的对照表，并把「放行 `SHELL_UID`」写成显式决策（消费者出货/关闭 adb 时应移除） |
| **E4** | `docs/CVE-2024-31317` 匹配表 | 旧表「权限=无/❌不可用」与同文修正（权限存在、engineermode 持有）自相矛盾。改为「存在，独占，无法借用」+「补丁 2023-06-05 → 未修补」+ 新增一行「键名可控入口：0 处」 |
| **E5** | `docs/V18` §1 | `UniSilentRebootReceiver` 实际 `exported="false"`，`adb` 触发不了。攻击面是「开机后自动排程」，新增「三个入口实际可达性」表 |
| **E6** | `README` CVE 小节 | 「60 处 `SystemPropertiesProxy.set` / 6 处 `Settings.Global.put*`」不是实测值。实测 **136 / 17**，且已有落盘清单可复核 |
| **E7** | `analysis/prov_unsafe.json` | 52 vs 63 的差异 = 只统计 `exported="true"`，漏掉 11 条 `exported="def"`（已逐条列出）。空 name 的 `com.readboy.aicourseopen` 判定为**解析残缺**（`authorities` 有值、同包其它 4 个 provider 正常） |
| **E8** | `docs/V15` 表头 | 从「纵深防御缺口」上调为「已上膛但保险扣着的扳机」。并修正「`setProcArray` 无调用者」的错误 —— 实测有调用者 `CommonUtil:536`，但被 `SHA1withRSA` 签名锁死 |

### 改造

- **`poc/poc.sh` 全量重写为断言化**：每项 `PASS`/`FAIL`/`SKIP` 三态，
  收尾汇总表，任一 FAIL → `exit 1`。三模式：默认（只读真跑）/
  `--dry-run` / `--destructive`（原 `--yes` 语义并入）。
  实测（普通应用身份）：**PASS=8 FAIL=0 SKIP=4 exit=0**。
- **`_work/*.py` 去掉硬编码路径**：13 个脚本改为 `_REPO = dirname(dirname(abspath(__file__)))`，
  加 `--roots tag=path` 覆盖。17 个脚本全部 `compile()` 通过，
  仓库根直接 `python3 _work/verify_stats.py` 能出数。
- **README 顶部补三口径**：19 条 = **12 个独立根因** / 7 条实机验证 / 5 条证据在仓库外；
  并给出 19→12 的归并表（修 5 个根因即覆盖 10 条）。
- **README 目录树按实际文件重写**：原文写 `V02-ping-activity.md`，该文件**不存在**
  （V02 在 `V01-V04-misc-exports.md` 第 2 节）。已补齐 V13-native / V21 / analysis 新文件。

### 未完成

- §4 若要继续，需要 **CP 固件镜像**（SRMI 消息在基带侧的解码器才是真正的攻击面）。
  本仓库没有该镜像，此路径到此为止。
- `libsrmi.so` 的 **arm32 版本**（`/system_ext/lib/`）未分析，只做了 arm64。
- `srmi_create`（932B）的会话表 `malloc`/链表操作未细查 use-after-free。
- 8 个候选包中 Settings / DeskClock / Telecom / SettingsProvider 未逐行人工复核
  （均为 AOSP 常量，优先级低于 §4）。

---

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
