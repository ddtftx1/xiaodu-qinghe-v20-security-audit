package com.unisoc.silent.reboot;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.media.AudioManager;
import android.os.BatteryManager;
import android.os.PowerManager;
import android.os.SystemProperties;
import android.provider.Settings;
import android.scheduling.RebootReadinessManager;
import android.telephony.TelephonyManager;
import android.unisoc.silent.reboot.UniSilentRebootManager;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class UniSilentRebootUtils {

    @VisibleForTesting
    AudioManager mAudioManager;

    @VisibleForTesting
    BatteryManager mBatteryManager;
    private Context mContext;

    @VisibleForTesting
    PowerManager mPowerManager;

    @VisibleForTesting
    RebootReadinessManager mRebootReadinessManager;

    @VisibleForTesting
    TelephonyManager mTelephonyManager;
    private final long ONE_DAY_MILIS = 86400000;
    private final long ONE_MIN_MILIS = 60000;
    private final long ONE_SECOND_MILIS = 1000;
    private final int MIN_BATTERY_POWER = 30;
    private final String USB_CONNECTED = "sys.usb.config";
    private final String PROPERTY_REBOOT_START = "persist.config.silent.reboot.start";
    private final String PROPERTY_REBOOT_DURATION = "persist.config.silent.reboot.duration";
    private final String PROPERTY_REBOOT_PERIOD = "persist.config.silent.reboot.period";
    private final String PROPERTY_REBOOT_RETRY = "persist.config.silent.reboot.retry";
    private final String PROPERTY_DISABLED_USB = "persist.config.silent.reboot.disabled_usb";

    @VisibleForTesting
    UniSilentRebootManager mUniSilentRebootManager = UniSilentRebootManager.getInstance();

    public UniSilentRebootUtils(Context context) {
        this.mContext = context;
        this.mTelephonyManager = (TelephonyManager) context.getSystemService(TelephonyManager.class);
        this.mAudioManager = (AudioManager) context.getSystemService(AudioManager.class);
        this.mPowerManager = (PowerManager) context.getSystemService(PowerManager.class);
        this.mBatteryManager = (BatteryManager) context.getSystemService(BatteryManager.class);
        this.mRebootReadinessManager = (RebootReadinessManager) context.getSystemService("reboot_readiness");
    }

    public boolean isDevicePreparedForReboot() {
        Log.d("UniSilentRebootUtils", "isScreenOff=" + isScreenOff() + "isMusic=" + isMusicActive() + " isRecording=" + isRecording() + " isCalling=" + isCalling() + " isIccLockEnabled=" + isIccLockEnabled() + " isPowerEnough=" + isPowerEnough() + " hadLedUsed=" + hadLedUsed() + " isQuieTest=" + isQuieTest() + " isReadyToReboot=" + isReadyToReboot() + " isPreparedForUnattendedReboot=" + isPreparedForUnattendedReboot());
        return (!isScreenOff() || isMusicActive() || isRecording() || isCalling() || isIccLockEnabled() || !isPowerEnough() || hadLedUsed() || isQuieTest() || !isPreparedForUnattendedReboot()) ? false : true;
    }

    private boolean isScreenOff() {
        if (this.mPowerManager != null) {
            return !r0.isInteractive();
        }
        return false;
    }

    private boolean isReadyToReboot() {
        RebootReadinessManager rebootReadinessManager = this.mRebootReadinessManager;
        if (rebootReadinessManager != null) {
            return rebootReadinessManager.isReadyToReboot();
        }
        return true;
    }

    public boolean isPreparedForUnattendedReboot() {
        UniSilentRebootManager uniSilentRebootManager = this.mUniSilentRebootManager;
        if (uniSilentRebootManager != null) {
            return uniSilentRebootManager.isPreparedForUnattendedReboot();
        }
        return true;
    }

    private boolean isMusicActive() {
        AudioManager audioManager = this.mAudioManager;
        if (audioManager != null) {
            return audioManager.isMusicActive();
        }
        return false;
    }

    private boolean isRecording() {
        return this.mAudioManager.getActiveRecordingConfigurations().size() > 0;
    }

    private boolean isCalling() {
        TelephonyManager telephonyManager = this.mTelephonyManager;
        return (telephonyManager == null || telephonyManager.getCallState() == 0) ? false : true;
    }

    private boolean isIccLockEnabled() {
        TelephonyManager telephonyManager = this.mTelephonyManager;
        if (telephonyManager == null) {
            return false;
        }
        try {
            return telephonyManager.isIccLockEnabled();
        } catch (Exception e) {
            Log.e("UniSilentReboot", e.toString());
            return false;
        }
    }

    private boolean isPowerEnough() {
        BatteryManager batteryManager = this.mBatteryManager;
        return batteryManager == null || batteryManager.getIntProperty(4) > 30;
    }

    private boolean hadLedUsed() {
        return Settings.Secure.getInt(this.mContext.getContentResolver(), "flashlight_enabled", 0) == 1;
    }

    private boolean isQuieTest() {
        Context context;
        if (SystemProperties.getBoolean("persist.config.silent.reboot.disabled_usb", false) || (context = this.mContext) == null) {
            return false;
        }
        boolean z = Settings.Global.getInt(context.getContentResolver(), "adb_enabled", 0) != 0;
        boolean zContains = SystemProperties.get("sys.usb.config").contains("adb");
        Log.d("UniSilentRebootUtils", "USB_CONNECTED ==" + SystemProperties.get("sys.usb.config"));
        return z && zContains;
    }

    public void silentRebootForApply() {
        UniSilentRebootManager uniSilentRebootManager = this.mUniSilentRebootManager;
        if (uniSilentRebootManager != null) {
            uniSilentRebootManager.silentRebootForApply();
        }
    }

    public long getSilentRebootTimeStamp() {
        long integer = SystemProperties.getInt("persist.config.silent.reboot.period", -1);
        if (integer > 0) {
            return integer * 1000;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Context context = this.mContext;
        if (context != null) {
            integer = context.getResources().getInteger(R.integer.config_unisoc_silent_reboot_period);
        }
        return integer + getNextRebootTimeStamp(jCurrentTimeMillis, CreateRebootTimeWindow(getRebootTimeWindowStart(), getRebootTimeWindowIncrement(), getRebootTimeWindowDuration())) + (86400000 * integer);
    }

    public boolean isValidRebootTimeStamp(long j, RebootTimeWindow rebootTimeWindow) {
        int i;
        if (rebootTimeWindow == null || (i = rebootTimeWindow.duration) == 0 || i < rebootTimeWindow.increment) {
            return false;
        }
        long rawOffset = (((j / 86400000) * 86400000) - TimeZone.getDefault().getRawOffset()) + (rebootTimeWindow.start * 1000);
        long j2 = (rebootTimeWindow.duration * 1000) + rawOffset;
        if (j > j2) {
            rawOffset += 86400000;
            j2 += 86400000;
        }
        return j >= rawOffset && j <= j2;
    }

    public long getNextRebootTimeStamp(long j, RebootTimeWindow rebootTimeWindow) {
        int i;
        int i2;
        if (rebootTimeWindow == null || (i = rebootTimeWindow.duration) <= 0 || (i2 = rebootTimeWindow.increment) <= 0 || i < i2) {
            Log.d("UniSilentRebootUtils", "the reboot start time or duration error");
            return 0L;
        }
        long rawOffset = (((j / 86400000) * 86400000) - TimeZone.getDefault().getRawOffset()) + (rebootTimeWindow.start * 1000);
        long j2 = (rebootTimeWindow.duration * 1000) + rawOffset;
        if (j > j2) {
            rawOffset += 86400000;
            j2 += 86400000;
        }
        long j3 = (rebootTimeWindow.increment * 1000) + j;
        return (j3 < rawOffset || j3 > j2) ? j3 < rawOffset ? rawOffset - j : (rawOffset + 86400000) - j : j3 - j;
    }

    public int getRebootTimeWindowStart() {
        int i = SystemProperties.getInt("persist.config.silent.reboot.start", -1);
        return -1 == i ? this.mContext.getResources().getInteger(R.integer.config_unisoc_silent_reboot_start) : i;
    }

    public RebootTimeWindow CreateRebootTimeWindow(int i, int i2, int i3) {
        return new RebootTimeWindow(i, i2, i3);
    }

    public int getRebootTimeWindowDuration() {
        Context context;
        int i = SystemProperties.getInt("persist.config.silent.reboot.duration", -1);
        return (-1 != i || (context = this.mContext) == null) ? i : context.getResources().getInteger(R.integer.config_unisoc_silent_reboot_duration);
    }

    public int getRebootTimeWindowIncrement() {
        int i = SystemProperties.getInt("persist.config.silent.reboot.retry", -1);
        return -1 == i ? this.mContext.getResources().getInteger(R.integer.config_unisoc_silent_reboot_increment) : i;
    }

    public JobInfo createJobInfo(int i, Context context, long j) {
        return new JobInfo.Builder(i, new ComponentName(context, (Class<?>) UniSilentRebootService.class)).setMinimumLatency(j).setOverrideDeadline(j).setRequiresDeviceIdle(true).build();
    }

    public void scheduleNextSilentReboot(int i, Context context, long j) {
        if (0 == j || context == null) {
            return;
        }
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService(JobScheduler.class);
        if (jobScheduler.getPendingJob(i) != null) {
            jobScheduler.cancel(i);
        }
        Log.d("UniSilentRebootUtils", "set the job time is " + j);
        jobScheduler.schedule(createJobInfo(i, context, j));
    }
}
