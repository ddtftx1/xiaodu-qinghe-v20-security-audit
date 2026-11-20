package com.sprd.logmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.sprd.logmanager.logcontrol.APLogControl;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import com.sprd.logmanager.utils.CommonUtils;
import java.io.File;

/* loaded from: classes.dex */
public class LogManagerReceiver extends BroadcastReceiver {
    private static String ACTION_MODEM_ASSERT = "com.android.slogmodem.ModemDumpEnd";
    private CPLogControlThroughHidl mCpLogCtrol = CPLogControlThroughHidl.getInstance();
    private APLogControl mApLogControl = APLogControl.getInstance();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (ACTION_MODEM_ASSERT.equals(intent.getAction())) {
            Log.d("LogManagerReceiver", "onReceive modemassert.");
            if (this.mCpLogCtrol.isModemLogOptimizationOpen()) {
                new Thread(new Runnable() { // from class: com.sprd.logmanager.LogManagerReceiver.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d("LogManagerReceiver", "save assert logs.");
                        LogManagerReceiver.this.saveAssertLog();
                    }
                }).start();
            } else {
                Log.d("LogManagerReceiver", "modem log optimization close!");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveAssertLog() {
        String logSavePath = this.mApLogControl.getLogSavePath();
        Log.d("LogManagerReceiver", "oldpath " + logSavePath);
        String currentTimeString = CommonUtils.getCurrentTimeString();
        Log.d("LogManagerReceiver", "fileName " + currentTimeString);
        if (TextUtils.isEmpty(currentTimeString)) {
            return;
        }
        Log.d("LogManagerReceiver", "apRet " + this.mApLogControl.rebootMYlog(CommonUtils.getLogPath(currentTimeString)) + " cpRet " + this.mCpLogCtrol.setLogParentPath(currentTimeString));
        if (TextUtils.isEmpty(logSavePath)) {
            return;
        }
        try {
            Log.d("LogManagerReceiver", "change to assert file :  " + new File(logSavePath).renameTo(new File(logSavePath.substring(0, logSavePath.length() - 1) + "_assert")));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
