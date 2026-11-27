# PoC 使用说明

## 目录

```
poc/
├── poc.sh              # 一键脚本（adb shell）
├── java/
│   ├── ISrmiService.aidl    # 从 SrmiManager 还原的接口
│   ├── ISrmiCallback.aidl
│   ├── SrmiClient.java      # V13 的 Binder 客户端 Demo
│   ├── AndroidManifest.xml
│   └── build.sh             # 命令行编译脚本
└── lib/
    └── common.sh            # 公共函数（颜色/日志/回滚注册）
```

## 一、shell 脚本（V01–V20）

```bash
# 推送到设备
adb push poc.sh /data/local/tmp/

# 1) 只读断言（默认，安全；会真读，不改任何状态）
adb shell sh /data/local/tmp/poc.sh

# 2) 连只读也只看计划
adb shell sh /data/local/tmp/poc.sh --dry-run

# 3) 同时跑破坏性项（需人工确认已备份）
adb shell sh /data/local/tmp/poc.sh --destructive
```

### 三种模式的区别（v1.2 改造）

| 模式 | 只读断言 | 触发类 | 破坏性 | 退出码 |
|---|---|---|---|---|
| 默认 | **真跑** | 身份够就跑 | 不跑 | 有 FAIL → 1 |
| `--dry-run` | 只打印 | 只打印 | 不跑 | 0 |
| `--destructive` | 真跑 | 真跑 | **真跑** | 有 FAIL → 1 |

### 输出契约

每项给出三态之一：

```
PASS  <断言名>
FAIL  <断言名>  [失败原因]
SKIP  <断言名>  [为什么跳过]
```

收尾打汇总表：

```
------------------------------------------------------------
PASS=8  FAIL=0  SKIP=4
------------------------------------------------------------
结论：无 FAIL
```

**任一 FAIL → `exit 1`**，可以直接接 CI 或 `&&` 链。

### SKIP 不等于通过

`SKIP` 的常见原因：

| 原因 | 说明 |
|---|---|
| 普通应用身份 | `dumpsys` / `settings get` / `am broadcast` 都会被权限检查拒，属于预期 |
| `--dry-run` | 只看计划 |
| 前置条件不满足 | 如 phasecheck 分区节点不存在 |

在普通应用身份（UID 10xxx）下跑，正常情况下应该是 **0 FAIL + 若干 SKIP**；
如果出现 FAIL，才是真的异常，值得追。

## 二、Java 客户端（V13 SrmiManager）

### 方式 A：命令行编译

```bash
export ANDROID_HOME=/path/to/android-sdk
cd poc/java && ./build.sh
adb install -r SrmiClient.apk
adb shell am start -n com.poc.srmi/.MainActivity
adb logcat -s SrmiPoc
```

### 方式 B：Android Studio

1. 新建空 Activity 项目（minSdk 31）
2. 把 `*.aidl` 放到 `app/src/main/aidl/com/sprd/srmi/`
3. 把 `SrmiClient.java` 放到 `app/src/main/java/com/poc/srmi/`
4. 修改 `applicationId` 和 `package`
5. 运行

客户端包含三个按钮：

| 按钮 | 行为 | 风险 |
|------|------|------|
| 绑定 SrmiManager | `bindService` | 无 |
| 只读探测 | 只调 `get*` 系列 | 无 |
| create() 探测 | `create` + 立即 `destroy` | 低 |

## 三、安全护栏

本仓库所有 PoC 遵循以下原则：

1. **默认不执行破坏性操作**
2. 不包含可导致设备变砖的自动化流程（NVRAM 写入、factory reset 确认）
3. 老化测试只拉起界面，**绝不点击 Start**
4. 每个操作都写明回滚方式
5. 文件名/命令中标注 `[高风险]` 前缀

## 四、测试前置

- 测试机必须是你**拥有所有权**的设备
- 建议先在**备用机**上验证
- 执行前记录当前状态：
  ```bash
  adb shell getprop > before.txt
  adb shell settings list global > before_settings.txt
  ```

## 五、常见问题

**Q: `am broadcast` 报 Permission Denial？**
A: 部分 action 受系统保护（如 `ACTION_SYSTEM_LOG_REQUEST`）。查看 logcat
   确认是否被 PackageManager 拦截，或换用 `am start` / `bindService` 路径。

**Q: `poc.sh` 里 `am start` 失败但文档说能成功？**
A: 检查该 Activity 是否 `exported`。V02 的 `PingActivity` 未导出，
   只能从 EngineerMode UI 进入，脚本中已注明。

**Q: SrmiClient 绑定服务失败？**
A: 确认目标包存在：`adb shell pm list packages | grep srmi`；
   确认已安装到 `/system_ext/priv-app`；检查 `dumpsys package com.sprd.srmi`。
