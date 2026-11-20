package com.unisoc.silent.reboot;

import android.app.KeyguardManager;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.SystemProperties;
import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class UniSilentRebootService extends JobService {
    private Context mContext;
    private KeyguardManager mKeyguardManager;
    private PowerManager mPowerManager;
    private UniSilentRebootUtils mUniSilentRebootUtils;

    @Override // android.app.Service
    public void onDestroy() {
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 3;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Context baseContext = getBaseContext();
        this.mContext = baseContext;
        this.mKeyguardManager = (KeyguardManager) baseContext.getSystemService(KeyguardManager.class);
        this.mPowerManager = (PowerManager) this.mContext.getSystemService(PowerManager.class);
        this.mUniSilentRebootUtils = new UniSilentRebootUtils(this.mContext);
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        if (!SystemProperties.getBoolean("persist.silent.reboot.enabled", true)) {
            cancelJobService();
            return false;
        }
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
        UniSilentRebootUtils uniSilentRebootUtils = this.mUniSilentRebootUtils;
        final RebootTimeWindow rebootTimeWindowCreateRebootTimeWindow = uniSilentRebootUtils.CreateRebootTimeWindow(uniSilentRebootUtils.getRebootTimeWindowStart(), this.mUniSilentRebootUtils.getRebootTimeWindowIncrement(), this.mUniSilentRebootUtils.getRebootTimeWindowDuration());
        executorServiceNewCachedThreadPool.execute(new Runnable() { // from class: com.unisoc.silent.reboot.UniSilentRebootService.1
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (UniSilentRebootService.this.mUniSilentRebootUtils.isDevicePreparedForReboot()) {
                    Log.d("UniSilentReboot", "DevicePreparedForReboot true");
                    if (UniSilentRebootService.this.mUniSilentRebootUtils.isValidRebootTimeStamp(jCurrentTimeMillis, rebootTimeWindowCreateRebootTimeWindow)) {
                        if (UniSilentRebootService.this.mKeyguardManager == null || !UniSilentRebootService.this.mKeyguardManager.isDeviceSecure()) {
                            if (UniSilentRebootService.this.mPowerManager != null) {
                                UniSilentRebootService.this.mPowerManager.reboot("quiescent");
                            }
                        } else {
                            UniSilentRebootService.this.mUniSilentRebootUtils.silentRebootForApply();
                        }
                    } else {
                        UniSilentRebootService.this.mUniSilentRebootUtils.scheduleNextSilentReboot(2001, UniSilentRebootService.this.mContext, UniSilentRebootService.this.mUniSilentRebootUtils.getNextRebootTimeStamp(jCurrentTimeMillis, rebootTimeWindowCreateRebootTimeWindow));
                    }
                } else {
                    UniSilentRebootService.this.mUniSilentRebootUtils.scheduleNextSilentReboot(2001, UniSilentRebootService.this.mContext, UniSilentRebootService.this.mUniSilentRebootUtils.getNextRebootTimeStamp(jCurrentTimeMillis, rebootTimeWindowCreateRebootTimeWindow));
                }
                UniSilentRebootService.this.jobFinished(jobParameters, false);
                Log.d("UniSilentReboot", "jobFinished");
            }
        });
        return true;
    }

    private boolean cancelJobService() {
        JobScheduler jobScheduler = (JobScheduler) this.mContext.getSystemService(JobScheduler.class);
        if (jobScheduler.getPendingJob(2001) == null) {
            return false;
        }
        jobScheduler.cancel(2001);
        return true;
    }
}
