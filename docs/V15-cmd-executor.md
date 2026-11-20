# V15 — system UID 进程内的 `sh` 执行原语（`CommandExecutor`）

| 项 | 值 |
|----|----|
| **严重性** | 🟠 高（纵深防御缺口）|
| **CWE** | CWE-78 OS Command Injection（**当前不可注入**）|
| **受影响应用** | `com.baidu.duershow.statistic` |
| **UID** | **1000** |
| **类** | `com.baidu.duershow.crab.util.CommandExecutor` |
| **实机验证** | 静态确认 |

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
