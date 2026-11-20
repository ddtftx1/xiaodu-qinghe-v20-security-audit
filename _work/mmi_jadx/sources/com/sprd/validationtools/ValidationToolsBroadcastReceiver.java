package com.sprd.validationtools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.SystemProperties;
import android.util.Log;
import com.sprd.validationtools.itemstest.ListItemTestActivity;

/* loaded from: classes.dex */
public class ValidationToolsBroadcastReceiver extends BroadcastReceiver {
    private static final String ACTION_BOOT_COMPLETED = "android.intent.action.BOOT_COMPLETED";
    private static final String ACTION_LOCKED_BOOT_COMPLETED = "android.intent.action.LOCKED_BOOT_COMPLETED";
    private static final String BOOT_MODE = "ro.bootmode";
    private static final String BOOT_MODE_APKMMI = "apkmmi_mode";
    private static final String SECURITY_CODE = "654987";
    private static final String SECURITY_CODE_LIST_ITEM = "833";
    private static final String TAG = "ValidationToolsBroadcastReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.d(TAG, "onReceive action = " + action);
        if (action == null) {
            return;
        }
        if (action.equals(ACTION_BOOT_COMPLETED)) {
            String str = SystemProperties.get(BOOT_MODE, "unknow");
            Log.d(TAG, "onReceive bootmode = " + str);
            if (str != null && str.equals(BOOT_MODE_APKMMI)) {
                Intent intent2 = new Intent("android.intent.action.MAIN");
                intent2.setFlags(268435456);
                intent2.setClass(context, ValidationToolsMainActivity.class);
                context.startActivity(intent2);
                return;
            }
        }
        Uri data = intent.getData();
        if (data == null) {
            return;
        }
        String host = data.getHost();
        Intent intent3 = new Intent("android.intent.action.MAIN");
        intent3.setFlags(268435456);
        Log.d(TAG, "onReceive host=" + host);
        Log.d(TAG, "onReceive getAction=" + intent.getAction());
        if ("83789".equals(host)) {
            intent3.setClass(context, ValidationToolsMainActivity.class);
            context.startActivity(intent3);
            return;
        }
        if (Const.isBoardISharkL210c10()) {
            if (SECURITY_CODE.equals(host)) {
                intent3.setClass(context, ValidationToolsMainActivity.class);
                context.startActivity(intent3);
            } else if (SECURITY_CODE_LIST_ITEM.equals(host)) {
                intent3.setClass(context, ListItemTestActivity.class);
                intent3.putExtra(Const.SECURITY_CODE, SECURITY_CODE_LIST_ITEM);
                context.startActivity(intent3);
            }
        }
    }
}
