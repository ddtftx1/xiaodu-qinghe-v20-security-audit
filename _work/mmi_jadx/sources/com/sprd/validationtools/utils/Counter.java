package com.sprd.validationtools.utils;

import android.util.Log;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class Counter {
    private CountDownLatch mCurrentValue;

    public Counter(int i) {
        this.mCurrentValue = new CountDownLatch(i);
    }

    public void count() {
        this.mCurrentValue.countDown();
    }

    public void countToZ() {
        this.mCurrentValue.countDown();
        while (this.mCurrentValue.getCount() > 0) {
            this.mCurrentValue.countDown();
        }
    }

    public void waitCount() throws InterruptedException {
        try {
            this.mCurrentValue.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void waitCount(long j) throws InterruptedException {
        try {
            this.mCurrentValue.await(j, TimeUnit.MILLISECONDS);
            if (this.mCurrentValue.getCount() > 0) {
                Log.i(toString(), "wait timeout");
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
