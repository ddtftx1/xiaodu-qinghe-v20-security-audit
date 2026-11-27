#!/system/bin/sh
# 漏报候选深查：导出 + 零权限 + 危险语义的组件
probe() {
  APK="$1"; PAT="$2"
  echo "----------- $APK  [$PAT] -----------"
  aapt dump xmltree "$APK" AndroidManifest.xml 2>/dev/null \
    | grep -B3 -A12 -E "$PAT" | head -26
  echo
}

echo "########## 1. contacts.debug.ContactsDumpActivity ##########"
probe /system/priv-app/ContactsProvider/ContactsProvider.apk 'ContactsDumpActivity'
probe /system/priv-app/Contacts/Contacts.apk 'ContactsDumpActivity'
probe /system/app/ContactsProvider/ContactsProvider.apk 'ContactsDumpActivity'

echo "########## 2. contacts.debug.DumpFileProvider ##########"
probe /system/priv-app/ContactsProvider/ContactsProvider.apk 'DumpFileProvider'

echo "########## 3. settings WifiAPITestActivity / WifiStatusTest ##########"
probe /system_ext/priv-app/Settings/Settings.apk 'WifiAPITestActivity|WifiStatusTest'

echo "########## 4. launcher3 LauncherDebugEnableReceiver ##########"
probe /system_ext/app/Launcher3QuickStep/Launcher3QuickStep.apk 'LauncherDebugEnableReceiver'
probe /system/app/Launcher3QuickStep/Launcher3QuickStep.apk 'LauncherDebugEnableReceiver'

echo "########## 5. nfc NfcRootActivity（NFC 开关被改？）##########"
probe /system/priv-app/NfcNci/NfcNci.apk 'NfcRootActivity'

echo "########## 6. contacts FragmentTestActivity ##########"
probe /system/priv-app/Contacts/Contacts.apk 'FragmentTestActivity'

echo "########## 7. messaging TestActivity ##########"
probe /system/priv-app/Messaging/Messaging.apk 'TestActivity'

echo "########## 8. calendar CalendarDebug ##########"
probe /system/priv-app/CalendarProvider/CalendarProvider.apk 'CalendarDebug'

echo "########## 9. managedprovisioning SilentDeviceAdmin ##########"
probe /system/priv-app/ManagedProvisioning/ManagedProvisioning.apk 'SilentDeviceAdmin|ResetAndEnterDo|PreBootListener'

echo "########## 10. packageinstaller InstallStart / UninstallerActivity ##########"
probe /system/priv-app/PackageInstaller/PackageInstaller.apk 'InstallStart|UninstallerActivity'

echo "########## 11. telecom AppUninstallBroadcastReceiver ##########"
probe /system/priv-app/Telecom/Telecom.apk 'AppUninstallBroadcastReceiver'

echo "########## 12. systemui 的 36 个零权限导出组件（抽样）##########"
aapt dump xmltree /system_ext/priv-app/SystemUI/SystemUI.apk AndroidManifest.xml 2>/dev/null \
  | grep -B1 -A3 -E 'exported\(0x01010010\)=\(type 0x12\)0xffffffff' | grep 'android:name' | head -40

echo
echo "===== DONE ====="