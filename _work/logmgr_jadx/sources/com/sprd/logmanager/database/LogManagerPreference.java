package com.sprd.logmanager.database;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.sprd.logmanager.utils.CommonUtils;

/* loaded from: classes.dex */
public class LogManagerPreference {
    private static LogManagerPreference sLogManagerPreference;
    private SharedPreferences.Editor mCommonEditor;
    private SharedPreferences mCommonPreferences;
    private Context mContext;
    private SharedPreferences.Editor mDefaultEditor;
    private SharedPreferences mDefaultPreferences;
    private SharedPreferences.Editor mSettingsEditor;
    private SharedPreferences mSettingsPreferences;

    private LogManagerPreference() {
    }

    public void init(Context context) {
        this.mContext = context;
        this.mCommonPreferences = context.getSharedPreferences("common", 0);
        this.mSettingsPreferences = context.getSharedPreferences("settings", 0);
        this.mDefaultPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        this.mCommonEditor = this.mCommonPreferences.edit();
        this.mSettingsEditor = this.mSettingsPreferences.edit();
        this.mDefaultEditor = this.mDefaultPreferences.edit();
    }

    public static LogManagerPreference getInstanse() {
        if (sLogManagerPreference == null) {
            sLogManagerPreference = new LogManagerPreference();
        }
        return sLogManagerPreference;
    }

    public boolean isAPSwitchOn() {
        return this.mSettingsPreferences.getBoolean("ap_log_switch", true);
    }

    public void backupAPSwitchStatus(boolean z) {
        this.mSettingsEditor.putBoolean("ap_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isModemSwitchOn() {
        return this.mSettingsPreferences.getBoolean("modem_log_switch", true);
    }

    public void backupModemSwitchStatus(boolean z) {
        this.mSettingsEditor.putBoolean("modem_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isWCNSwitchOn() {
        return this.mSettingsPreferences.getBoolean("wcn_log_switch", true);
    }

    public void backupWCNSwitchStatus(boolean z) {
        this.mSettingsEditor.putBoolean("wcn_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isOtherSwitchOn() {
        return this.mSettingsPreferences.getBoolean("other_log_switch", true);
    }

    public void backupOtherSwitchStatus(boolean z) {
        this.mSettingsEditor.putBoolean("other_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isUbootLogOpen() {
        return this.mDefaultPreferences.getBoolean("uboot_log_switch", false);
    }

    public boolean isUbootLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("uboot_log_switch", false);
    }

    public void backupUbootLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("uboot_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isLastKmsgOpen() {
        return this.mDefaultPreferences.getBoolean("last_kmsg_switch", false);
    }

    public boolean isLastKmsLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("last_kmsg_switch", false);
    }

    public void backupLastKmsgStatus(boolean z) {
        this.mSettingsEditor.putBoolean("last_kmsg_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isKernelLogOpen() {
        return this.mDefaultPreferences.getBoolean("kernel_log_switch", false);
    }

    public boolean isKernelLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("kernel_log_switch", false);
    }

    public void backupKernelLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("kernel_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isAndroidLogOpen() {
        return this.mDefaultPreferences.getBoolean("android_log_switch", false);
    }

    public boolean isAllApLogClose() {
        return (isUbootLogOpen() || isLastKmsgOpen() || isKernelLogOpen() || isAndroidLogOpen() || isApCapOpen() || isHciLogOpen() || isThermalLogOpen()) ? false : true;
    }

    public boolean isAllModemLogClose() {
        return (isPSLogOpen() || isArmPcmLogOpen() || isDspLogOpen() || isDspPcmLogOpen() || isCpCapLogOpen() || isETBOpen()) ? false : true;
    }

    public boolean isAllConnectivityLogClose() {
        return (isWcnLogOpen() || isGpsLogOpen()) ? false : true;
    }

    public boolean isAllOtherLogClose() {
        return (isSensorHubLogOpen() || isSystemProccessLogOpen() || isAgdspLogOpen() || isAgdsppcmLogOpen() || isVisionProcessLogOpen()) ? false : true;
    }

    public boolean isAndroidLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("android_log_switch", false);
    }

    public void backupAndroidLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("android_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isApCapOpen() {
        return this.mDefaultPreferences.getBoolean("cap_log_switch", false);
    }

    public boolean isApCapLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("cap_log_switch", false);
    }

    public void backupApCapStatus(boolean z) {
        this.mSettingsEditor.putBoolean("cap_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isHciLogOpen() {
        return this.mDefaultPreferences.getBoolean("hci_log_switch", false);
    }

    public boolean isHciLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("hci_log_switch", false);
    }

    public void backupHciLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("hci_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isThermalLogOpen() {
        return this.mDefaultPreferences.getBoolean("thermal_log_switch", false);
    }

    public boolean isThermalLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("thermal_log_switch", false);
    }

    public void backupThermalLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("thermal_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isPSLogOpen() {
        return this.mDefaultPreferences.getBoolean("ps_log_switch", false);
    }

    public void backupPSLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("ps_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isPSOpenLast() {
        return this.mSettingsPreferences.getBoolean("ps_log_switch", false);
    }

    public boolean isArmPcmLogOpen() {
        return this.mDefaultPreferences.getBoolean("cp_audio_log_switch", false);
    }

    public boolean isArmPcmOpenLast() {
        return this.mSettingsPreferences.getBoolean("cp_audio_log_switch", false);
    }

    public void backupArmPcmLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("cp_audio_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isDspLogOpen() {
        return this.mDefaultPreferences.getBoolean("physical_log_switch", false);
    }

    public boolean isDspLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("physical_log_switch", false);
    }

    public void backupDspLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("physical_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isDspPcmLogOpen() {
        return this.mDefaultPreferences.getBoolean("physical_audio_log_switch", false);
    }

    public boolean isDspPcmOpenLast() {
        return this.mSettingsPreferences.getBoolean("physical_audio_log_switch", false);
    }

    public boolean isCpCapLogOpen() {
        return this.mDefaultPreferences.getBoolean("cp_cap_log_switch", false);
    }

    public boolean isCpCapOpenLast() {
        return this.mSettingsPreferences.getBoolean("cp_cap_log_switch", false);
    }

    public void backupCpCapStatus(boolean z) {
        this.mSettingsEditor.putBoolean("cp_cap_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isETBOpen() {
        return this.mDefaultPreferences.getBoolean("etb_switch", false);
    }

    public boolean isETBOpenLast() {
        return this.mSettingsPreferences.getBoolean("etb_switch", false);
    }

    public void backupETBStatus(boolean z) {
        this.mSettingsEditor.putBoolean("etb_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isWcnLogOpen() {
        return this.mDefaultPreferences.getBoolean("wifi_bt_switch", false);
    }

    public boolean isWcnLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("wifi_bt_switch", false);
    }

    public void backupWcnLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("wifi_bt_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isGpsLogOpen() {
        return this.mDefaultPreferences.getBoolean("gnss_log_switch", false);
    }

    public boolean isGpsLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("gnss_log_switch", false);
    }

    public void backupGpsLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("gnss_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isSensorHubLogOpen() {
        return this.mDefaultPreferences.getBoolean("sensor_log_switch", false);
    }

    public boolean isSensorHubLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("sensor_log_switch", false);
    }

    public void backupSensorHubLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("sensor_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isSystemProccessLogOpen() {
        return this.mDefaultPreferences.getBoolean("system_process_log_switch", false);
    }

    public boolean isSystemProcessLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("system_process_log_switch", false);
    }

    public void backupSystemProccessLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("system_process_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isAgdspLogOpen() {
        return this.mDefaultPreferences.getBoolean("audio_process_log_switch", false);
    }

    public boolean isAgdspLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("audio_process_log_switch", false);
    }

    public void backupAgdspLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("audio_process_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isAgdsppcmLogOpen() {
        return this.mDefaultPreferences.getBoolean("audio_process_voice_log_switch", false);
    }

    public boolean isAgdspPcmLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("audio_process_voice_log_switch", false);
    }

    public void backupAgdsppcmLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("audio_process_voice_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isVisionProcessLogOpen() {
        return this.mDefaultPreferences.getBoolean("vision_process_log_switch", false);
    }

    public boolean isVisionPcmLogOpenLast() {
        return this.mSettingsPreferences.getBoolean("vision_process_log_switch", false);
    }

    public void backupVisionProcessLogStatus(boolean z) {
        this.mSettingsEditor.putBoolean("vision_process_log_switch", z);
        this.mSettingsEditor.commit();
    }

    public boolean isFirstBoot() {
        return this.mCommonPreferences.getBoolean("first_boot", true);
    }

    public void backupDspPcmStatus(boolean z) {
        this.mCommonEditor.putBoolean("physical_audio_log_switch", z);
        this.mCommonEditor.commit();
    }

    public void setFirstBoot(boolean z) {
        this.mCommonEditor.putBoolean("first_boot", z);
        this.mCommonEditor.commit();
    }

    public void setTcpCapSize(int i) {
        this.mSettingsEditor.putInt("tcpcap_size", i);
        this.mSettingsEditor.commit();
    }

    public void reset() {
        this.mSettingsEditor.remove("tcpcap_size");
        this.mSettingsEditor.remove("wcn_dest");
        this.mSettingsEditor.remove("modem_dest");
        this.mSettingsEditor.remove("bugreport_enable");
        this.mSettingsEditor.remove("log_scene");
        this.mSettingsEditor.commit();
    }

    public String getSelectScene() {
        return this.mSettingsPreferences.getString("log_scene", "Normal");
    }

    public void setSelectScene(String str) {
        this.mSettingsEditor.putString("log_scene", str);
        this.mSettingsEditor.commit();
    }

    public void setLogEnable(boolean z) {
        this.mSettingsEditor.putBoolean("log_enable", z);
        this.mSettingsEditor.commit();
    }

    public boolean isLogEnable() {
        return this.mSettingsPreferences.getBoolean("log_enable", !CommonUtils.isUserBuild());
    }

    public void setLogCopyStatus(boolean z) {
        this.mSettingsEditor.putBoolean("log_copy_status", z);
        this.mSettingsEditor.commit();
    }

    public boolean getLogCopyStatus() {
        return this.mSettingsPreferences.getBoolean("log_copy_status", false);
    }

    public boolean isFirstLanuch() {
        return this.mSettingsPreferences.getBoolean("first_lanuch", true);
    }

    public void setFirstLanuch(boolean z) {
        this.mSettingsEditor.putBoolean("first_lanuch", z);
        this.mSettingsEditor.commit();
    }
}
