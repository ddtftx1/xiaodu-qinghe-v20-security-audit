package com.sprd.logmanager.database;

import android.content.Context;
import android.util.Log;
import com.sprd.logmanager.logcontrol.APLogControl;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import com.sprd.logmanager.utils.CommonUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class LogSceneManager {
    private static LogSceneManager mInstance = new LogSceneManager();
    private CPLogControlThroughHidl mCpLogControl = CPLogControlThroughHidl.getInstance();
    private APLogControl mApLogControl = APLogControl.getInstance();
    private LogManagerPreference managerPreference = LogManagerPreference.getInstanse();

    private LogSceneManager() {
    }

    public static LogSceneManager getInstance() {
        return mInstance;
    }

    public boolean isLogEnable() {
        return this.mApLogControl.isLogStarted() || this.mCpLogControl.isAnyModemLogOpen() || this.mCpLogControl.isAnyConnectivityLogOpen() || this.mCpLogControl.isAnyOtherLogOpen();
    }

    public void openNormalScene() {
        Log.i("LogSceneManager", "openNormalScene");
        this.managerPreference.setSelectScene("Normal");
        this.mApLogControl.setLogStatus(true);
        this.mApLogControl.enableUboot(true);
        this.mApLogControl.enableLastKmsg(true);
        this.mApLogControl.enableKernelLog(true);
        this.mApLogControl.enableAndroidLog(true);
        this.mApLogControl.enableHciLog(true);
        this.mApLogControl.enableThermalLog(false);
        this.mApLogControl.enableCapLog(true);
        this.mApLogControl.enableAPAudio(false);
        this.mApLogControl.setCapSize(3000);
        this.mCpLogControl.enablePsLog(true);
        this.mCpLogControl.enableCapLog(true);
        this.mCpLogControl.enableETB(true);
        this.mCpLogControl.enableSensorHubLog(true);
        this.mCpLogControl.enableSystemProcessLog(true);
        this.mCpLogControl.enableArmPcmLog(false);
        this.mCpLogControl.enableAgDsp(true);
        this.mCpLogControl.enableAGDspPcmDumpLog(true);
        this.mCpLogControl.enableDspLog(true);
        this.mCpLogControl.enableDspPcmLog(false);
        this.mCpLogControl.enableWcnLog(true);
        this.mCpLogControl.enableGpsLog(true);
        this.mCpLogControl.enableVideoLog(false);
        this.mCpLogControl.setModemLogMode(true);
        this.mApLogControl.recordAPLogLastSelect();
        this.mCpLogControl.recordModemLogLastSelect();
        this.mCpLogControl.recordConnectivityLogLastSelect();
        this.mCpLogControl.recordOtherLogLastSelect();
    }

    public void openDataScene() {
        Log.i("LogSceneManager", "openDataScene");
        this.managerPreference.setSelectScene("Data");
        this.mApLogControl.setLogStatus(true);
        this.mApLogControl.enableUboot(true);
        this.mApLogControl.enableLastKmsg(true);
        this.mApLogControl.enableKernelLog(true);
        this.mApLogControl.enableAndroidLog(true);
        this.mApLogControl.enableHciLog(true);
        this.mApLogControl.enableThermalLog(false);
        this.mApLogControl.enableCapLog(true);
        this.mApLogControl.enableAPAudio(false);
        this.mApLogControl.setCapSize(10000);
        this.mCpLogControl.enablePsLog(true);
        this.mCpLogControl.enableCapLog(true);
        this.mCpLogControl.enableETB(true);
        this.mCpLogControl.enableSensorHubLog(true);
        this.mCpLogControl.enableSystemProcessLog(true);
        this.mCpLogControl.enableArmPcmLog(false);
        this.mCpLogControl.enableAgDsp(false);
        this.mCpLogControl.enableAGDspPcmDumpLog(false);
        this.mCpLogControl.enableDspLog(true);
        this.mCpLogControl.enableDspPcmLog(false);
        this.mCpLogControl.enableWcnLog(true);
        this.mCpLogControl.enableGpsLog(true);
        this.mCpLogControl.enableVideoLog(false);
        this.mCpLogControl.setModemLogMode(true);
        this.mApLogControl.recordAPLogLastSelect();
        this.mCpLogControl.recordModemLogLastSelect();
        this.mCpLogControl.recordConnectivityLogLastSelect();
        this.mCpLogControl.recordOtherLogLastSelect();
    }

    public void openAudioScene() {
        Log.i("LogSceneManager", "openAudioScene");
        this.managerPreference.setSelectScene("Audio");
        this.mApLogControl.setLogStatus(true);
        this.mApLogControl.enableUboot(true);
        this.mApLogControl.enableLastKmsg(true);
        this.mApLogControl.enableKernelLog(true);
        this.mApLogControl.enableAndroidLog(true);
        this.mApLogControl.enableHciLog(true);
        this.mApLogControl.enableThermalLog(false);
        this.mApLogControl.enableCapLog(true);
        this.mApLogControl.enableAPAudio(false);
        this.mApLogControl.setCapSize(3000);
        this.mCpLogControl.enablePsLog(true);
        this.mCpLogControl.enableCapLog(true);
        this.mCpLogControl.enableETB(true);
        this.mCpLogControl.enableSensorHubLog(true);
        this.mCpLogControl.enableSystemProcessLog(true);
        this.mCpLogControl.enableArmPcmLog(true);
        this.mCpLogControl.enableAgDsp(true);
        this.mCpLogControl.enableAGDspPcmDumpLog(true);
        this.mCpLogControl.enableDspLog(true);
        this.mCpLogControl.enableDspPcmLog(true);
        this.mCpLogControl.enableWcnLog(true);
        this.mCpLogControl.enableGpsLog(true);
        this.mCpLogControl.enableVideoLog(false);
        this.mCpLogControl.setModemLogMode(true);
        this.mApLogControl.recordAPLogLastSelect();
        this.mCpLogControl.recordModemLogLastSelect();
        this.mCpLogControl.recordConnectivityLogLastSelect();
        this.mCpLogControl.recordOtherLogLastSelect();
    }

    public void openWcnScene() {
        Log.i("LogSceneManager", "openWcnScene");
        this.managerPreference.setSelectScene("WCN");
        this.mApLogControl.setLogStatus(true);
        this.mApLogControl.enableUboot(true);
        this.mApLogControl.enableLastKmsg(true);
        this.mApLogControl.enableKernelLog(true);
        this.mApLogControl.enableAndroidLog(true);
        this.mApLogControl.enableHciLog(true);
        this.mApLogControl.enableThermalLog(false);
        this.mApLogControl.enableCapLog(true);
        this.mApLogControl.enableAPAudio(false);
        this.mApLogControl.setCapSize(10000);
        this.mCpLogControl.enablePsLog(true);
        this.mCpLogControl.enableCapLog(true);
        this.mCpLogControl.enableETB(true);
        this.mCpLogControl.enableSensorHubLog(true);
        this.mCpLogControl.enableSystemProcessLog(true);
        this.mCpLogControl.enableArmPcmLog(false);
        this.mCpLogControl.enableAgDsp(false);
        this.mCpLogControl.enableAGDspPcmDumpLog(false);
        this.mCpLogControl.enableDspLog(true);
        this.mCpLogControl.enableDspPcmLog(false);
        this.mCpLogControl.enableWcnLog(true);
        this.mCpLogControl.enableGpsLog(true);
        this.mCpLogControl.enableVideoLog(false);
        this.mCpLogControl.setModemLogMode(true);
        this.mApLogControl.recordAPLogLastSelect();
        this.mCpLogControl.recordModemLogLastSelect();
        this.mCpLogControl.recordConnectivityLogLastSelect();
        this.mCpLogControl.recordOtherLogLastSelect();
    }

    public boolean open(String str) {
        Log.i("LogSceneManager", "scene is " + str);
        boolean z = true;
        if ("Normal".equals(str)) {
            openNormalScene();
        } else if ("Data".equals(str)) {
            openDataScene();
        } else if ("Audio".equals(str)) {
            openAudioScene();
        } else if ("WCN".equals(str)) {
            openWcnScene();
        } else {
            z = false;
        }
        if (CommonUtils.isUserBuild()) {
            CPLogControlThroughHidl.getInstance().setPsLogLevel(3);
            CPLogControlThroughHidl.getInstance().setWcnLogLevel(3);
        }
        return z;
    }

    public List<String> getAllSceneInfoList(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("Normal");
        arrayList.add("Data");
        arrayList.add("Audio");
        arrayList.add("WCN");
        return arrayList;
    }
}
