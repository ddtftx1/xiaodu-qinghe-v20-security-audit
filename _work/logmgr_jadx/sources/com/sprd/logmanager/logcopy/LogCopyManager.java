package com.sprd.logmanager.logcopy;

import android.util.Log;
import com.sprd.logmanager.logcopy.util.APLogCopyUtil;
import com.sprd.logmanager.logcopy.util.AudioLogCopyUtil;
import com.sprd.logmanager.logcopy.util.GnssLogCopyUtil;
import com.sprd.logmanager.logcopy.util.ModemLogCopyUtil;
import com.sprd.logmanager.logcopy.util.PowerOnLogCopyUtil;
import com.sprd.logmanager.logcopy.util.SensorHubLogCopyUtil;
import com.sprd.logmanager.logcopy.util.WcnLogCopyUtil;

/* loaded from: classes.dex */
public class LogCopyManager {
    private static LogCopyManager mLogCopyManager;
    private APLogCopyUtil mAPLogCopyUtil;
    private AudioLogCopyUtil mAudioLogCopyUtil;
    private GnssLogCopyUtil mGnssLogCopyUtil;
    private boolean mIsCopying = false;
    private ModemLogCopyUtil mModemLogCopyUtil;
    private PowerOnLogCopyUtil mPowerOnLogCopyUtil;
    private SensorHubLogCopyUtil mSensorHubLogCopyUtil;
    private WcnLogCopyUtil mWcnLogCopyUtil;

    public static LogCopyManager getInstance() {
        if (mLogCopyManager == null) {
            synchronized (LogCopyManager.class) {
                if (mLogCopyManager == null) {
                    mLogCopyManager = new LogCopyManager();
                }
            }
        }
        return mLogCopyManager;
    }

    public void startCopy(boolean z, boolean z2) {
        Log.d("LogCopyManager", "copy log to sd start...");
        this.mIsCopying = true;
        this.mAPLogCopyUtil = new APLogCopyUtil();
        this.mPowerOnLogCopyUtil = new PowerOnLogCopyUtil();
        this.mModemLogCopyUtil = new ModemLogCopyUtil();
        this.mGnssLogCopyUtil = new GnssLogCopyUtil();
        this.mWcnLogCopyUtil = new WcnLogCopyUtil();
        this.mSensorHubLogCopyUtil = new SensorHubLogCopyUtil();
        this.mAudioLogCopyUtil = new AudioLogCopyUtil();
        this.mAPLogCopyUtil.startCopy(z, z2);
        this.mPowerOnLogCopyUtil.startCopy(z, z2);
        this.mModemLogCopyUtil.startCopy(z, z2);
        this.mGnssLogCopyUtil.startCopy(z, z2);
        this.mWcnLogCopyUtil.startCopy(z, z2);
        this.mSensorHubLogCopyUtil.startCopy(z, z2);
        this.mAudioLogCopyUtil.startCopy(z, z2);
        this.mIsCopying = false;
        Log.d("LogCopyManager", "...copy log to sd end");
    }

    public boolean isCopyRuning() {
        return this.mIsCopying;
    }
}
