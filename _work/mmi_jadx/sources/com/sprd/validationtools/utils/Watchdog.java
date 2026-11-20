package com.sprd.validationtools.utils;

import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class Watchdog {
    public static final String TAG = "SocketW";
    private static final int WATCHDOG_TIME = 180;
    private String cmd;
    private Consumer consumer;
    private Object consumerObj;
    private ExecutorService es;
    private volatile int food = 0;
    private Future<?> future;
    private String server;

    public Watchdog(String str, String str2) {
        this.server = "SERVER";
        this.cmd = "CMD";
        this.server = str;
        this.cmd = str2;
    }

    void wantEat() {
        if (this.cmd == null) {
            Log.d(TAG, "invalid watching  " + this.server + " [" + this.cmd + "]");
            return;
        }
        this.food = 0;
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.es = executorServiceNewSingleThreadExecutor;
        this.future = executorServiceNewSingleThreadExecutor.submit(new Runnable() { // from class: com.sprd.validationtools.utils.Watchdog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                this.f$0.lambda$wantEat$0$Watchdog();
            }
        });
    }

    public /* synthetic */ void lambda$wantEat$0$Watchdog() throws InterruptedException {
        Consumer consumer;
        for (int i = 0; i < WATCHDOG_TIME; i++) {
            try {
                if (1 == this.food) {
                    return;
                }
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
                return;
            }
        }
        if (this.food == 0) {
            String str = this.cmd;
            if ((str == null || !(str.indexOf("apdumper") != -1 || this.cmd.contains("tar") || this.cmd.contains("rm -rf") || this.cmd.contains("rylogr") || this.cmd.contains("clear"))) && (consumer = this.consumer) != null) {
                consumer.accept(this.consumerObj);
            }
        }
    }

    public void feedFood() {
        this.food = 1;
        Future<?> future = this.future;
        if (future != null) {
            future.cancel(true);
        }
    }

    public void setTimeoutCallback(Consumer<Object> consumer, Object obj) {
        this.consumer = consumer;
        this.consumerObj = obj;
    }
}
