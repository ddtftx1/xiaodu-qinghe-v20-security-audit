#!/system/bin/sh
# 用 -W 等真实结果，并抓 logcat 里的权限拒绝
run() {
  echo "### $1"
  am start -W -n "$1" 2>&1 | grep -E 'Status|Error|Warning|Activity|TotalTime|Permission' | head -6
  echo
}

run 'com.android.settings/com.android.settings.Settings$WifiAPITestActivity'
run 'com.android.settings/com.android.settings.wifi.WifiStatusTest'
run 'com.android.systemui/com.android.systemui.DemoMode'
run 'com.android.packageinstaller/com.android.packageinstaller.UninstallerActivity'
run 'com.sprd.validationtools/com.sprd.validationtools.instructions.FactoryReset'

echo "### contacts.debug 组件归属（从 rea_components.tsv）"
grep -i 'ContactsDump\|DumpFileProvider' /storage/emulated/0/漏洞/analysis/rea_components.tsv 2>/dev/null | cut -f1,4,5,6 | head -6

echo
echo "### logcat 权限拒绝（最近 300 行）"
logcat -d -t 300 2>/dev/null | grep -iE 'Permission Denial|not exported|SecurityException' | head -12