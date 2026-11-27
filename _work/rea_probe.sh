#!/system/bin/sh
# 重审探针：检查关键组件的外部可达性（只读 + 非破坏性 am start）
echo "===== 0. 身份 ====="
id

echo
echo "===== 1. systemui DemoMode / TunerActivity（漏报候选）====="
echo "-- manifest 关键行 --"
aapt dump xmltree /system_ext/priv-app/SystemUI/SystemUI.apk AndroidManifest.xml 2>/dev/null \
  | grep -E 'DemoMode|TunerActivity' | head -6
echo "-- dumpsys 组件状态 --"
dumpsys package com.android.systemui 2>/dev/null \
  | grep -A6 -E 'DemoMode|TunerActivity' | head -20

echo
echo "===== 2. V01 FactoryReset 真实组件名核对 ====="
echo "-- README 写的是 instructions.FactoryReset --"
aapt dump xmltree /system/app/MMITools/MMITools.apk AndroidManifest.xml 2>/dev/null \
  | grep -B2 -A4 -iE 'FactoryReset' | head -20

echo
echo "===== 3. V08 ValidationToolsBroadcastReceiver 导出状态 ====="
aapt dump xmltree /system/app/MMITools/MMITools.apk AndroidManifest.xml 2>/dev/null \
  | grep -B2 -A6 'ValidationToolsBroadcastReceiver' | head -20

echo
echo "===== 4. V13 SrmiManager 导出 + permission ====="
aapt dump xmltree /system_ext/priv-app/Srmi/Srmi.apk AndroidManifest.xml 2>/dev/null \
  | grep -B2 -A8 'SrmiManager' | head -20

echo
echo "===== 5. V02 PingActivity 导出状态 ====="
aapt dump xmltree /system_ext/app/EngineerMode/EngineerMode.apk AndroidManifest.xml 2>/dev/null \
  | grep -B2 -A6 'PingActivity' | head -14

echo
echo "===== 6. V15/V14 duershow.statistic 导出组件 ====="
aapt dump xmltree /system/priv-app/DuerShowStatistic/DuerShowStatistic.apk AndroidManifest.xml 2>/dev/null \
  | grep -B1 -A5 -E 'SystemLogRequestReceiver|exported' | head -30

echo
echo "===== 7. V18 UnisilentReboot 导出状态 ====="
aapt dump xmltree /system_ext/priv-app/UniSilentReboot/UniSilentReboot.apk AndroidManifest.xml 2>/dev/null \
  | grep -B2 -A8 -E 'UniSilentReboot' | head -24

echo
echo "===== 8. V03 ThirdAppContentProvider ====="
aapt dump xmltree /system/priv-app/DuerShowOTA/DuerShowOTA.apk AndroidManifest.xml 2>/dev/null \
  | grep -B2 -A8 'ThirdAppContentProvider' | head -18

echo
echo "===== 9. V04 DuerGuardContentProvider ====="
aapt dump xmltree /system/priv-app/DuerGuard/DuerGuard.apk AndroidManifest.xml 2>/dev/null \
  | grep -B2 -A8 'DuerGuardContentProvider' | head -18 || \
  aapt dump xmltree /system/app/DuerGuard/DuerGuard.apk AndroidManifest.xml 2>/dev/null \
  | grep -B2 -A8 'DuerGuardContentProvider' | head -18

echo
echo "===== 10. 全固件：exported=true 且无 permission 的 system UID 组件 Top 40 ====="
python3 - <<'PY'
import csv, os
p = '/storage/emulated/0/漏洞/analysis/rea_components.tsv'
rows = list(csv.DictReader(open(p, encoding='utf-8'), delimiter='\t'))
sys_uid = {'android.uid.system', 'android.uid.systemui', 'android.uid.phone',
           'android.uid.bluetooth', 'android.uid.nfc', 'android.uid.shared'}
risky = [r for r in rows
         if r['shared'] in sys_uid
         and r['exported'] in ('true', '<none>')
         and not r['permission'] and not r['read'] and not r['write']]
print('system-UID 包中「导出且零权限」组件:', len(risky))
by_pkg = {}
for r in risky:
    by_pkg.setdefault(r['pkg'], []).append(r)
for pkg in sorted(by_pkg, key=lambda k: -len(by_pkg[k]))[:12]:
    print('  %-40s %d' % (pkg, len(by_pkg[pkg])))
PY

echo
echo "===== DONE ====="
