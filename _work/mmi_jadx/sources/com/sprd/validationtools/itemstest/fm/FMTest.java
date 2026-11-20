package com.sprd.validationtools.itemstest.fm;

import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemProperties;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class FMTest extends BaseActivity {
    private static final String SYSTEM_FMRADIO_ACTIVITY = "com.android.fmradio.FmMainActivity";
    private static final String SYSTEM_FMRADIO_PACKAGE = "com.android.fmradio";
    private static final String TAG = "FMTest";
    private BroadcastReceiver earphonePluginReceiver = new BroadcastReceiver() { // from class: com.sprd.validationtools.itemstest.fm.FMTest.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.fm_layout);
        getWindow().setFlags(128, 128);
        getWindow().addFlags(524288);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        staFmRadioIntent();
        setPassBtnEnabled(true);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        registerReceiver(this.earphonePluginReceiver, intentFilter);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        SystemProperties.set("persist.sys.mmitest", "true");
    }

    @Override // android.app.Activity
    protected void onPause() {
        SystemProperties.set("persist.sys.mmitest", "false");
        super.onPause();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        unregisterReceiver(this.earphonePluginReceiver);
        killFmActivity();
        super.onDestroy();
    }

    private void staFmRadioIntent() {
        try {
            Intent intent = new Intent();
            intent.setClassName(SYSTEM_FMRADIO_PACKAGE, SYSTEM_FMRADIO_ACTIVITY);
            intent.setFlags(268435456);
            startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }

    private void killFmActivity() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            Class.forName("android.app.ActivityManager").getMethod("forceStopPackage", String.class).invoke((ActivityManager) getSystemService("activity"), SYSTEM_FMRADIO_PACKAGE);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
