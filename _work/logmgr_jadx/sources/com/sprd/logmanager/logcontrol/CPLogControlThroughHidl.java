package com.sprd.logmanager.logcontrol;

import android.util.Log;
import com.sprd.logmanager.database.LogManagerPreference;
import com.sprd.logmanager.utils.PropUtils;
import java.io.IOException;
import vendor.sprd.hardware.cplog_svc.V1_0.AudioDspLogSettings;
import vendor.sprd.hardware.cplog_svc.V1_0.CellularModemLogSettings;
import vendor.sprd.hardware.cplog_svc.V1_0.ConnectivityLogSettings;
import vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl;
import vendor.sprd.hardware.cplog_svc.V1_0.LogStorageSettings;
import vendor.sprd.hardware.cplog_svc.V1_0.PmSensorHubLogSettings;
import vendor.sprd.hardware.cplog_svc.V1_0.SubsystemPresence;
import vendor.sprd.hardware.cplog_svc.V1_0.VideoDspLogSettings;

/* loaded from: classes.dex */
public class CPLogControlThroughHidl {
    public static int LOG_PATH_DATA = 0;
    public static int LOG_PATH_EXTERNAL = 2;
    public static int LOG_PATH_INTERNAL = 1;
    public static int LOG_TO_PC = 2;
    public static int LOG_TO_PHONE = 1;
    private static String MODEM_LOG_OPTIMIZATION_DISPLAY = "persist.sys.modemlogoptimization.display";
    public static String MODEM_LOG_OPTIMIZATION_PROP = "persist.sys.modemlogoptimization.enable";
    private static String MODEM_PERSIST_LF_PROP = "persist.vendor.modem.lf.enable";
    private static String MODEM_PERSIST_L_PROP = "persist.vendor.modem.l.enable";
    private static String MODEM_PERSIST_R_PROP = "persist.vendor.modem.nr.enable";
    private static String MODEM_PERSIST_W_PROP = "persist.vendor.modem.w.enable";
    private static String MODEM_RO_W_PROP = "ro.vendor.modem.w.enable";
    public static String RIL_SERVICE_PROP = "init.svc.vendor.ril-daemon";
    public static String SERVICE_NAME = "ISysLogControl";
    private static String TAG = "CPLogControlThroughHidl";
    public static int TYPE_MODEM = 1;
    public static int TYPE_MODEM_AUTO_REBOOT = 0;
    public static int TYPE_WCN = 2;
    public static int TYPE_WCN_AUTO_REBOOT = 1;
    private static CPLogControlThroughHidl sCpLogControl;
    private ISysLogControl mSysLogService;
    private LogManagerPreference managerPreference;
    private CellularModemLogSettings mCellularModemLogSettings = new CellularModemLogSettings();
    private SubsystemPresence mSubsystemPresence = new SubsystemPresence();
    private PmSensorHubLogSettings mPmSensorHubLogSettings = new PmSensorHubLogSettings();
    private PmSensorHubLogSettings mPmLogSettings = new PmSensorHubLogSettings();
    private LogStorageSettings mCplogStorageSettings = new LogStorageSettings();
    private LogStorageSettings mConnectivityStorageSettings = new LogStorageSettings();
    private AudioDspLogSettings mAudioDspLogSettings = new AudioDspLogSettings();
    private VideoDspLogSettings mVideoDspLogSettings = new VideoDspLogSettings();
    private ConnectivityLogSettings mConnectivityLogSettings = new ConnectivityLogSettings();
    private int mWcnReset = 0;
    private int mModemReset = 0;

    public enum RebootSubsystem {
        RS_CELLULAR_MODEM,
        RS_WIFI_BT
    }

    public enum SubsystemType {
        SST_ALL,
        SST_CELLULAR_MODEM,
        SST_CONNECTIVITY,
        SST_PM,
        SST_SENSOR_HUB,
        SST_AUDIO_DSP,
        SST_VIDEO_DSP
    }

    public boolean isSurportAgdsp() {
        if (this.mSubsystemPresence == null) {
            getSubsystemPresence();
        }
        Log.i(TAG, "isSurportAgdsp = " + this.mSubsystemPresence.has_audio_dsp);
        return this.mSubsystemPresence.has_audio_dsp == 1;
    }

    public void enablePsLog(boolean z) {
        Log.i(TAG, "enablePsLog start :" + z);
        if (z) {
            this.mCellularModemLogSettings.psLog = 1;
        } else {
            this.mCellularModemLogSettings.psLog = 0;
        }
        setCellularLogSettings();
        Log.i(TAG, "enablePsLog end :" + z);
    }

    public boolean getPsLogStatus() {
        Log.i(TAG, "getPsLogStatus :  " + this.mCellularModemLogSettings.psLog);
        return this.mCellularModemLogSettings.psLog == 1;
    }

    public void enableDspPcmLog(boolean z) {
        Log.i(TAG, "enableDspPcmLog start :" + z);
        if (z) {
            this.mCellularModemLogSettings.phyPcm = 1;
        } else {
            this.mCellularModemLogSettings.phyPcm = 0;
        }
        setCellularLogSettings();
        Log.i(TAG, "enableDspPcmLog end :" + z);
    }

    public boolean getDspPcmLogStatus() {
        Log.i(TAG, "getDspPcmLogStatus   " + this.mCellularModemLogSettings.phyPcm);
        return this.mCellularModemLogSettings.phyPcm == 1;
    }

    public void enableArmPcmLog(boolean z) {
        Log.i(TAG, "enableArmPcmLog   " + z);
        if (z) {
            this.mCellularModemLogSettings.psPcm = 1;
        } else {
            this.mCellularModemLogSettings.psPcm = 0;
        }
        setCellularLogSettings();
    }

    public boolean getArmPcmLogStatus() {
        Log.i(TAG, "getArmPcmLogStatus   " + this.mCellularModemLogSettings.psPcm);
        return this.mCellularModemLogSettings.psPcm == 1;
    }

    public void setPsLogLevel(int i) {
        Log.i(TAG, "setPsLogLevel  start: " + i);
        this.mCellularModemLogSettings.psLogLevel = i;
        setCellularLogSettings();
        Log.i(TAG, "setPsLogLevel  end: " + i);
    }

    public int getPsLogLevel() {
        Log.i(TAG, "getPsLogLevel  end: " + this.mCellularModemLogSettings.psLogLevel);
        return this.mCellularModemLogSettings.psLogLevel;
    }

    public void enableDspLog(boolean z) {
        Log.i(TAG, "enableDspLog  start: " + z);
        if (z) {
            this.mCellularModemLogSettings.phyLog = 1;
        } else {
            this.mCellularModemLogSettings.phyLog = 0;
        }
        setCellularLogSettings();
        Log.i(TAG, "enableDspLog  end: " + z);
    }

    public boolean getDspLogStatus() {
        Log.i(TAG, "getDspLogStatus  end: " + this.mCellularModemLogSettings.phyLog);
        return this.mCellularModemLogSettings.phyLog == 1;
    }

    public void enableAgDsp(boolean z) {
        Log.i(TAG, "enableAgDsp  start: " + z);
        if (isSurportAgdsp()) {
            if (z) {
                this.mAudioDspLogSettings.enable = 1;
            } else {
                this.mAudioDspLogSettings.enable = 0;
            }
            setAudioDspLogSettings();
            Log.i(TAG, "enableAgDsp  end: " + z);
        }
    }

    public boolean getAgDspLogStatus() {
        Log.i(TAG, "getAgDspLogStatus  end: " + this.mAudioDspLogSettings.enable);
        return this.mAudioDspLogSettings.enable == 1;
    }

    public void setPhysicalLogLevel(int i) {
        Log.i(TAG, "setPhysicalLogLevel  start: " + i);
        this.mCellularModemLogSettings.phyLogLevel = i;
        setCellularLogSettings();
        Log.i(TAG, "setPhysicalLogLevel  end: " + i);
    }

    public int getPhysicalLogLevel() {
        Log.i(TAG, "getPhysicalLogLevel   " + this.mCellularModemLogSettings.phyLogLevel);
        return this.mCellularModemLogSettings.phyLogLevel;
    }

    public void enableCapLog(boolean z) {
        Log.i(TAG, "enableCapLog  start " + z);
        if (z) {
            this.mCellularModemLogSettings.ipCap = 1;
        } else {
            this.mCellularModemLogSettings.ipCap = 0;
        }
        setCellularLogSettings();
        Log.i(TAG, "enableCapLog  end " + z);
    }

    public boolean getCapLogStatus() {
        Log.i(TAG, "getCapLogStatus  " + this.mCellularModemLogSettings.ipCap);
        return this.mCellularModemLogSettings.ipCap == 1;
    }

    public void setCapSize(int i) {
        Log.i(TAG, "setCapSize  start:" + i);
        this.mCellularModemLogSettings.ipLen = i;
        setCellularLogSettings();
        Log.i(TAG, "setCapSize  end:" + i);
    }

    public int getCapSize() {
        Log.i(TAG, "getCapSize  :" + this.mCellularModemLogSettings.ipLen);
        return this.mCellularModemLogSettings.ipLen;
    }

    public void setModemReset(boolean z) {
        Log.i(TAG, "setModemReset start :" + z);
        if (z) {
            this.mModemReset = 1;
        } else {
            this.mModemReset = 0;
        }
        setSubsystemAutoReboot(TYPE_MODEM_AUTO_REBOOT, this.mModemReset);
        Log.i(TAG, "setModemReset end :" + z);
    }

    public void setWcnReset(boolean z) {
        Log.i(TAG, "setWcnReset start :" + z);
        if (z) {
            this.mWcnReset = 1;
        } else {
            this.mWcnReset = 0;
        }
        setSubsystemAutoReboot(TYPE_WCN_AUTO_REBOOT, this.mWcnReset);
        Log.i(TAG, "setWcnReset end :" + z);
    }

    public boolean isModemReset() {
        Log.i(TAG, "isModemReset  :" + this.mModemReset);
        return this.mModemReset == 1;
    }

    public boolean isWcnReset() {
        Log.i(TAG, "mWcnReset  :" + this.mWcnReset);
        return this.mWcnReset == 1;
    }

    public void setModemSaveDump(boolean z) {
        Log.i(TAG, "setModemSaveDump start :" + z);
        if (z) {
            this.mCellularModemLogSettings.saveDump = 1;
        } else {
            this.mCellularModemLogSettings.saveDump = 0;
        }
        setCellularLogSettings();
        Log.i(TAG, "setModemSaveDump end :" + z);
    }

    public boolean getModemSaveDump() {
        Log.i(TAG, "getModemSaveDump  :" + this.mCellularModemLogSettings.saveDump);
        return this.mCellularModemLogSettings.saveDump == 1;
    }

    public void enableETB(boolean z) {
        Log.i(TAG, "enableETB start :" + z);
        if (z) {
            this.mCellularModemLogSettings.etb = 1;
        } else {
            this.mCellularModemLogSettings.etb = 0;
        }
        setCellularLogSettings();
        Log.i(TAG, "enableETB end :" + z);
    }

    public boolean getETBStatus() {
        Log.i(TAG, "getETBStatus :" + this.mCellularModemLogSettings.etb);
        return this.mCellularModemLogSettings.etb == 1;
    }

    public void setModemLogMode(boolean z) {
        Log.i(TAG, "setModemLogMode start:" + z);
        if (z) {
            this.mCellularModemLogSettings.mode = 1;
        } else {
            this.mCellularModemLogSettings.mode = 0;
        }
        setCellularLogSettings();
        Log.i(TAG, "setModemLogMode end:" + z);
    }

    public void sendModemAssert() {
        assertSubsystem(TYPE_MODEM);
    }

    public void sendWcnAssert() {
        assertSubsystem(TYPE_WCN);
    }

    public void enableModemCompress(boolean z) {
        Log.i(TAG, "enableModemCompress start :" + z);
        if (z) {
            this.mCellularModemLogSettings.comp = 1;
        } else {
            this.mCellularModemLogSettings.comp = 0;
        }
        setCellularLogSettings();
        Log.i(TAG, "enableModemCompress end :" + z);
    }

    public boolean getModemCompress() {
        Log.i(TAG, "getModemCompress end :" + this.mCellularModemLogSettings.comp);
        return this.mCellularModemLogSettings.comp == 1;
    }

    public void enableConnectivityCompress(boolean z) {
        Log.i(TAG, "enableConnectivityCompress start :" + z);
        if (z) {
            this.mConnectivityLogSettings.comp = 1;
        } else {
            this.mConnectivityLogSettings.comp = 0;
        }
        setConnectivityLogSettings();
        Log.i(TAG, "enableConnectivityCompress end :" + z);
    }

    public boolean getConnectivityCompress() {
        Log.i(TAG, "getConnectivityCompress :" + this.mConnectivityLogSettings.comp);
        return this.mConnectivityLogSettings.comp == 1;
    }

    public boolean isSurportSensorHub() {
        Log.w(TAG, "is surport sensorhub log " + this.mSubsystemPresence.has_sensor_hub);
        return this.mSubsystemPresence.has_sensor_hub == 1;
    }

    public boolean isSurportVideoProcess() {
        Log.w(TAG, "isSurportVideoProcess log " + this.mSubsystemPresence.has_vdsp);
        return this.mSubsystemPresence.has_vdsp == 1;
    }

    public void enableSensorHubLog(boolean z) {
        Log.i(TAG, "enableSensorHubLog  start :" + z);
        if (this.mSubsystemPresence.has_sensor_hub == 0) {
            Log.w(TAG, "not surport sensorhub log");
            return;
        }
        if (z) {
            this.mPmSensorHubLogSettings.enable = 1;
        } else {
            this.mPmSensorHubLogSettings.enable = 0;
        }
        setSensorHubLogSettings();
        Log.i(TAG, "enableSensorHubLog  end :" + z);
    }

    public boolean getSensorHubLogStatus() {
        Log.i(TAG, "getSensorHubLogStatus  :" + this.mPmSensorHubLogSettings.enable);
        return this.mPmSensorHubLogSettings.enable == 1;
    }

    public void enableVideoLog(boolean z) {
        Log.i(TAG, "enableVisonLog " + z);
        if (z) {
            this.mVideoDspLogSettings.enable = 1;
        } else {
            this.mVideoDspLogSettings.enable = 0;
        }
        setVideoDspLogSettings();
    }

    public void enableAllModemLog(boolean z) {
        Log.i(TAG, "enableAllModemLog " + z);
        if (z) {
            CellularModemLogSettings cellularModemLogSettings = this.mCellularModemLogSettings;
            cellularModemLogSettings.psLog = 1;
            cellularModemLogSettings.psPcm = 1;
            cellularModemLogSettings.phyLog = 1;
            cellularModemLogSettings.phyPcm = 1;
            cellularModemLogSettings.ipCap = 1;
            cellularModemLogSettings.etb = 1;
        } else {
            CellularModemLogSettings cellularModemLogSettings2 = this.mCellularModemLogSettings;
            cellularModemLogSettings2.psLog = 0;
            cellularModemLogSettings2.psPcm = 0;
            cellularModemLogSettings2.phyLog = 0;
            cellularModemLogSettings2.phyPcm = 0;
            cellularModemLogSettings2.ipCap = 0;
            cellularModemLogSettings2.etb = 0;
        }
        setCellularLogSettings();
        Log.i(TAG, "enableAllModemLog end :" + z);
    }

    public void enableAllConnectivityLog(boolean z) {
        Log.i(TAG, "enableAllConnectivityLog start :" + z);
        if (z) {
            ConnectivityLogSettings connectivityLogSettings = this.mConnectivityLogSettings;
            connectivityLogSettings.wifiBt = 1;
            connectivityLogSettings.gnss = 1;
        } else {
            ConnectivityLogSettings connectivityLogSettings2 = this.mConnectivityLogSettings;
            connectivityLogSettings2.wifiBt = 0;
            connectivityLogSettings2.gnss = 0;
        }
        setConnectivityLogSettings();
        Log.i(TAG, "enableAllConnectivityLog end: " + z);
    }

    public void enableAllOtherLog(boolean z) {
        Log.i(TAG, "enableAllOtherLog start: " + z);
        enableSensorHubLog(z);
        enableSystemProcessLog(z);
        enableAgDsp(z);
        enableAGDspPcmDumpLog(z);
        enableVideoLog(z);
        Log.i(TAG, "enableAllOtherLog end: " + z);
    }

    public boolean getVideoLogStatus() {
        Log.i(TAG, "mVideoDspLogSettings " + this.mVideoDspLogSettings.enable);
        return this.mVideoDspLogSettings.enable == 1;
    }

    public void enableSystemProcessLog(boolean z) {
        Log.i(TAG, "enableSystemProcessLog " + z);
        getPmLogSettings();
        if (z) {
            this.mPmLogSettings.enable = 1;
        } else {
            this.mPmLogSettings.enable = 0;
        }
        setPmLogSettings();
    }

    public boolean getSystemProcessLogStatus() {
        Log.i(TAG, "getSystemProcessLogStatus : " + this.mPmLogSettings.enable);
        return this.mPmLogSettings.enable == 1;
    }

    public boolean isLogOverwrite(SubsystemType subsystemType) {
        getSubsystemStorageParam(subsystemType.ordinal());
        boolean z = subsystemType == SubsystemType.SST_CONNECTIVITY && this.mConnectivityStorageSettings.overwrite == 1;
        if (subsystemType == SubsystemType.SST_CELLULAR_MODEM && this.mCplogStorageSettings.overwrite == 1) {
            return true;
        }
        return z;
    }

    public boolean isModemLogOverwrite() {
        boolean zIsLogOverwrite = isLogOverwrite(SubsystemType.SST_CELLULAR_MODEM);
        Log.i(TAG, "isModemLogOverwrite : " + zIsLogOverwrite);
        return zIsLogOverwrite;
    }

    public boolean isWcnLogOverwrite() {
        boolean zIsLogOverwrite = isLogOverwrite(SubsystemType.SST_CONNECTIVITY);
        Log.i(TAG, "isWcnLogOverwrite : " + zIsLogOverwrite);
        return zIsLogOverwrite;
    }

    private CPLogControlThroughHidl() {
        try {
            ISysLogControl service = ISysLogControl.getService();
            this.mSysLogService = service;
            if (service == null) {
                Log.e(TAG, "get service " + SERVICE_NAME + " error");
            } else {
                Log.i(TAG, "get service ok");
            }
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    public static CPLogControlThroughHidl getInstance() {
        if (sCpLogControl == null) {
            sCpLogControl = new CPLogControlThroughHidl();
        }
        return sCpLogControl;
    }

    public void init() {
        Log.i(TAG, "cplogctrol init start");
        getCellularLogSettings();
        getSubsystemStorageParam(SubsystemType.SST_CELLULAR_MODEM.ordinal());
        getSubsystemStorageParam(SubsystemType.SST_CONNECTIVITY.ordinal());
        getSubsystemPresence();
        getVideoDspLogSettings();
        getSensorHubLogSettings();
        getConnectivityLogSettings();
        getAudioDspLogSettings();
        getPmLogSettings();
        getSubsystemAutoReboot(RebootSubsystem.RS_WIFI_BT);
        getSubsystemAutoReboot(RebootSubsystem.RS_CELLULAR_MODEM);
        Log.i(TAG, "cplogctrol init end");
    }

    public void getCellularLogSettings() {
        Log.i(TAG, "getCellularLogSettings start ");
        try {
            this.mSysLogService.getCellularLogSettings(new ISysLogControl.getCellularLogSettingsCallback() { // from class: com.sprd.logmanager.logcontrol.CPLogControlThroughHidl.1
                @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl.getCellularLogSettingsCallback
                public void onValues(int i, CellularModemLogSettings cellularModemLogSettings) {
                    CPLogControlThroughHidl.this.mCellularModemLogSettings = cellularModemLogSettings;
                }
            });
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
        Log.i(TAG, "getCellularLogSettings end");
    }

    private void setCellularLogSettings() {
        Log.i(TAG, "setCellularLogSettings start");
        try {
            this.mSysLogService.setCellularLogSettings(this.mCellularModemLogSettings);
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
        Log.i(TAG, "setCellularLogSettings end");
    }

    private void getSubsystemPresence() {
        try {
            Log.i(TAG, "getSubsystemPresence start");
            this.mSysLogService.getSubsystemPresence(new ISysLogControl.getSubsystemPresenceCallback() { // from class: com.sprd.logmanager.logcontrol.CPLogControlThroughHidl.2
                @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl.getSubsystemPresenceCallback
                public void onValues(int i, SubsystemPresence subsystemPresence) {
                    CPLogControlThroughHidl.this.mSubsystemPresence = subsystemPresence;
                    Log.i(CPLogControlThroughHidl.TAG, "getSubsystemPresence end");
                }
            });
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    public void setSensorHubLogSettings() {
        Log.i(TAG, "setSensorHubLogSettings start");
        try {
            this.mSysLogService.setSensorHubLogSettings(this.mPmSensorHubLogSettings);
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
        Log.i(TAG, "setSensorHubLogSettings end");
    }

    private void getSensorHubLogSettings() {
        try {
            this.mSysLogService.getSensorHubLogSettings(new ISysLogControl.getSensorHubLogSettingsCallback() { // from class: com.sprd.logmanager.logcontrol.CPLogControlThroughHidl.3
                @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl.getSensorHubLogSettingsCallback
                public void onValues(int i, PmSensorHubLogSettings pmSensorHubLogSettings) {
                    CPLogControlThroughHidl.this.mPmSensorHubLogSettings = pmSensorHubLogSettings;
                }
            });
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    public boolean clearLog() {
        int iClear;
        Log.i(TAG, "clearLog start");
        try {
            iClear = this.mSysLogService.clear();
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
            iClear = -1;
        }
        Log.i(TAG, "clearLog end");
        return iClear == 0;
    }

    public void restoreToDefault() {
        Log.i(TAG, "restoreToDefault start");
        try {
            this.mSysLogService.restoreDefaultSettings();
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
        Log.i(TAG, "restoreToDefault end");
    }

    public void assertSubsystem(int i) {
        Log.i(TAG, "assertSubsystem start , type is : " + i);
        try {
            this.mSysLogService.assertSubsystem(i);
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
        Log.i(TAG, "assertSubsystem end , type is : " + i);
    }

    public void getSubsystemAutoReboot(final RebootSubsystem rebootSubsystem) {
        try {
            this.mSysLogService.getSubsystemAutoReboot(rebootSubsystem.ordinal(), new ISysLogControl.getSubsystemAutoRebootCallback() { // from class: com.sprd.logmanager.logcontrol.CPLogControlThroughHidl.4
                @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl.getSubsystemAutoRebootCallback
                public void onValues(int i, int i2) {
                    RebootSubsystem rebootSubsystem2 = rebootSubsystem;
                    if (rebootSubsystem2 == RebootSubsystem.RS_CELLULAR_MODEM) {
                        CPLogControlThroughHidl.this.mModemReset = i2;
                    } else if (rebootSubsystem2 == RebootSubsystem.RS_WIFI_BT) {
                        CPLogControlThroughHidl.this.mWcnReset = i2;
                    }
                }
            });
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    private void getSubsystemStorageParam(final int i) {
        try {
            this.mSysLogService.getSubsystemStorageParam(i, new ISysLogControl.getSubsystemStorageParamCallback() { // from class: com.sprd.logmanager.logcontrol.CPLogControlThroughHidl.5
                @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl.getSubsystemStorageParamCallback
                public void onValues(int i2, LogStorageSettings logStorageSettings) {
                    if (i == 2) {
                        CPLogControlThroughHidl.this.mConnectivityStorageSettings = logStorageSettings;
                        Log.i(CPLogControlThroughHidl.TAG, "connectivity log internal size is :" + CPLogControlThroughHidl.this.mConnectivityStorageSettings.internalTotal);
                        Log.i(CPLogControlThroughHidl.TAG, "connectivity log external size is :" + CPLogControlThroughHidl.this.mConnectivityStorageSettings.externalTotal);
                        Log.i(CPLogControlThroughHidl.TAG, "connectivity log fileLimit size is :" + CPLogControlThroughHidl.this.mConnectivityStorageSettings.fileLimit);
                    }
                    if (i == 1) {
                        CPLogControlThroughHidl.this.mCplogStorageSettings = logStorageSettings;
                        Log.i(CPLogControlThroughHidl.TAG, "cp log internal size is :" + CPLogControlThroughHidl.this.mCplogStorageSettings.internalTotal);
                        Log.i(CPLogControlThroughHidl.TAG, "cp log external size is :" + CPLogControlThroughHidl.this.mCplogStorageSettings.externalTotal);
                        Log.i(CPLogControlThroughHidl.TAG, "cp log fileLimit size is :" + CPLogControlThroughHidl.this.mCplogStorageSettings.fileLimit);
                    }
                }
            });
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    public int getModemLogToPcState() {
        getCellularLogSettings();
        return this.mCellularModemLogSettings.dest;
    }

    public int getWCNLogToPcState() {
        getConnectivityLogSettings();
        return this.mConnectivityLogSettings.dest;
    }

    public void setLogToPc(int i) {
        this.mCellularModemLogSettings.dest = i;
        setCellularLogSettings();
        this.mConnectivityLogSettings.dest = i;
        setConnectivityLogSettings();
        this.mAudioDspLogSettings.dest = i;
        setAudioDspLogSettings();
    }

    public int saveSleepLog() {
        int iSaveCellularModemSleepLog;
        try {
            Log.i(TAG, "saveSleepLog start");
            iSaveCellularModemSleepLog = this.mSysLogService.saveCellularModemSleepLog();
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
            iSaveCellularModemSleepLog = -1;
        }
        Log.i(TAG, "saveSleepLog end");
        return iSaveCellularModemSleepLog;
    }

    public boolean getArmLogStatus() {
        Log.i(TAG, "getArmLogStatus  :" + this.mCellularModemLogSettings.psLog);
        return this.mCellularModemLogSettings.psLog == 1;
    }

    public void dumpWcnMem() {
        Log.i(TAG, "dumpWcnMem start ");
        try {
            this.mSysLogService.saveWifiBtMemoryDump();
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
        Log.i(TAG, "dumpWcnMem end ");
    }

    public boolean isAnyModemLogOpen() {
        return getArmLogStatus() || getArmPcmLogStatus() || getDspLogStatus() || getDspPcmLogStatus() || getCapLogStatus() || getETBStatus();
    }

    public boolean isAnyConnectivityLogOpen() {
        return getWcnLogStatus() || getGnssLogStatus();
    }

    public boolean isAnyOtherLogOpen() {
        return getSensorHubLogStatus() || getSystemProcessLogStatus() || getAgDspLogStatus() || getAGDspPcmDumpLogStatus() || getVideoLogStatus();
    }

    private void getAudioDspLogSettings() {
        try {
            Log.i(TAG, "getAudioDspLogSettings start");
            this.mSysLogService.getAudioDspLogSettings(new ISysLogControl.getAudioDspLogSettingsCallback() { // from class: com.sprd.logmanager.logcontrol.CPLogControlThroughHidl.6
                @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl.getAudioDspLogSettingsCallback
                public void onValues(int i, AudioDspLogSettings audioDspLogSettings) {
                    CPLogControlThroughHidl.this.mAudioDspLogSettings = audioDspLogSettings;
                    Log.i(CPLogControlThroughHidl.TAG, "getAudioDspLogSettings end");
                }
            });
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    public void enableAGDspPcmDumpLog(boolean z) {
        Log.i(TAG, "enableAGDspPcmDumpLog start : " + z);
        if (isSurportAgdsp()) {
            if (z) {
                this.mAudioDspLogSettings.pcm = 1;
            } else {
                this.mAudioDspLogSettings.pcm = 0;
            }
            setAudioDspLogSettings();
            Log.i(TAG, "enableAGDspPcmDumpLog end : " + z);
        }
    }

    public boolean getAGDspPcmDumpLogStatus() {
        Log.i(TAG, "getAGDspPcmDumpLogStatus " + this.mAudioDspLogSettings.pcm);
        return this.mAudioDspLogSettings.pcm == 1;
    }

    private void setAudioDspLogSettings() {
        try {
            Log.i(TAG, "setAudioDspLogSettings start ");
            this.mSysLogService.setAudioDspLogSettings(this.mAudioDspLogSettings);
            Log.i(TAG, "setAudioDspLogSettings end ");
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    public boolean setCellularModemIqMode(int i) {
        int cellularModemIqMode = -1;
        try {
            Log.i(TAG, "setCellularModemIqMode start ");
            cellularModemIqMode = this.mSysLogService.setCellularModemIqMode(i);
            Log.i(TAG, "setCellularModemIqMode end, ret = " + cellularModemIqMode);
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
        return cellularModemIqMode == 0;
    }

    private void setPmLogSettings() {
        try {
            Log.i(TAG, "setPmLogSettings start ");
            this.mSysLogService.setPmLogSettings(this.mPmLogSettings);
            Log.i(TAG, "setPmLogSettings end ");
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    private void getPmLogSettings() {
        try {
            Log.i(TAG, "getPmLogSettings start ");
            this.mSysLogService.getPmLogSettings(new ISysLogControl.getPmLogSettingsCallback() { // from class: com.sprd.logmanager.logcontrol.CPLogControlThroughHidl.7
                @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl.getPmLogSettingsCallback
                public void onValues(int i, PmSensorHubLogSettings pmSensorHubLogSettings) {
                    CPLogControlThroughHidl.this.mPmLogSettings = pmSensorHubLogSettings;
                    Log.i(CPLogControlThroughHidl.TAG, "getPmLogSettings end ");
                }
            });
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    public void getConnectivityLogSettings() {
        try {
            Log.i(TAG, "getConnectivityLogSettings start ");
            this.mSysLogService.getConnectivityLogSettings(new ISysLogControl.getConnectivityLogSettingsCallback() { // from class: com.sprd.logmanager.logcontrol.CPLogControlThroughHidl.8
                @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl.getConnectivityLogSettingsCallback
                public void onValues(int i, ConnectivityLogSettings connectivityLogSettings) {
                    CPLogControlThroughHidl.this.mConnectivityLogSettings = connectivityLogSettings;
                    Log.i(CPLogControlThroughHidl.TAG, "getConnectivityLogSettings end ");
                }
            });
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    private void setConnectivityLogSettings() {
        Log.i(TAG, "setConnectivityLogSettings start ");
        try {
            this.mSysLogService.setConnectivityLogSettings(this.mConnectivityLogSettings, SubsystemType.SST_CONNECTIVITY.ordinal());
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
        Log.i(TAG, "setConnectivityLogSettings end ");
    }

    public void enableWcnLog(boolean z) {
        Log.i(TAG, "enableWcnLog :" + z + " start");
        if (z) {
            this.mConnectivityLogSettings.wifiBt = 1;
        } else {
            this.mConnectivityLogSettings.wifiBt = 0;
        }
        setConnectivityLogSettings();
        Log.i(TAG, "enableWcnLog :" + z + " end");
    }

    public boolean getWcnLogStatus() {
        Log.i(TAG, "getWcnLogStatus : " + this.mConnectivityLogSettings.wifiBt);
        return this.mConnectivityLogSettings.wifiBt == 1;
    }

    public void setWcnLogLevel(int i) {
        Log.i(TAG, "setWcnLogLevel start : " + i);
        this.mConnectivityLogSettings.wifiBtLevel = i;
        setConnectivityLogSettings();
        Log.i(TAG, "setWcnLogLevel end : " + i);
    }

    public int getWcnLogLevel() {
        Log.i(TAG, "getWcnLogLevel " + this.mConnectivityLogSettings.wifiBtLevel);
        return this.mConnectivityLogSettings.wifiBtLevel;
    }

    public void enableGpsLog(boolean z) {
        Log.i(TAG, "enableGpsLog " + z + " start");
        if (z) {
            this.mConnectivityLogSettings.gnss = 1;
        } else {
            this.mConnectivityLogSettings.gnss = 0;
        }
        setConnectivityLogSettings();
        Log.i(TAG, "enableGpsLog " + z + " end");
    }

    public boolean getGnssLogStatus() {
        Log.i(TAG, "getGnssLogStatus : " + this.mConnectivityLogSettings.gnss);
        return this.mConnectivityLogSettings.gnss == 1;
    }

    public void setStorageInSd(int i) {
        try {
            if (i == 0) {
                this.mSysLogService.setPreferredStorageMedia(LOG_PATH_EXTERNAL);
            } else if (i == 1) {
                this.mSysLogService.setPreferredStorageMedia(LOG_PATH_INTERNAL);
            } else if (i != 2) {
            } else {
                this.mSysLogService.setPreferredStorageMedia(LOG_PATH_DATA);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void enableConnectivityOverwrite(boolean z) {
        Log.i(TAG, "enableConnectivityOverwrite " + z + " start");
        SubsystemType subsystemType = SubsystemType.SST_CONNECTIVITY;
        getSubsystemStorageParam(subsystemType.ordinal());
        if (z) {
            this.mConnectivityStorageSettings.overwrite = 1;
        } else {
            this.mConnectivityStorageSettings.overwrite = 0;
        }
        setSubsystemStorageParam(subsystemType.ordinal(), this.mConnectivityStorageSettings);
        Log.i(TAG, "enableConnectivityOverwrite " + z + " end");
    }

    public void enableModemLogOverwrite(boolean z) {
        Log.i(TAG, "enableModemLogOverwrite " + z + " start");
        SubsystemType subsystemType = SubsystemType.SST_CELLULAR_MODEM;
        getSubsystemStorageParam(subsystemType.ordinal());
        if (z) {
            this.mCplogStorageSettings.overwrite = 1;
        } else {
            this.mCplogStorageSettings.overwrite = 0;
        }
        setSubsystemStorageParam(subsystemType.ordinal(), this.mCplogStorageSettings);
        Log.i(TAG, "enableModemLogOverwrite " + z + " end");
    }

    public void setModemSingleFileSize(long j) {
        Log.i(TAG, "setModemSingleFileSize " + j + " start");
        SubsystemType subsystemType = SubsystemType.SST_CELLULAR_MODEM;
        getSubsystemStorageParam(subsystemType.ordinal());
        this.mCplogStorageSettings.fileLimit = (int) j;
        setSubsystemStorageParam(subsystemType.ordinal(), this.mCplogStorageSettings);
        Log.i(TAG, "setModemSingleFileSize " + j + " end");
    }

    public long getModemSingleFileSize() {
        getSubsystemStorageParam(SubsystemType.SST_CELLULAR_MODEM.ordinal());
        Log.i(TAG, "getModemSingleFileSize " + this.mCplogStorageSettings.fileLimit);
        return this.mCplogStorageSettings.fileLimit;
    }

    public void setConnectivitySingleFileSize(long j) {
        Log.i(TAG, "setConnectivitySingleFileSize " + j);
        SubsystemType subsystemType = SubsystemType.SST_CONNECTIVITY;
        getSubsystemStorageParam(subsystemType.ordinal());
        this.mConnectivityStorageSettings.fileLimit = (int) j;
        setSubsystemStorageParam(subsystemType.ordinal(), this.mConnectivityStorageSettings);
    }

    public long getConnectivitySingleFileSize() {
        getSubsystemStorageParam(SubsystemType.SST_CONNECTIVITY.ordinal());
        Log.i(TAG, "getConnectivitySingleFileSize " + this.mConnectivityStorageSettings.fileLimit);
        return this.mConnectivityStorageSettings.fileLimit;
    }

    public void setTotalModemLogSize(long j, boolean z) {
        SubsystemType subsystemType = SubsystemType.SST_CELLULAR_MODEM;
        getSubsystemStorageParam(subsystemType.ordinal());
        Log.i(TAG, "setTotalModemLogSize " + j + ", external :" + z);
        if (z) {
            this.mCplogStorageSettings.externalTotal = (int) j;
        } else {
            this.mCplogStorageSettings.internalTotal = (int) j;
        }
        setSubsystemStorageParam(subsystemType.ordinal(), this.mCplogStorageSettings);
    }

    public long getTotalModemLogSize(boolean z) {
        int i;
        getSubsystemStorageParam(SubsystemType.SST_CELLULAR_MODEM.ordinal());
        if (z) {
            Log.i(TAG, "getTotalModemLogSize external" + this.mCplogStorageSettings.externalTotal);
            i = this.mCplogStorageSettings.externalTotal;
        } else {
            Log.i(TAG, "getTotalModemLogSize internal " + this.mCplogStorageSettings.internalTotal);
            i = this.mCplogStorageSettings.internalTotal;
        }
        return i;
    }

    public void setTotalConnectivityLogSize(long j, boolean z) {
        SubsystemType subsystemType = SubsystemType.SST_CONNECTIVITY;
        getSubsystemStorageParam(subsystemType.ordinal());
        Log.i(TAG, "setTotalConnectivityLogSize  " + j + ", external :" + z);
        if (z) {
            this.mConnectivityStorageSettings.externalTotal = (int) j;
        } else {
            this.mConnectivityStorageSettings.internalTotal = (int) j;
        }
        setSubsystemStorageParam(subsystemType.ordinal(), this.mConnectivityStorageSettings);
    }

    public long getTotalConnectivityLogSize(boolean z) {
        int i;
        getSubsystemStorageParam(SubsystemType.SST_CONNECTIVITY.ordinal());
        if (z) {
            Log.i(TAG, "getTotalConnectivityLogSize external " + this.mConnectivityStorageSettings.externalTotal);
            i = this.mConnectivityStorageSettings.externalTotal;
        } else {
            Log.i(TAG, "getTotalConnectivityLogSize internal " + this.mConnectivityStorageSettings.internalTotal);
            i = this.mConnectivityStorageSettings.internalTotal;
        }
        return i;
    }

    public void setSubsystemStorageParam(int i, LogStorageSettings logStorageSettings) {
        try {
            this.mSysLogService.setSubsystemStorageParam(i, logStorageSettings);
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    public void setSubsystemAutoReboot(int i, int i2) {
        try {
            this.mSysLogService.setSubsystemAutoReboot(i, i2);
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    public void setVideoDspLogSettings() {
        try {
            this.mSysLogService.setVideoDspLogSettings(this.mVideoDspLogSettings);
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    private void getVideoDspLogSettings() {
        try {
            this.mSysLogService.getVideoDspLogSettings(new ISysLogControl.getVideoDspLogSettingsCallback() { // from class: com.sprd.logmanager.logcontrol.CPLogControlThroughHidl.9
                @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl.getVideoDspLogSettingsCallback
                public void onValues(int i, VideoDspLogSettings videoDspLogSettings) {
                    CPLogControlThroughHidl.this.mVideoDspLogSettings = videoDspLogSettings;
                }
            });
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
        }
    }

    public boolean setLogParentPath(String str) {
        try {
            return this.mSysLogService.setLogParentPath(str) == 0;
        } catch (Exception unused) {
            Log.e(TAG, "get service " + SERVICE_NAME + " error");
            return false;
        }
    }

    public boolean isModemLogOptimizationOpen() {
        return "1".equals(PropUtils.getString(MODEM_LOG_OPTIMIZATION_PROP, "0"));
    }

    public void setModemLogOptimization(boolean z) throws InterruptedException, IOException {
        if (z) {
            PropUtils.setProp(MODEM_LOG_OPTIMIZATION_PROP, "1");
        } else {
            PropUtils.setProp(MODEM_LOG_OPTIMIZATION_PROP, "0");
        }
    }

    public String getModemOpenedInfo() {
        StringBuffer stringBuffer = new StringBuffer("");
        if (getPsLogStatus()) {
            stringBuffer.append("ps");
        }
        if (getArmPcmLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("arm pcm");
        }
        if (getDspLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("dsp");
        }
        if (getDspPcmLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("dsp pcm");
        }
        if (getCapLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("cp cap");
        }
        if (getETBStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("etb");
        }
        if (stringBuffer.length() > 0 && stringBuffer.charAt(0) == ',') {
            return stringBuffer.substring(1);
        }
        return stringBuffer.toString();
    }

    public String getConnectivityOpenedInfo() {
        StringBuffer stringBuffer = new StringBuffer("");
        if (getWcnLogStatus()) {
            if (getInstance().getWCNLogToPcState() == LOG_TO_PC) {
                stringBuffer.append("wcn to pc");
            } else {
                stringBuffer.append("wcn");
            }
        }
        if (getGnssLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("gps");
        }
        if (stringBuffer.length() > 0 && stringBuffer.charAt(0) == ',') {
            return stringBuffer.substring(1);
        }
        return stringBuffer.toString();
    }

    public void recordModemLogLastSelect() {
        if (this.managerPreference == null) {
            this.managerPreference = LogManagerPreference.getInstanse();
        }
        this.managerPreference.backupPSLogStatus(getPsLogStatus());
        this.managerPreference.backupArmPcmLogStatus(getArmLogStatus());
        this.managerPreference.backupDspLogStatus(getDspLogStatus());
        this.managerPreference.backupDspPcmStatus(getDspPcmLogStatus());
        this.managerPreference.backupCpCapStatus(getCapLogStatus());
        this.managerPreference.backupETBStatus(getETBStatus());
    }

    public void recordConnectivityLogLastSelect() {
        if (this.managerPreference == null) {
            this.managerPreference = LogManagerPreference.getInstanse();
        }
        this.managerPreference.backupWcnLogStatus(getWcnLogStatus());
        this.managerPreference.backupGpsLogStatus(getGnssLogStatus());
    }

    public void recordOtherLogLastSelect() {
        if (this.managerPreference == null) {
            this.managerPreference = LogManagerPreference.getInstanse();
        }
        this.managerPreference.backupSensorHubLogStatus(getSensorHubLogStatus());
        this.managerPreference.backupSystemProccessLogStatus(getSystemProcessLogStatus());
        this.managerPreference.backupAgdspLogStatus(getAgDspLogStatus());
        this.managerPreference.backupAgdsppcmLogStatus(getAGDspPcmDumpLogStatus());
        this.managerPreference.backupVisionProcessLogStatus(getVideoLogStatus());
    }

    public void restorLastSelectModemLog(boolean z) {
        boolean z2;
        if (this.managerPreference == null) {
            this.managerPreference = LogManagerPreference.getInstanse();
        }
        if (this.managerPreference.isPSOpenLast()) {
            enablePsLog(true);
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.managerPreference.isArmPcmOpenLast()) {
            enableArmPcmLog(true);
            z2 = true;
        }
        if (this.managerPreference.isDspLogOpenLast()) {
            enableDspLog(true);
            z2 = true;
        }
        if (this.managerPreference.isDspPcmOpenLast()) {
            enableDspPcmLog(true);
            z2 = true;
        }
        if (this.managerPreference.isCpCapOpenLast()) {
            enableCapLog(true);
            z2 = true;
        }
        if (this.managerPreference.isETBOpenLast()) {
            enableETB(true);
            z2 = true;
        }
        if (z2 || !z) {
            return;
        }
        Log.i(TAG, "modem log enable all ");
        enableAllModemLog(true);
    }

    public boolean waitRildReady(long j) throws InterruptedException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (!PropUtils.getString(RIL_SERVICE_PROP, "stopped").contains("run")) {
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (System.currentTimeMillis() - jCurrentTimeMillis >= 1000 * j) {
                return PropUtils.getString(RIL_SERVICE_PROP, "stopped").contains("run");
            }
        }
        return true;
    }

    public void restorLastSelectConnectivityLog(boolean z) {
        boolean z2;
        if (this.managerPreference == null) {
            this.managerPreference = LogManagerPreference.getInstanse();
        }
        if (this.managerPreference.isWcnLogOpenLast()) {
            enableWcnLog(true);
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.managerPreference.isGpsLogOpenLast()) {
            enableGpsLog(true);
            z2 = true;
        }
        if (z2 || z) {
            return;
        }
        Log.i(TAG, "wcn log enable all ");
        enableAllConnectivityLog(true);
    }

    public void restorLastSelectOtherLog(boolean z) {
        boolean z2;
        if (this.managerPreference == null) {
            this.managerPreference = LogManagerPreference.getInstanse();
        }
        if (this.managerPreference.isSensorHubLogOpenLast()) {
            enableSensorHubLog(true);
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.managerPreference.isSystemProcessLogOpenLast()) {
            enableSystemProcessLog(true);
            z2 = true;
        }
        if (this.managerPreference.isAgdspLogOpenLast()) {
            enableAgDsp(true);
            z2 = true;
        }
        if (this.managerPreference.isAgdspPcmLogOpenLast()) {
            enableAGDspPcmDumpLog(true);
            z2 = true;
        }
        if (this.managerPreference.isVisionPcmLogOpenLast()) {
            enableVideoLog(true);
            z2 = true;
        }
        if (z2 || z) {
            return;
        }
        Log.i(TAG, "other log enable all ");
        enableAllOtherLog(true);
    }

    public String getOtherLogOpenedInfo() {
        StringBuffer stringBuffer = new StringBuffer("");
        if (getSensorHubLogStatus()) {
            stringBuffer.append("sensor");
        }
        if (getSystemProcessLogStatus()) {
            stringBuffer.append(",");
            if (!isSurportSensorHub()) {
                stringBuffer.append("pm,sensorhub");
            } else {
                stringBuffer.append("pm");
            }
        }
        if (getAgDspLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("agdsp");
        }
        if (getAGDspPcmDumpLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("agdsp pcm");
        }
        if (getVideoLogStatus()) {
            stringBuffer.append(",");
            stringBuffer.append("video dsp");
        }
        if (stringBuffer.length() > 0 && stringBuffer.charAt(0) == ',') {
            return stringBuffer.substring(1);
        }
        return stringBuffer.toString();
    }

    public boolean isCP0Enable() {
        return PropUtils.getBoolean(MODEM_RO_W_PROP, false) || PropUtils.getBoolean(MODEM_PERSIST_W_PROP, false);
    }

    public boolean isCP4Enable() {
        return PropUtils.getBoolean(MODEM_PERSIST_LF_PROP, false);
    }

    public boolean isCP5Enable() {
        return PropUtils.getBoolean(MODEM_PERSIST_L_PROP, false) || PropUtils.getBoolean(MODEM_PERSIST_R_PROP, false);
    }

    public boolean isModemLogOptimizationDisplay() {
        return PropUtils.getBoolean(MODEM_LOG_OPTIMIZATION_DISPLAY, false);
    }
}
