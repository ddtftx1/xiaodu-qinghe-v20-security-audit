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

## 一、shell 脚本（V01–V12）

```bash
# 推送到设备
adb push poc.sh /data/local/tmp/

# 默认 dry-run：只打印将执行的命令
adb shell sh /data/local/tmp/poc.sh

# 真正执行
adb shell sh /data/local/tmp/poc.sh --yes
```

设计要点：

- **默认 dry-run**，必须先看一遍输出
- 破坏性操作（NVRAM / FactoryReset / 老化测试 Start）**不自动执行**，只打印命令
- 每个漏洞都附带**回滚方法**

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
