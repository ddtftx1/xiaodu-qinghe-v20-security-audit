package com.baidu.duershow.crab;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.baidu.android.duershow.DuerShowManagerEx;
import com.baidu.duershow.crab.collector.NetworkCollector;
import com.baidu.duershow.crab.collector.PackageCollector;
import com.baidu.duershow.crab.monitor.HardwareMonitor;
import com.baidu.duershow.crab.monitor.PullConfigThread;
import com.baidu.duershow.crab.observer.AnrFileObserver;
import com.baidu.duershow.crab.observer.TombFileObserver;
import com.baidu.duershow.crab.sender.CrashHandler;
import com.baidu.duershow.crab.sender.HttpDataWrapper;
import com.baidu.duershow.crab.sender.HttpURLConnSender;
import com.baidu.duershow.crab.util.BLog;
import com.baidu.duershow.crab.util.C;
import com.baidu.duershow.crab.util.CommonUtil;
import com.baidu.duershow.crab.util.SpUtils;
import com.baidu.duershow.crab.util.UploadCacheUtil;
import java.util.Map;

public class CrabSDK {
    private static final int ANDROID_8 = 26;
    private static final String PROVIDER_CLIEND_ID = "content://com.baidu.baiduaccount.provider.userinfoprovider/device_client_id";
    private static final CrabConfig crabConfig = new CrabConfig();

    public static CrabConfig getCrabConfig() {
        return crabConfig;
    }

    public static void addFilteredProc(String str) {
        crabConfig.getFilteredProcList().add(str);
    }

    public static void setAnrCacheFileNums(int i) {
        if (i < 1) {
            BLog.w("CacheNums should larger than 1.");
        } else {
            crabConfig.setAnrCacheFileNums(i - 1);
        }
    }

    public static void setNativeCacheFileNums(int i) {
        if (i < 1) {
            BLog.w("CacheNums should larger than 1.");
        } else {
            crabConfig.setNativeCacheFileNums(i - 1);
        }
    }

    public static void init(Context context, String str, String str2, String str3) {
        init(context, str, str2, str3, false, false);
    }

    public static void init(Context context, String str, String str2, String str3, boolean z, boolean z2) {
        setAppVN(str2);
        setDeviceName(str3);
        init(context, str, z, z2);
    }

    public static void init(Context context, String str, boolean z, boolean z2) {
        if (context == null) {
            BLog.w("context is empty!");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            BLog.w("appkey is empty!");
            return;
        }
        SpUtils.init(context);
        CrabConfig crabConfig2 = crabConfig;
        crabConfig2.setContext(context);
        crabConfig2.setStartUpTime(System.currentTimeMillis());
        crabConfig2.setAppKey(str);
        crabConfig2.setCrabFilePath(Environment.getExternalStorageDirectory().getPath() + "/Crab/");
        crabConfig2.setClientId(getClientId(context));
        crabConfig2.setIsOta(z2);
        BLog.i("Crab upload init:" + str + "; sdkVersion=" + crabConfig2.getVersion() + "; romVersion=" + crabConfig2.getAppVn() + "; isOta:" + z2);
        NetworkCollector.init(context);
        PackageCollector.init(context);
        initFileObserver(z);
        initDropBoxReceiver(context);
    }

    private static void initFileObserver(boolean z) {
        AnrFileObserver anrFileObserver = new AnrFileObserver("/data/anr/", z);
        CrabConfig crabConfig2 = crabConfig;
        crabConfig2.setAnrFileObserver(anrFileObserver);
        crabConfig2.getAnrFileObserver().startWatching();
        crabConfig2.setTombFileObserver(new TombFileObserver("/data/tombstones/", z));
        crabConfig2.getTombFileObserver().startWatching();
    }

    private static void initDropBoxReceiver(Context context) {
        boolean z;
        try {
            Class.forName("com.baidu.framework.crabsdk.CrabSDK");
            z = true;
            BLog.w("Found framework crab!");
        } catch (ClassNotFoundException unused) {
            BLog.w("Not Found Framework crab.");
            z = false;
        }
        if (z) {
            return;
        }
        BLog.i("Need to init dropbox.");
        CrashHandler.getInstance().init(context);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DROPBOX_ENTRY_ADDED");
        context.registerReceiver(new DropBoxReceiver(), intentFilter);
    }

    public static String getClientId(Context context) {
        String string;
        int i = Build.VERSION.SDK_INT;
        String str = C.NO_RESULT;
        if (i >= 26) {
            try {
                Cursor cursorQuery = context.getContentResolver().query(Uri.parse(PROVIDER_CLIEND_ID), null, null, null);
                if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                    string = C.NO_RESULT;
                } else {
                    string = cursorQuery.getString(3);
                    try {
                        cursorQuery.close();
                    } catch (Exception e) {
                        e = e;
                        BLog.e("Query launcher cliend_id error!", e);
                    }
                }
            } catch (Exception e2) {
                e = e2;
                string = C.NO_RESULT;
            }
        } else {
            string = "cllsShhjtFNwPDTpGkUhIVAOV7Dc8BtD";
        }
        if (!TextUtils.isEmpty(string)) {
            str = string;
        }
        BLog.i("Client id is:" + str);
        return str;
    }

    public static void enablePullConfigPeriodically() {
        CrabConfig crabConfig2 = crabConfig;
        if (crabConfig2.getPullConfigThread() == null) {
            crabConfig2.setPullConfigThread(new PullConfigThread());
            crabConfig2.getPullConfigThread().start();
        }
    }

    public static void enablePullConfigPeriodically(int i, int i2) {
        CrabConfig crabConfig2 = crabConfig;
        if (crabConfig2.getPullConfigThread() == null) {
            crabConfig2.setPullConfigThread(new PullConfigThread(i, i2));
            crabConfig2.getPullConfigThread().start();
        }
    }

    public static void pullConfigManually() {
        new Thread(new Runnable() { // from class: com.baidu.duershow.crab.CrabSDK.1
            @Override // java.lang.Runnable
            public void run() {
                String strPullFromServer = HttpURLConnSender.pullFromServer(1);
                if (TextUtils.isEmpty(strPullFromServer)) {
                    return;
                }
                CommonUtil.parseResult(strPullFromServer);
            }
        }).start();
    }

    public static void setOsVN(String str) {
        if (TextUtils.isEmpty(str)) {
            BLog.w("osVN is empty!");
        } else {
            crabConfig.setOsVN(str);
        }
    }

    public static void setUid(String str) {
        if (TextUtils.isEmpty(str)) {
            BLog.w("uid is empty!");
        } else {
            crabConfig.setUid(str);
        }
    }

    public static void setClientId(String str) {
        if (TextUtils.isEmpty(str)) {
            BLog.w("clientId is empty!");
        } else {
            crabConfig.setClientId(str);
        }
    }

    public static void setUserName(String str) {
        if (TextUtils.isEmpty(str)) {
            BLog.w("uname is empty!");
        } else {
            crabConfig.setUname(str);
        }
    }

    public static void setAppVN(String str) {
        if (TextUtils.isEmpty(str)) {
            BLog.w("appVN is empty!");
        } else if (str != null && str.length() > 30) {
            BLog.w("appVN is too long!");
        } else {
            crabConfig.setAppVn(str);
        }
    }

    public static void setDeviceName(String str) {
        if (TextUtils.isEmpty(str)) {
            BLog.w("deviceName is empty!");
        } else {
            crabConfig.setDeviceName(str);
        }
    }

    public static void setChannel(String str) {
        if (TextUtils.isEmpty(str)) {
            BLog.w("channel is empty!");
        } else {
            crabConfig.setChannel(str);
        }
    }

    public static void setSubModel(String str) {
        if (TextUtils.isEmpty(str)) {
            BLog.w("subModel is empty!");
        } else {
            crabConfig.setSubModel(str);
        }
    }

    public static void setLogcatEnabled(boolean z) {
        crabConfig.setEnableLog(z);
    }

    public static void uploadCacheDataIfNeed(Context context) {
        UploadCacheUtil.getInstance(context).uploadCacheDataIfNeed();
    }

    public static void uploadData() {
        HttpDataWrapper.doUpload();
    }

    public static void appLife(String str) {
        setUid(str);
        HttpDataWrapper.appLife();
    }

    @SuppressLint({"MissingPermission"})
    public static void appLife() {
        appLife(Build.VERSION.SDK_INT >= 26 ? Build.getSerial() : Build.SERIAL);
    }

    public static void setOnCrabDeviceInfoCallBack(OnCrabDeviceInfoCallBackListener onCrabDeviceInfoCallBackListener) {
        CrabConfig.onCrabDeviceInfoCallBackListener = onCrabDeviceInfoCallBackListener;
    }

    public static String getCrabVersion() {
        return crabConfig.getVersion();
    }

    public static void setTemperLocalPath(String str) {
        HardwareMonitor.getInstance().setTemperaturePath(str);
    }

    public static void setPmicTemperLocalPath(String str) {
        HardwareMonitor.getInstance().setPmicTemperaturePath(str);
    }

    public static void setApTemperLocalPath(String str) {
        HardwareMonitor.getInstance().setApTemperaturePath(str);
    }

    public static void setGpuTemperLocalPath(String str) {
        HardwareMonitor.getInstance().setGpuTemperaturePath(str);
    }

    public static void setEmmcLocalPathAndInit(String str) {
        HardwareMonitor.getInstance().setEmmcPathAndInit(str);
    }

    public static void setCpuCoreNumLocalPath(String str) {
        if (str.matches("^[A-z]\\\\(.+?\\\\)*$")) {
            HardwareMonitor.getInstance().setCpuCoreNumPath(str);
        } else {
            HardwareMonitor.getInstance().setCpuCoreNumPath("/sys/devices/system/cpu/online");
        }
    }

    public static void setTemperCentigradeFlag(boolean z) {
        HardwareMonitor.getInstance().setIsCentigradeUsed(z);
    }

    public static void setStoragePath(Map<String, String> map) {
        HardwareMonitor.getInstance().setStoragePathInfo(map);
    }

    public static int getScreenState(Context context) {
        return DuerShowManagerEx.getService(context).getScreenState();
    }

    public static void onNetworkTaskRestarted() {
        CrabConfig crabConfig2 = crabConfig;
        crabConfig2.setScreenOn(true);
        PullConfigThread pullConfigThread = crabConfig2.getPullConfigThread();
        if (pullConfigThread != null) {
            pullConfigThread.setPullStop(false);
        }
    }

    public static void onNetworkTaskStopped() {
        CrabConfig crabConfig2 = crabConfig;
        crabConfig2.setScreenOn(false);
        PullConfigThread pullConfigThread = crabConfig2.getPullConfigThread();
        if (pullConfigThread != null) {
            pullConfigThread.setPullStop(true);
        }
    }
}
