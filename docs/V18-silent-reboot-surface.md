# V18 — `com.unisoc.silent.reboot` 静默重启调度面（属性默认开启）

| 项 | 值 |
|----|----|
| **严重性** | 🟡 中 |
| **CWE** | CWE-1188 Insecure Default / CWE-732 未校验的调度面 |
| **受影响应用** | `com.unisoc.silent.reboot` (UniSilentReboot.apk, /system_ext/priv-app) |
| **UID** | **1000 (android.uid.system)** |
| **组件** | `UniSilentRebootReceiver`（exported=false）+ `UniSilentRebootService`（exported=true, BIND_JOB_SERVICE） |
| **控制属性** | `persist.silent.reboot.enabled`（默认 **true**） |
| **实机验证** | 静态确认（属性当前值实测为空，即处于默认激活态） |

---

## 1. 摘要

> ⚠️ **v1.2 勘误（E5）**：本条 **不是**外部可触发的导出组件漏洞。
> `UniSilentRebootReceiver` 的实际声明是 **`android:exported="false"`**，
> `adb` / 第三方应用发出的广播**根本到不了它**。
> 攻击面是「**开机后自动排程**」，不是「任意应用可拉起重启」。
> 严重度维持「中」才站得住 —— 它成立的前提是 V05 之类能写 `persist.*` 的入口，
> 而不是自身可达。

`com.unisoc.silent.reboot` 是展锐平台自带的**静默重启（Silent OTA reboot）**
框架：设备在预定的时间窗内无感知地重启，用于后台应用更新落地。它的行为
完全由一组 `persist.*` 属性控制，其中总开关
`persist.silent.reboot.enabled` **未设置时默认为 `true`**：

```java
// UniSilentRebootReceiver.onReceive()
if (SystemProperties.getBoolean("persist.silent.reboot.enabled", true)) {
    scheduleNextSilentReboot(2001, context, getSilentRebootTimeStamp());
}
```

本机实测该属性**未设置**（`getprop persist.silent.reboot.enabled` 为空），
`getBoolean(key, true)` 回落到默认值 `true` —— 即**调度器处于激活状态**，
开机广播后就会排一个 JobScheduler job（id=2001），到时间窗即
`PowerManager.reboot("quiescent")`。

### 1.0 三个入口的实际可达性（复核）

| 入口 | 声明 | 谁能触发 |
|---|---|---|
| `UniSilentRebootReceiver` | **`exported="false"`** | 只有系统能发 `BOOT_COMPLETED` / `LOCKED_BOOT_COMPLETED`（都是 protected broadcast）；**第三方应用、`adb shell` 均不可** |
| `UniSilentRebootService` | `exported="true"` + `permission="android.permission.BIND_JOB_SERVICE"`（`signature`） | 只有 JobScheduler（system_server）能绑定；第三方应用拿不到该权限 |
| `persist.silent.reboot.*` 属性 | 需 system UID / root 才可 `setprop` | 普通应用不能直接写；**需要借道 V05 这类属性写后门** |

> 📌 因此本条的准确定位是：**一个「默认开启 + 无人看守」的调度器，
> 其控制面（`persist.*` 全家桶）对本机已有的属性写漏洞完全敞开。**
> 单独看它不可利用，与 V05 组合后才是「可被外部操控的静默重启」。

### 1.1 本条为什么是「调度面」而不是「可直接触发的重启」

直接触发路径全部有保护，**普通应用无法直接拉起重启**：

| 入口 | 保护 | 说明 |
|------|------|------|
| `UniSilentRebootReceiver` | **`exported="false"`** | 监听 `BOOT_COMPLETED` / `LOCKED_BOOT_COMPLETED`，二者均为 **protected broadcast**，普通应用发不出；且组件本身不导出，显式 `-n` 也会被拒 |
| `UniSilentRebootService` | `BIND_JOB_SERVICE`（signature） | 唯一合法启动方是 JobScheduler，普通应用无法绑定 |
| 属性写入（`SystemProperties.set`）| 需 system UID / root | 普通应用无法写 `persist.*` |

真正的风险在于**这些控制属性本身是暴露的攻击面**：只要有**任意一条**
system UID 应用的属性写漏洞（本机即 V05 `EMStartReceiver` 的隐藏属性写后门），
就能改写 `persist.silent.reboot.*` 全家桶，操控静默重启的开关与时间窗。
因此 V18 定级为「中」，性质是**可被组合操控的默认开启的重启调度面**，
单独不可利用，与 V05 组合后风险升级。

---

## 2. 漏洞代码（jadx 反编译自 UniSilentReboot.apk，20KB / 单 dex）

### 2.1 清单（aapt dump）

```xml
<application android:label="ROR">
  <service android:name="com.unisoc.silent.reboot.UniSilentRebootService"
           android:permission="android.permission.BIND_JOB_SERVICE"
           android:exported="true">
    <intent-filter><action android:name="com.unisoc.silent.reboot.start_job_service"/></intent-filter>
  </service>
  <receiver android:name=".UniSilentRebootReceiver" android:exported="false">
    <intent-filter>
      <action android:name="android.intent.action.LOCKED_BOOT_COMPLETED"/>
      <action android:name="android.intent.action.BOOT_COMPLETED"/>
    </intent-filter>
  </receiver>
</application>
<!-- 权限：REBOOT / RECOVERY / WAKE_LOCK / RECEIVE_BOOT_COMPLETED 等 -->
```

### 2.2 Receiver：不校验 action，属性总开关默认 true

```java
public class UniSilentRebootReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        intent.getAction(); // 读取了但从未使用 → 不区分 BOOT / LOCKED_BOOT
        if (SystemProperties.getBoolean("persist.silent.reboot.enabled", true)) {
            UniSilentRebootUtils u = new UniSilentRebootUtils(context);
            u.scheduleNextSilentReboot(2001, context, u.getSilentRebootTimeStamp());
        }
    }
}
```

### 2.3 Service：时间窗命中即 `reboot("quiescent")`

```java
public class UniSilentRebootService extends JobService {
    @Override
    public boolean onStartJob(JobParameters p) {
        if (!SystemProperties.getBoolean("persist.silent.reboot.enabled", true)) {
            cancelJobService(); return false;
        }
        RebootTimeWindow win = utils.CreateRebootTimeWindow(
                utils.getRebootTimeWindowStart(),            // persist.config.silent.reboot.start
                utils.getRebootTimeWindowIncrement(),        // persist.config.silent.reboot.retry
                utils.getRebootTimeWindowDuration());       // persist.config.silent.reboot.duration
        executor.execute(() -> {
            if (utils.isDevicePreparedForReboot()) {        // 屏幕亮/非通话/非录音/电量≥30% 等
                if (utils.isValidRebootTimeStamp(now, win)) {
                    if (keyguard == null || !keyguard.isDeviceSecure())
                        powerManager.reboot("quiescent");   // ← 直接静默重启
                    else
                        utils.silentRebootForApply();        // 有锁屏时走 apply 流程
                } else
                    scheduleNextSilentReboot(2001, context, nextTimestamp); // 顺延
            } else
                scheduleNextSilentReboot(2001, context, nextTimestamp);
            jobFinished(p, false);
        });
        return true;
    }
}
```

### 2.4 属性清单（全部 `persist.*`，默认值回落到 res 常量）

| 属性 | 含义 | 代码默认 |
|------|------|---------|
| `persist.silent.reboot.enabled` | 总开关 | **true** |
| `persist.config.silent.reboot.start` | 时间窗起始（小时） | res 2130771971 |
| `persist.config.silent.reboot.duration` | 时间窗长度 | res 2130771968 |
| `persist.config.silent.reboot.retry` | 时间窗增量 | res 2130771969 |
| `persist.config.silent.reboot.period` | 周期（天，-1=按 res） | res 2130771970 |
| `persist.config.silent.reboot.disabled_usb` | USB 连接时禁用 | 资源常量 |

实测（2026-11-27，`getprop`）：以上全部为空 → **总开关取默认 true，调度处于激活态**。

---

## 3. 影响

1. **默认开启的静默重启**：出厂未设置任何属性的设备，会在时间窗内静默重启
   （`quiescent` 模式，不经过用户确认），对生产/售后场景是可用性风险。
2. **组合利用面**：V05（`EMStartReceiver` 隐藏属性写后门）能写任意 `persist.*` 属性
   的话，可：① 关闭静默重启（置 `enabled=0`）制造设备「假死」；② 把时间窗改到任意
   时刻，在目标时间**远程触发静默重启**（拒绝服务）。二者均为 system UID 执行，
   普通应用即可间接触发。
3. **电量/状态门槛可被状态操控绕过**：`isDevicePreparedForReboot` 检查屏幕/通话/
   录音/电量 ≥30%，但这些状态本身受其他组件影响，进一步降低利用门槛。

---

## 4. 复现（dry-run，只读验证，不触发重启）

```bash
# 1. 确认调度面当前处于激活态（属性未设置 = 默认 true）
getprop persist.silent.reboot.enabled          # 空 → 激活
getprop persist.config.silent.reboot.start     # 空 → res 默认

# 2. 确认 Receiver/Service 导出状态（只读，不广播）
aapt dump xmltree /system_ext/priv-app/UniSilentReboot/UniSilentReboot.apk \
  AndroidManifest.xml | grep -A3 'exported'

# 3. 组合路径（需 V05，破坏性，默认不执行）：
#    写 persist.silent.reboot.enabled=0 可关闭调度；写时间窗属性可改重启时刻。
#    本仓库 PoC 不自动化该步骤。
```

> **回滚**：`persist.silent.reboot.*` 全部 `setprop` 清空即恢复默认；
> 重启后 persist 属性保留，需逐项删除或恢复原值。

---

## 5. 修复建议

- 总开关默认值改为 **false**（显式 `set` 才启用），消除「未设置=激活」的隐含行为。
- Receiver 内补 `action` 校验（当前读取了 action 却未使用）。
- 时间窗/周期等参数不要允许任意 `persist.*` 属性覆写，改为受签名保护的固定
  属性或 `Settings.Global`（需权限）。
- 将本应用纳入 V05 的隐藏属性写后门回归测试范围。

---

## 6. 实机验证状态

静态确认。证据链：jadx 反编译代码（2.2–2.4 节）+ 清单导出状态（aapt dump）+
属性实测（当前全部为空，调度默认激活）。未实际触发重启（破坏性，且直接路径
均受 protected broadcast / BIND_JOB_SERVICE 保护，普通应用无法单点复现）。
