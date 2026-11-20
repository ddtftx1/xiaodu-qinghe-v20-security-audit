package com.sprd.logmanager.logcopy.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sprd.logmanager.R;
import com.sprd.logmanager.database.LogManagerPreference;
import com.sprd.logmanager.logcopy.LogCopyManager;

/* loaded from: classes.dex */
public class LogCopyService extends Service {
    private LogCopyManager mLogCopyManager;
    private LogManagerPreference mLogManagerPreference;
    protected HandlerThread mWorker = null;
    protected WorkerHandler mWorkHandler = null;
    protected Handler mUpdateHandler = new Handler() { // from class: com.sprd.logmanager.logcopy.service.LogCopyService.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 2) {
                return;
            }
            LogCopyService.this.updateNotification();
            LogCopyService.this.mUpdateHandler.sendEmptyMessageDelayed(2, 2000L);
        }
    };
    private final BroadcastReceiver broadcastRec = new BroadcastReceiver() { // from class: com.sprd.logmanager.logcopy.service.LogCopyService.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Log.d("LogCopyService", "action: " + action);
            if (action == null || !action.equals("android.intent.action.MEDIA_EJECT")) {
                return;
            }
            LogCopyService.this.stopSelf();
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        HandlerThread handlerThread = new HandlerThread("LogCopyService");
        this.mWorker = handlerThread;
        handlerThread.start();
        this.mWorkHandler = new WorkerHandler(this.mWorker.getLooper());
        startListen();
        LogManagerPreference instanse = LogManagerPreference.getInstanse();
        this.mLogManagerPreference = instanse;
        instanse.setLogCopyStatus(true);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        this.mWorkHandler.removeMessages(1);
        this.mWorkHandler.sendEmptyMessage(1);
        this.mUpdateHandler.removeMessages(2);
        this.mUpdateHandler.sendEmptyMessage(2);
        return 2;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        stopListen();
        WorkerHandler workerHandler = this.mWorkHandler;
        if (workerHandler != null) {
            workerHandler.removeMessages(1);
        }
        Handler handler = this.mUpdateHandler;
        if (handler != null) {
            handler.removeMessages(2);
        }
        HandlerThread handlerThread = this.mWorker;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        LogManagerPreference logManagerPreference = this.mLogManagerPreference;
        if (logManagerPreference != null) {
            logManagerPreference.setLogCopyStatus(false);
        }
        stopForeground(true);
    }

    protected final class WorkerHandler extends Handler {
        public WorkerHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            try {
                LogCopyService.this.mLogCopyManager = LogCopyManager.getInstance();
                if (!LogCopyService.this.mLogCopyManager.isCopyRuning()) {
                    LogCopyService.this.mLogCopyManager.startCopy(false, true);
                } else {
                    Log.d("LogCopyService", "log copy is running!!");
                }
            } catch (Exception e) {
                Log.d("LogCopyService", "e:" + e);
            }
            LogCopyService.this.mWorkHandler.sendEmptyMessageDelayed(1, 300000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNotification() {
        Log.d("LogCopyService", "updateNotification");
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        NotificationChannel notificationChannel = new NotificationChannel("ylog_channel", getResources().getString(R.string.logcopy_channel_name), 2);
        notificationChannel.enableLights(false);
        notificationChannel.enableVibration(false);
        notificationChannel.setVibrationPattern(new long[]{0});
        notificationChannel.setSound(null, null);
        notificationManager.createNotificationChannel(notificationChannel);
        startForeground(1, new Notification.Builder(this, "ylog_channel").setAutoCancel(true).setContentTitle(getResources().getString(R.string.logcopy_channel_name)).setContentText(getResources().getString(R.string.logcopy_channel_description)).setPriority(0).setOngoing(true).setSmallIcon(R.drawable.logcopy_notification).setVibrate(new long[]{0}).setSound(null).build());
    }

    public void startListen() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(1000);
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addDataScheme("file");
        registerReceiver(this.broadcastRec, intentFilter);
    }

    public void stopListen() {
        BroadcastReceiver broadcastReceiver = this.broadcastRec;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
        }
    }
}
