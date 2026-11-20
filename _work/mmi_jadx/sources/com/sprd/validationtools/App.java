package com.sprd.validationtools;

import android.app.Application;

/* loaded from: classes.dex */
public class App extends Application {
    private static final String TAG = "MMIAPP";
    public static App instance;

    /* JADX WARN: Removed duplicated region for block: B:18:0x005f  */
    @Override // android.app.Application
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onCreate() {
        /*
            r3 = this;
            super.onCreate()
            com.sprd.validationtools.App.instance = r3
            java.lang.String r3 = "MMIAPP"
            java.lang.String r0 = "MMI application start."
            android.util.Log.d(r3, r0)
            java.lang.String r0 = android.os.Build.SOC_MANUFACTURER
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "cpu platform = "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r0)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r3, r1)
            java.lang.String r3 = r0.toLowerCase()
            com.sprd.validationtools.Constant.currentPlatform = r3
            java.lang.String r3 = com.sprd.validationtools.Constant.currentPlatform
            int r0 = r3.hashCode()
            r1 = -1287352101(0xffffffffb34490db, float:-4.576655E-8)
            r2 = 1
            if (r0 == r1) goto L55
            r1 = -900753994(0xffffffffca4f95b6, float:-3401069.5)
            if (r0 == r1) goto L4b
            r1 = 1732736393(0x67477589, float:9.419191E23)
            if (r0 == r1) goto L41
            goto L5f
        L41:
            java.lang.String r0 = "spreadtrum"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L5f
            r3 = 0
            goto L60
        L4b:
            java.lang.String r0 = "mediatek"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L5f
            r3 = r2
            goto L60
        L55:
            java.lang.String r0 = "qualcomm"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L5f
            r3 = 2
            goto L60
        L5f:
            r3 = -1
        L60:
            if (r3 == 0) goto L6a
            if (r3 == r2) goto L65
            goto L6e
        L65:
            java.lang.String r3 = "/data/data/com.sprd.validationtools/mmitest.db"
            com.sprd.validationtools.sqlite.EngSqlite.ENG_ENGTEST_DB = r3
            goto L6e
        L6a:
            java.lang.String r3 = "/mnt/vendor/productinfo/mmitest.db"
            com.sprd.validationtools.sqlite.EngSqlite.ENG_ENGTEST_DB = r3
        L6e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.App.onCreate():void");
    }
}
