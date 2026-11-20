package com.sprd.logmanager.logui;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.preference.TwoStatePreference;
import android.util.Log;
import com.sprd.logmanager.R;

/* loaded from: classes.dex */
public class C2KIQActivity extends PreferenceActivity implements SharedPreferences.OnSharedPreferenceChangeListener, Preference.OnPreferenceChangeListener {
    private C2KIqHandler mC2KIqHandler;
    private TwoStatePreference mC2KiqSwitchPref;
    private ListPreference mFunctionItemPref;
    private ListPreference mIqSamplePosPref;
    private String functionItemValue = null;
    private String iqSamplePosValue = null;
    private String mSupportMode = null;
    private Handler uiThread = new Handler();

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.pref_c2k_iq);
        this.mC2KiqSwitchPref = (TwoStatePreference) findPreference("c2kiq_switch");
        this.mFunctionItemPref = (ListPreference) findPreference("function_item");
        this.mIqSamplePosPref = (ListPreference) findPreference("iq_sample_pos");
        this.mC2KiqSwitchPref.setOnPreferenceChangeListener(this);
        HandlerThread handlerThread = new HandlerThread("C2KIqActivity");
        handlerThread.start();
        this.mC2KIqHandler = new C2KIqHandler(handlerThread.getLooper());
        PreferenceManager.getDefaultSharedPreferences(this).registerOnSharedPreferenceChangeListener(this);
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onBackPressed() {
        finish();
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        if (this.mC2KiqSwitchPref != null) {
            this.mC2KIqHandler.sendMessage(this.mC2KIqHandler.obtainMessage(1));
        }
        if (this.mFunctionItemPref != null) {
            this.mC2KIqHandler.sendMessage(this.mC2KIqHandler.obtainMessage(4));
        }
        if (this.mIqSamplePosPref != null) {
            this.mC2KIqHandler.sendMessage(this.mC2KIqHandler.obtainMessage(6));
        }
    }

    class C2KIqHandler extends Handler {
        public C2KIqHandler(Looper looper) {
            super.getLooper();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 2) {
                new AlertDialog.Builder(C2KIQActivity.this).setMessage(C2KIQActivity.this.getString(R.string.choose_to_reboot)).setCancelable(false).setPositiveButton(C2KIQActivity.this.getString(R.string.alertdialog_ok), new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.C2KIQActivity.C2KIqHandler.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                    }
                }).setNegativeButton(R.string.alertdialog_cancel, new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.C2KIQActivity.C2KIqHandler.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        C2KIQActivity.this.mC2KiqSwitchPref.setChecked(false);
                    }
                }).create().show();
            } else {
                if (i != 3) {
                    return;
                }
                new AlertDialog.Builder(C2KIQActivity.this).setMessage(C2KIQActivity.this.getString(R.string.choose_to_reboot)).setCancelable(false).setPositiveButton(C2KIQActivity.this.getString(R.string.alertdialog_ok), new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.C2KIQActivity.C2KIqHandler.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                    }
                }).setNegativeButton(R.string.alertdialog_cancel, new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.C2KIQActivity.C2KIqHandler.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        C2KIQActivity.this.mC2KiqSwitchPref.setChecked(true);
                    }
                }).create().show();
            }
        }
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        int i;
        TwoStatePreference twoStatePreference = this.mC2KiqSwitchPref;
        if (preference == twoStatePreference) {
            i = twoStatePreference.isChecked() ? 3 : 2;
        } else {
            i = 0;
        }
        this.mC2KIqHandler.sendMessage(this.mC2KIqHandler.obtainMessage(i));
        return true;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (str.equals("function_item")) {
            String string = sharedPreferences.getString(str, "");
            Log.d("C2KIQActivity", "onSharedPreferenceChange,key=" + str + ",value=" + string);
            this.mC2KIqHandler.sendMessage(this.mC2KIqHandler.obtainMessage(5, string));
        }
        if (str.equals("iq_sample_pos")) {
            String string2 = sharedPreferences.getString(str, "");
            Log.d("C2KIQActivity", "onSharedPreferenceChange,key=" + str + ",value=" + string2);
            this.mC2KIqHandler.sendMessage(this.mC2KIqHandler.obtainMessage(7, string2));
        }
    }
}
