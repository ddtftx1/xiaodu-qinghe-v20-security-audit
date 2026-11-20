package com.sprd.srmi;

import android.app.Application;
import android.content.Intent;
import android.util.Log;

/* loaded from: classes.dex */
public class SrmiApp extends Application {
    private static final String TAG = "[Srmi] " + SrmiApp.class.getSimpleName();

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        Log.d(TAG, "Srmi app boot successfully, VersionInfo: SRMI version: 2020-03-26 add TLV");
        startService(new Intent(getApplicationContext(), (Class<?>) SrmiManager.class));
    }
}
