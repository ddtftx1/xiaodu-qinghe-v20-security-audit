# V16 — `CountryCodeSettings` phasecheck miscdata 任意偏移写入

| 项 | 值 |
|----|----|
| **严重性** | 🟠 高 |
| **CWE** | CWE-306 Missing Authentication for Critical Function<br>CWE-787 Out-of-bounds Write |
| **受影响应用** | `com.sprd.validationtools` (MMITools.apk, /system/app) |
| **UID** | **1000 (android.uid.system)** |
| **组件** | `com.hmd.miscdatawriter.CountryCodeSettings` |
| **exported** | `true` |
| **permission** | **无** |
| **action** | `sprocomm.intent.action.SKUID` |
| **SELinux 域** | `sprd_validationtools_app` |
| **实机验证** | 静态确认（未实测） |

---

## 1. 摘要

`CountryCodeSettings` 是一个完全导出、无权限保护的 `PreferenceActivity`。它的
`onCreate()` 在处理「常规 UI 流程」之前，先检查两个 Intent extra，并**无条件**
把其内容写入 phasecheck 分区的 miscdata 区。

关键在于 `Build.IS_DEBUGGABLE` 的调试版校验**排在这两个写入分支之后**，因此
对写操作完全无效：

```java
if (saveFlag != null)  { write(9252,  saveFlag.getBytes());  finish(); return; }
if (saveFlag1 != null) { write(11216, saveFlag1.getBytes()); finish(); return; }
...
addPreferencesFromResource(R.xml.pref_skuid);
if (!Build.IS_DEBUGGABLE) { finish(); }   // ← 校验发生在这里，为时已晚
```

任何第三方应用（或 adb shell）只需发一个 Intent，即可向 phasecheck 的
**SN1 区（偏移 9252）** 或 **CPUID 区（偏移 11216）** 写入**任意字节、任意长度**。

> 与 V06 的区别：V06 只能把 `AUDIO` station 标成 PASS/FAIL 两个固定值；
> V16 的内容、长度完全由调用方控制，且写入位置落在出厂标识数据上。

## 2. 漏洞代码

### 2.1 入口（onCreate）

```java
// com/hmd/miscdatawriter/CountryCodeSettings.java
private static final int MISCDATA_SKUID_OFFSET  = 10112;
private static final int MISCDATA_SKUID_SZ      = 18;
private static final int MISCDATA_WALLPP_OFFSET = 10130;
private static final int MISCDATA_WALLPP_SZ     = 5;

@Override
protected void onCreate(Bundle bundle) {
    super.onCreate(bundle);
    String saveFlag  = getIntent().getStringExtra("save_flag");    // ← 外部可控
    String saveFlag1 = getIntent().getStringExtra("save_flag1");   // ← 外部可控
    Log.d("skuid", "Build.IS_DEBUGGABLE " + Build.IS_DEBUGGABLE
                 + " saveFlag " + saveFlag + " saveFlag1 " + saveFlag1);

    if (saveFlag != null) {
        PhaseCheckParse.getInstance().writeMiscdataOffsetByteArray(9252, saveFlag.getBytes());
        finish(); super.onCreate(null); return;
    }
    if (saveFlag1 != null) {
        PhaseCheckParse.getInstance().writeMiscdataOffsetByteArray(11216, saveFlag1.getBytes());
        finish(); super.onCreate(null); return;
    }

    addPreferencesFromResource(R.xml.pref_skuid);
    if (!Build.IS_DEBUGGABLE) { finish(); }   // ← 无效校验
    ...
}
```

### 2.2 底层写入

```java
// PhaseCheckParse.java
public boolean writeMiscdataOffsetByteArray(int i, byte[] bArr) {
    if (bArr == null || bArr.length <= 0) { return false; }   // 仅判空，无长度上限
    try {
        Parcel parcel = new Parcel();
        Parcel parcel2 = new Parcel();
        parcel.writeInt(i);                                   // offset
        parcel.writeByteArray(bArr, 0, bArr.length);          // 内容，完全可控
        this.binder.transact(17, parcel, parcel2, 0);         // TYPE_WRITE_OFFSET
        ...
        return true;
    } catch (UnsupportedEncodingException | IndexOutOfBoundsException
           | NullPointerException e) { return false; }
}
```

`binder` 是 `AdaptBinder`，把 Parcel 封装成 12 字节头（code / dataSize /
replySize）+ 数据体，通过 **abstract local socket `phasecheck_srv`** 发给
`phasecheckserver`，由后者写入 phasecheck 分区。

SELinux 侧已确认该链路可达：

```
(allow sprd_validationtools_app phasecheckserver (unix_stream_socket (connectto)))
(allow phasecheckserver mmcblk_device (blk_file (read write getattr open)))
```

### 2.3 长度上限

`AdaptBinder.AdaptParcel.data` 固定 **4096** 字节，`sendCmdAndRecResult()`
在偏移 12 处做 `System.arraycopy`，而 `parcel.dataSize()` 含 4 字节长度前缀：

```
4096 - 12(头) - 4(长度前缀) = 4080 字节
```

超过 4080 时 `convertAdaptParcel` 抛 `ArrayIndexOutOfBoundsException`
（`IndexOutOfBoundsException` 的子类），被 `writeMiscdataOffsetByteArray`
的 catch 吞掉，写入不会发生。因此**有效载荷上限约 4080 字节**，属于
可安全处理的失败路径，不构成崩溃面。

### 2.4 miscdata 偏移布局（已确认部分）

| 偏移 | 用途 | 可达路径 |
|------|------|---------|
| `9252` | SN1 区 | **`save_flag` extra** |
| `10112` | SKUID / country_code（18 字节） | Preference UI（受 IS_DEBUGGABLE 实际阻断） |
| `10130` | wallpaper_id（5 字节） | Preference UI（同上） |
| `11216` | CPUID 区 | **`save_flag1` extra** |
| `786432` | usersetion base | `BaseActivity` 常量，未找到外部入口 |
| `786476` | usersetion AGING | 同上 |
| `786506` | usersetion RING_TUNE | 同上 |

只有 `9252` 与 `11216` 是可从外部直接触达的。Preference 分支虽然也会
写 `10112` / `10130`，但需要用户在界面上点击，而 Activity 已在
`addPreferencesFromResource` 之后被 `finish()`，实践上不可达。

## 3. 影响

1. **出厂标识数据被持久化篡改** —— SN1、CPUID 属设备身份信息，
   影响保修核验、产线追溯、部分绑定服务
2. **越界覆盖** —— 写满 4080 字节时，从 9252 起覆盖至 13332，
   将连带吞掉 SKUID(10112)、wallpaper_id(10130)、CPUID(11216) 三个相邻字段
3. **不可逆** —— 见下节
4. **权限借用** —— 写入以 system UID 执行，普通应用即可间接获得该能力

## 4. 复现

```bash
# 写入 SN1 区（偏移 9252）
adb shell am start -n \
  com.sprd.validationtools/com.hmd.miscdatawriter.CountryCodeSettings \
  -a sprocomm.intent.action.SKUID \
  --es save_flag "POC_SN1"

# 写入 CPUID 区（偏移 11216）
adb shell am start -n \
  com.sprd.validationtools/com.hmd.miscdatawriter.CountryCodeSettings \
  -a sprocomm.intent.action.SKUID \
  --es save_flag1 "POC_CPUID"
```

Activity 完全导出且无权限，`adb shell`（UID 2000）可直接启动，
**不依赖任何第三方 APK**——这一点与 V17 不同。

> ⚠️ 偏移 9252 / 11216 保存的是设备出厂标识，写入后**无法伪造原值**。

## 5. 回滚

**本项目未找到可用的回滚路径，这是本漏洞最需要警示的一点。**

`PhaseCheckParse` 虽有 `readMiscdataOffsetByteArray(int offset, int count)`
（`transact(18)` / `TYPE_READ_OFFSET`），但**没有任何导出组件暴露读取能力**：

| 组件 | 能力 |
|------|------|
| `CountryCodeSettings` | 只写 |
| `PhaseCheckBroadcastReceiver` | 只写 |
| `AudioStationUpdateActivity` | 只写（固定 AUDIO station） |

因此无法通过应用层读回原值再写回。可行的回滚方式仅有：

1. **事先备份**：在写入前用产线工具 / 售后工具读取 miscdata 9252 与 11216 区
2. **整机恢复**：使用厂商官方刷机包重刷 phasecheck 分区

**结论：不要在非自有测试设备上执行第 4 节的命令。**

## 6. 修复建议

### 6.1 组件收敛（首选）

```xml
<activity android:name="com.hmd.miscdatawriter.CountryCodeSettings"
          android:exported="false" />
```

### 6.2 若产线确需外部调用

1. 增加 `android:permission`，且 `protectionLevel` 显式设为
   `signature` 或 `signatureOrSystem`（**不要省略该属性**，见 V17）
2. 把 `Build.IS_DEBUGGABLE` 校验**提到所有写操作之前**
3. 对 `save_flag` / `save_flag1` 做长度上限（如 32 字节）与字符白名单校验
4. 拒绝在非产线构建（`ro.build.type != eng/userdebug`）中处理这两个 extra

### 6.3 服务端加固

`phasecheckserver` 应对 `TYPE_WRITE_OFFSET(17)` 做偏移白名单校验，
只允许写入该字段声明范围内的长度（例如 10112 只接受 ≤18 字节、
10130 只接受 ≤5 字节），而不是信任调用方传入的 `dataSize`。
仅靠客户端校验不足以防御本类问题。

---

## 7. 与 V06 的关系

| | V06 | V16 |
|---|---|---|
| 组件 | `AudioStationUpdateActivity` | `CountryCodeSettings` |
| 写入 API | `writeStationPass/Fail`（transact 3/4） | `writeMiscdataOffsetByteArray`（transact 17） |
| 位置 | station 结果位图 | miscdata 9252 / 11216 |
| 内容可控性 | 仅 `"0"` / `"1"` | **任意字节** |
| 长度可控性 | 固定 | **≤4080 字节** |
| 回滚 | 再执行一次 PASS | **无应用层回滚路径** |
| 载荷性质 | 测试结果 | 出厂标识 |

二者共用 `PhaseCheckParse`，属同一攻击面的两个不同出口。
V06 文档第 5 节「同源风险」表已列出 `TYPE_WRITE_OFFSET = 17`，
但当时未找到外部入口——本漏洞补上了该入口。
