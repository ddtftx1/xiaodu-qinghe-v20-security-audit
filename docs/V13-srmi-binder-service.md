# V13 — `SrmiManager` 导出 Binder 服务（SRMI 消息任意收发）

| 项 | 值 |
|----|----|
| **严重性** | 🔴 严重（本轮最高） |
| **CWE** | CWE-306 Missing Authentication for Critical Function |
| **受影响应用** | `com.sprd.srmi` (Srmi.apk, /system_ext/priv-app) |
| **UID** | **1000** |
| **组件** | `com.sprd.srmi.SrmiManager` (Service) |
| **exported** | `true` (`0xffffffff`) |
| **permission** | **无** |
| **接口** | `com.sprd.srmi.ISrmiService` |
| **实机验证** | 静态确认（客户端见 poc/java）|

---

## 1. 摘要

`SrmiManager` 是一个 **完全导出、无任何权限保护** 的绑定服务，向所有应用暴露
完整的 SRMI（System Resource Management Interface，系统资源管理接口）消息
通道：`create / destroy / allocTxMessage / sendMessage / recvMessage /
put*Extra / get*Extra / putTLV / getTLV`，共 20+ 个方法。

**所有参数（`name`、`srmiCommType`、`msgId`、`attr`、`value`）均由调用方控制**，
底层直通 native JNI（`libsrmi_jni.so`）。

## 2. 漏洞代码

### 2.1 Manifest

```xml
<service android:name="SrmiManager"
         android:exported="true">
    <intent-filter>
        <action android:name="com.sprd.srmi.ISrmiService" />
    </intent-filter>
</service>
```

无 `android:permission`，无 `android:protectionLevel`。

### 2.2 native 方法（节选）

```java
public class SrmiManager extends Service {
    static { System.loadLibrary("srmi_jni"); }

    private native int    native_srmj_create(String name, int type);
    private native void   native_srmj_destroy(String name, int type);
    private native int    native_srmj_msg_send(String name, int type, short msgId);
    private native short  native_srmj_msg_recv(String name, int type);
    private native int    native_srmj_msg_put_str(String name, int type, short msgId, short attr, String v);
    private native int    native_srmj_msg_put_tlv(String name, int type, short msgId, short attr, String v);
    private native String native_srmj_msg_get_str(String name, int type, short msgId, short attr);
    ...
}
```

### 2.3 Binder 实现

```java
private class MyService extends ISrmiService.Stub {
    @Override public int sendMessage(String name, int type, int msgId) {
        return mMgr.native_srmj_msg_send(name, type, (short) msgId);
    }
    @Override public int putStringExtra(String name, int type, int msgId, int attr, String value) {
        return mMgr.native_srmj_msg_put_str(name, type, (short) msgId, (short) attr, value);
    }
    // ... 其余方法同样直接透传
}
```

## 3. 影响

SRMI 是展锐平台用于 **AP↔CP（应用处理器↔通信处理器）** 通信的通道，
常用于射频、音频、系统资源、诊断等领域。第三方应用能任意构造消息意味着：

1. **向基带发送未授权指令** —— 可能影响网络注册、射频参数
2. **向 SRMI 服务注册回调** —— 可窃听其他模块的消息（`registerCallback`）
3. **资源泄漏 / 句柄耗尽** —— 大量 `create` 而不 `destroy`
4. **潜在的内存破坏** —— native 层若未严格校验 `msgId/attr`，可能越界

> 这是本轮审计发现的**最大攻击面**：一个 system UID 进程，把整个底层
> 消息通道无鉴权地暴露给了任意第三方应用。

## 4. 复现

### 4.1 编译客户端

```bash
cd poc/java
./build.sh            # 需要 ANDROID_HOME + build-tools 31
```

或直接把 `ISrmiService.aidl` / `ISrmiCallback.aidl` / `SrmiClient.java`
导入 Android Studio 空项目编译。

### 4.2 安装并运行

```bash
adb install -r SrmiClient.apk
adb shell am start -n com.poc.srmi/.MainActivity
adb logcat -s SrmiPoc
```

界面按钮：

| 按钮 | 操作 | 风险 |
|------|------|------|
| 1. 绑定 SrmiManager | `bindService` | 无 |
| 2. 只读探测 | 调 `getStringExtra` / `getIntExtra` | 无（不改状态）|
| 3. create() 探测 | `create` + 立即 `destroy` | 低（已有清理）|

### 4.3 纯 adb 侧验证（不写代码）

```bash
# 确认服务导出
adb shell dumpsys package com.sprd.srmi | grep -A5 'Service'

# 确认进程与 native 库
adb shell ps -A | grep srmi
adb shell ls /system_ext/priv-app/Srmi/lib/arm64/
```

## 5. 修复建议

```xml
<service android:name="SrmiManager"
         android:exported="false"
         android:permission="com.sprd.srmi.permission.ACCESS_SRMI" />
```

并在 `MyService` 每个方法入口增加：

```java
private void enforceCaller() {
    int uid = Binder.getCallingUid();
    if (uid != Process.SYSTEM_UID && uid != Process.SHELL_UID) {
        throw new SecurityException("SrmiManager: caller uid " + uid + " denied");
    }
}
```

此外建议 native 层对 `msgId / attr / value` 长度做严格校验。
