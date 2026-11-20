package com.sprd.logmanager.logui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.SwitchPreference;
import android.util.Log;
import android.widget.Toast;
import com.sprd.logmanager.R;
import com.sprd.logmanager.database.LogManagerPreference;
import com.sprd.logmanager.logcontrol.APLogControl;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import com.sprd.logmanager.logcopy.service.LogCopyService;
import com.sprd.logmanager.utils.CommonUtils;
import com.sprd.logmanager.utils.StorageUtil;
import java.io.IOException;

/* loaded from: classes.dex */
public class LogSettingActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener, Preference.OnPreferenceClickListener {
    private APLogControl mApLogControl;
    private SwitchPreference mApLogOverwrite;
    private EditTextPreference mApSingleSize;
    private EditTextPreference mApTotalSize;
    private Preference mChangePath;
    private EditTextPreference mConnctivityExternalSize;
    private EditTextPreference mConnctivityInternalSize;
    private SwitchPreference mConnectivityLogCompress;
    private SwitchPreference mConnectivityLogOverwrite;
    private EditTextPreference mConnectivitySingleSize;
    private CPLogControlThroughHidl mCpLogControl;
    private SwitchPreference mCpLogToPc;
    private WorkHandler mHandler;
    private LogManagerPreference mLogManagerPreference;
    private SwitchPreference mLogToSd;
    private EditTextPreference mModemExternalSize;
    private Preference mModemFulldump;
    private EditTextPreference mModemInternalSize;
    private SwitchPreference mModemLogCompress;
    private SwitchPreference mModemLogOptimization;
    private SwitchPreference mModemLogOverwrite;
    private Preference mModemLogScene;
    private EditTextPreference mModemSingleSize;
    private int mPathIndex;
    private Preference mPsLogLevel;
    private int mPsLogLevelIndex;
    private int mTotalMaxSize;
    private Preference mWcnLogLevel;
    private int mWcnLogLevelIndex;
    private AlertDialog mAlertDialog = null;
    private final int MSG_GET_AP_SINGLE_SIZE = 0;
    private final int MSG_GET_GET_AP_MAX_SIZE = 1;
    private final int MSG_GET_AP_LOG_OVERWRITE = 2;
    private final int MSG_SET_AP_SINGLE_SIZE = 3;
    private final int MSG_SET_AP_MAX_SIZE = 4;
    private final int MSG_SET_AP_LOG_OVERWRITE = 5;
    private final int MSG_UPDATE_LOGCOPY_STATUS = 6;
    private final int MIN_AP_SINGLE_SIZE = 100;
    private final int MAX_AP_SINGLE_SIZE = 500;
    private final int MIN_AP_TOTAL_SIZE = 256;

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.pref_log_settings);
        this.mChangePath = findPreference("change_path");
        this.mCpLogToPc = (SwitchPreference) findPreference("log_to_pc");
        this.mLogToSd = (SwitchPreference) findPreference("log_to_sd");
        this.mApSingleSize = (EditTextPreference) findPreference("ap_single_size");
        this.mApTotalSize = (EditTextPreference) findPreference("ap_total_size");
        this.mApLogOverwrite = (SwitchPreference) findPreference("ap_log_overwrite");
        this.mModemSingleSize = (EditTextPreference) findPreference("modem_single_size");
        this.mModemInternalSize = (EditTextPreference) findPreference("modem_total_internal_size");
        this.mModemExternalSize = (EditTextPreference) findPreference("modem_total_external_size");
        this.mModemLogOverwrite = (SwitchPreference) findPreference("modem_log_overwrite");
        this.mModemLogCompress = (SwitchPreference) findPreference("modem_log_compress");
        this.mModemLogOptimization = (SwitchPreference) findPreference("modem_log_optimization");
        this.mModemFulldump = findPreference("modem_fulldump");
        this.mModemLogScene = findPreference("modem_log_scene");
        this.mPsLogLevel = findPreference("psLogLevel");
        this.mWcnLogLevel = findPreference("wcnLogLevel");
        this.mConnectivitySingleSize = (EditTextPreference) findPreference("wcn_single_size");
        this.mConnctivityInternalSize = (EditTextPreference) findPreference("wcn_total_internal_size");
        this.mConnctivityExternalSize = (EditTextPreference) findPreference("wcn_total_external_size");
        this.mConnectivityLogOverwrite = (SwitchPreference) findPreference("wcn_log_overwrite");
        this.mConnectivityLogCompress = (SwitchPreference) findPreference("wcn_log_compress");
        this.mChangePath.setOnPreferenceClickListener(this);
        this.mCpLogToPc.setOnPreferenceChangeListener(this);
        this.mLogToSd.setOnPreferenceChangeListener(this);
        this.mApSingleSize.setOnPreferenceChangeListener(this);
        this.mApTotalSize.setOnPreferenceChangeListener(this);
        this.mApLogOverwrite.setOnPreferenceChangeListener(this);
        this.mModemSingleSize.setOnPreferenceChangeListener(this);
        this.mModemInternalSize.setOnPreferenceChangeListener(this);
        this.mModemExternalSize.setOnPreferenceChangeListener(this);
        this.mModemLogOverwrite.setOnPreferenceChangeListener(this);
        this.mModemLogCompress.setOnPreferenceChangeListener(this);
        this.mModemLogOptimization.setOnPreferenceChangeListener(this);
        this.mModemFulldump.setOnPreferenceClickListener(this);
        this.mModemLogScene.setOnPreferenceClickListener(this);
        this.mConnectivitySingleSize.setOnPreferenceChangeListener(this);
        this.mConnctivityInternalSize.setOnPreferenceChangeListener(this);
        this.mConnctivityExternalSize.setOnPreferenceChangeListener(this);
        this.mConnectivityLogOverwrite.setOnPreferenceChangeListener(this);
        this.mConnectivityLogCompress.setOnPreferenceChangeListener(this);
        this.mPsLogLevel.setOnPreferenceClickListener(this);
        this.mWcnLogLevel.setOnPreferenceClickListener(this);
        this.mApLogControl = APLogControl.getInstance();
        this.mCpLogControl = CPLogControlThroughHidl.getInstance();
        HandlerThread handlerThread = new HandlerThread("LogSettingPreference");
        handlerThread.start();
        this.mHandler = new WorkHandler(handlerThread.getLooper());
        this.mLogManagerPreference = LogManagerPreference.getInstanse();
        initView();
        PreferenceCategory preferenceCategory = (PreferenceCategory) findPreference("key_modem_setting");
        preferenceCategory.removePreference(this.mModemLogScene);
        ((PreferenceCategory) findPreference("key_global_setting")).removePreference(this.mLogToSd);
        if (APLogControl.getInstance().isWifiOnly()) {
            getPreferenceScreen().removePreference(preferenceCategory);
        }
        if (this.mCpLogControl.isModemLogOptimizationDisplay()) {
            return;
        }
        preferenceCategory.removePreference(this.mModemLogOptimization);
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        WorkHandler workHandler = this.mHandler;
        if (workHandler != null) {
            workHandler.getLooper().quit();
        }
        super.onDestroy();
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) throws Resources.NotFoundException {
        if (preference.getKey().equals("change_path")) {
            if (!this.mApLogControl.isLogStarted()) {
                Toast.makeText(this, R.string.ylog_not_start, 0).show();
            } else {
                changeStoragePath();
            }
        } else if (preference.getKey().equals("modem_fulldump")) {
            this.mCpLogControl.setModemReset(false);
            this.mCpLogControl.setModemSaveDump(true);
            Toast.makeText(this, "Set fulldump done.", 0).show();
        } else if (preference.getKey().equals("modem_log_scene")) {
            startActivity(new Intent(this, (Class<?>) ModemLogSceneActivity.class));
        } else if (preference.getKey().equals("psLogLevel")) {
            setPsLogLevel();
        } else if (preference.getKey().equals("wcnLogLevel")) {
            setWcnLogLevel();
        }
        return true;
    }

    private void changeStoragePath() throws Resources.NotFoundException {
        String[] stringArray = getResources().getStringArray(R.array.mini_dump_entries);
        String logSavePath = this.mApLogControl.getLogSavePath();
        if (logSavePath == null || logSavePath.contains("/data/")) {
            this.mPathIndex = 2;
        } else if (logSavePath.contains("emulated")) {
            this.mPathIndex = 1;
        } else {
            this.mPathIndex = 0;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(getString(R.string.storage_path)).setSingleChoiceItems(stringArray, this.mPathIndex, new AnonymousClass1());
        AlertDialog alertDialogCreate = builder.create();
        this.mAlertDialog = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.mAlertDialog.show();
    }

    /* renamed from: com.sprd.logmanager.logui.LogSettingActivity$1, reason: invalid class name */
    class AnonymousClass1 implements DialogInterface.OnClickListener {
        AnonymousClass1() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, final int i) throws InterruptedException, IOException {
            long freeSpace;
            boolean externalStorageState = StorageUtil.getExternalStorageState();
            if (i == 0) {
                freeSpace = StorageUtil.getFreeSpace(StorageUtil.getExternalStorage());
            } else if (i == 1) {
                freeSpace = StorageUtil.getFreeSpace(Environment.getExternalStorageDirectory());
            } else {
                freeSpace = i == 2 ? StorageUtil.getFreeSpace(Environment.getDataDirectory()) : 0L;
            }
            Log.i("LogSettingPreference", "free space is " + freeSpace + ",and external state is " + externalStorageState);
            if (i != 0 || externalStorageState) {
                if (freeSpace >= 104857600 || i == LogSettingActivity.this.mPathIndex) {
                    if (i == LogSettingActivity.this.mPathIndex) {
                        if (LogSettingActivity.this.mAlertDialog == null || !LogSettingActivity.this.mAlertDialog.isShowing()) {
                            return;
                        }
                        LogSettingActivity.this.mAlertDialog.dismiss();
                        LogSettingActivity.this.mAlertDialog = null;
                        return;
                    }
                    LogSettingActivity.this.mChangePath.setEnabled(false);
                    new Thread(new Runnable() { // from class: com.sprd.logmanager.logui.LogSettingActivity.1.1
                        @Override // java.lang.Runnable
                        public void run() throws InterruptedException, IOException {
                            final boolean storageInSd = LogSettingActivity.this.mApLogControl.setStorageInSd(i);
                            if (storageInSd) {
                                LogSettingActivity.this.mCpLogControl.setStorageInSd(i);
                                LogSettingActivity.this.mCpLogControl.setLogParentPath("");
                                LogSettingActivity.this.mCpLogControl.setModemLogOptimization(false);
                            }
                            LogSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogSettingActivity.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    LogSettingActivity.this.mChangePath.setEnabled(true);
                                    LogSettingActivity.this.mModemLogOptimization.setChecked(false);
                                    LogSettingActivity.this.initView();
                                    Context applicationContext = LogSettingActivity.this.getApplicationContext();
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("set to ");
                                    int i2 = i;
                                    sb.append(i2 == 2 ? "data" : i2 == 0 ? "sdcard" : "internal");
                                    sb.append(storageInSd ? " storage success" : " storage fail");
                                    Toast.makeText(applicationContext, sb.toString(), 0).show();
                                }
                            });
                        }
                    }).start();
                    if (LogSettingActivity.this.mAlertDialog == null || !LogSettingActivity.this.mAlertDialog.isShowing()) {
                        return;
                    }
                    LogSettingActivity.this.mAlertDialog.dismiss();
                    LogSettingActivity.this.mAlertDialog = null;
                    return;
                }
                if (LogSettingActivity.this.mAlertDialog != null && LogSettingActivity.this.mAlertDialog.isShowing()) {
                    LogSettingActivity.this.mAlertDialog.dismiss();
                    LogSettingActivity.this.mAlertDialog = null;
                }
                if (i == 0) {
                    Toast.makeText(LogSettingActivity.this, R.string.insert_sdcard_tips, 0).show();
                    return;
                } else {
                    Toast.makeText(LogSettingActivity.this, R.string.space_not_enough_tips, 0).show();
                    return;
                }
            }
            if (LogSettingActivity.this.mAlertDialog != null && LogSettingActivity.this.mAlertDialog.isShowing()) {
                LogSettingActivity.this.mAlertDialog.dismiss();
                LogSettingActivity.this.mAlertDialog = null;
            }
            Toast.makeText(LogSettingActivity.this, R.string.insert_sdcard_tips, 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initView() {
        String str;
        getApLogSingleSize();
        getApLogMaxSize();
        getApLogOverwrite();
        getModemSingleSize();
        getModemInternalSize();
        getModemExternalSize();
        getModemLogOverwrite();
        getModemLowPowerMode();
        getModemLogCompress();
        getModemLogOptimization();
        getConnectivitySingleSize();
        getConnectivityInternalSize();
        getConnectivityExternalSize();
        getConnectivityLogOverwrite();
        getConnectivityLogCompress();
        this.mTotalMaxSize = (int) ((StorageUtil.getStorageTotalSize(this.mApLogControl.isLog2External()) / 1024) / 1024);
        this.mCpLogToPc.setChecked(this.mCpLogControl.getWCNLogToPcState() == CPLogControlThroughHidl.LOG_TO_PC);
        this.mLogToSd.setChecked(this.mLogManagerPreference.getLogCopyStatus());
        this.mApSingleSize.setDialogTitle(getResources().getString(R.string.ap_max_size) + "(100MB ~ 500MB)");
        this.mApTotalSize.setDialogTitle(getResources().getString(R.string.ap_total_max_size) + "(256MB ~ " + this.mTotalMaxSize + "MB)");
        EditTextPreference editTextPreference = this.mModemSingleSize;
        StringBuilder sb = new StringBuilder();
        sb.append(getResources().getString(R.string.single_log_size));
        sb.append("(200MB ~ 512MB)");
        editTextPreference.setDialogTitle(sb.toString());
        EditTextPreference editTextPreference2 = this.mModemInternalSize;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getResources().getString(R.string.internal_log_size));
        sb2.append("(");
        sb2.append(CommonUtils.isUserBuild() ? "50MB" : "1024MB");
        sb2.append(" ~ ");
        sb2.append(this.mTotalMaxSize);
        sb2.append("MB)");
        editTextPreference2.setDialogTitle(sb2.toString());
        this.mModemExternalSize.setDialogTitle(getResources().getString(R.string.external_log_size) + "(0MB ~ " + this.mTotalMaxSize + "MB)");
        EditTextPreference editTextPreference3 = this.mConnectivitySingleSize;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(getResources().getString(R.string.single_log_size));
        sb3.append("(50MB ~ 128MB)");
        editTextPreference3.setDialogTitle(sb3.toString());
        EditTextPreference editTextPreference4 = this.mConnctivityInternalSize;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(getResources().getString(R.string.internal_log_size));
        sb4.append("(");
        sb4.append(CommonUtils.isUserBuild() ? "50MB" : "256MB");
        sb4.append(" ~ ");
        if (CommonUtils.isUserBuild()) {
            str = "1024MB)";
        } else {
            str = String.valueOf((int) (this.mTotalMaxSize * 0.2d)) + "MB)";
        }
        sb4.append(str);
        editTextPreference4.setDialogTitle(sb4.toString());
        this.mConnctivityExternalSize.setDialogTitle(getResources().getString(R.string.external_log_size) + "(0MB ~ " + this.mTotalMaxSize + "MB)");
    }

    private void getApLogSingleSize() {
        this.mHandler.sendEmptyMessage(0);
    }

    private void getApLogMaxSize() {
        this.mHandler.sendEmptyMessage(1);
    }

    private void getApLogOverwrite() {
        this.mHandler.sendEmptyMessage(2);
    }

    private void getModemSingleSize() {
        this.mModemSingleSize.setText("" + this.mCpLogControl.getModemSingleFileSize());
        this.mModemSingleSize.setSummary("" + this.mCpLogControl.getModemSingleFileSize());
    }

    private void getModemInternalSize() {
        this.mModemInternalSize.setText("" + this.mCpLogControl.getTotalModemLogSize(false));
        this.mModemInternalSize.setSummary("" + this.mCpLogControl.getTotalModemLogSize(false));
    }

    private void getModemExternalSize() {
        this.mModemExternalSize.setText("" + this.mCpLogControl.getTotalModemLogSize(true));
        this.mModemExternalSize.setSummary("" + this.mCpLogControl.getTotalModemLogSize(true));
    }

    private void getModemLogOverwrite() {
        this.mModemLogOverwrite.setChecked(this.mCpLogControl.isModemLogOverwrite());
    }

    private void getModemLowPowerMode() {
        this.mModemLogOverwrite.setChecked(this.mCpLogControl.isModemLogOverwrite());
    }

    private void getModemLogCompress() {
        this.mModemLogCompress.setChecked(this.mCpLogControl.getModemCompress());
    }

    private void getModemLogOptimization() {
        this.mModemLogOptimization.setChecked(this.mCpLogControl.isModemLogOptimizationOpen());
    }

    private void getConnectivitySingleSize() {
        this.mConnectivitySingleSize.setText("" + this.mCpLogControl.getConnectivitySingleFileSize());
        this.mConnectivitySingleSize.setSummary("" + this.mCpLogControl.getConnectivitySingleFileSize());
    }

    private void getConnectivityInternalSize() {
        this.mConnctivityInternalSize.setText("" + this.mCpLogControl.getTotalConnectivityLogSize(false));
        this.mConnctivityInternalSize.setSummary("" + this.mCpLogControl.getTotalConnectivityLogSize(false));
    }

    private void getConnectivityExternalSize() {
        this.mConnctivityExternalSize.setText("" + this.mCpLogControl.getTotalConnectivityLogSize(true));
        this.mConnctivityExternalSize.setSummary("" + this.mCpLogControl.getTotalConnectivityLogSize(true));
    }

    private void getConnectivityLogOverwrite() {
        this.mConnectivityLogOverwrite.setChecked(this.mCpLogControl.isWcnLogOverwrite());
    }

    private void getConnectivityLogCompress() {
        this.mConnectivityLogCompress.setChecked(this.mCpLogControl.getConnectivityCompress());
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x02b8  */
    @Override // android.preference.Preference.OnPreferenceChangeListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onPreferenceChange(android.preference.Preference r10, java.lang.Object r11) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 846
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.logmanager.logui.LogSettingActivity.onPreferenceChange(android.preference.Preference, java.lang.Object):boolean");
    }

    private void startLogCopyService() {
        startService(new Intent(this, (Class<?>) LogCopyService.class));
    }

    private void stopLogCopyService() {
        stopService(new Intent(this, (Class<?>) LogCopyService.class));
    }

    private void setPsLogLevel() throws Resources.NotFoundException {
        String[] stringArray = getResources().getStringArray(R.array.list_psLogLevel);
        int psLogLevel = this.mCpLogControl.getPsLogLevel();
        if (psLogLevel >= 0 && psLogLevel <= 2) {
            this.mPsLogLevelIndex = psLogLevel;
        } else {
            this.mPsLogLevelIndex = 3;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(getString(R.string.ps_log_level)).setSingleChoiceItems(stringArray, this.mPsLogLevelIndex, new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.LogSettingActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i >= 0) {
                    LogSettingActivity.this.mCpLogControl.setPsLogLevel(i);
                }
                LogSettingActivity.this.mAlertDialog.dismiss();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        this.mAlertDialog = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.mAlertDialog.show();
    }

    private void setWcnLogLevel() throws Resources.NotFoundException {
        String[] stringArray = getResources().getStringArray(R.array.list_wcnLogLevel);
        int wcnLogLevel = this.mCpLogControl.getWcnLogLevel();
        if (wcnLogLevel >= 0 && wcnLogLevel <= 3) {
            this.mWcnLogLevelIndex = wcnLogLevel;
        } else {
            this.mWcnLogLevelIndex = 4;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(getString(R.string.log_level)).setSingleChoiceItems(stringArray, this.mWcnLogLevelIndex, new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.LogSettingActivity.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i >= 0) {
                    LogSettingActivity.this.mCpLogControl.setWcnLogLevel(i);
                }
                LogSettingActivity.this.mAlertDialog.dismiss();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        this.mAlertDialog = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.mAlertDialog.show();
    }

    class WorkHandler extends Handler {
        public WorkHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws NumberFormatException {
            switch (message.what) {
                case 0:
                    final long singleFolderSize = LogSettingActivity.this.mApLogControl.getSingleFolderSize();
                    LogSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogSettingActivity.WorkHandler.1
                        @Override // java.lang.Runnable
                        public void run() {
                            LogSettingActivity.this.mApSingleSize.setSummary("" + singleFolderSize);
                            LogSettingActivity.this.mApSingleSize.setText("" + singleFolderSize);
                        }
                    });
                    break;
                case 1:
                    final long apTotalSize = LogSettingActivity.this.mApLogControl.getApTotalSize();
                    LogSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogSettingActivity.WorkHandler.2
                        @Override // java.lang.Runnable
                        public void run() {
                            LogSettingActivity.this.mApTotalSize.setSummary("" + apTotalSize);
                            LogSettingActivity.this.mApTotalSize.setText("" + apTotalSize);
                        }
                    });
                    break;
                case 2:
                    final boolean zIsLogOverwrite = LogSettingActivity.this.mApLogControl.isLogOverwrite();
                    LogSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogSettingActivity.WorkHandler.3
                        @Override // java.lang.Runnable
                        public void run() {
                            LogSettingActivity.this.mApLogOverwrite.setChecked(zIsLogOverwrite);
                        }
                    });
                    break;
                case 3:
                    if ("".equals((String) message.obj)) {
                        Toast.makeText(LogSettingActivity.this, R.string.log_size_toast, 0).show();
                        break;
                    } else {
                        final Long lValueOf = Long.valueOf(Long.parseLong((String) message.obj));
                        if (lValueOf.longValue() >= 100 && lValueOf.longValue() <= 500) {
                            LogSettingActivity.this.mApLogControl.setSingleFolderSize(lValueOf.longValue());
                            LogSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogSettingActivity.WorkHandler.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    LogSettingActivity.this.mApSingleSize.setSummary(String.valueOf(lValueOf));
                                }
                            });
                            break;
                        } else {
                            Toast.makeText(LogSettingActivity.this, R.string.log_size_toast, 0).show();
                            break;
                        }
                    }
                    break;
                case 4:
                    if ("".equals((String) message.obj)) {
                        Toast.makeText(LogSettingActivity.this, R.string.log_size_toast, 0).show();
                        break;
                    } else {
                        final Long lValueOf2 = Long.valueOf(Long.parseLong((String) message.obj));
                        if (lValueOf2.longValue() >= 256 && lValueOf2.longValue() <= LogSettingActivity.this.mTotalMaxSize) {
                            LogSettingActivity.this.mApLogControl.setApTotalSize(lValueOf2.longValue());
                            LogSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogSettingActivity.WorkHandler.5
                                @Override // java.lang.Runnable
                                public void run() {
                                    LogSettingActivity.this.mApTotalSize.setSummary(String.valueOf(lValueOf2));
                                }
                            });
                            break;
                        } else {
                            Toast.makeText(LogSettingActivity.this, R.string.log_size_toast, 0).show();
                            break;
                        }
                    }
                    break;
                case 5:
                    LogSettingActivity.this.mApLogControl.enableLogOverwrite(((Boolean) message.obj).booleanValue());
                    break;
                case 6:
                    LogSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogSettingActivity.WorkHandler.6
                        @Override // java.lang.Runnable
                        public void run() {
                            LogSettingActivity.this.mLogToSd.setChecked(LogSettingActivity.this.mLogManagerPreference.getLogCopyStatus());
                        }
                    });
                    break;
            }
        }
    }
}
