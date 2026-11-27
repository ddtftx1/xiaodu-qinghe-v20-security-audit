# V15 — system UID 进程内的 `sh` 执行原语（`CommandExecutor`）

| 项 | 值 |
|----|----|
| **严重性** | 🟠 高（纵深防御缺口）→ **v1.2 上调见下** |
| **CWE** | CWE-78 OS Command Injection（**当前不可注入**）|
| **受影响应用** | `com.baidu.duershow.statistic` |
| **UID** | **1000** |
| **类** | `com.baidu.duershow.crab.util.CommandExecutor` |
| **实机验证** | 静态确认 |

> ⚠️ **v1.2 重定级（E8）：从 root 视角看，这是本机最接近「扳机」的代码。**
>
> v1.1 把它当成「纵深防御缺口」草草带过，理由是「当前不可注入」。但换到
> **「如何在 uid 1000 里执行任意字符串」**这个目标下，它的形态是**完美**的：
>
> ```java
> Runtime.getRuntime().exec("sh");            // 起一个 shell
> dataOutputStream.write(str.getBytes());     // 把任意字符串写进 stdin
> dataOutputStream.writeBytes("\n");
> dataOutputStream.writeBytes("exit\n");
> ```
>
> 这**正是** CVE-2024-31317 需要的原语形态：`settings put global
> hidden_api_blacklist_exemptions "<payload>"` 只要作为 `str` 传进来就能执行。
>
> **所以正确的定级不是「不可注入的纵深防御」，而是「已上膛但保险扣着的扳机」。**
>
> ### 保险扣在哪：RSA 签名（v1.2 新发现）
>
> v1.1 写「唯一的可变部分是 `procName`（来自进程枚举）」，
> 并称 `HardwareMonitor.setProcArray(JSONArray)`「**无任何内部调用者**」。
>
> **后者是错的。实测有调用者：`CommonUtil.java:536`。**
>
> ```
> PullConfigThread.run() / CrabSDK.pullConfigManually()
>   └─ HttpURLConnSender.pullFromServer(1)          ← POST 到 pullConfUrl
>        └─ CommonUtil.parseResult(response)
>             └─ 必须含 "<sign>:" 分隔
>                  └─ RSAUtils.verify(body, sign)   ← SHA1withRSA，公钥硬编码
>                       └─ JSON data.hw.proc 数组
>                            └─ HardwareMonitor.setProcArray(...)
>                                 └─ new Task(C.MEM_INFO, " dumpsys meminfo --local " + procName)
>                                      └─ CommandExecutor.execCommand(cmd)   ← 到这里才执行
> ```
>
> `RSAUtils.verify()` 用硬编码的 1024-bit RSA 公钥校验 `SHA1withRSA` 签名，
> 私钥只在百度服务端。**offline 分支虽然是明文 HTTP，但签名校验与传输层无关，
> 拦包改不了签名。**
>
> ### 修正后的定级
>
> | 维度 | 评价 |
> |---|---|
> | 原语完整度 | ⭐⭐⭐⭐⭐ 完美（`exec("sh")` + 任意字符串进 stdin） |
> | 调用点数量 | 1 处（`CommonUtil.getReportByLineFromTask`） |
> | 输入可控性 | ❌ 被 `SHA1withRSA` 签名锁死 |
> | **一旦签名的锁被打开** | **立即升级为 uid 1000 任意命令执行 → 接 31317 → root** |
>
> 因此建议的表述是：**「形态完美、入口被签名锁死」**，而不是「不可注入」。
> 它应该被单列为本项目**最需要持续关注的代码**，而不是埋在 19 条里当纵深防御看。
>
> 三种会让它立刻生效的情况：
> 1. RSA 私钥泄漏（服务端侧）
> 2. `parseResult` 被任何其它入口以无签名数据调用（当前只有 2 处调用点，均为网络拉取）
> 3. 任何新增的 `execCommand(String)` 调用点
>
> 详见 `docs/V21-settings-global-sink-audit.md` §3。

---

## 1. 摘要

`com.baidu.duershow.statistic`（**system UID**）内置了一个完整的任意命令执行
原语：启动 `sh`，把字符串写入其 stdin，再发送 `exit`。

**本次审计结论：当前不可从外部注入。** 但这是一个高危的纵深防御缺口 ——
一旦上游出现任何可控输入，立刻升级为 root 级 RCE。

## 2. 漏洞代码

```java
// com.baidu.duershow.crab.util.CommandExecutor
public static CommandResult execCommand(String str) {
    Process processExec = Runtime.getRuntime().exec("sh");   // ← 起 sh
    DataOutputStream dos = new DataOutputStream(processExec.getOutputStream());
    dos.write(str.getBytes());           // ← 任意命令
    dos.writeBytes("\n");
    dos.flush();
    dos.writeBytes("exit\n");
    dos.flush();
    int rc = processExec.waitFor();
    ...
}
```

调用链：

```
HardwareMonitor.excuteMonitorTask()
  └─ CommonUtil.getReportByLineFromTask(new Task(C.MEM_INFO,
         " dumpsys meminfo --local " + procName))
       └─ CommandExecutor.execCommand(task.getCommand())
```

## 3. 为何当前不可注入

审计中逐项排除了所有可控输入：

| 检查项 | 结论 |
|--------|------|
| 命令前缀 | 全部为 `C.DUMP_CPU_INFO` / `C.MEM_INFO` / `C.STORAGE_INFO` 等**硬编码常量** |
| 唯一可变部分 `procName` | 来自系统进程枚举（`ActivityManager.getRunningAppProcesses`）|
| `HardwareMonitor.setProcArray(JSONArray)` | 虽为 `public`，但**无任何内部调用者** |
| `Task` 构造点 | 全项目仅 `HardwareMonitor` 一处 |
| `getReportFromTask` | 0 调用者 |

## 4. 仍然值得报告的理由

1. **system UID + 无鉴权的字符串→shell** 是典型的高危模式
2. 同类代码在 `com.baidu.launcher`（UID 10077）中也存在，说明是**复制粘贴扩散**
3. 未来任何一次功能迭代（如「支持远程配置监控进程名」）都会直接变成 RCE
4. 若攻击者能篡改 `procArray` 的来源（如通过 V14 的文件写入），即可打通

## 5. 建议

- 彻底移除 `CommandExecutor`，改用 `ProcessBuilder` + 参数数组（不经 shell）
- 若必须执行 shell，对参数做严格白名单（如只允许 `[A-Za-z0-9._-]`）
- 对 `setProcArray` 等 public 方法加可见性收敛
