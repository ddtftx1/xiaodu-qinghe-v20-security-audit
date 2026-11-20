package com.sprd.logmanager.logui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import com.sprd.logmanager.R;
import com.sprd.logmanager.database.LogManagerPreference;
import com.sprd.logmanager.logcontrol.APLogControl;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import com.sprd.logmanager.logui.SettingPreferenceView;

/* loaded from: classes.dex */
public class CustomLogSwitchActivity extends Activity implements View.OnClickListener {
    private static String TAG = "CustomLogSwitchActivity";
    private APLogControl mAPLogControl;
    private SettingPreferenceView mApLogSwitch;
    private CPLogControlThroughHidl mCpLogControl;
    private SettingPreferenceView mModemLogSwitch;
    private SettingPreferenceView mOtherLogSwitch;
    private ProgressDialog mProgressDialog;
    private SettingPreferenceView mWcnLogSwitch;
    private WorkHandler mWorkHandler;
    private LogManagerPreference managerPreference;
    private final int AP_LOG_FEEDBACK = 0;
    private final int CP_LOG_FEEDBACK = 1;
    private final int CONNECTIVITY_LOG_FEEDBACK = 2;
    private final int OTHER_LOG_FEEDBACK = 3;

    /* JADX INFO: Access modifiers changed from: private */
    public void showProgressDialog() {
        Log.d(TAG, "showProgressDialog");
        runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.1
            @Override // java.lang.Runnable
            public void run() {
                if (CustomLogSwitchActivity.this.mProgressDialog != null && CustomLogSwitchActivity.this.mProgressDialog.isShowing()) {
                    CustomLogSwitchActivity.this.mProgressDialog.dismiss();
                }
                CustomLogSwitchActivity customLogSwitchActivity = CustomLogSwitchActivity.this;
                customLogSwitchActivity.mProgressDialog = ProgressDialog.show(customLogSwitchActivity, customLogSwitchActivity.getResources().getString(R.string.scene_switching), CustomLogSwitchActivity.this.getResources().getString(R.string.scene_switching_wait), true, false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressDialog() {
        Log.d(TAG, "dismissProgressDialog");
        runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.2
            @Override // java.lang.Runnable
            public void run() {
                CustomLogSwitchActivity customLogSwitchActivity = CustomLogSwitchActivity.this;
                customLogSwitchActivity.dismissProgressDialog(customLogSwitchActivity.mProgressDialog);
                CustomLogSwitchActivity.this.mProgressDialog = null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressDialog(ProgressDialog progressDialog) {
        if (progressDialog != null) {
            try {
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            } catch (IllegalArgumentException unused) {
                Log.w(TAG, "exception when dismissing dialog");
            } catch (Exception e) {
                Log.w(TAG, "exception when dismissing dialog." + e);
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.custom_log_switch);
        this.mAPLogControl = APLogControl.getInstance();
        this.managerPreference = LogManagerPreference.getInstanse();
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        this.mWorkHandler = new WorkHandler(handlerThread.getLooper());
        this.mCpLogControl = CPLogControlThroughHidl.getInstance();
        SettingPreferenceView settingPreferenceView = (SettingPreferenceView) findViewById(R.id.ap_log);
        this.mApLogSwitch = settingPreferenceView;
        settingPreferenceView.setOnClickListener(this);
        this.mApLogSwitch.setOnCheckListener(new SettingPreferenceView.OnCheckListener() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.3
            @Override // com.sprd.logmanager.logui.SettingPreferenceView.OnCheckListener
            public void onCheck() {
                boolean z = !CustomLogSwitchActivity.this.mApLogSwitch.isChecked();
                CustomLogSwitchActivity.this.showProgressDialog();
                if (z) {
                    CustomLogSwitchActivity.this.mWorkHandler.sendEmptyMessage(1);
                } else {
                    Log.i(CustomLogSwitchActivity.TAG, "close all ap log");
                    CustomLogSwitchActivity.this.mWorkHandler.sendEmptyMessage(0);
                }
                CustomLogSwitchActivity.this.managerPreference.setSelectScene("Custom");
            }
        });
        SettingPreferenceView settingPreferenceView2 = (SettingPreferenceView) findViewById(R.id.modem_log);
        this.mModemLogSwitch = settingPreferenceView2;
        settingPreferenceView2.setOnClickListener(this);
        if (this.mAPLogControl.isWifiOnly()) {
            this.mModemLogSwitch.setVisibility(8);
        }
        this.mModemLogSwitch.setOnCheckListener(new SettingPreferenceView.OnCheckListener() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.4
            @Override // com.sprd.logmanager.logui.SettingPreferenceView.OnCheckListener
            public void onCheck() {
                boolean z = !CustomLogSwitchActivity.this.mModemLogSwitch.isChecked();
                CustomLogSwitchActivity.this.showProgressDialog();
                if (z) {
                    CustomLogSwitchActivity.this.mWorkHandler.sendEmptyMessage(3);
                } else {
                    CustomLogSwitchActivity.this.mWorkHandler.sendEmptyMessage(2);
                }
                CustomLogSwitchActivity.this.managerPreference.setSelectScene("Custom");
            }
        });
        SettingPreferenceView settingPreferenceView3 = (SettingPreferenceView) findViewById(R.id.wcn_log);
        this.mWcnLogSwitch = settingPreferenceView3;
        settingPreferenceView3.setOnClickListener(this);
        this.mWcnLogSwitch.setOnCheckListener(new SettingPreferenceView.OnCheckListener() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.5
            @Override // com.sprd.logmanager.logui.SettingPreferenceView.OnCheckListener
            public void onCheck() {
                boolean zIsChecked = CustomLogSwitchActivity.this.mWcnLogSwitch.isChecked();
                CustomLogSwitchActivity.this.showProgressDialog();
                if (!zIsChecked) {
                    CustomLogSwitchActivity.this.mWorkHandler.sendEmptyMessage(5);
                } else {
                    CustomLogSwitchActivity.this.mWorkHandler.sendEmptyMessage(4);
                }
                CustomLogSwitchActivity.this.managerPreference.setSelectScene("Custom");
            }
        });
        SettingPreferenceView settingPreferenceView4 = (SettingPreferenceView) findViewById(R.id.other_log);
        this.mOtherLogSwitch = settingPreferenceView4;
        settingPreferenceView4.setOnClickListener(this);
        this.mOtherLogSwitch.setOnCheckListener(new SettingPreferenceView.OnCheckListener() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.6
            @Override // com.sprd.logmanager.logui.SettingPreferenceView.OnCheckListener
            public void onCheck() {
                boolean z = !CustomLogSwitchActivity.this.mOtherLogSwitch.isChecked();
                CustomLogSwitchActivity.this.showProgressDialog();
                if (z) {
                    CustomLogSwitchActivity.this.mWorkHandler.sendEmptyMessage(7);
                } else {
                    CustomLogSwitchActivity.this.mWorkHandler.sendEmptyMessage(6);
                }
                CustomLogSwitchActivity.this.managerPreference.setSelectScene("Custom");
            }
        });
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mWorkHandler.sendEmptyMessage(8);
        this.mWorkHandler.sendEmptyMessage(9);
        this.mWorkHandler.sendEmptyMessage(10);
        this.mWorkHandler.sendEmptyMessage(11);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ap_log /* 2131296286 */:
                startActivityForResult(new Intent(this, (Class<?>) ApLogSwitchActivity.class), 0);
                break;
            case R.id.modem_log /* 2131296411 */:
                startActivityForResult(new Intent(this, (Class<?>) ModemLogSwitchActivity.class), 1);
                break;
            case R.id.other_log /* 2131296425 */:
                startActivityForResult(new Intent(this, (Class<?>) OtherLogSwitchActivity.class), 3);
                break;
            case R.id.wcn_log /* 2131296539 */:
                startActivityForResult(new Intent(this, (Class<?>) ConnectivityLogSwitchActivity.class), 2);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ca A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onActivityResult(int r5, int r6, android.content.Intent r7) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.logmanager.logui.CustomLogSwitchActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    class WorkHandler extends Handler {
        public WorkHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    CustomLogSwitchActivity.this.mAPLogControl.recordAPLogLastSelect();
                    CustomLogSwitchActivity.this.managerPreference.backupAPSwitchStatus(false);
                    CustomLogSwitchActivity.this.mAPLogControl.enableAllApLog(false);
                    CustomLogSwitchActivity.this.dismissProgressDialog();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mApLogSwitch.setChecked(false);
                        }
                    });
                    break;
                case 1:
                    CustomLogSwitchActivity.this.mAPLogControl.restorLastSelectAPLog(false);
                    CustomLogSwitchActivity.this.managerPreference.backupAPSwitchStatus(true);
                    CustomLogSwitchActivity.this.dismissProgressDialog();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.2
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mApLogSwitch.setChecked(true);
                        }
                    });
                    break;
                case 2:
                    CustomLogSwitchActivity.this.mCpLogControl.recordModemLogLastSelect();
                    CustomLogSwitchActivity.this.managerPreference.backupModemSwitchStatus(false);
                    CustomLogSwitchActivity.this.mCpLogControl.enableAllModemLog(false);
                    CustomLogSwitchActivity.this.dismissProgressDialog();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.3
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mModemLogSwitch.setChecked(false);
                        }
                    });
                    break;
                case 3:
                    CustomLogSwitchActivity.this.mCpLogControl.restorLastSelectModemLog(false);
                    CustomLogSwitchActivity.this.managerPreference.backupModemSwitchStatus(true);
                    CustomLogSwitchActivity.this.dismissProgressDialog();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.4
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mModemLogSwitch.setChecked(true);
                        }
                    });
                    break;
                case 4:
                    CustomLogSwitchActivity.this.mCpLogControl.recordConnectivityLogLastSelect();
                    CustomLogSwitchActivity.this.managerPreference.backupWCNSwitchStatus(false);
                    CustomLogSwitchActivity.this.mCpLogControl.enableAllConnectivityLog(false);
                    CustomLogSwitchActivity.this.dismissProgressDialog();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.5
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mWcnLogSwitch.setChecked(false);
                        }
                    });
                    break;
                case 5:
                    CustomLogSwitchActivity.this.mCpLogControl.restorLastSelectConnectivityLog(false);
                    CustomLogSwitchActivity.this.managerPreference.backupWCNSwitchStatus(true);
                    CustomLogSwitchActivity.this.dismissProgressDialog();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.6
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mWcnLogSwitch.setChecked(true);
                        }
                    });
                    break;
                case 6:
                    CustomLogSwitchActivity.this.mCpLogControl.recordOtherLogLastSelect();
                    CustomLogSwitchActivity.this.managerPreference.backupOtherSwitchStatus(false);
                    CustomLogSwitchActivity.this.mCpLogControl.enableAllOtherLog(false);
                    CustomLogSwitchActivity.this.dismissProgressDialog();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.7
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mOtherLogSwitch.setChecked(false);
                        }
                    });
                    break;
                case 7:
                    CustomLogSwitchActivity.this.mCpLogControl.restorLastSelectOtherLog(false);
                    CustomLogSwitchActivity.this.managerPreference.backupOtherSwitchStatus(true);
                    CustomLogSwitchActivity.this.dismissProgressDialog();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.8
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mOtherLogSwitch.setChecked(true);
                        }
                    });
                    break;
                case 8:
                    final boolean zIsLogStarted = CustomLogSwitchActivity.this.mAPLogControl.isLogStarted();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.9
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mApLogSwitch.setChecked(zIsLogStarted);
                        }
                    });
                    break;
                case 9:
                    final boolean zIsAnyModemLogOpen = CustomLogSwitchActivity.this.mCpLogControl.isAnyModemLogOpen();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.10
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mModemLogSwitch.setChecked(zIsAnyModemLogOpen);
                        }
                    });
                    break;
                case 10:
                    final boolean zIsAnyConnectivityLogOpen = CustomLogSwitchActivity.this.mCpLogControl.isAnyConnectivityLogOpen();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.11
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mWcnLogSwitch.setChecked(zIsAnyConnectivityLogOpen);
                        }
                    });
                    break;
                case 11:
                    final boolean zIsAnyOtherLogOpen = CustomLogSwitchActivity.this.mCpLogControl.isAnyOtherLogOpen();
                    CustomLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.CustomLogSwitchActivity.WorkHandler.12
                        @Override // java.lang.Runnable
                        public void run() {
                            CustomLogSwitchActivity.this.mOtherLogSwitch.setChecked(zIsAnyOtherLogOpen);
                        }
                    });
                    break;
            }
        }
    }
}
