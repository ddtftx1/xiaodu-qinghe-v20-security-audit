package com.sprd.validationtools.difference.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public class StartWaitingActivity2 extends Activity {
    private static String CHECK_STATION = "FT";
    private static final String CHECK_STATION_ATA = "ATA";
    private static final String CHECK_STATION_FT = "FT";
    private static final String CHECK_STATION_MMI_F = "MTA";
    private static final String STATION_AGING = "AGING";
    private static final String STATION_BBAT = "BBAT";
    private static final String STATION_FT = "FT";
    private static final String STATION_MMI1 = "MMI1";
    private static final String STATION_MMI2 = "MMI2";
    private static final String STATION_MMI_F = "MTA";
    public static String host = "";
    public static String station = "";

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.i("caolei", "QMMI_ACTION_START_FLAGS StartWaitingActivity2  -- START --");
        Intent intent = getIntent();
        Log.i("caolei", "QMMI_ACTION_START_FLAGS StartWaitingActivity2  -- station --:" + station);
        host = intent.getStringExtra("host");
        Intent intent2 = new Intent("com.qualcomm.qti.qmmicustom.DEVICEINFO_ACTION_START_FLAGS");
        intent2.putExtra("host", host);
        intent2.addFlags(268435456);
        intent2.setPackage("com.qualcomm.qti.qmmicustom");
        sendBroadcast(intent2);
        Log.i("caolei", "START -- end");
        finish();
    }
}
