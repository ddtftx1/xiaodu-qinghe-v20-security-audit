# V13 备链复核：`libsrmi_jni.so` / `libsrmi.so` native 层审计

> 本文对应 `xiaodu-qinghe-v20-security-audit-该怎么做.md` 的 §4。
> 目标：确认 V13（导出 Binder 服务）能否作为「uid 1000 同进程代码执行」的扳机，
> 供 §3 的 31317 末端使用。

---

## 0. 结论（先说）

**SRMI native 层没有可直接利用的内存破坏。§4 备链不成立。**

| 检查项 | 结果 |
|---|---|
| 危险 libc 函数（`strcpy` / `strcat` / `sprintf` / `vsprintf`） | **0 个** |
| `memcpy` / `memmove` / `__strlcpy_chk` | 各 1 处，全部带长度参数 |
| 栈保护 | `__stack_chk_fail` 存在，带数组的函数都有 canary |
| 写入边界检查 | 有，且在**唯一的共享 putter** 里统一做 |
| 长度字段 | `uint16` 截断（`& 0xffff`），会**静默截断但不越界** |
| 接收路径 | `__read_chk(fd, buf, 40-used, -1)`，目录头固定 40 字节，不越界 |

---

## 1. 文件与符号清单

```
/system_ext/lib64/libsrmi_jni.so    23872 B   JNI 层
/system_ext/lib64/libsrmi.so        44360 B   协议/缓冲区层
/system_ext/lib/libsrmi_jni.so      arm32
/system_ext/lib/libsrmi.so          arm32
```

`libsrmi_jni.so` 导出 18 个 JNI 入口，`libsrmi.so` 导出 56 个函数。依赖极简：

```
libc.so   : malloc free memcpy memset memmove strlen strcmp strerror
            __strlcpy_chk __read_chk __write_chk __stack_chk_fail
            pthread_* sysconf usleep sleep shutdown socket_local_client
liblog.so : __android_log_print
```

**关键：没有 `strcpy` / `strcat` / `sprintf` / `vsprintf` / `__memcpy_chk`。**
这是判断「是否存在经典溢出」最快的一道筛，SRMI 过得去。

---

## 2. 消息缓冲区布局（从 `srmi_msg_alloc` 反推）

```asm
srmi_msg_alloc:                      ; 0x5068
    sysconf(_SC_PAGESIZE) → w20      ; 若 (0,1023] 取之，否则 1024
    malloc(w20)                      ; 整块就是页大小
    srmi_msg_init(buf, type, 4)
    sub  w8, w20, #0x28              ; capacity = pagesize - 40
    add  x9, x21, #0x28              ; data ptr = buf + 40
    strh w8,  [x21, #0x1e]           ; capacity  (uint16!)
    str  x9,  [x21, #0x20]           ; data base
```

结构体布局：

| 偏移 | 字段 | 类型 |
|---|---|---|
| `+0x00` | 链表/头指针等 | — |
| `+0x06` | `used`（已写入字节数） | **uint16** |
| `+0x1e` | `capacity`（= pagesize-40） | **uint16** |
| `+0x20` | `data base` 指针 | ptr |
| `+0x28` | 数据区起点 | — |

**两个长度字段都是 `uint16`**，这是后面所有截断行为的根源。

---

## 3. 唯一的共享 putter（0x5458）—— 边界检查在这里

所有 `put_u8/u16/u32/str/tlv` 最终都跳到 0x5458。核心指令：

```asm
5458:  ...
546c:  ldrh w8,  [x0, #0x6]        ; w8 = used
5470:  and  w9,  w2, #0xffff        ; w9 = len & 0xffff      ← 16bit 截断
5474:  ldrh w4,  [x0, #0x1e]        ; w4 = capacity
5478:  add  w9,  w9, #0x7           ; +7（对齐到 4 字节）
547c:  sub  x8,  x8, #0x28          ; used - 40
5480:  and  w10, w9, #0x1fffc       ; 4 字节对齐
5484:  add  w22, w10, w8            ; w22 = num + (used-40) = 写入后 used
5488:  cmp  w22, w4                ; 与 capacity 比较
548c:  b.le 0x54cc                 ; 通过则继续
5490:  ... __android_log_print(...)  ; 失败分支
54c4:  mov  w0, #-1 ; ret          ; 返回 -1，不写入
```

**这道检查是正确且不可绕过的**：

- `w22` 是「写入后 used」的完整 32 位计算结果（没有先截断）
- `w4` 是从 `uint16` 读出的 capacity，`capacity ≤ 65535`
- 比较用 `b.le`（signed），两者都是非负，语义正确

### 3.1 `& 0xffff` 不构成越界，只构成静默截断

调用方 `srmi_msg_put_str`：

```asm
566c:  strlen(s) → w0
5694:  add  w2, w0, #0x1           ; len = strlen + 1（含 NUL）
56b0:  b    0x5458                ; 进共享 putter，w2 = len
```

putter 里：

```asm
5470:  and  w9, w2, #0xffff        ; 长度截断
5510:  and  x2, x20, #0xffff       ; ← memcpy 的 size 也是同一个截断值
551c:  memcpy(base+used+4, src, x2)
```

**检查用的长度与拷贝用的长度是同一个 16 位截断值**，所以二者永远一致：

- `len > 65535` 时：实际只拷贝 `len & 0xffff` 字节，缓冲区不会溢出
- 副作用：消息内容被静默截断（**数据完整性问题，非安全问题**）

> 属实现瑕疵而非漏洞：调用方在拿到 `-1` 之前不会知道内容被截断，但不会造成内存破坏。

---

## 4. 接收路径（0x8998 `srmi_msg_recv`）—— 也不越界

```asm
8a20:  ldr  w4, [x21, #0x40]       ; w4 = 已读字节数
8a24:  ldr  w3, [x21, #0x10]       ; fd
8a28:  mov  w22, #0x28             ; 40 = 目录头长度
8a38:  sub  w5, w22, w4            ; w5 = 40 - 已读
8a54:  ldr  w0, [x21, #0x10]       ; fd
8a58:  add  x24, x21, #0x18
8a5c:  add  x1, x24, x8            ; buf = &hdr + used
8a60:  sub  w2, w22, w8            ; size = 40 - used   ← 剩余空间
8a64:  bl   __read_chk
```

`__read_chk(fd, buf, 40-used, -1)`：`__read_chk` 的第三个参数是
**调用方声明的缓冲区可用大小**，`-1` 表示「未提供目标对象大小」。
关键点：读取上限 `40-used` 是**从固定 40 字节的目录头剩余空间算出来的**，
不是从 socket 报文字段读出来的。攻击者无法通过伪造长度字段扩大读取。

后续按目录头里的 `offset`/`len` 处理时，走的是 `memmove(buf, buf+off+1, n)`
（0x8b20），`n` 同样来自已读字节数与当前位置的差，仍是缓冲区内部搬移。

**结论：接收路径没有「按报文声明长度分配/拷贝」的经典错误。**

---

## 5. JNI 层的输入处理

```asm
native_srmj_msg_put_str:    ; (jstring name, int type, int msgId, int attr, jstring value)
3880-3894:  GetStringUTFChars(env, name,  0)
3898-38b0:  GetStringUTFChars(env, value, 0)
38b8:       if (name_ptr == NULL || value_ptr == NULL) → 错误分支
38d4:       srmj_msg_put_str(name_ptr, type, msgId, attr, value_ptr)
38e4-3908:  ReleaseStringUTFChars(value), ReleaseStringUTFChars(name)
```

- 两次 `GetStringUTFChars` 都有 NULL 检查
- 两个 `ReleaseStringUTFChars` 在成功与失败分支**都已配对调用**
  （0x38e4/0x38f0 成功路径、0x3948/0x3964 失败路径）
- **没有长度上限校验**，但如 §3.1 所述截断发生在下游且不越界

`srmj_msg_put_tlv`（0x7368）同理：

```asm
7490:  ldr  x19, [x9, #0x18]       ; 取 tx 对象
7494:  strlen(x22)                ; x22 = value
749c:  add  w3, w0, #0x1          ; len
74ac:  srmi_msg_put_val(tx, attr, value, len)   ; 同样走到 0x5458
```

---

## 6. 为什么这条链不通（逐条排除）

| §4 期望的路径 | 实际情况 |
|---|---|
| 「`srmj_create` 的 name 长度无上限 → 溢出」 | `strcmp` 匹配，超长 name 只是找不到返回 -1 |
| 「`put_str` 的 value 超长 → 堆溢出」 | 长度截断至 16 位，且检查与拷贝用同一值（§3.1） |
| 「`put_tlv` 的 TLV 长度字段伪造 → 越界写」 | TLV 长度由本地 `strlen` 计算，不接受调用方指定长度（§5） |
| 「报文 msgId/attr 未校验 → 数组越界」 | putter 只写 `used` 位置，`msgId/attr` 直接作为 `uint16` 写入，不做数组索引 |
| 「接收路径按报文长度分配 → 堆溢出」 | 接收上限来自固定 40 字节头空间（§4） |
| 「Binder 层把 Java 数组长度直接传给 memcpy」 | JNI 层只传 `jstring`，没有 byte[] 通道 |

> 补充：`srmj_msg_send`（524B）只是把已构造好的缓冲区通过
> `socket_local_client("srmi_srv"...)` 写出去，`srmi_write_msg` 用
> `[msg+0x6]` 的 `used` 作为长度发送，仍是同一套自洽值。

---

## 7. 那么 V13 的真实风险是什么

`V13` 依然是**严重的鉴权缺失漏洞**，只是危害形态不是「内存破坏 → RCE」，而是：

1. **向基带/CP 发送任意 SRMI 消息** —— 影响网络注册、射频参数、诊断通道
2. **注册回调窃听** —— `native_register_srmj_msg_callback` 可让第三方应用
   收到本不该看到的 SRMI 消息（信息泄露）
3. **资源耗尽** —— 大量 `create` 不 `destroy`，占满 SRMI 会话表
4. **协议层模糊测试面** —— 攻击者可把任意 `msgId`/`attr`/`value` 灌给 CP 侧，
   真正的内存破坏风险在**固件里的 CP 侧解析器**，而不在 AP 侧这个 JNI 库

第 4 点是这条链唯一还剩的可能性：**风险不在 `libsrmi.so`，在 CP 固件里。
而那部分不在本仓库的审计范围（没有 CP 固件镜像）。**

---

## 8. 对本项目 root 链的影响

```
§3 主链（V02 ping 注入）    → 死（exec(String[])）
§5 退路（Settings 变量键）  → 死（17 处全硬编码 + 全固件 0 处）
§4 备链（SRMI native 破坏） → 死（本文件）
```

**三条路全部不通。作为「无 adb、纯本地应用」的 root 路径，
本项目到此可以下结论：该设备在本审计能力范围内不存在可用的提权链。**

这不等于「设备无法 root」，只是说明取得 root 的现实前置条件是：

- bootloader 解锁 + fastboot（设备状态未确认，见 §7 形态 B）
- 或 adb（`adb shell` 持有 `WRITE_SECURE_SETTINGS`，31317 直接可用）
- 或 CP 固件层的漏洞（本仓库无镜像，未审计）

---

## 9. 若将来要继续 §4

按优先级：

1. **拿 CP 固件镜像**，审计 SRMI 消息在 CP 侧的解码器 —— 这才是 §4 想要的攻击面
2. 用 Frida hook `srmj_msg_send` 做协议层模糊测试，观察 CP 崩溃日志
   （需要 root 或 ptrace 权限，当前设备不具备）
3. 审计 `libsrmi.so` 的 arm32 版本（`/system_ext/lib/`）—— 本文件只分析了 arm64，
   32 位版本可能有不同的对齐/截断行为（但通常同源同逻辑）
4. `srmi_create`（932B）的会话表管理有 `malloc` + 链表操作，值得再细看
   是否有 use-after-free（本次只看了缓冲区写入路径）

---

## 10. 复现命令

```bash
# 提取
cp /system_ext/lib64/libsrmi_jni.so /system_ext/lib64/libsrmi.so ~/rev/srmi_native/

# 危险函数筛查（应为 0）
readelf -sW --dyn-syms libsrmi.so | grep -E 'strcpy|strcat|sprintf|vsprintf'

# 缓冲区分配
readelf -sW --dyn-syms libsrmi.so | grep srmi_msg_alloc      # 0x5068
objdump -d --start-address=0x5068 --stop-address=0x5140 libsrmi.so

# 共享 putter（边界检查）
objdump -d --start-address=0x5458 --stop-address=0x5538 libsrmi.so

# 接收路径
objdump -d --start-address=0x8998 --stop-address=0x8b80 libsrmi.so
objdump -d --start-address=0x8510 --stop-address=0x8610 libsrmi.so
```