package com.sprd.validationtools;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.Process;
import android.util.Log;

/* loaded from: classes.dex */
public class ValidationToolsService extends Service {
    public static final int FLAG_START_FOREGROUND = 1;
    public static final int FLAG_STOP_FOREGROUND = 2;
    private static final String NOTIFICATION_CHANNEL_ID = "ValidationToolsNotification";
    private static final int NOTIFICATION_ID = Process.myPid();
    private static final String TAG = "ValidationToolsNotification";

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.d("ValidationToolsNotification", "onStartCommand startId=" + i2);
        NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        NotificationChannel notificationChannel = new NotificationChannel("ValidationToolsNotification", "ValidationToolsNotification", 2);
        notificationChannel.setSound(null, null);
        notificationManager.createNotificationChannel(notificationChannel);
        int flags = intent.getFlags();
        if (flags == 1) {
            Log.d("ValidationToolsNotification", "Starting foreground");
            startForeground(NOTIFICATION_ID, new Notification.Builder(this, "ValidationToolsNotification").setSmallIcon(android.R.drawable.ic_dialog_info).build());
        } else if (flags == 2) {
            Log.d("ValidationToolsNotification", "Stopping foreground");
            stopForeground(true);
        } else {
            Log.wtf("ValidationToolsNotification", "Invalid flag on intent " + intent);
        }
        return 2;
    }

    @Override // android.app.Service
    public void onDestroy() {
        stopForeground(true);
        super.onDestroy();
    }
}
