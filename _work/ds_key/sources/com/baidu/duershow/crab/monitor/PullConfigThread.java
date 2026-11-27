package com.baidu.duershow.crab.monitor;

import android.os.SystemClock;
import android.text.TextUtils;
import com.baidu.duershow.crab.CrabSDK;
import com.baidu.duershow.crab.sender.HttpURLConnSender;
import com.baidu.duershow.crab.util.BLog;
import com.baidu.duershow.crab.util.CommonUtil;
import java.util.Random;

public class PullConfigThread extends Thread {
    private int firstRequestDelay;
    private long interval;
    private boolean isPullStop;
    private boolean isThreadActive;
    private boolean needRetry;
    private final int retryInterval;

    public PullConfigThread() {
        this(36000, 900);
    }

    public PullConfigThread(int i, int i2) {
        this.isThreadActive = true;
        this.isPullStop = false;
        this.interval = i;
        this.retryInterval = i2;
        this.firstRequestDelay = new Random().nextInt(660) + 60;
        BLog.i("First random delay in seconds:" + this.firstRequestDelay);
        this.needRetry = true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (this.isThreadActive) {
            if (!this.isPullStop) {
                if (this.needRetry) {
                    BLog.i("Need request in seconds:" + this.firstRequestDelay);
                    SystemClock.sleep(((long) this.firstRequestDelay) * 1000);
                }
                String strPullFromServer = HttpURLConnSender.pullFromServer(1);
                if (!TextUtils.isEmpty(strPullFromServer)) {
                    CommonUtil.parseResult(strPullFromServer);
                    this.needRetry = false;
                    CrabSDK.appLife();
                } else {
                    this.firstRequestDelay = this.retryInterval;
                    this.needRetry = true;
                    BLog.i("Pull config failed, retry in seconds:" + this.firstRequestDelay);
                }
            }
            if (!this.needRetry) {
                BLog.i("Pull config success, next in seconds:" + this.interval);
                SystemClock.sleep(this.interval * 1000);
            }
        }
    }

    public void setInterval(long j) {
        this.interval = j;
    }

    public void setThreadActive(boolean z) {
        this.isThreadActive = z;
    }

    public void setPullStop(boolean z) {
        this.isPullStop = z;
    }
}
