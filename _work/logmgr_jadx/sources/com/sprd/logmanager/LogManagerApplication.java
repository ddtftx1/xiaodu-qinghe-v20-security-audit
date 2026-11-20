package com.sprd.logmanager;

import android.app.Activity;
import android.app.Application;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.sprd.logmanager.database.LogManagerPreference;
import com.sprd.logmanager.logcontrol.APLogControl;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import com.sprd.logmanager.utils.CommonUtils;

/* loaded from: classes.dex */
public class LogManagerApplication extends Application {
    private static Context mContext;
    private static LogManagerApplication mInstance;
    private static TelephonyManager sTelephonyManager;
    private Activity mActivity = null;
    private APLogControl mApLogControl;
    private CPLogControlThroughHidl mCpLogControl;
    private LogManagerPreference mLogManagerPreference;
    private NotificationManager mNotificationManager;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        sTelephonyManager = (TelephonyManager) getSystemService("phone");
        this.mNotificationManager = (NotificationManager) getSystemService("notification");
        LogManagerPreference instanse = LogManagerPreference.getInstanse();
        this.mLogManagerPreference = instanse;
        instanse.init(getApplicationContext());
        initLogController();
        mContext = getApplicationContext();
        mInstance = this;
        initGlobeActivity();
    }

    private void initLogController() {
        this.mApLogControl = APLogControl.getInstance();
        CPLogControlThroughHidl cPLogControlThroughHidl = CPLogControlThroughHidl.getInstance();
        this.mCpLogControl = cPLogControlThroughHidl;
        cPLogControlThroughHidl.init();
        this.mApLogControl.setContext(getApplicationContext());
        initCpLog();
    }

    private void initCpLog() {
        boolean zIsUserBuild = CommonUtils.isUserBuild();
        if (this.mLogManagerPreference.isFirstBoot()) {
            Log.e("LogManagerApplication", "firstboot");
            this.mLogManagerPreference.setFirstBoot(false);
            if (!zIsUserBuild) {
                Log.e("LogManagerApplication", "is userdebug");
                return;
            } else {
                Log.e("LogManagerApplication", "is user");
                return;
            }
        }
        Log.e("LogManagerApplication", "not firstboot");
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
    }

    private void initGlobeActivity() {
        registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.sprd.logmanager.LogManagerApplication.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                LogManagerApplication.this.mActivity = activity;
            }
        });
    }

    public static LogManagerApplication getInstance() {
        return mInstance;
    }

    public Activity getCurrentActivity() {
        return this.mActivity;
    }

    public boolean isAdminUser() {
        Context context = mContext;
        UserHandle userHandleMyUserHandle = Process.myUserHandle();
        UserManager userManager = (UserManager) context.getSystemService("user");
        return userManager != null && 0 == userManager.getSerialNumberForUser(userHandleMyUserHandle);
    }
}
