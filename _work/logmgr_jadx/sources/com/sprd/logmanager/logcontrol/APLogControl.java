package com.sprd.logmanager.logcontrol;

import android.os.Build;
import android.util.Log;
import com.sprd.logmanager.database.LogManagerPreference;
import com.sprd.logmanager.utils.CommonUtils;
import com.sprd.logmanager.utils.PropUtils;
import com.sprd.logmanager.utils.StorageUtil;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class APLogControl extends LogControl {
    private static APLogControl sApLogControl;
    private String SYSCOREFILE_CONTROL_PROP;
    private String SYSDUMP_CONTROL_PROP;
    private String SYSDUMP_RESET_PROP;
    private String SYSDUMP_STATUS_PROP;
    private boolean mGSI;
    private LogManagerPreference managerPreference;

    private APLogControl(String str) {
        super(str);
        this.SYSDUMP_CONTROL_PROP = "debug.sysdump.enabled";
        this.SYSDUMP_STATUS_PROP = "persist.sys.sysdump";
        this.SYSDUMP_RESET_PROP = "persist.vendor.eng.reset";
        this.SYSCOREFILE_CONTROL_PROP = "persist.vendor.sys.core.enabled";
        this.mGSI = false;
        this.mGSI = CommonUtils.isGSIVersion();
        if (Build.VERSION.SDK_INT >= 28) {
            this.SYSDUMP_CONTROL_PROP = "vendor.debug.sysdump.enabled";
            this.SYSDUMP_STATUS_PROP = "persist.vendor.sysdump";
        }
        this.managerPreference = LogManagerPreference.getInstanse();
    }

    public boolean getCorefileState() {
        if (!CommonUtils.isUserBuild()) {
            return true;
        }
        boolean zEquals = PropUtils.getString(this.SYSCOREFILE_CONTROL_PROP, "0").equals("1");
        Log.i("APLogControl", "syscorefileEnable " + zEquals + ",get prop value:" + PropUtils.getString(this.SYSCOREFILE_CONTROL_PROP, "error"));
        return zEquals;
    }

    public boolean getCorefileEnable() {
        return CommonUtils.isUserBuild();
    }

    public void enableCoreFile(boolean z) throws InterruptedException, IOException {
        Log.d("APLogControl", "open or close corefile :" + z);
        if (z) {
            PropUtils.setProp(this.SYSCOREFILE_CONTROL_PROP, "1");
        } else {
            PropUtils.setProp(this.SYSCOREFILE_CONTROL_PROP, "0");
        }
    }

    public boolean getSysdumpState() {
        boolean zEquals = PropUtils.getString(this.SYSDUMP_STATUS_PROP, "off").equals("on");
        Log.i("APLogControl", "sysdumpEnable " + zEquals + ",get prop value:" + PropUtils.getString(this.SYSDUMP_STATUS_PROP, "error"));
        return zEquals;
    }

    public void enableSysDump(boolean z) throws InterruptedException, IOException {
        String str;
        String str2;
        Log.d("APLogControl", "open or close sysdump :" + z);
        if (z) {
            str = "true";
            str2 = "0";
        } else {
            str = "false";
            str2 = "1";
        }
        PropUtils.setProp(this.SYSDUMP_CONTROL_PROP, str);
        if (CommonUtils.isUserBuild()) {
            PropUtils.setProp(this.SYSDUMP_RESET_PROP, str2);
        }
        try {
            Thread.sleep(100L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public boolean enableSubLog(String str, boolean z) {
        String str2;
        if (z) {
            if (!isLogStarted()) {
                setLogStatus(z);
            }
            str2 = "op";
        } else {
            str2 = "cl";
        }
        return checkResult(sendCmd(str2 + " " + str, true));
    }

    public boolean getUbootStatus() {
        return getSubLogStatus("uboot");
    }

    public boolean getLastKmsgStatus() {
        return getSubLogStatus("lastlog");
    }

    public void enableUboot(boolean z) {
        enableSubLog("uboot", z);
    }

    public void enableLastKmsg(boolean z) {
        enableSubLog("lastlog", z);
    }

    public void enableAPAudio(boolean z) {
        enableSubLog("audiodump", z);
    }

    public boolean getAPAudioLogStatus() {
        return getSubLogStatus("audiodump");
    }

    public void enableAndroidLog(boolean z) {
        enableSubLog("android", z);
    }

    public boolean getAndroidLogStatus() {
        return getSubLogStatus("android");
    }

    public void enableCapLog(boolean z) {
        enableSubLog("tcpdump", z);
    }

    public boolean getCapLogStatus() {
        return getSubLogStatus("tcpdump");
    }

    public void enableKernelLog(boolean z) {
        enableSubLog("kernel", z);
    }

    public boolean getKernelLogStatus() {
        return getSubLogStatus("kernel");
    }

    public void enableHciLog(boolean z) {
        enableSubLog("hcidump", z);
    }

    public boolean getHciLogStatus() {
        return getSubLogStatus("hcidump");
    }

    public void enableThermalLog(boolean z) {
        enableSubLog("thermal", z);
    }

    public boolean getThermalLogStatus() {
        return getSubLogStatus("thermal");
    }

    public void enableAllApLog(boolean z) {
        if (z) {
            setLogStatus(z);
        }
        enableUboot(z);
        enableLastKmsg(z);
        enableKernelLog(z);
        enableAndroidLog(z);
        enableHciLog(z);
        enableThermalLog(z);
        enableCapLog(z);
        enableAPAudio(z);
        if (z) {
            return;
        }
        setLogStatus(z);
    }

    public boolean setLogStatus(boolean z) {
        if ((z ? "1" : "0").equals("1")) {
            enableAPLog();
        } else {
            disableAPLog();
        }
        LogManagerPreference.getInstanse().setLogEnable(z);
        return false;
    }

    public void enableAPLog() {
        Log.d("APLogControl", "ap log will set enable");
        sendCmd("enable", true);
    }

    public void disableAPLog() {
        Log.d("APLogControl", "ap log will set disable");
        sendCmd("disable", true);
    }

    public boolean setPropThroughHidl(String str, String str2) {
        return checkResult(sendCmd("setprop " + str + " " + str2));
    }

    public String getPropThroughHidl(String str) {
        String strSendCmd = sendCmd("getprop " + str);
        if (strSendCmd == null) {
            return null;
        }
        String[] strArrSplit = strSendCmd.split("=");
        if (strArrSplit.length == 1) {
            return null;
        }
        return strArrSplit[1].trim();
    }

    public static APLogControl getInstance() {
        boolean z = Build.VERSION.SDK_INT >= 28;
        boolean zIsGSIVersion = CommonUtils.isGSIVersion();
        String str = z ? "ylog_cli_cmd" : "ylog_cli";
        if (zIsGSIVersion) {
            str = "ylog_cli_lite";
        }
        if (sApLogControl == null) {
            sApLogControl = new APLogControl(str);
        }
        return sApLogControl;
    }

    public boolean clearLog() {
        sendCmd("clear", true);
        return true;
    }

    public boolean setCapSize(int i) {
        if (!sendCmd("tcpcapsize " + i, true).contains("" + i)) {
            return false;
        }
        LogManagerPreference.getInstanse().setTcpCapSize(i);
        return true;
    }

    protected boolean checkResult(String str) {
        return str.contains("running") || str.contains("stopped") || str.contains("1");
    }

    protected boolean isLogOverwrite(String str) {
        String strSendCmd = sendCmd("rotatelog", true);
        return strSendCmd == null || !strSendCmd.contains("disable");
    }

    public boolean isLogOverwrite() {
        return isLogOverwrite(null);
    }

    protected boolean enableLogOverwrite(String str, boolean z) {
        String strSendCmd = sendCmd("rotatelog " + (z ? "enable" : "disable"), true);
        if (strSendCmd != null) {
            return strSendCmd.contains("0") || strSendCmd.contains("1");
        }
        return false;
    }

    public boolean enableLogOverwrite(boolean z) {
        return enableLogOverwrite(null, z);
    }

    public boolean getSubLogStatus(String str) {
        return sendCmd("query " + str, true).contains("Open");
    }

    public String getLogSavePath() {
        String strTrim = "data";
        try {
            String[] strArrSplit = sendCmd("sroot", true).split("\n");
            strTrim = strArrSplit.length > 0 ? strArrSplit[0].trim() : "";
            if (strTrim.equals("")) {
                strTrim = sendCmd("rootdir", true).split("\n")[0].trim();
            }
        } catch (Exception e) {
            Log.e("APLogControl", e.toString());
        }
        if (strTrim != null) {
            String str = File.separator;
            if (!strTrim.endsWith(str)) {
                strTrim = strTrim + str;
            }
        }
        return strTrim.contains("failed") ? "" : strTrim;
    }

    public String getLogVersion() {
        String strSendCmd = sendCmd("version", true);
        return strSendCmd != null ? strSendCmd.split("\n")[0].trim() : "ERRVER";
    }

    public int getCapSize() {
        try {
            String str = sendCmd("tcpcapsize", true).split("\\n")[0];
            return Integer.parseInt(str.substring(str.indexOf(" ") + 1));
        } catch (Exception e) {
            Log.e("APLogControl", "get ap cap size error,get it in another way", e);
            return -1;
        }
    }

    public long getSingleFolderSize() throws NumberFormatException {
        long j;
        String str = sendCmd("aplogfilesize", true).split("\\n")[0];
        try {
            if (str.contains(".")) {
                j = Long.parseLong(str.substring(0, str.indexOf(".")));
            } else {
                j = Long.parseLong(str);
            }
            return j;
        } catch (Exception e) {
            Log.e("APLogControl", "get ap single folder size error", e);
            return -1L;
        }
    }

    public long getApTotalSize() {
        try {
            return Long.parseLong(sendCmd("aplogmaxsize", true).split("\\n")[0]);
        } catch (Exception e) {
            Log.e("APLogControl", "get ap total size error", e);
            return -1L;
        }
    }

    public boolean setSingleFolderSize(long j) {
        String strSendCmd = sendCmd("aplogfilesize " + j, true);
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(j);
        return strSendCmd.contains(sb.toString());
    }

    public boolean setApTotalSize(long j) {
        String strSendCmd = sendCmd("aplogmaxsize " + j, true);
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(j);
        return strSendCmd.contains(sb.toString());
    }

    public boolean isLogStarted() {
        Log.i("APLogControl", "isLogStarted" + LogManagerPreference.getInstanse().isLogEnable());
        return LogManagerPreference.getInstanse().isLogEnable();
    }

    public boolean reset() {
        sendCmd("resetsettings", true);
        enableAPLog();
        return true;
    }

    public String sendCmd(String str, boolean z) {
        if (z) {
            str = str + "\n";
        }
        return super.sendCmd(str);
    }

    public boolean setStorageInSd(int i) {
        String externalStorage;
        if (i == 0) {
            externalStorage = StorageUtil.getExternalStorage();
        } else {
            externalStorage = i == 1 ? "/storage/emulated/0/" : i == 2 ? "/data/" : "";
        }
        String strSendCmd = sendCmd("sroot " + externalStorage, true);
        Log.i("APLogControl", "set Storage path is :" + strSendCmd);
        if (strSendCmd.contains("failed")) {
            return false;
        }
        if (strSendCmd.contains(externalStorage)) {
            return true;
        }
        sendCmd("sroot " + strSendCmd, true);
        return false;
    }

    public String getLogTime() {
        String strSendCmd = sendCmd("time", true);
        return strSendCmd != null ? strSendCmd.trim() : strSendCmd;
    }

    public String getApLogOpenedInfo() {
        StringBuffer stringBuffer = new StringBuffer("");
        if (getUbootStatus()) {
            stringBuffer.append("uboot");
        }
        if (getLastKmsgStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("last kmsg");
        }
        if (getAndroidLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("android");
        }
        if (getKernelLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("kernel");
        }
        if (getCapLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("ap cap");
            stringBuffer.append("(" + getCapSize() + ")");
        }
        if (getHciLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("hci");
        }
        if (getThermalLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("thermal");
        }
        if (getAPAudioLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("audio pcm");
        }
        if (stringBuffer.length() > 0 && stringBuffer.charAt(0) == ',') {
            return stringBuffer.substring(1);
        }
        return stringBuffer.toString();
    }

    public void recordAPLogLastSelect() {
        this.managerPreference.backupUbootLogStatus(getUbootStatus());
        this.managerPreference.backupLastKmsgStatus(getLastKmsgStatus());
        this.managerPreference.backupKernelLogStatus(getKernelLogStatus());
        this.managerPreference.backupAndroidLogStatus(getAndroidLogStatus());
        this.managerPreference.backupApCapStatus(getCapLogStatus());
        this.managerPreference.backupHciLogStatus(getHciLogStatus());
        this.managerPreference.backupThermalLogStatus(getThermalLogStatus());
    }

    public void restorLastSelectAPLog(boolean z) {
        boolean z2;
        if (this.managerPreference.isUbootLogOpenLast()) {
            enableUboot(true);
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.managerPreference.isLastKmsLogOpenLast()) {
            enableLastKmsg(true);
            z2 = true;
        }
        if (this.managerPreference.isKernelLogOpenLast()) {
            enableKernelLog(true);
            z2 = true;
        }
        if (this.managerPreference.isAndroidLogOpenLast()) {
            enableAndroidLog(true);
            z2 = true;
        }
        if (this.managerPreference.isApCapLogOpenLast()) {
            enableCapLog(true);
            z2 = true;
        }
        if (this.managerPreference.isHciLogOpenLast()) {
            enableHciLog(true);
            z2 = true;
        }
        if (this.managerPreference.isThermalLogOpenLast()) {
            enableThermalLog(true);
            z2 = true;
        }
        if (z2 || z) {
            return;
        }
        Log.i("APLogControl", "ap log enable all ");
        enableAllApLog(true);
    }

    public String getLogFile() {
        String strSendCmd = sendCmd("file", true);
        return strSendCmd != null ? strSendCmd.trim() : strSendCmd;
    }

    public boolean rebootYlog(String str) {
        return sendCmd("sroot " + str, true).contains(str);
    }

    public boolean rebootMYlog(String str) {
        return sendCmd("m_sroot " + str, true).contains(str);
    }

    public boolean isLog2External() {
        String logSavePath = getLogSavePath();
        return (logSavePath == null || logSavePath.contains("emulated") || logSavePath.contains("/data/")) ? false : true;
    }

    public boolean isWifiOnly() {
        String prop = PropUtils.getProp("ro.vendor.radio.noril");
        return prop != null && "1".equals(prop);
    }
}
