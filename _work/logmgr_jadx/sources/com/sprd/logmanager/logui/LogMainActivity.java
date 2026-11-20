package com.sprd.logmanager.logui;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;
import com.sprd.logmanager.LogManagerApplication;
import com.sprd.logmanager.R;
import com.sprd.logmanager.database.LogManagerPreference;
import com.sprd.logmanager.database.LogSceneManager;
import com.sprd.logmanager.logcontrol.APLogControl;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import com.sprd.logmanager.logcopy.LogCopyManager;
import com.sprd.logmanager.logcopy.service.LogCopyService;
import com.sprd.logmanager.utils.CommonUtils;
import com.sprd.logmanager.utils.ShellUtils;
import com.sprd.logmanager.utils.StorageUtil;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.TimeZone;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class LogMainActivity extends Activity implements View.OnClickListener {
    private APLogControl mApLogControl;
    CPLogControlThroughHidl mCpLogControl;
    private ToggleButton mLogSwitch;
    private Intent mMagicIntent;
    protected Handler mMainThreadHandler;
    private LogManagerPreference mManagerPreference;
    private PopupWindow mPopupWindow;
    private ProgressDialog mProgressDialog;
    private TextView mSceneInfo1;
    private TextView mSceneInfo2;
    private TextView mSceneInfo3;
    private TextView mSceneInfo4;
    private TextView mSceneSavePath;
    private TextView mSceneTime;
    private TextView mSceneTitle;
    private TextView mStorageFree;
    private ProgressBar mStorageUsage;
    private TextView mStorageUsed;
    private YlogHandler mYlogHandler;
    HandlerThread mYlogHandlerThread;
    private static String SD_LOG_PATH = StorageUtil.getExternalStorage() + "/Documents/ylog";
    private static String INTERNAL_LOG_PATH = StorageUtil.getInternalStorage() + "/Documents/ylog";
    private String timeelaps = "";
    private boolean logSwitching = false;
    private int tick = 0;
    private boolean mStopUpdateTime = false;
    private String SYSDUMP_CONTROL_PROP = "vendor.debug.sysdump.enabled";
    private String SYSDUMP_RESET_PROP = "persist.vendor.eng.reset";
    private boolean mLogStarted = false;
    private AlertDialog mAlertDialog = null;
    private boolean mLog2External = false;
    Runnable runnable_Time = new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.6
        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            Log.d("LogMainActivity", "runnable_Time started");
            LogMainActivity.this.tick = 0;
            while (!LogMainActivity.this.mStopUpdateTime) {
                if (LogMainActivity.this.tick == 60 || LogMainActivity.this.tick == 0) {
                    LogMainActivity.this.mHandler.obtainMessage(8).sendToTarget();
                    LogMainActivity.this.tick = 0;
                }
                LogMainActivity.access$808(LogMainActivity.this);
                LogMainActivity.this.mHandler.sendMessage(LogMainActivity.this.mHandler.obtainMessage(14));
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            Log.d("LogMainActivity", "runnable_Time exited");
        }
    };
    private SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
    public Handler mHandler = new Handler() { // from class: com.sprd.logmanager.logui.LogMainActivity.8
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 12) {
                LogMainActivity.this.mSceneTime.setText(LogMainActivity.this.timeelaps);
                return;
            }
            if (i != 14) {
                switch (i) {
                    case 4:
                        LogMainActivity.this.mSceneInfo1.setText("" + message.obj);
                        break;
                    case 5:
                        if (LogMainActivity.this.mCpLogControl.getModemLogToPcState() != CPLogControlThroughHidl.LOG_TO_PC || !LogMainActivity.this.mCpLogControl.isAnyModemLogOpen()) {
                            LogMainActivity.this.mSceneInfo2.setText("" + message.obj);
                            break;
                        } else {
                            LogMainActivity.this.mSceneInfo2.setText(R.string.slog_modem_to_pc_lowercase);
                            break;
                        }
                        break;
                    case 6:
                        LogMainActivity.this.mSceneInfo3.setText("" + message.obj);
                        break;
                    case 7:
                        LogMainActivity.this.mSceneInfo4.setText("" + message.obj);
                        break;
                    case 8:
                        LogMainActivity.this.sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
                        new Thread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.8.1
                            @Override // java.lang.Runnable
                            public void run() {
                                String logTime = LogMainActivity.this.mApLogControl.getLogTime();
                                if (logTime == null || logTime.lastIndexOf(58) <= 0) {
                                    LogMainActivity.this.timeelaps = "......";
                                } else {
                                    LogMainActivity.this.timeelaps = logTime.substring(0, logTime.lastIndexOf(58));
                                }
                                sendMessage(obtainMessage(12));
                            }
                        }).start();
                        break;
                    case 9:
                        if (LogMainActivity.this.mApLogControl.isLogStarted()) {
                            LogMainActivity.this.mSceneSavePath.setText("Path: " + message.obj);
                            break;
                        }
                        break;
                }
                return;
            }
            LogMainActivity.this.setUsage();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void setCPLogNoDest() {
    }

    static /* synthetic */ int access$808(LogMainActivity logMainActivity) {
        int i = logMainActivity.tick;
        logMainActivity.tick = i + 1;
        return i;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (CommonUtils.isGSIVersion() || !LogManagerApplication.getInstance().isAdminUser()) {
            Log.i("LogMainActivity", "gsi version or guest account ,not start");
            int i = R.string.not_support;
            if (!LogManagerApplication.getInstance().isAdminUser()) {
                i = R.string.gueset_not_support;
            }
            Toast.makeText(this, getString(i), 0).show();
            finish();
            return;
        }
        setContentView(R.layout.layout_ylog_main);
        this.mApLogControl = APLogControl.getInstance();
        CPLogControlThroughHidl cPLogControlThroughHidl = CPLogControlThroughHidl.getInstance();
        this.mCpLogControl = cPLogControlThroughHidl;
        if (cPLogControlThroughHidl == null) {
            Log.e("LogMainActivity", "get mCpLogControl error");
        } else {
            Log.i("LogMainActivity", "get mCpLogControl ok");
        }
        this.mManagerPreference = LogManagerPreference.getInstanse();
        HandlerThread handlerThread = new HandlerThread("LogMainActivity");
        this.mYlogHandlerThread = handlerThread;
        handlerThread.start();
        this.mYlogHandler = new YlogHandler(this.mYlogHandlerThread.getLooper());
        this.mSceneTitle = (TextView) findViewById(R.id.log_scene_title);
        this.mLogSwitch = (ToggleButton) findViewById(R.id.switch_button);
        this.mSceneInfo1 = (TextView) findViewById(R.id.tv_scene1);
        this.mSceneInfo2 = (TextView) findViewById(R.id.tv_scene2);
        this.mSceneInfo3 = (TextView) findViewById(R.id.tv_scene3);
        this.mSceneInfo4 = (TextView) findViewById(R.id.tv_scene4);
        this.mSceneTime = (TextView) findViewById(R.id.tv_logtime);
        this.mSceneSavePath = (TextView) findViewById(R.id.tv_logpath);
        this.mStorageUsed = (TextView) findViewById(R.id.storage_usage_used);
        this.mStorageFree = (TextView) findViewById(R.id.storage_usage_free);
        this.mStorageUsage = (ProgressBar) findViewById(R.id.storage_usage);
        this.mSceneTime.setText("00:00:00");
        this.mLogSwitch.setOnClickListener(this);
        this.mMainThreadHandler = new Handler(getMainLooper());
        ((TextView) findViewById(R.id.tv_logversion)).setText(getYlogVersion());
        ((TextView) findViewById(R.id.tv_logmanagerversion)).setText(getLogManagerVersion());
        Intent intent = getIntent();
        this.mMagicIntent = intent;
        if (intent != null) {
            if (902 == intent.getIntExtra("magic", -1)) {
                new Thread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LogMainActivity.this.showProgressDialog();
                        Log.d("LogMainActivity", "start by intent magic:  android = " + LogMainActivity.this.mMagicIntent.getStringExtra("android") + ", bthci = " + LogMainActivity.this.mMagicIntent.getStringExtra("bthci") + ", apcap = " + LogMainActivity.this.mMagicIntent.getStringExtra("apcap") + ", ps = " + LogMainActivity.this.mMagicIntent.getStringExtra("ps") + ", armpcm = " + LogMainActivity.this.mMagicIntent.getStringExtra("armpcm") + ", dsp = " + LogMainActivity.this.mMagicIntent.getStringExtra("dsp") + ", wifibt = " + LogMainActivity.this.mMagicIntent.getStringExtra("wifibt") + ", gnss = " + LogMainActivity.this.mMagicIntent.getStringExtra("gnss") + ", hub = " + LogMainActivity.this.mMagicIntent.getStringExtra("hub") + ", dsppcmhub = " + LogMainActivity.this.mMagicIntent.getStringExtra("dsppcm") + ", cpcap = " + LogMainActivity.this.mMagicIntent.getStringExtra("cpcap") + ", abe = " + LogMainActivity.this.mMagicIntent.getStringExtra("abe"));
                        LogMainActivity.this.mApLogControl.enableAndroidLog("1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("android")));
                        LogMainActivity.this.mApLogControl.enableHciLog("1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("bthci")));
                        LogMainActivity.this.mApLogControl.enableCapLog("1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("apcap")));
                        LogMainActivity.this.mCpLogControl.enablePsLog("1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("ps")));
                        LogMainActivity.this.mCpLogControl.enableArmPcmLog("1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("armpcm")));
                        LogMainActivity.this.mCpLogControl.enableDspLog("1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("dsp")));
                        LogMainActivity.this.mCpLogControl.enableWcnLog("1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("wifibt")));
                        LogMainActivity.this.mCpLogControl.enableGpsLog("1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("gnss")));
                        boolean zEquals = "1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("hub"));
                        if (!LogMainActivity.this.mCpLogControl.isSurportSensorHub()) {
                            LogMainActivity.this.mCpLogControl.enableSystemProcessLog(zEquals);
                        } else {
                            LogMainActivity.this.mCpLogControl.enableSensorHubLog(zEquals);
                        }
                        LogMainActivity.this.mCpLogControl.enableDspPcmLog("1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("dsppcm")));
                        LogMainActivity.this.mCpLogControl.enableCapLog("1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("cpcap")));
                        "1".equals(LogMainActivity.this.mMagicIntent.getStringExtra("abe"));
                        Log.d("LogMainActivity", "magic set done");
                        LogMainActivity.this.mManagerPreference.setSelectScene("Custom");
                        LogMainActivity.this.mApLogControl.recordAPLogLastSelect();
                        LogMainActivity.this.mCpLogControl.recordModemLogLastSelect();
                        LogMainActivity.this.mCpLogControl.recordConnectivityLogLastSelect();
                        LogMainActivity.this.mCpLogControl.recordOtherLogLastSelect();
                        Log.w("LogMainActivity", " intent startscene finished");
                        LogMainActivity.this.dismissProgressDialog();
                        LogMainActivity.this.mYlogHandler.sendMessage(LogMainActivity.this.mYlogHandler.obtainMessage(3));
                    }
                }).start();
            } else {
                Log.w("LogMainActivity", " intent magic wrong");
            }
        } else {
            Log.w("LogMainActivity", "no intent magic");
        }
        if (this.mManagerPreference.isFirstLanuch()) {
            Log.d("LogMainActivity", "first lanuch,record all status of selections");
            this.mApLogControl.recordAPLogLastSelect();
            this.mCpLogControl.recordModemLogLastSelect();
            this.mCpLogControl.recordConnectivityLogLastSelect();
            this.mCpLogControl.recordOtherLogLastSelect();
            this.mManagerPreference.setFirstLanuch(false);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.ylog_main_menu, menu);
        menu.findItem(R.id.ylog_copy).setVisible(false);
        if (!this.mApLogControl.isWifiOnly()) {
            return true;
        }
        menu.findItem(R.id.ylog_scene).setVisible(false);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws Resources.NotFoundException {
        switch (menuItem.getItemId()) {
            case R.id.clear /* 2131296340 */:
                if (this.mCpLogControl.isModemLogOptimizationOpen()) {
                    Log.d("LogMainActivity", "list log path");
                    getDeleteFiles();
                    break;
                } else {
                    new AlertDialog.Builder(this).setTitle("clear").setMessage(getString(R.string.slog_want_clear)).setPositiveButton(getString(R.string.alertdialog_ok), new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.LogMainActivity.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            LogMainActivity.this.mYlogHandler.sendMessage(LogMainActivity.this.mYlogHandler.obtainMessage(0));
                        }
                    }).setNegativeButton(getString(R.string.alertdialog_cancel), (DialogInterface.OnClickListener) null).show();
                    break;
                }
            case R.id.debug /* 2131296352 */:
                Intent intent = new Intent();
                intent.setClass(this, DebugSettingActivity.class);
                startActivity(intent);
                break;
            case R.id.restore_default /* 2131296435 */:
                resetAllSettingsToDefault();
                break;
            case R.id.user_define /* 2131296530 */:
                Intent intent2 = new Intent(this, (Class<?>) CustomLogSwitchActivity.class);
                intent2.putExtra("need_save_sence", false);
                startActivity(intent2);
                break;
            case R.id.ylog_copy /* 2131296542 */:
                copy2StoragePath();
                break;
            case R.id.ylog_help /* 2131296543 */:
                getPopupWindow();
                this.mPopupWindow.showAtLocation(findViewById(R.id.switch_button), 17, 0, 0);
                break;
            case R.id.ylog_scene /* 2131296544 */:
                startActivity(new Intent(this, (Class<?>) SceneSettingActivity.class));
                break;
            case R.id.ylog_settings /* 2131296545 */:
                if (LogSceneManager.getInstance().isLogEnable()) {
                    Intent intent3 = new Intent();
                    intent3.putExtra("name", "todo");
                    intent3.setClass(this, LogSettingActivity.class);
                    startActivity(intent3);
                    break;
                } else {
                    Toast.makeText(this, R.string.enable_ylog_hint, 0).show();
                    break;
                }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProgressDialog() {
        Log.d("LogMainActivity", "showProgressDialog");
        runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.3
            @Override // java.lang.Runnable
            public void run() {
                if (LogMainActivity.this.mProgressDialog != null && LogMainActivity.this.mProgressDialog.isShowing()) {
                    LogMainActivity.this.mProgressDialog.dismiss();
                }
                LogMainActivity logMainActivity = LogMainActivity.this;
                logMainActivity.mProgressDialog = ProgressDialog.show(logMainActivity, logMainActivity.getResources().getString(R.string.scene_switching), LogMainActivity.this.getResources().getString(R.string.scene_switching_wait), true, false);
            }
        });
    }

    protected void resetAPLogSetting() {
        Log.d("LogMainActivity", "reset ap log settings");
        this.mApLogControl.reset();
        LogManagerPreference.getInstanse().reset();
    }

    protected void resetModemLogSetting() {
        Log.d("LogMainActivity", "reset modem log settings");
        this.mCpLogControl.restoreToDefault();
        this.mCpLogControl.getCellularLogSettings();
        this.mCpLogControl.getConnectivityLogSettings();
    }

    protected void resetSceneSetting() {
        Log.d("LogMainActivity", "reset scene settings");
        if (!CommonUtils.isUserBuild()) {
            LogSceneManager.getInstance().openNormalScene();
        } else {
            this.mYlogHandler.sendMessage(this.mYlogHandler.obtainMessage(2));
        }
    }

    protected void resetSetting() {
        this.mCpLogControl.setLogToPc(CPLogControlThroughHidl.LOG_TO_PHONE);
        stopService(new Intent(this, (Class<?>) LogCopyService.class));
        this.mManagerPreference.setLogCopyStatus(false);
    }

    protected void resetDebugSetting() throws InterruptedException, IOException {
        Log.d("LogMainActivity", "reset resetDebugSettings");
        if (CommonUtils.isUserBuild()) {
            this.mCpLogControl.setModemReset(true);
            this.mCpLogControl.setWcnReset(true);
            this.mApLogControl.enableSysDump(false);
            this.mApLogControl.enableCoreFile(false);
            return;
        }
        this.mCpLogControl.setModemReset(false);
        this.mCpLogControl.setWcnReset(false);
        this.mApLogControl.enableSysDump(true);
        this.mApLogControl.enableCoreFile(true);
    }

    private void resetAllSettingsToDefault() {
        new AlertDialog.Builder(this).setTitle(R.string.reset_to_default_tips).setMessage(getString(R.string.reset_to_default_warning)).setPositiveButton(getString(R.string.alertdialog_ok), new AnonymousClass4()).setNegativeButton(getString(R.string.alertdialog_cancel), (DialogInterface.OnClickListener) null).show();
    }

    /* renamed from: com.sprd.logmanager.logui.LogMainActivity$4, reason: invalid class name */
    class AnonymousClass4 implements DialogInterface.OnClickListener {
        AnonymousClass4() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            new Thread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.4.1
                @Override // java.lang.Runnable
                public void run() throws InterruptedException, IOException {
                    LogMainActivity.this.showProgressDialog();
                    LogMainActivity.this.resetAPLogSetting();
                    LogMainActivity.this.resetModemLogSetting();
                    LogMainActivity.this.resetSceneSetting();
                    LogMainActivity.this.resetSetting();
                    LogMainActivity.this.resetDebugSetting();
                    LogMainActivity.this.dismissProgressDialog();
                    LogMainActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.4.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(LogMainActivity.this, R.string.reset_all_settings_success, 0).show();
                        }
                    });
                    LogMainActivity.this.onResume();
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressDialog() {
        Log.d("LogMainActivity", "dismissProgressDialog");
        runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.5
            @Override // java.lang.Runnable
            public void run() {
                LogMainActivity logMainActivity = LogMainActivity.this;
                logMainActivity.dismissProgressDialog(logMainActivity.mProgressDialog);
                LogMainActivity.this.mProgressDialog = null;
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
                Log.w("LogMainActivity", "exception when dismissing dialog");
            } catch (Exception e) {
                Log.w("LogMainActivity", "exception when dismissing dialog." + e);
            }
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (ActivityManager.isUserAMonkey()) {
            finish();
            return;
        }
        this.mYlogHandler.sendEmptyMessage(14);
        this.mYlogHandler.sendMessage(this.mYlogHandler.obtainMessage(3));
        this.mYlogHandler.sendMessage(this.mYlogHandler.obtainMessage(9));
        this.mYlogHandler.sendMessageDelayed(this.mYlogHandler.obtainMessage(9), 10000L);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mStopUpdateTime = true;
    }

    protected void initPopuptWindow() {
        this.mPopupWindow = new PopupWindow(getLayoutInflater().inflate(R.layout.about_ylog, (ViewGroup) null, false), -2, -2, true);
    }

    private void getPopupWindow() {
        PopupWindow popupWindow = this.mPopupWindow;
        if (popupWindow != null) {
            popupWindow.dismiss();
        } else {
            initPopuptWindow();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.switch_button) {
            return;
        }
        this.mProgressDialog = ProgressDialog.show(this, getResources().getString(R.string.scene_switching), getResources().getString(R.string.scene_switching_wait), true, false);
        if (this.mLogSwitch.isChecked()) {
            if (this.mCpLogControl.isModemLogOptimizationOpen()) {
                CommonUtils.changeLogPath();
            }
            this.mYlogHandler.sendMessage(this.mYlogHandler.obtainMessage(1));
            return;
        }
        this.mYlogHandler.sendMessage(this.mYlogHandler.obtainMessage(2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStoragePath() {
        String logSavePath = this.mApLogControl.getLogSavePath();
        Message messageObtainMessage = this.mHandler.obtainMessage(9);
        messageObtainMessage.obj = logSavePath;
        this.mHandler.sendMessage(messageObtainMessage);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        ProgressDialog progressDialog = this.mProgressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        HandlerThread handlerThread = this.mYlogHandlerThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUsage() {
        if (this.mStorageUsed == null || this.mStorageUsage == null || this.mStorageFree == null) {
            Log.e("LogMainActivity", "setUsage storage error");
        } else {
            this.mYlogHandler.post(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.7
                @Override // java.lang.Runnable
                public void run() {
                    String strTrim;
                    if (LogMainActivity.this.mApLogControl.isLogStarted()) {
                        strTrim = LogMainActivity.this.mApLogControl.getLogSavePath();
                        Message messageObtainMessage = LogMainActivity.this.mHandler.obtainMessage(9);
                        messageObtainMessage.obj = strTrim;
                        LogMainActivity.this.mHandler.sendMessage(messageObtainMessage);
                    } else {
                        strTrim = LogMainActivity.this.mSceneSavePath.getText().toString().trim();
                        if (strTrim != null && !strTrim.equals("")) {
                            try {
                                strTrim = strTrim.split(":")[1].trim();
                            } catch (Exception unused) {
                                strTrim = null;
                            }
                        }
                    }
                    if (strTrim == null || strTrim.equals("")) {
                        if (StorageUtil.getExternalStorageState()) {
                            strTrim = StorageUtil.getExternalStorage();
                        } else {
                            strTrim = Environment.getDataDirectory().getAbsolutePath();
                        }
                    }
                    strTrim.contains("emulated");
                    final long totalSpace = StorageUtil.getTotalSpace(strTrim);
                    final long freeSpace = StorageUtil.getFreeSpace(strTrim);
                    Log.d("LogMainActivity", "update usage path = " + strTrim + "  total:" + String.valueOf(totalSpace) + " fre:" + String.valueOf(freeSpace));
                    if (totalSpace <= 0) {
                        Log.e("LogMainActivity", "get path:" + strTrim + " storage size error");
                        return;
                    }
                    LogMainActivity.this.mMainThreadHandler.post(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            LogMainActivity.this.mStorageFree.setText(Formatter.formatFileSize(LogMainActivity.this, freeSpace) + " " + ((Object) LogMainActivity.this.getText(R.string.storage_free)));
                            LogMainActivity.this.mStorageUsed.setText(Formatter.formatFileSize(LogMainActivity.this, totalSpace - freeSpace) + " " + ((Object) LogMainActivity.this.getText(R.string.storage_usage)));
                            Log.d("LogMainActivity", "update UI done   total:" + String.valueOf(totalSpace) + " fre:" + String.valueOf(freeSpace));
                            long j = totalSpace;
                            long j2 = freeSpace;
                            int i = (int) (((j - j2) * 100) / j);
                            if (i == 0 && j - j2 > 0) {
                                i = 1;
                            }
                            LogMainActivity.this.mStorageUsage.setProgress(i);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSceneInfo(boolean z) {
        Log.i("LogMainActivity", "updateSceneInfo " + z);
        if (z) {
            this.mSceneTitle.setText(R.string.slog_scene_info_when_stop);
            this.mSceneInfo1.setVisibility(4);
            this.mSceneInfo2.setVisibility(4);
            this.mSceneInfo3.setVisibility(4);
            this.mSceneInfo4.setVisibility(4);
            return;
        }
        if (!this.mManagerPreference.getSelectScene().equals("Custom")) {
            this.mSceneTitle.setText(getString(R.string.slog_scene_info) + " " + this.mManagerPreference.getSelectScene());
        } else {
            this.mSceneTitle.setText(R.string.slog_scene_info);
        }
        this.mSceneInfo1.setVisibility(0);
        this.mSceneInfo2.setVisibility(0);
        this.mSceneInfo3.setVisibility(0);
        this.mSceneInfo4.setVisibility(0);
        this.mYlogHandler.sendMessage(this.mYlogHandler.obtainMessage(3));
    }

    class YlogHandler extends Handler {
        public YlogHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                LogMainActivity.this.clearLogThread();
                return;
            }
            if (i == 1) {
                LogMainActivity.this.logSwitching = true;
                String selectScene = LogMainActivity.this.mManagerPreference.getSelectScene();
                Log.i("LogMainActivity", "start log current scene is :" + selectScene);
                if (!LogSceneManager.getInstance().open(selectScene)) {
                    LogMainActivity.this.mCpLogControl.setModemLogMode(true);
                    if (LogMainActivity.this.mManagerPreference.isAPSwitchOn()) {
                        LogMainActivity.this.mApLogControl.restorLastSelectAPLog(true);
                    }
                    if (LogMainActivity.this.mManagerPreference.isModemSwitchOn() && !LogMainActivity.this.mApLogControl.isWifiOnly()) {
                        LogMainActivity.this.mCpLogControl.restorLastSelectModemLog(true);
                    }
                    if (LogMainActivity.this.mManagerPreference.isWCNSwitchOn()) {
                        LogMainActivity.this.mCpLogControl.restorLastSelectConnectivityLog(true);
                    }
                    if (LogMainActivity.this.mManagerPreference.isOtherSwitchOn()) {
                        LogMainActivity.this.mCpLogControl.restorLastSelectOtherLog(true);
                    }
                    if (!LogSceneManager.getInstance().isLogEnable()) {
                        LogMainActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.YlogHandler.1
                            @Override // java.lang.Runnable
                            public void run() throws InterruptedException {
                                try {
                                    Thread.sleep(1000L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                                if (LogMainActivity.this.mProgressDialog != null) {
                                    LogMainActivity.this.mProgressDialog.dismiss();
                                }
                                LogMainActivity.this.mLogSwitch.setChecked(false);
                                LogMainActivity logMainActivity = LogMainActivity.this;
                                Toast.makeText(logMainActivity, logMainActivity.getString(R.string.all_log_close), 0).show();
                            }
                        });
                        return;
                    }
                }
                LogMainActivity.this.logSwitching = false;
                LogMainActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.YlogHandler.2
                    @Override // java.lang.Runnable
                    public void run() {
                        LogMainActivity.this.mStopUpdateTime = false;
                        new Thread(LogMainActivity.this.runnable_Time).start();
                        LogMainActivity.this.updateStoragePath();
                        LogMainActivity.this.mYlogHandler.sendMessageDelayed(LogMainActivity.this.mYlogHandler.obtainMessage(9), 10000L);
                        if (LogMainActivity.this.mProgressDialog != null) {
                            LogMainActivity.this.mProgressDialog.dismiss();
                        }
                        LogMainActivity.this.updateSceneInfo(false);
                    }
                });
                return;
            }
            if (i == 2) {
                Log.d("LogMainActivity", "ap log will be close ");
                LogMainActivity.this.logSwitching = true;
                LogMainActivity.this.mManagerPreference.backupAPSwitchStatus(LogMainActivity.this.mApLogControl.isLogStarted());
                LogMainActivity.this.mManagerPreference.backupModemSwitchStatus(LogMainActivity.this.mCpLogControl.isAnyModemLogOpen());
                LogMainActivity.this.mManagerPreference.backupWCNSwitchStatus(LogMainActivity.this.mCpLogControl.isAnyConnectivityLogOpen());
                LogMainActivity.this.mManagerPreference.backupOtherSwitchStatus(LogMainActivity.this.mCpLogControl.isAnyOtherLogOpen());
                LogMainActivity.this.mApLogControl.enableAllApLog(false);
                if (!LogMainActivity.this.mApLogControl.isWifiOnly()) {
                    LogMainActivity.this.mCpLogControl.setModemLogMode(false);
                    LogMainActivity.this.mCpLogControl.enableAllModemLog(false);
                }
                LogMainActivity.this.mCpLogControl.enableAllConnectivityLog(false);
                LogMainActivity.this.mCpLogControl.enableAllOtherLog(false);
                if (CommonUtils.isUserBuild()) {
                    CPLogControlThroughHidl.getInstance().setPsLogLevel(0);
                    CPLogControlThroughHidl.getInstance().setWcnLogLevel(0);
                }
                LogMainActivity.this.setCPLogNoDest();
                LogMainActivity.this.logSwitching = false;
                Log.d("LogMainActivity", "log close");
                LogMainActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.YlogHandler.3
                    @Override // java.lang.Runnable
                    public void run() {
                        LogMainActivity.this.mStopUpdateTime = true;
                        if (LogMainActivity.this.mProgressDialog != null) {
                            LogMainActivity.this.mProgressDialog.dismiss();
                        }
                        LogMainActivity.this.updateSceneInfo(true);
                    }
                });
                return;
            }
            if (i != 3) {
                if (i == 9) {
                    String logSavePath = LogMainActivity.this.mApLogControl.getLogSavePath();
                    Message messageObtainMessage = LogMainActivity.this.mHandler.obtainMessage(9);
                    messageObtainMessage.obj = logSavePath;
                    LogMainActivity.this.mHandler.sendMessage(messageObtainMessage);
                    return;
                }
                if (i == 11) {
                    Log.w("LogMainActivity", "clear log time out");
                    return;
                }
                if (i != 14) {
                    if (i != 15) {
                        return;
                    }
                    LogMainActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.YlogHandler.5
                        @Override // java.lang.Runnable
                        public void run() {
                            LogMainActivity logMainActivity = LogMainActivity.this;
                            logMainActivity.mProgressDialog = ProgressDialog.show(logMainActivity, logMainActivity.getResources().getString(R.string.log_copying), LogMainActivity.this.getResources().getString(R.string.log_copying_wait), true, false);
                        }
                    });
                    LogCopyManager.getInstance().startCopy(true, LogMainActivity.this.mLog2External);
                    LogMainActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.YlogHandler.6
                        @Override // java.lang.Runnable
                        public void run() {
                            LogMainActivity.this.closeProgressDialog();
                        }
                    });
                    return;
                }
                LogMainActivity.this.mLogStarted = LogSceneManager.getInstance().isLogEnable();
                Log.i("LogMainActivity", "is log started mLogStarted = " + LogMainActivity.this.mLogStarted);
                LogMainActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.YlogHandler.4
                    @Override // java.lang.Runnable
                    public void run() {
                        LogMainActivity.this.mLogSwitch.setChecked(LogMainActivity.this.mLogStarted);
                        LogMainActivity.this.updateSceneInfo(!r2.mLogStarted);
                    }
                });
                if (LogMainActivity.this.mLogStarted) {
                    Log.d("LogMainActivity", "start runnable_Time");
                    LogMainActivity.this.mStopUpdateTime = false;
                    new Thread(LogMainActivity.this.runnable_Time).start();
                    return;
                }
                return;
            }
            String apLogOpenedInfo = LogMainActivity.this.mApLogControl.getApLogOpenedInfo();
            Log.d("LogMainActivity", "getApLogOpenedInfo:" + apLogOpenedInfo);
            Message messageObtainMessage2 = LogMainActivity.this.mHandler.obtainMessage(4);
            messageObtainMessage2.obj = apLogOpenedInfo;
            LogMainActivity.this.mHandler.sendMessage(messageObtainMessage2);
            String modemOpenedInfo = LogMainActivity.this.mApLogControl.isWifiOnly() ? "" : LogMainActivity.this.mCpLogControl.getModemOpenedInfo();
            Log.d("LogMainActivity", "getModemOpenedInfo:" + modemOpenedInfo);
            Message messageObtainMessage3 = LogMainActivity.this.mHandler.obtainMessage(5);
            messageObtainMessage3.obj = modemOpenedInfo;
            LogMainActivity.this.mHandler.sendMessage(messageObtainMessage3);
            String connectivityOpenedInfo = LogMainActivity.this.mCpLogControl.getConnectivityOpenedInfo();
            Log.d("LogMainActivity", "getConnectivityOpenedInfo:" + connectivityOpenedInfo);
            Message messageObtainMessage4 = LogMainActivity.this.mHandler.obtainMessage(6);
            Log.i("LogMainActivity", "connectivity scene info is :" + connectivityOpenedInfo);
            if (connectivityOpenedInfo.contains("wcn") && LogMainActivity.this.mCpLogControl.getModemLogToPcState() == CPLogControlThroughHidl.LOG_TO_PC) {
                Log.i("LogMainActivity", "wcn log to pc in sceneInfo");
                connectivityOpenedInfo = connectivityOpenedInfo.replaceFirst("log", "to pc");
            }
            messageObtainMessage4.obj = connectivityOpenedInfo;
            LogMainActivity.this.mHandler.sendMessage(messageObtainMessage4);
            String otherLogOpenedInfo = LogMainActivity.this.mCpLogControl.getOtherLogOpenedInfo();
            Log.d("LogMainActivity", "getOtherLogOpenedInfo:" + otherLogOpenedInfo);
            if (otherLogOpenedInfo.contains("sensorhub") && LogMainActivity.this.mCpLogControl.getModemLogToPcState() == CPLogControlThroughHidl.LOG_TO_PC) {
                Log.i("LogMainActivity", "modmem log to pc in sceneInfo,");
                otherLogOpenedInfo = otherLogOpenedInfo.replace("sensorhub log", "sensorhub to pc");
            }
            Message messageObtainMessage5 = LogMainActivity.this.mHandler.obtainMessage(7);
            messageObtainMessage5.obj = otherLogOpenedInfo;
            LogMainActivity.this.mHandler.sendMessage(messageObtainMessage5);
        }
    }

    public void clearLogThread() {
        Log.d("LogMainActivity", "clear log begin..");
        runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.9
            @Override // java.lang.Runnable
            public void run() {
                if (LogMainActivity.this.isFinishing()) {
                    return;
                }
                LogMainActivity.this.closeProgressDialog();
                LogMainActivity logMainActivity = LogMainActivity.this;
                logMainActivity.mProgressDialog = ProgressDialog.show(logMainActivity, "Clear...", logMainActivity.getResources().getString(R.string.scene_switching_wait), true, false);
            }
        });
        Message messageObtainMessage = this.mYlogHandler.obtainMessage(11);
        Log.i("LogMainActivity", "start delete all log ...");
        this.mYlogHandler.sendMessageDelayed(messageObtainMessage, 300000L);
        boolean zClearLog = this.mCpLogControl.clearLog();
        Log.i("LogMainActivity", "mCpLogControl.clearLog done:" + zClearLog);
        boolean zClearLog2 = this.mApLogControl.clearLog();
        deleteModemLogOptimizationLogs();
        Log.d("LogMainActivity", String.format("clear ylog result = %s, mlog result = %s", Boolean.valueOf(zClearLog2), Boolean.valueOf(zClearLog)));
        this.mYlogHandler.removeMessages(11);
        if (zClearLog2 && zClearLog) {
            runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.10
                @Override // java.lang.Runnable
                public void run() {
                    LogMainActivity.this.closeProgressDialog();
                    LogMainActivity logMainActivity = LogMainActivity.this;
                    Toast.makeText(logMainActivity, logMainActivity.getString(R.string.clear_action_successed), 1).show();
                }
            });
        } else {
            runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.LogMainActivity.11
                @Override // java.lang.Runnable
                public void run() {
                    LogMainActivity.this.closeProgressDialog();
                    LogMainActivity logMainActivity = LogMainActivity.this;
                    Toast.makeText(logMainActivity, logMainActivity.getString(R.string.clear_action_failed), 1).show();
                }
            });
        }
        this.mHandler.sendMessage(this.mYlogHandler.obtainMessage(8));
        this.mHandler.sendMessage(this.mYlogHandler.obtainMessage(14));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeProgressDialog() {
        ProgressDialog progressDialog = this.mProgressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
            this.mProgressDialog = null;
        }
    }

    private String getYlogVersion() {
        return this.mApLogControl.getLogVersion();
    }

    private String getLogManagerVersion() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    private void copy2StoragePath() throws Resources.NotFoundException {
        String[] stringArray = getResources().getStringArray(R.array.mini_dump_entries);
        this.mApLogControl.getLogSavePath();
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(getString(R.string.log_copy_storage_path)).setItems(stringArray, new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.LogMainActivity.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) throws ClassNotFoundException {
                boolean sdStorageState = StorageUtil.getSdStorageState();
                if (i != 0 || sdStorageState) {
                    if (LogMainActivity.this.mAlertDialog != null && LogMainActivity.this.mAlertDialog.isShowing()) {
                        LogMainActivity.this.mAlertDialog.dismiss();
                        LogMainActivity.this.mAlertDialog = null;
                    }
                    LogMainActivity.this.mLog2External = i == 0;
                    LogMainActivity.this.mYlogHandler.sendMessage(LogMainActivity.this.mYlogHandler.obtainMessage(15));
                    return;
                }
                if (LogMainActivity.this.mAlertDialog != null && LogMainActivity.this.mAlertDialog.isShowing()) {
                    LogMainActivity.this.mAlertDialog.dismiss();
                    LogMainActivity.this.mAlertDialog = null;
                }
                Toast.makeText(LogMainActivity.this, R.string.insert_sdcard_tips, 0).show();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        this.mAlertDialog = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.mAlertDialog.show();
    }

    private void getDeleteFiles() {
        ArrayList<String> arrayList = new ArrayList<>();
        String[] strArr = {StorageUtil.getExternalStorage() + "/", "/storage/emulated/0/", "/data/"};
        for (int i = 0; i < 3; i++) {
            String[] list = new File(strArr[i] + "ylog").list();
            if (list == null || list.length == 0) {
                Log.d("LogMainActivity", "No log file in " + strArr[i]);
            } else {
                for (int i2 = 0; i2 < list.length; i2++) {
                    if (!TextUtils.isEmpty(list[i2]) && (isNumeric(list[i2]) || list[i2].contains("switchon") || list[i2].contains("poweron") || list[i2].contains("assert"))) {
                        Log.d("LogMainActivity", "childs[i] " + list[i2]);
                        arrayList.add(strArr[i] + "ylog/:" + list[i2]);
                    }
                }
            }
        }
        if (arrayList.size() == 0) {
            Toast.makeText(this, "No file to delete!", 0).show();
            return;
        }
        Intent intent = new Intent(this, (Class<?>) DeleteLogsActivity.class);
        intent.putStringArrayListExtra("key_log_list", arrayList);
        startActivity(intent);
    }

    private static boolean isNumeric(String str) {
        return Pattern.compile("\\d+").matcher(str).matches();
    }

    private void deleteModemLogOptimizationLogs() {
        String[] strArr = {StorageUtil.getExternalStorage() + "/", "/storage/emulated/0/", "/data/"};
        for (int i = 0; i < 3; i++) {
            String[] list = new File(strArr[i] + "ylog").list();
            if (list != null && list.length != 0) {
                for (int i2 = 0; i2 < list.length; i2++) {
                    if (!TextUtils.isEmpty(list[i2]) && (isNumeric(list[i2]) || list[i2].contains("switchon") || list[i2].contains("poweron") || list[i2].contains("assert"))) {
                        String str = strArr[i] + "ylog/" + list[i2];
                        ShellUtils.runCommand("rm -rf " + str);
                        Log.d("LogMainActivity", "Deleted " + str);
                    }
                }
            }
        }
    }
}
