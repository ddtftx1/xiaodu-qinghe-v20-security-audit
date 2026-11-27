# 项目交接书 · 小度青禾 v20 系统安全审计仓库

> 交接时间：2026-11-27
> 交接对象：接手后续提交/维护的协作者（或本人未来）
> 仓库：`/storage/emulated/0/漏洞/`
> 远程：`git@github.com:ddtftx1/xiaodu-qinghe-v20-security-audit.git`（SSH，origin/main）

---

## 0. 一句话现状

仓库工作树**干净**，`main` 与 `origin/main` **完全同步**（0 ahead / 0 behind），
最近一次推送已完成。**当前没有待提交的改动。** 接手后第一件事是确认本地
环境（git 凭据、远程可达性）再开始新工作。

> 📌 **v1.2.0（`641fdc5`）交接更新**：当前为 **v1.2.0**，不是 v1.1.1。
> `_work/` 的处置决策**已定**：保持跟踪不动（见 §4.1）。
> 新增 3 个分析脚本、4 个数据文件、2 篇文档，详见 §1.2。

---

## 1. 仓库当前真实状态（以 git 为准，不要依赖旧记忆）

### 1.1 提交历史（6 次，旧→新）

| 提交 | 说明 |
|------|------|
| `e7f234b` | v1.0.0 主体（13 漏洞 + 11 文档 + PoC + 分析数据） |
| `243580e` | docs：Git 推送指引（PUSH.md） |
| `4e755d1` | v1.1：新增 6 漏洞 + 修正旧逻辑错误（**把 PUSH.md 删了，并把 `_work/` 全部纳入跟踪**） |
| `1e23f80` | 删掉许可证 |
| `96da743` | 重新加回 MIT License |
| `3ceab79` | v1.1.1：补齐 V18–V20 文档 + 本交接书 |
| `641fdc5` | **v1.2.0：root 链可行性复核 + 8 条勘误 + PoC 断言化（当前 HEAD）** |

### 1.2 版本与漏洞总数

- 当前为 **v1.3.0**，README 索引表确认 **23 个有效漏洞**：
  V01–V20（**V09 跳号**）+ **V22–V25**（v1.3 重审新增）。
  > **V21 不是漏洞条目**，而是复核文档编号
  > （`docs/V21-settings-global-sink-audit.md`，结论是「不存在」）。
  > **新漏洞从 V26 起编号**，V09 与 V21 均不复用。
- 实机验证状态：**6 条完整验证**（V02/V06/V07/V10/V11/V12）+ **1 条部分验证**
  （V14）+ **16 条静态确认**（含 v1.3 的 V22–V25）。
- 统计口径（v1.3）：23 条 = **15 个独立根因**；7 条实机验证；
  **5 条证据在仓库外**（V02/V05/V10/V14/V15）。
- 组件基线（v1.3 重解析，**替代旧值**）：**3203 组件 / 2261 导出 / 20 system UID 包**。
  旧值 3204 / 2262 / 21 已作废，原因见 `docs/REA-1.3-全量重审报告.md` §1。

### 1.3 目录结构

```
漏洞/
├── HANDOFF.md               ← 本文件
├── README.md                ← 总索引（19 漏洞表 + 排除路径 + CVE 评估 + 三口径）
├── CHANGELOG.md             ← v1.0.0 / v1.1.0 / v1.2.0
├── LICENSE                  ← MIT（owner: ddtftx1, 2026）
├── .gitignore               ← 排除 keystore/apk/dex/编译产物/敏感信息
├── docs/                    ← 18 个 .md 技术文档
├── poc/                     ← PoC 套件（poc.sh 已断言化 + lib + java）
├── analysis/                ← 原始数据 + 口径说明（README.md）
└── _work/                   ← 反编译/脚本工作区（保持跟踪，见 §4.1）
```

`docs/` 现有 18 个文档：`V01-V04-misc-exports.md`、`V05-emstart-backdoor.md`、
`V06-phasecheck-write.md`、`V07-qmmi-settings-nvram.md`、`V08-factory-mode-entry.md`、
`V10-modem-assert-file-write.md`、`V11-V12-agingtest-launch.md`、
`V13-srmi-binder-service.md`、**`V13-native-srmi-audit.md`（v1.2）**、
`V14-systemlog-exfil.md`、`V15-cmd-executor.md`、`V16-phasecheck-miscdata-write.md`、
`V17-save-phasecheck-permission.md`、`V18-silent-reboot-surface.md`、
`V19-undeclared-perm-receiver.md`、`V20-prod-file-selinux-template.md`、
**`V21-settings-global-sink-audit.md`（v1.2）**、`CVE-2024-31317-assessment.md`。

---

## 2. 设备指纹（审计对象，固定不变，供复现时核对）

- 型号：小度青禾 `XD-SEE00-2301`
- Android 12 / SDK 31 / 安全补丁 **2023-06-05**（2023-09 之后的 CVE 均未修）
- 内核 `5.4.161-ab20250825010819358` SMP PREEMPT PREEMPT_RT（厂商重编译）
- 平台：Unisoc T616 / `ums9230`
- SELinux `u:r:untrusted_app:s0:c179,c256,c512,c768`（enforcing）
- 加固：CapEff=0、seccomp 拦 io_uring/部分 socket、userns 禁用、
  `/proc/kallsyms` 与分区节点全 `Permission denied`、bootloader 锁定、AVB 1.2 / dm-verity enforcing
- GPU：Mali-G68 / **r34p0**（kbase 11.31）→ 落在 CVE-2023-4211 影响范围，
  多页 tracking VMA 探针已确认未打补丁，但缺符号无法构造完整利用链
- 审计时进程 UID：**10159**（普通应用，无 root 无 adb）

---

## 3. 各漏洞速览（19 条）

| ID | 名称 | 包 / 组件 | UID | 严重性 | 验证 |
|----|------|-----------|-----|--------|------|
| V13 | 导出 Binder 服务，任意 SRMI 基带消息 | com.sprd.srmi / SrmiManager | 1000 | 严重 | 静态 |
| V06 | phasecheck 分区任意写入 | com.sprd.validationtools / AudioStationUpdateActivity | 1000 | 严重 | ✅ |
| V07 | Settings/NVRAM 任意写入 | com.sprd.validationtools / QmmiBroadcastReceiver2 | 1000 | 严重 | ✅ |
| V10 | system 私有目录任意文件写入 | com.sprd.engineermode / ModemAssertInfoActivity$ModemAssertReceiver | 1000 | 高 | ✅ |
| V11 | 任意拉起老化测试（含 reboot） | com.sprd.agingtest / PhoneBootReceiver | 1000 | 高 | ✅ |
| V12 | 任意拉起老化测试（含 reboot） | com.sprd.factorytest / PhoneBootReceiver | 1000 | 高 | ✅ |
| V14 | 系统日志外泄至 sdcard | com.baidu.duershow.statistic / SystemLogRequestReceiver | 1000 | 高 | 部分 ✅ |
| V15 | system UID 下 sh 执行原语（**形态完美、入口被 RSA 签名锁死**） | com.baidu.duershow.statistic / CommandExecutor | 1000 | 高 | 静态 |
| V16 | phasecheck miscdata 任意偏移写入 | com.sprd.validationtools / CountryCodeSettings | 1000 | 高 | 静态 |
| V17 | SAVE_PHASECHECK 权限未定级，任意 station 篡改 | com.sprd.validationtools / PhaseCheckBroadcastReceiver | 1000 | 高 | 静态 |
| V18 | 静默重启调度面（属性默认开启） | com.unisoc.silent.reboot / UniSilentRebootReceiver | 1000 | 中 | 静态 |
| V20 | 产测框架 prod_file 全权读写模板缺陷 | 多个产测应用 | 1000 | 中 | 静态 |
| V01 | 恢复出厂设置可被拉起 | com.sprd.validationtools / instructions.FactoryReset | 1000 | 中 | 静态 |
| V08 | 隐藏工厂模式入口 | com.sprd.validationtools / ValidationToolsBroadcastReceiver | 1000 | 中 | 静态 |
| V03 | Provider 写操作无权限，可静默卸载 | com.baidu.duer.ota / ThirdAppContentProvider | 1000 | 中 | 静态 |
| V04 | Provider 写操作无权限（v1.1 修正理由） | com.baidu.duerguard / DuerGuardContentProvider | 1000 | 中 | 静态 |
| V05 | 隐藏系统属性写后门（隐藏码表补全为 8 个） | com.sprd.engineermode / EMStartReceiver | 1000 | 中 | 静态 |
| V02 | system UID 执行 ping，地址可控 | com.sprd.engineermode / PingActivity | 1000 | 低 | ✅ |
| V19 | 引用未声明的自定义权限 | com.sprd.validationtools / QmmiBroadcastReceiver | 1000 | 低 | 静态 |

---

## 4. ⚠️ 交接时必须知道的仓库质量问题（接手前先决策）

以下几点是本次审计过程中形成的**待处理项**，不影响已交付内容，但影响后续维护：

1. **`_work/` 被 git 跟踪（5373+ 文件）** —— **✅ 决策已定：保持跟踪不动。**
   历史：v1.1 提交 `4e755d1` 把反编译工作区（含完整 DuerGuard APK 反编译产物、
   `.so` 二进制、res、META-INF）全部纳入版本控制，导致仓库体积膨胀。
   v1.2 复核后确认：**该决策不改**（保留证据链），代价是仓库偏大。
   - 后果：`.gitignore` 里排除 `*.dex`/`*.jar`/编译产物的规则对已提交的二进制**不生效**。
   - 若将来确要清理，用 `git rm -r --cached _work/` + 在 `.gitignore` 加 `_work/`，
     做一次专门提交。**但不要悄悄做**——需确认是否要保留证据链。
2. **`_work/em_key` 与 `_work/ds_key` 是 v1.2 新增的「关键类快照」**（12 个 java 文件，326KB）。
   - 全量 jadx 产物（63MB / 4000+ 文件）**没有入库**，只保留证据链上的类。
   - `sinks.py` 默认只扫这两个目录，产出约 10 条。
   - 要复现 168 条全量基线，需 `--roots` 指向本地 6 个 em dex + ds 的反编译目录
     （命令见 `docs/V21` 开头）。
   - `sinks.py` 有**防误覆盖**：本次命中数少于已有基线时拒绝写入，需 `--force`。
3. **V18 / V19 / V20 文档已补齐**（v1.1.1 完成）—— 此项已关闭。
4. **`PUSH.md` 在 v1.1 被删除**：原「Git 推送指引 + 负责任披露流程」已不在仓库，
   但 `.gitignore` 与协作约束仍在。远程信息见本文抬头。
5. **LICENSE 删过又加回**：`1e23f80` 删除、`96da743` 重新以 ddtftx1 名义加回 MIT。
   当前 LICENSE 有效，无需处理，仅记录。
6. **CVE-2024-31317 结论（v1.2 已坐实）**：不可利用的真正原因是
   **全固件 0 处「键名可控的 `Settings.Global` 写入入口」**
   （`WRITE_SECURE_SETTINGS` 权限其实由 engineermode 持有）。
   实测数据：engineermode 17 处 + duershow.statistic 2 处 = 19 处 `put*`，
   键名 100% 可静态定值；全固件 130 APK → 43 引用 → 8 个 uid1000 候选 → 0 变量键。
   详见 `docs/V21-settings-global-sink-audit.md`。
7. **root 链可行性已下结论**：三条路径（V02 ping 注入 / Settings 变量键 /
   SRMI native 破坏）**全部不通**。不要再重复投入。
   - V02：`exec(String[])` + `split("\\s+")`，分号无法逃逸
   - Settings：0 处变量键
   - SRMI native：无危险 libc、边界检查正确、接收不越界
   - 剩下的唯一方向是 **CP 固件**（SRMI 基带侧解码器），需固件镜像。

---

## 5. 复现环境与工具链

- **执行环境**：设备上的 **Termux**（`untrusted_app` 域，UID 10159），
  通过 MCP 工具 `termux:run` 直接跑 shell；**不要**在设备上跑重型反编译
  （framework.jar 34MB 的 jadx 曾把可用内存耗到 777MB 触发风险）。
- **反编译**：jadx（对单 APK / 单 dex 可行，全量 framework 不建议）；
  字节码级分析用自写 Python（`~/scan/findexec2.py` 等，DEX class_def 字段布局
  是踩坑修正过的，参考 `analysis/` 里的脚本）。
- **组件/权限清单数据源**：`analysis/audit.json`（130 APK、2262 导出组件）、
  `analysis/prov_unsafe.json`（52 个真正无保护 Provider）、`analysis/exec_callers.json`。
- **PoC**：`poc/poc.sh` 默认 **dry-run**；破坏性操作（NVRAM 写、FactoryReset、老化测试 Start）
  不自动化；SrmiClient（`poc/java/`）分三档风险。所有实机验证后**必须回滚**。
- **GitHub 访问**：国内设备直连 GitHub 不稳，用设备上的 GitHub 应用（屏幕操作）；
  仓库走 SSH remote。

---

## 6. 硬性约束与安全红线（务必遵守）

- 全程**普通应用权限（UID 10159）**，无 root、无 adb。
- 每个漏洞附**回滚方式**；验证后设备必须恢复到干净态（UID 10159、无残留属性/文件）。
- PoC 默认 dry-run；**破坏性操作不自动化**，需人工确认。
- **敏感信息检查**：提交前确认无真实 IP / IMEI / 序列号泄漏（`.gitignore` 已排除 `*.local`/`secrets/`）。
- 本项目仅用于**授权范围内的研究**，严禁用于未授权设备；披露走厂商/CNVD/CVE 渠道。

---

## 7. 接手 Checklist

- [x] 确认本地 git 可访问远程（`git fetch origin` 无报错）—— v1.2 已验证
- [x] 确认工作树干净（`git status -s` 无输出）—— 当前干净
- [x] 决策 `_work/` 是否从 git 移除（§4.1）—— **已定：保持跟踪**
- [x] 决策是否补齐 V18/V19/V20 文档（§4.2）—— **已完成**（v1.1.1）
- [x] 决策是否恢复 PUSH.md / 并入 README（§4.3）—— 远程信息已写入本文抬头
- [ ] 新增漏洞从 **V22** 起编号（**V21 已被复核文档占用**，V09 不复用）
- [ ] 新增/修改后：更新 README 索引表、CHANGELOG、实机验证统计口径，
      最后做敏感信息检查（`git ls-files -mo` + IP/IMEI/本机路径扫描）再提交推送
- [ ] **改 `_work/*.py` 后确认仍能从仓库根跑通**（`python3 _work/verify_stats.py`）
- [ ] **改 `poc.sh` 后跑一次 `sh poc.sh`**，确认不出 FAIL（普通应用身份应 0 FAIL + 若干 SKIP）

---

## 8. 关键结论备忘（避免重复劳动）

### 8.1 root 链已全部否定（v1.2，不要再试）

| 路径 | 结论 | 一句话证据 |
|---|---|---|
| V02 ping 注入 → uid1000 shell | ❌ | `exec(String[])` + `split("\\s+")`；Activity 还 `exported="false"` |
| Settings.Global 变量键 → 31317 | ❌ | 全固件 0 处变量键（19 处 `put*` 全硬编码） |
| SRMI native 破坏 → 同进程 | ❌ | 无 `strcpy` 家族；边界检查正确；接收不越界 |

**剩余唯一方向**：CP 固件（SRMI 在基带侧的解码器），需要固件镜像 ——
本仓库没有，此路径到此为止。

### 8.2 其他已排除/已确认项

- `PingActivity` 的 `exported` 状态：**`false`**，只能从 EngineerMode UI 进入。
- `Runtime.getRuntime().exec()` 在固件里共 7 处（engineermode 5 + duershow 2），
  全部已核对调用点，无外部可控入口。
- `UsbDebugImpl.openDebugMode()`（写 `adb_enabled=1`）是**死代码**，且 ADB 开关键在
  case 6 被厂商删除 → 无法借路径开 ADB。
- `Mali r34p0` 的 CVE-2023-4211 漏洞前提**存在**（多页 tracking VMA 被接受），
  但缺 kallsyms 符号 + userns 禁用 → 无法构造完整利用链，仅确认前提。
- OTA 应用（`com.baidu.duer.ota`，system UID）可**静默卸载/强制升级**第三方应用，
  但**不能安装任意 APK**（安装包 URL 由 OTA 服务器下发，无法从 Provider 注入）。
- `com.baidu.launcher`（UID 10077，非 system）有 **5 个无保护导出 Provider**
  （口径：只数 provider）。**按所有导出类型（含 receiver/activity）+ 零权限重算为 21 个**
  （v1.3 重解析，见 `docs/REA-1.3-全量重审报告.md` §3.3）。
  影响面有限，未单列。
- 产测框架 `prod_file`：`sprd_validationtools_app` 与 `sprd_autoslt_app` 均全权读写，
  系统性模板缺陷（V20）；实际落点未验证，**不建议当作可利用漏洞上报**。
- `com.baidu.duershow.statistic` 的 `CommandExecutor` 形态完美（`exec("sh")` + 任意
  字符串进 stdin），但唯一入口 `parseResult` 需 `SHA1withRSA` 签名（公钥硬编码），
  私钥只在百度服务端。**是「已上膛的扳机」，不是「不可注入」。**
  README 旧文「`setProcArray` 无调用者」是错的 —— 实测 `CommonUtil.java:536` 有调用。
