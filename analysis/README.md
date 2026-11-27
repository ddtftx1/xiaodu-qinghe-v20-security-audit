# analysis/ 数据文件口径说明

> 本目录的 JSON/TSV 都是**审计原始数据**，由 `_work/` 下的脚本生成。
> 使用前请先读这份说明 —— 每个文件的口径不同，混用会得出错误结论
> （V04 的两次误改就是这么来的）。

---

## 1. `audit.json`（727 KB）

**130 个系统 APK 的组件/权限清单**，是大部分统计的母本。

```json
{
  "pkg": "com.sprd.validationtools",
  "apk": "/system/app/MMITools/MMITools.apk",
  "shared": "android.uid.system",
  "perms": ["..."],
  "comps": [
    {"type": "provider", "name": "...", "exported": "true",
     "permission": "", "authorities": "...", "read": "", "write": "", "intent": []}
  ]
}
```

字段约定：

| 字段 | 取值 | 说明 |
|---|---|---|
| `shared` | `"android.uid.system"` / `null` | system UID 判定依据（**不是** `uid` 字段） |
| `comps[].type` | `activity` / `service` / `receiver` / `provider` | |
| `comps[].exported` | `"true"` / `"false"` / `"def"` | **`"def"` = 未显式声明但有 intent-filter，实际导出** |
| `comps[].permission` | 字符串 / `""` | |
| `comps[].read` / `.write` | 字符串 / `""` | 仅 `provider` 有意义 |
| `comps[].authorities` | 字符串 / 缺失 | 仅 `provider` |

### 1.1 已验证的统计口径

以下数字均已由脚本复算确认（`_work/verify_stats.py`、`_work/verify_claims.py`）：

```
APK 数                          130
导出组件（exported=true）        1081
导出组件（exported=def）         1181
导出组件合计                     2262
组件记录总数                     3204
system UID 包数                  21
```

---

## 2. `prov_unsafe.json`（9.3 KB，52 条）

**口径：`exported="true"` 且 `permission` / `read` / `write` 三字段全为空。**

```json
{"apk": "...", "name": "...", "auth": "..."}
```

> ⚠️ **本文件只用 `exported == "true"`，不含 `"def"`。**
> 这是 52 与 63 差异的唯一原因 —— 见 §2.1。

### 2.1 与「63 条」的差异（E7 勘误）

按同样判据、但把 `exported` 放宽到 `("true", "def")` 复算：

```
exported="true" 且三字段全空      →  52 条   ← 本文件的 52
exported="def"  且三字段全空      →  11 条   ← 本文件漏掉的
                                     ─────
合计                               →  63 条
```

**这 11 条 `exported="def"` 的零保护 Provider：**

| # | Provider 类名 |
|---|---|
| 1 | `com.baidu.simeji.dpreference.PreferenceProvider` |
| 2 | `com.baidu.duershow.media.client.upgrade.MediaUpgradeProvider` |
| 3 | *（name 为空，见 §2.2）* |
| 4 | `com.sprd.gallery3d.app.VideoBookmarkProvider` |
| 5 | `com.android.gallery3d.filtershow.provider.SharedImageProvider` |
| 6 | `com.android.gallery3d.v2.trash.db.TrashProvider` |
| 7 | `com.android.gallery3d.v2.discover.db.DiscoverProvider` |
| 8 | `com.android.gallery3d.v2.media.extras.MediaExtrasProvider` |
| 9 | `com.android.messaging.datamodel.MmsFileProvider` |
| 10 | `com.android.settings.dashboard.SummaryProvider` |
| 11 | `com.sprocomm.settings.childrenspace.SproChildrenSpaceProvider` |

**结论：11 条差额全部是口径遗漏，不是漏报的独立漏洞。**
它们确实是导出的零保护 Provider，但 8 条来自 AOSP 组件
（gallery3d / messaging / settings），3 条来自百度/展锐应用。
是否单列为漏洞需要按「能否被第三方应用触达 + 影响面」逐个判断，
不应该因为「在 52 里没出现」就认为安全 —— **这正是 V04 第二次误改的原因**。

### 2.2 `com.readboy.aicourseopen` 的空 name（E7 勘误）

`audit.json` 中确实有 1 条 `name` 为空的 provider：

```json
{"type": "provider", "name": "", "exported": "def",
 "permission": "", "authorities": "com.readboy.personal.personalProvider",
 "read": "", "write": "", "intent": []}
```

**判定：这是解析残缺，不是真实缺陷。**

依据：

1. `authorities` 有值（`com.readboy.personal.personalProvider`），说明
   `<provider>` 标签本身被正确识别；
2. 同包另外 4 个 provider 的 `name` 都完整解析出来了
   （`ErrorContentProvider` / `SPContentProvider` /
   `CollectionDataProvider` / `PrinterProvider`），说明不是 APK 级故障；
3. 该条 `name` 为空但 `exported="def"` 仍被记下 —— 典型的
   「`android:name` 用了非常规写法（如资源引用 `@string/...`，
   或反编译工具 attribute 表偏移）导致取值为空」。

**它不改变任何结论**：`prov_unsafe.json` 只用 `name` 做展示，
它在复算差集里只占 1 条，且属于那 11 条 `exported="def"`。
若要追查，可对该 APK 单独 `aapt dump xmltree` 看原始属性。

---

## 3. `exec_callers.json`（14 KB）

全部 `Runtime.exec` / `ProcessBuilder` 调用点。用于 V02 / V15 的垂直追踪。

---

## 4. `em_settings_sinks.tsv`（v1.2 新增）

**两个 system UID 包共 168 个写入点**，由 `_work/sinks.py` 生成。

列：`root` / `file` / `line` / `kind` / `key_raw` / `key` / `how` / `context` / `note`

| kind | 数量 |
|---|---|
| `SystemPropertiesProxy.set` | 136 |
| `Settings.Global.put` | **19**（engineermode 17 + duershow.statistic 2） |
| `Settings.System.put` | 2 |
| `SystemProperties.set` | 4 |
| `Runtime.exec` | 7 |

`root` 列含义：`em_key` = engineermode（`classes6.dex`）、
`em_full1..5` = engineermode 的 `classes.dex`–`classes5.dex`、
`ds_key` = duershow.statistic（`classes.dex`）。

`how` 列含义：`literal`（字面量）/ `field-const`（常量字段）/
`field-const-int`（int 常量）/ `expr`（无法静态定值）/ `n/a`（无键名）。
只有 `expr` 才是候选变量键。

---

## 5. `em_put_global.md`（v1.2 新增）

上表 `Settings.Global.put` 部分的**可读摘要**，供人工复核。

---

## 6. `settings_sinks_firmware.tsv`（v1.2 新增）

**全固件 130 个 APK 的 dex 层扫描结果**，由 `_work/fw_scan.py` 生成。
不做反编译，直接在 dex 字节流上做 substr 匹配，因此是**粗筛**
（`putInt` 这类通用方法名会大量误命中）。

列：`apk` / `hits`

---

## 7. `settings_sink_candidates.tsv`（v1.2 新增）

把 §6 的粗筛结果与 `audit.json` 交叉过滤后的**收窄结果**，
由 `_work/sink_candidates.py` 生成。

判据（三条全满足）：

1. APK 引用了 `Settings$Global;` 且带 `put*`
2. 该 APK 的包是 system UID（`shared == "android.uid.system"`）
3. 该包至少有一个导出的组件

结果：43 → **8 个候选包**，全部已在 19 条漏洞内或为 AOSP 常量。
详见 `docs/V21-settings-global-sink-audit.md`。

---

## 8. 不要做的事

| 错误用法 | 为什么错 |
|---|---|
| 用「不在 `prov_unsafe.json` 里」反推「安全」 | 该文件只收录 `exported="true"` + 三字段全空，口径极窄 |
| 用 `comps[].exported == "true"` 统计「导出组件数」 | 漏掉 1181 个 `"def"`，正解是 `in ("true","def")` |
| 相信 README 里的「60 处 `SystemPropertiesProxy.set` / 6 处 `Settings.Global.put*`」 | v1.1 旧数字，实测是 **136 / 17**（见 `em_settings_sinks.tsv`） |
| 把 `settings_sinks_firmware.tsv` 当精确结果 | 它是粗筛，必须走 `sink_candidates.tsv` 交叉过滤 |