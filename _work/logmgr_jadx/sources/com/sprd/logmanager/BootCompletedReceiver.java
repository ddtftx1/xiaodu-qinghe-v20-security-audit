package com.sprd.logmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.sprd.logmanager.database.LogManagerPreference;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import com.sprd.logmanager.logcopy.service.LogCopyService;
import com.sprd.logmanager.utils.CommonUtils;
import com.sprd.logmanager.utils.StorageUtil;

/* loaded from: classes.dex */
public class BootCompletedReceiver extends BroadcastReceiver {
    private CPLogControlThroughHidl mCpLogCtrol = CPLogControlThroughHidl.getInstance();
    private LogManagerPreference mLogManagerPreference;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        LogManagerPreference instanse = LogManagerPreference.getInstanse();
        this.mLogManagerPreference = instanse;
        if (instanse.getLogCopyStatus()) {
            if (StorageUtil.getSdStorageState()) {
                context.startForegroundService(new Intent(context, (Class<?>) LogCopyService.class));
            } else {
                this.mLogManagerPreference.setLogCopyStatus(false);
            }
        }
        if (this.mCpLogCtrol.isModemLogOptimizationOpen()) {
            new Thread(new Runnable() { // from class: com.sprd.logmanager.BootCompletedReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    Log.d("LogManagerBootCompletedReceiver", "save power on logs.");
                    CommonUtils.changeLogPath("");
                }
            }).start();
        } else {
            Log.d("LogManagerBootCompletedReceiver", "modem log optimization close!");
        }
    }
}
