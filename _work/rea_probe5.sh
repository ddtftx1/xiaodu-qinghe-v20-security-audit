#!/system/bin/sh
# 用 dumpsys activity 验证真实启动结果
check() {
  NAME="$1"
  CLS="$2"
  echo "### $NAME"
  am start -n "$CLS" >/dev/null 2>&1
  sleep 1
  TOP=$(dumpsys activity activities 2>/dev/null | grep -oE '(mResumedActivity|topResumedActivity)[^}]*' | head -1)
  echo "   TOP: ${TOP:-<无>}"
  echo "$TOP" | grep -qi "${NAME}" && echo "   => LAUNCHED" || echo "   => 未确认（可能被拒或已退出）"
  echo
}

check 'WifiAPITest' 'com.android.settings/com.android.settings.Settings$WifiAPITestActivity'
check 'WifiStatusTest' 'com.android.settings/com.android.settings.wifi.WifiStatusTest'
check 'DemoMode' 'com.android.systemui/com.android.systemui.DemoMode'
check 'UninstallerActivity' 'com.android.packageinstaller/com.android.packageinstaller.UninstallerActivity'
check 'FactoryReset' 'com.sprd.validationtools/com.sprd.validationtools.instructions.FactoryReset'

echo "### 全部 activity 栈（前 20 行）"
dumpsys activity activities 2>/dev/null | grep -E 'ActivityRecord|taskId' | head -20

echo
echo "### 权限拒绝日志（全量，最近 200 条）"
logcat -d 2>/dev/null | grep -iE 'Permission Denial.*(settings|systemui|packageinstaller|validationtools)' | tail -8