#!/system/bin/sh
# 漏报候选的实际可达性测试（UID 10159 普通应用身份）
# 全部为非破坏性操作：仅尝试 start，不做任何写入

echo "===== 0. 身份（普通应用，无 adb）====="
id
echo

echo "===== 1. Settings WifiAPITestActivity ====="
am start -n 'com.android.settings/com.android.settings.Settings$WifiAPITestActivity' 2>&1 | head -4
echo

echo "===== 2. Settings.wifi.WifiStatusTest ====="
am start -n 'com.android.settings/com.android.settings.wifi.WifiStatusTest' 2>&1 | head -4
echo

echo "===== 3. SystemUI DemoMode (alias -> TunerActivity) ====="
am start -n 'com.android.systemui/com.android.systemui.DemoMode' 2>&1 | head -4
echo

echo "===== 4. PackageInstaller UninstallerActivity ====="
am start -n 'com.android.packageinstaller/com.android.packageinstaller.UninstallerActivity' 2>&1 | head -4
echo

echo "===== 5. contacts.debug 组件归属 ====="
for p in com.android.providers.contacts com.android.contacts; do
  echo "-- $p --"
  pm dump "$p" 2>/dev/null | grep -i 'ContactsDump\|DumpFileProvider' | head -3
done
echo

echo "===== 6. 当前前台 Activity ====="
dumpsys activity activities 2>/dev/null | grep -E 'mResumedActivity|topResumedActivity' | head -3
echo

echo "===== 7. 对照组：V01 FactoryReset（仅测能否拉起，不点确认）====="
am start -n 'com.sprd.validationtools/com.sprd.validationtools.instructions.FactoryReset' 2>&1 | head -4
echo

echo "===== DONE ====="