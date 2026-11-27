# V20 — 产测框架 `prod_file` 全权读写模板缺陷（系统性）

| 项 | 值 |
|----|----|
| **严重性** | 🟡 中 |
| **CWE** | CWE-732 Unrestricted Excessive Permissions / CWE-1083（模板缺陷） |
| **受影响** | 展锐产测框架的 SELinux 模板，多个产测应用共域 |
| **UID** | 各产测应用（system / app 域） |
| **SELinux 域** | `sprd_validationtools_app`、`sprd_autoslt_app`、`sprd_coulomb_app`、`phasecheckserver` 等 |
| **实机验证** | 静态确认（`prod_file` 实际落点无法 list，见 §4） |

---

## 1. 摘要

展锐（SPRD/Unisoc）的产测框架给产测应用配置了**同一套 SELinux 模板**，该模板
对文件类型 `prod_file` 授予**完整读写**权限（`read write create delete rename
lnk lock map append setattr` 等全套）。这不是单个 App 的越权，而是**模板层面**
的缺陷：凡是套了这个模板的域，都能对 `prod_file` 全权读写。

`prod_file` 是产测固件用来存放**产线数据**（产品标识、station 结果、条码、
NVRAM 配置等）的类型标签。一旦某个套模板的域被**任意应用可控的入口**触发
（本机即 V05 / V06 / V07 / V10 等 system UID 产测组件），就能借这个域的
`prod_file` 全权读写能力，**读写产线数据文件**——即使该入口本身的逻辑与
`prod_file` 无关。

> 本条定级「中」，性质是**系统性模板缺陷**，危害依赖于「该域能否被外部可控入口
> 触发 + 该域是否连到 `prod_file` 的实际落点」，目前落点未验证（见 §4），
> 故**不建议单独当作可利用漏洞上报**，而应作为**产测 SELinux 模板的治理项**。

---

## 2. 证据（vendor SELinux CIL）

### 2.1 对 `prod_file` 拥有**完整读写**的域（CIL 实扫）

```
batterysrv              full_rw=True
bluetooth_31_0          full_rw=True
charge / charged         full_rw=True
dcxsrv                  full_rw=True
engpc / engpcctl        full_rw=True
hal_audio_default       full_rw=True
hal_bluetooth_default   full_rw=True
phasecheckserver        full_rw=True      ← 产测 station 写入服务（V06/V16 的落点）
sprd_autoslt_app        full_rw=True      ← 产测 autoslt
sprd_validationtools_app full_rw=True     ← 产测 validationtools（V05/V06/V07/V16/V17）
system_app_31_0         full_rw=True
```

对照（`full_rw=False`，只读 / 部分）：`factorytest`、`drmserver`、
`sprd_engineermode_app`（能写但不能 create/delete 全权限）、`tee_31_0`、`vold` 等。

**关键观察**：`sprd_validationtools_app` 和 `sprd_autoslt_app` 是**两个独立的
App 域**，却拿到**相同的 `prod_file` 全权**，且都允许 `connectto` 到
`phasecheckserver`。这说明模板是「按产测 App 批量套用」，而非按最小权限定制。

### 2.2 域 → 应用 映射（`vendor_seapp_contexts`）

```
user=system seinfo=platform name=com.sprd.validationtools domain=sprd_validationtools_app
user=system seinfo=platform name=com.sprd.agingtest       domain=sprd_validationtools_app
user=system seinfo=platform name=com.sprd.factorytest     domain=sprd_validationtools_app
user=system seinfo=platform name=com.spr.persistprovider  domain=sprd_validationtools_app
user=system seinfo=platform name=com.sprd.autoslt         domain=sprd_autoslt_app
user=system seinfo=platform name=com.sprd.bmte.coulomb    domain=sprd_coulomb_app
```

`seinfo=platform` 表示这些是**平台签名应用**（system 分区 / priv-app 预装），
普通第三方 App **无法**通过 `seapp_contexts` 落到这些域（普通应用 `seinfo`
不为 `platform`），所以**直接提权不成立**——这是与 V13 等真正的提权面的边界。
但「平台产测 App 之间」共用 `prod_file` 全权，仍是可治理的过度授权。

### 2.3 `prod_file` 类型定义

```
(type prod_file)
(typeattributeset mlstrustedobject (... prod_file ...))
```

`prod_file` 同时被挂进 `mlstrustedobject` 属性集（MLS 可信对象），意味着
它被当作「可跨 MLS 层级共享」的文件类型——进一步说明它是**故意跨产测 App
共享**的数据标签，设计时就预期多个域共同读写。

---

## 3. 影响

1. **过度授权（模板级）**：多个产测域对 `prod_file` 全权读写，超出各自
   最小需要（例如 `hal_*` HAL 域也拿到 `prod_file` 全权，明显与音频/蓝牙
   的本职无关）。
2. **横向放大**：一旦任一产测入口（V05/V06/V07/V16/V17）被外部可控触发，
   借其域即可读写 `prod_file` 落点的全部产线数据。
3. **可追溯性风险**：`prod_file` 常含 SN / station / 条码等，全权写可
   篡改产线追溯数据（与 V06/V16 的 miscdata 写入同源风险面）。
4. **非直接提权**：受 `seinfo=platform` 限制，普通 App 无法借此进入这些域，
   危害定位在「产测数据完整性 + 可组合的拒绝服务」，而非 shell/root 提权。

---

## 4. 未验证项（重要，避免误报）

`prod_file` 的**实际文件系统落点**在本机上**未能确认**：

- `/productinfo`、`/systeminfo`、`/mnt/vendor/productinfo` 实机 `ls` 均不可见
  （可能是**挂载命名空间屏蔽**，也可能本固件未生成这些目录）。
- `prod_file` 在 `plat_file_contexts` / `vendor_file_contexts` 中的 label 映射
  未被匹配到具体路径（该类型可能由产测专用分区/文件动态 relabel）。

因此 **V20 目前只确认到「SELinux 模板给了过度权限」这一层，未确认
`prod_file` 在本固件里实际对应哪些文件、这些文件能否被外部入口触达**。
按仓库既有原则（V16/V17 同），**不把它当作已验证可利用的漏洞**，
而是作为**产测 SELinux 模板的治理建议**记录。若要坐实，需：

1. 找到 `prod_file` 的 `file_contexts` 路径映射（`ls -Z` 候选路径）。
2. 确认至少一个「可被普通应用触发的产测入口」所在域，确实能读写该路径。
3. 实机读/写一个 `prod_file` 探针文件验证（破坏性，需回滚方案）。

---

## 5. 修复建议

- **按最小权限拆分模板**：`sprd_autoslt_app` 与 `sprd_validationtools_app`
  不应共用同一套 `prod_file` 全权；各域只授予自己产线任务需要的
  `read`/`write`/`create`/`delete` 子集。
- **移除无关域的 `prod_file` 全权**（`hal_audio`、`hal_bluetooth` 等 HAL 域
  不应有产测数据写权限）。
- **`prod_file` 移出 `mlstrustedobject`**（若确需跨域共享，用 `type_transition`
  或专用共享域，而非全量可信属性）。
- 将本条纳入产测 SELinux 模板的**统一回归检查**（与 V17 的权限定级治理同一专项）。

---

## 6. 实机验证状态

静态确认。证据链：vendor SELinux CIL 的 `prod_file` 全权域清单（§2.1）+
`vendor_seapp_contexts` 的域→应用映射（§2.2）+ `prod_file` 类型/属性定义（§2.3）。
**`prod_file` 实际落点未验证**（§4），故不建议作为可利用漏洞上报，
仅作为模板治理项。