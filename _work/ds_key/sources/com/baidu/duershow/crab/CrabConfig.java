package com.baidu.duershow.crab;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.baidu.duershow.crab.collector.CMDResultCollector;
import com.baidu.duershow.crab.monitor.PullConfigThread;
import com.baidu.duershow.crab.observer.AnrFileObserver;
import com.baidu.duershow.crab.observer.TombFileObserver;
import com.baidu.duershow.crab.util.BLog;
import com.baidu.duershow.crab.util.C;
import java.util.ArrayList;

public class CrabConfig {
    private static final String ADD_CRAB = "add_crab";
    private static final String API = "api/";
    private static final String API_ANR = "api_anr/";
    private static final String API_INT = "api_int/";
    public static final String CRAB_KEY_TOMB = "99c37bc41f83e2c7";
    private static final String DUEROS = "dueros/";
    private static final String NEWSYNC2 = "newsync2";
    private static final String ONLINE_URL = "https://crab.baidu.com/";
    private static final String ONLINE_URL_QAPM = "https://qapm.baidu.com/";
    private static final String PULL_CONF = "pull-conf";
    private static final String UPLOAD_DATA = "upload-data";
    public static final int VERSION_CODES_O = 26;
    public static OnCrabDeviceInfoCallBackListener onCrabDeviceInfoCallBackListener;
    private int anrCacheFileNums;
    private AnrFileObserver anrFileObserver;
    private String appKey;
    private String crabFilePath;
    private String deviceName;
    private ArrayList<String> filteredProcList;
    private boolean isEnableLog;
    private boolean isIsOnline;
    private int nativeCacheFileNums;
    private PullConfigThread pullConfigThread;
    private long startUpTime;
    private String subModel;
    private TombFileObserver tombFileObserver;
    private String uid;
    private final String version = "2.6.9";
    private final String developerName = C.NO_RESULT;
    private Context context = null;
    private boolean mIsScreenOn = true;
    private String mClientId = C.NO_RESULT;
    private boolean mIsOta = false;
    private String channel = "alpha";
    private String uname = C.NO_RESULT;
    private String appVn = Build.VERSION.RELEASE;
    private String osVN = Build.DISPLAY;

    public String getDeveloperName() {
        return C.NO_RESULT;
    }

    public String getVersion() {
        return "2.6.9";
    }

    @SuppressLint({"MissingPermission"})
    public CrabConfig() {
        this.uid = Build.VERSION.SDK_INT >= 26 ? Build.getSerial() : Build.SERIAL;
        this.deviceName = Build.MODEL + "_" + Build.BRAND;
        this.startUpTime = System.currentTimeMillis();
        this.isEnableLog = true;
        this.filteredProcList = new ArrayList<>();
        this.nativeCacheFileNums = 10;
        this.anrCacheFileNums = 10;
        this.isIsOnline = true;
        this.subModel = CMDResultCollector.IDLE_PID_LOG_LOG_NUM;
    }

    public String getSubModel() {
        return this.subModel;
    }

    public void setSubModel(String str) {
        this.subModel = str;
    }

    public Context getContext() {
        return this.context;
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public PullConfigThread getPullConfigThread() {
        return this.pullConfigThread;
    }

    public void setPullConfigThread(PullConfigThread pullConfigThread) {
        this.pullConfigThread = pullConfigThread;
    }

    public AnrFileObserver getAnrFileObserver() {
        return this.anrFileObserver;
    }

    public void setAnrFileObserver(AnrFileObserver anrFileObserver) {
        this.anrFileObserver = anrFileObserver;
    }

    public TombFileObserver getTombFileObserver() {
        return this.tombFileObserver;
    }

    public void setTombFileObserver(TombFileObserver tombFileObserver) {
        this.tombFileObserver = tombFileObserver;
    }

    public String getOsVN() {
        return this.osVN;
    }

    public void setOsVN(String str) {
        this.osVN = str;
    }

    public String getCrabFilePath() {
        return this.crabFilePath;
    }

    public void setCrabFilePath(String str) {
        this.crabFilePath = str;
    }

    public String getChannel() {
        return this.channel;
    }

    public void setChannel(String str) {
        this.channel = str;
    }

    public String getUid() {
        return this.uid;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public String getUname() {
        return this.uname;
    }

    public void setUname(String str) {
        this.uname = str;
    }

    public String getAppVn() {
        return this.appVn;
    }

    public void setAppVn(String str) {
        this.appVn = str;
    }

    public String getDeviceName() {
        return this.deviceName;
    }

    public void setDeviceName(String str) {
        this.deviceName = str;
    }

    public String getAppKey() {
        return this.appKey;
    }

    public void setAppKey(String str) {
        this.appKey = str;
    }

    public long getStartUpTime() {
        return this.startUpTime;
    }

    public void setStartUpTime(long j) {
        this.startUpTime = j;
    }

    public boolean isEnableLog() {
        return this.isEnableLog;
    }

    public void setEnableLog(boolean z) {
        this.isEnableLog = z;
    }

    public ArrayList<String> getFilteredProcList() {
        return this.filteredProcList;
    }

    public int getNativeCacheFileNums() {
        return this.nativeCacheFileNums;
    }

    public void setNativeCacheFileNums(int i) {
        this.nativeCacheFileNums = i;
    }

    public int getAnrCacheFileNums() {
        return this.anrCacheFileNums;
    }

    public void setAnrCacheFileNums(int i) {
        this.anrCacheFileNums = i;
    }

    public String getClientId() {
        if (TextUtils.isEmpty(this.mClientId) || C.NO_RESULT.equals(this.mClientId)) {
            Context context = this.context;
            if (context != null) {
                this.mClientId = CrabSDK.getClientId(context);
            } else {
                this.mClientId = C.NO_RESULT;
            }
        }
        return this.mClientId;
    }

    public void setClientId(String str) {
        if (TextUtils.isEmpty(str)) {
            BLog.w("clientId is empty!");
        } else {
            this.mClientId = str;
        }
    }

    public boolean isScreenOn() {
        return this.mIsScreenOn;
    }

    public void setScreenOn(boolean z) {
        this.mIsScreenOn = z;
    }

    public boolean isOta() {
        return this.mIsOta;
    }

    public void setIsOta(boolean z) {
        this.mIsOta = z;
    }

    public String getCrashUrl() {
        return this.isIsOnline ? "https://crab.baidu.com/api_int/add_crab" : "http://yq01-crab-offline01.epc.baidu.com:8123/api/add_crab";
    }

    public String getRecordUrl() {
        return this.isIsOnline ? "https://crab.baidu.com/api_anr/add_crab" : "http://yq01-crab-offline01.epc.baidu.com:8123/api/add_crab";
    }

    public String getAppLife() {
        return this.isIsOnline ? "https://crab.baidu.com/api/newsync2" : "http://yq01-crab-offline01.epc.baidu.com:8123/batsdk/api/newsync2";
    }

    public String getNdkUrl() {
        return this.isIsOnline ? "https://crab.baidu.com/api/add_crab" : "http://yq01-crab-offline01.epc.baidu.com:8123/api/add_crab";
    }

    public String getPullConfUrl() {
        return this.isIsOnline ? "https://qapm.baidu.com/api/dueros/pull-conf" : "http://yq01-crab-offline01.epc.baidu.com:8111/api/dueros/pull-conf";
    }

    public String getMonitorUrl() {
        return this.isIsOnline ? "https://qapm.baidu.com/api/dueros/upload-data" : "http://yq01-crab-offline01.epc.baidu.com:8111/api/dueros/upload-data";
    }
}
