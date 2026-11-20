package com.sprd.logmanager.logui;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.SwitchPreference;
import android.util.Log;
import android.widget.Toast;
import com.sprd.logmanager.R;
import com.sprd.logmanager.database.LogSceneManager;
import com.sprd.logmanager.logcontrol.APLogControl;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import com.sprd.logmanager.utils.CommonUtils;
import com.sprd.logmanager.utils.ShellUtils;
import java.io.IOException;

/* loaded from: classes.dex */
public class DebugSettingActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener, Preference.OnPreferenceClickListener {
    public static String KEY_COREFILE = "corefile";
    public static String KEY_CP2_ASSERT = "cp2_assert";
    public static String KEY_CP2_RESET = "cp2_reset";
    public static String KEY_DISPLAY_LOG = "display_log";
    public static String KEY_DUMP_WCN = "dump_wcn";
    public static String KEY_IQ_MODE = "iq_mode_setting";
    public static String KEY_MODEM_ASSERT = "modem_assert";
    public static String KEY_MODEM_RESET = "modem_reset";
    public static String KEY_SAVE_DUMP = "save_dump_switch";
    public static String KEY_SAVE_SLEEP = "save_sleep";
    public static String KEY_SP_ASSERT = "sp_assert";
    public static String KEY_SYSDUMP = "sysdump";
    private static String TAG = "DebugSettingPreference";
    private AlertDialog mAlertDialog;
    private APLogControl mApLogControl;
    private SwitchPreference mCoreFile;
    private Preference mCp2Assert;
    private SwitchPreference mCp2Reset;
    private CPLogControlThroughHidl mCpLogControl;
    private SwitchPreference mDisplayLog;
    private Preference mDumpWcn;
    private Preference mIqModeSetting;
    private Preference mModemAssert;
    private SwitchPreference mModemReset;
    private ProgressDialog mProgressDialog;
    private SwitchPreference mSaveDumpSwitch;
    private Preference mSaveModemSleep;
    private Preference mSpAssert;
    private SwitchPreference mSystemDump;
    private Runnable runnable_dump = new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.5
        @Override // java.lang.Runnable
        public void run() {
            DebugSettingActivity.this.mCpLogControl.dumpWcnMem();
            DebugSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.5.1
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(DebugSettingActivity.this.getApplicationContext(), "dump wcn mem finished", 1).show();
                }
            });
        }
    };
    private Runnable sleepLogThread = new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.14
        @Override // java.lang.Runnable
        public void run() {
            DebugSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.14.1
                @Override // java.lang.Runnable
                public void run() {
                    DebugSettingActivity.this.mSaveModemSleep.setEnabled(false);
                }
            });
            Log.d(DebugSettingActivity.TAG, "save sleeplog start");
            final int iSaveSleepLog = DebugSettingActivity.this.mCpLogControl.saveSleepLog();
            Log.d("", "save sleeplog finish");
            if (iSaveSleepLog == 0) {
                DebugSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.14.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(DebugSettingActivity.this.getApplicationContext(), "save sleeplog finished", 0).show();
                        DebugSettingActivity.this.mSaveModemSleep.setEnabled(true);
                    }
                });
            } else {
                DebugSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.14.3
                    @Override // java.lang.Runnable
                    public void run() {
                        String string;
                        switch (iSaveSleepLog) {
                            case 1:
                                string = DebugSettingActivity.this.getApplicationContext().getString(R.string.slogmodem_error_1);
                                break;
                            case 2:
                                string = DebugSettingActivity.this.getApplicationContext().getString(R.string.slogmodem_error_2);
                                break;
                            case 3:
                                string = DebugSettingActivity.this.getApplicationContext().getString(R.string.slogmodem_error_3);
                                break;
                            case 4:
                                string = DebugSettingActivity.this.getApplicationContext().getString(R.string.slogmodem_error_4);
                                break;
                            case 5:
                                string = DebugSettingActivity.this.getApplicationContext().getString(R.string.slogmodem_error_5);
                                break;
                            case 6:
                                string = DebugSettingActivity.this.getApplicationContext().getString(R.string.slogmodem_error_6);
                                break;
                            case 7:
                                string = DebugSettingActivity.this.getApplicationContext().getString(R.string.slogmodem_error_7);
                                break;
                            case 8:
                                string = DebugSettingActivity.this.getApplicationContext().getString(R.string.slogmodem_error_8);
                                break;
                            default:
                                string = "error no:" + iSaveSleepLog;
                                break;
                        }
                        Toast.makeText(DebugSettingActivity.this.getApplicationContext(), string, 0).show();
                        DebugSettingActivity.this.mSaveModemSleep.setEnabled(true);
                    }
                });
            }
        }
    };

    interface ConfirmAction {
        void execute();
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.pref_debug_settings);
        this.mDisplayLog = (SwitchPreference) findPreference(KEY_DISPLAY_LOG);
        this.mSystemDump = (SwitchPreference) findPreference(KEY_SYSDUMP);
        this.mCoreFile = (SwitchPreference) findPreference(KEY_COREFILE);
        this.mModemAssert = findPreference(KEY_MODEM_ASSERT);
        this.mSaveModemSleep = findPreference(KEY_SAVE_SLEEP);
        this.mIqModeSetting = findPreference(KEY_IQ_MODE);
        this.mModemReset = (SwitchPreference) findPreference(KEY_MODEM_RESET);
        this.mCp2Assert = findPreference(KEY_CP2_ASSERT);
        this.mDumpWcn = findPreference(KEY_DUMP_WCN);
        this.mCp2Reset = (SwitchPreference) findPreference(KEY_CP2_RESET);
        this.mSpAssert = findPreference(KEY_SP_ASSERT);
        this.mSaveDumpSwitch = (SwitchPreference) findPreference(KEY_SAVE_DUMP);
        this.mApLogControl = APLogControl.getInstance();
        this.mCpLogControl = CPLogControlThroughHidl.getInstance();
        this.mDisplayLog.setOnPreferenceChangeListener(this);
        this.mSystemDump.setOnPreferenceChangeListener(this);
        this.mCoreFile.setOnPreferenceChangeListener(this);
        this.mModemAssert.setOnPreferenceClickListener(this);
        this.mSaveModemSleep.setOnPreferenceClickListener(this);
        this.mIqModeSetting.setOnPreferenceClickListener(this);
        this.mModemReset.setOnPreferenceChangeListener(this);
        this.mCp2Assert.setOnPreferenceClickListener(this);
        this.mDumpWcn.setOnPreferenceClickListener(this);
        this.mCp2Reset.setOnPreferenceChangeListener(this);
        this.mSpAssert.setOnPreferenceClickListener(this);
        this.mSaveDumpSwitch.setOnPreferenceChangeListener(this);
        getPreferenceScreen().removePreference(this.mDisplayLog);
        init();
    }

    private void init() {
        this.mSystemDump.setChecked(this.mApLogControl.getSysdumpState());
        this.mCoreFile.setChecked(this.mApLogControl.getCorefileState());
        this.mCoreFile.setEnabled(this.mApLogControl.getCorefileEnable());
        this.mModemReset.setChecked(this.mCpLogControl.isModemReset());
        this.mCp2Reset.setChecked(this.mCpLogControl.isWcnReset());
        this.mDumpWcn.setEnabled(!this.mCpLogControl.isWcnReset());
        this.mSaveDumpSwitch.setChecked(this.mCpLogControl.getModemSaveDump());
        if (!CommonUtils.isUserBuild()) {
            this.mCp2Reset.setEnabled(false);
        }
        if (!LogSceneManager.getInstance().isLogEnable()) {
            this.mSaveModemSleep.setEnabled(false);
        }
        if (this.mCpLogControl.getModemLogToPcState() == CPLogControlThroughHidl.LOG_TO_PC) {
            this.mSaveModemSleep.setEnabled(false);
        }
        if (this.mApLogControl.isWifiOnly()) {
            this.mModemAssert.setEnabled(false);
            this.mSaveModemSleep.setEnabled(false);
            this.mModemReset.setEnabled(false);
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ProgressDialog progressDialog = this.mProgressDialog;
        if (progressDialog != null && progressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
            this.mProgressDialog = null;
        }
        AlertDialog alertDialog = this.mAlertDialog;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.mAlertDialog.dismiss();
            this.mAlertDialog = null;
        }
        super.onDestroy();
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) throws InterruptedException, IOException {
        String key = preference.getKey();
        if (!key.equals(KEY_DISPLAY_LOG)) {
            if (key.equals(KEY_SYSDUMP)) {
                this.mApLogControl.enableSysDump(((Boolean) obj).booleanValue());
            } else if (key.equals(KEY_COREFILE)) {
                this.mApLogControl.enableCoreFile(((Boolean) obj).booleanValue());
            } else if (key.equals(KEY_MODEM_RESET)) {
                this.mCpLogControl.setModemReset(((Boolean) obj).booleanValue());
            } else if (key.equals(KEY_CP2_RESET)) {
                this.mCpLogControl.setWcnReset(((Boolean) obj).booleanValue());
                this.mDumpWcn.setEnabled(!r4.booleanValue());
            } else if (key.equals(KEY_SAVE_DUMP)) {
                this.mCpLogControl.setModemSaveDump(((Boolean) obj).booleanValue());
            }
        }
        return true;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if (key.equals(KEY_MODEM_ASSERT)) {
            doTokenConfirm(new ConfirmAction() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.1
                @Override // com.sprd.logmanager.logui.DebugSettingActivity.ConfirmAction
                public void execute() {
                    if (!DebugSettingActivity.this.mCpLogControl.isModemReset()) {
                        DebugSettingActivity.this.doModemAssert();
                        return;
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(DebugSettingActivity.this);
                    builder.setMessage(R.string.modem_assert_alert_discription);
                    builder.setPositiveButton(R.string.go_on, new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.1.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            DebugSettingActivity.this.doModemAssert();
                        }
                    });
                    builder.setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
                    builder.show();
                }
            }, R.string.modem_assert);
        } else if (key.equals(KEY_SAVE_SLEEP)) {
            new Thread(this.sleepLogThread).start();
        } else if (key.equals(KEY_IQ_MODE)) {
            setIQMode();
        } else if (key.equals(KEY_CP2_ASSERT)) {
            final boolean zIsLogStarted = this.mApLogControl.isLogStarted();
            final boolean zIsWcnReset = this.mCpLogControl.isWcnReset();
            doTokenConfirm(new ConfirmAction() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.2
                @Override // com.sprd.logmanager.logui.DebugSettingActivity.ConfirmAction
                public void execute() {
                    if (!zIsWcnReset && zIsLogStarted) {
                        DebugSettingActivity.this.doCp2Assert();
                        return;
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(DebugSettingActivity.this);
                    boolean z = zIsWcnReset;
                    if (z && zIsLogStarted) {
                        builder.setMessage(R.string.wcn_assert_alert_discription);
                    } else if (z && !zIsLogStarted) {
                        builder.setMessage(R.string.wcn_assert_alert_discription1);
                    } else {
                        builder.setMessage(R.string.wcn_assert_alert_discription2);
                    }
                    builder.setPositiveButton(R.string.go_on, new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.2.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            DebugSettingActivity.this.doCp2Assert();
                            DebugSettingActivity debugSettingActivity = DebugSettingActivity.this;
                            debugSettingActivity.mProgressDialog = ProgressDialog.show(debugSettingActivity, "Setting...", "Please wait...", true, false);
                        }
                    });
                    builder.setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
                    builder.show();
                }
            }, R.string.cp2_assert);
        }
        if (key.equals(KEY_DUMP_WCN)) {
            doTokenConfirm(new ConfirmAction() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.3
                @Override // com.sprd.logmanager.logui.DebugSettingActivity.ConfirmAction
                public void execute() {
                    if (!DebugSettingActivity.this.mCpLogControl.isWcnReset()) {
                        DebugSettingActivity.this.dumpWcnMem();
                        return;
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(DebugSettingActivity.this);
                    builder.setMessage(R.string.wcn_dump_alert_discription);
                    builder.setPositiveButton(R.string.go_on, new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.3.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            DebugSettingActivity.this.dumpWcnMem();
                        }
                    });
                    builder.setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
                    builder.show();
                }
            }, R.string.dump_wcn);
        }
        if (!key.equals(KEY_SP_ASSERT)) {
            return true;
        }
        this.mSpAssert.setEnabled(false);
        new Thread(new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.4
            @Override // java.lang.Runnable
            public void run() {
                ShellUtils.runCommand("echo \"assert on\" > dev/sctl_pm");
            }
        }).start();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpWcnMem() {
        Log.d(TAG, "dumpWcnMem", new Exception("debugException"));
        Toast.makeText(getApplicationContext(), "start dump wcn mem", 1).show();
        this.mDumpWcn.setEnabled(false);
        new Thread(this.runnable_dump).start();
    }

    void doTokenConfirm(final ConfirmAction confirmAction, int i) {
        final int iRandom = (((int) (Math.random() * 13.0d)) % 3) + 1;
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(i);
        builder.setMessage(getString(R.string.pin_confirm1) + " " + iRandom + " " + getString(R.string.pin_confirm2));
        builder.setPositiveButton("                     1   ", new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (iRandom == 1) {
                    confirmAction.execute();
                }
            }
        });
        builder.setNeutralButton("                     3   ", new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (iRandom == 3) {
                    confirmAction.execute();
                }
            }
        });
        builder.setNegativeButton("                     2   ", new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (iRandom == 2) {
                    confirmAction.execute();
                }
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doModemAssert() {
        this.mModemAssert.setEnabled(false);
        new Thread(new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.9
            @Override // java.lang.Runnable
            public void run() {
                Log.d(DebugSettingActivity.TAG, "start doModemAssert");
                DebugSettingActivity.this.mCpLogControl.sendModemAssert();
                DebugSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(DebugSettingActivity.this, "success", 0).show();
                    }
                });
            }
        }).start();
        if (this.mCpLogControl.isModemReset()) {
            this.mProgressDialog = ProgressDialog.show(this, "modem assert...", "Please wait...", false, false);
            new Thread(new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.10
                @Override // java.lang.Runnable
                public void run() throws InterruptedException {
                    boolean zWaitRildReady = DebugSettingActivity.this.mCpLogControl.waitRildReady(20L);
                    Log.i(DebugSettingActivity.TAG, "wait for modem reset result = " + zWaitRildReady);
                    DebugSettingActivity.this.dismissProgressDialog();
                    if (DebugSettingActivity.this.mModemAssert == null || !zWaitRildReady) {
                        return;
                    }
                    DebugSettingActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DebugSettingActivity.this.mModemAssert.setEnabled(true);
                        }
                    });
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doCp2Assert() {
        this.mCp2Assert.setEnabled(false);
        new Thread(new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.11
            @Override // java.lang.Runnable
            public void run() {
                DebugSettingActivity.this.mCpLogControl.sendWcnAssert();
                DebugSettingActivity.this.dismissProgressDialog();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressDialog() {
        runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.12
            @Override // java.lang.Runnable
            public void run() {
                if (DebugSettingActivity.this.mProgressDialog != null) {
                    DebugSettingActivity.this.mProgressDialog.dismiss();
                }
            }
        });
    }

    private void setIQMode() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.iq_mode_tile).setItems(new String[]{getString(R.string.wcdma_iq_mode), getString(R.string.gsm_iq_mode)}, new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.DebugSettingActivity.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent;
                if (i == 0) {
                    intent = new Intent(DebugSettingActivity.this.getApplication(), (Class<?>) WCDMAIQActivity.class);
                } else {
                    intent = i != 1 ? null : new Intent(DebugSettingActivity.this.getApplication(), (Class<?>) GSMIQActivity.class);
                }
                DebugSettingActivity.this.startActivity(intent);
            }
        }).setNegativeButton(getString(R.string.redirection_close), (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        this.mAlertDialog = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.mAlertDialog.show();
    }
}
