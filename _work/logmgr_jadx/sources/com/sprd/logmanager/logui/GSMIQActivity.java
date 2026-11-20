package com.sprd.logmanager.logui;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.preference.TwoStatePreference;
import com.sprd.logmanager.R;
import com.sprd.logmanager.utils.MiscUtils;
import java.io.IOException;

/* loaded from: classes.dex */
public class GSMIQActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    private TwoStatePreference mAutionSwitch;
    private TwoStatePreference mCommunicateSwitch;
    private mGsmIqHandler mGsmIqHandler;
    SharedPreferences pref;
    private Handler uiThread = new Handler();

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.pref_gsm_iq);
        TwoStatePreference twoStatePreference = (TwoStatePreference) findPreference("audio_iq");
        this.mAutionSwitch = twoStatePreference;
        twoStatePreference.setOnPreferenceChangeListener(this);
        TwoStatePreference twoStatePreference2 = (TwoStatePreference) findPreference("communicate_iq");
        this.mCommunicateSwitch = twoStatePreference2;
        twoStatePreference2.setOnPreferenceChangeListener(this);
        this.pref = PreferenceManager.getDefaultSharedPreferences(this);
        HandlerThread handlerThread = new HandlerThread("GSMIQActivity");
        handlerThread.start();
        this.mGsmIqHandler = new mGsmIqHandler(handlerThread.getLooper());
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        TwoStatePreference twoStatePreference = this.mAutionSwitch;
        if (twoStatePreference != null) {
            twoStatePreference.setChecked(this.pref.getBoolean("audio_switch", false));
        }
        TwoStatePreference twoStatePreference2 = this.mCommunicateSwitch;
        if (twoStatePreference2 != null) {
            twoStatePreference2.setChecked(this.pref.getBoolean("communicate_switch", false));
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        mGsmIqHandler mgsmiqhandler = this.mGsmIqHandler;
        if (mgsmiqhandler != null) {
            mgsmiqhandler.getLooper().quit();
        }
        super.onDestroy();
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        TwoStatePreference twoStatePreference = this.mAutionSwitch;
        int i = 0;
        if (preference == twoStatePreference) {
            if (twoStatePreference.isChecked()) {
                i = 1;
            }
        } else {
            TwoStatePreference twoStatePreference2 = this.mCommunicateSwitch;
            if (preference == twoStatePreference2) {
                i = twoStatePreference2.isChecked() ? 3 : 2;
            }
        }
        this.mGsmIqHandler.sendMessage(this.mGsmIqHandler.obtainMessage(i));
        return true;
    }

    class mGsmIqHandler extends Handler {
        public mGsmIqHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws InterruptedException, IOException {
            int i = message.what;
            if (i == 0) {
                String strSendAt = MiscUtils.sendAt("AT+SPDSP=65535,0,0,4096", "atchannel0");
                if (strSendAt == null || !strSendAt.contains("OK")) {
                    GSMIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.GSMIQActivity.mGsmIqHandler.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GSMIQActivity.this.mAutionSwitch.setChecked(false);
                        }
                    });
                    return;
                } else {
                    GSMIQActivity.this.pref.edit().putBoolean("audio_switch", true).commit();
                    return;
                }
            }
            if (i == 1) {
                String strSendAt2 = MiscUtils.sendAt("AT+SPDSP=65535,0,0,0", "atchannel0");
                if (strSendAt2 == null || !strSendAt2.contains("OK")) {
                    GSMIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.GSMIQActivity.mGsmIqHandler.2
                        @Override // java.lang.Runnable
                        public void run() {
                            GSMIQActivity.this.mAutionSwitch.setChecked(false);
                        }
                    });
                    return;
                } else {
                    GSMIQActivity.this.pref.edit().putBoolean("audio_switch", false).commit();
                    return;
                }
            }
            if (i == 2) {
                String strSendAt3 = MiscUtils.sendAt("AT+SPDSP=1,1,0,0", "atchannel0");
                if (strSendAt3 == null || !strSendAt3.contains("OK")) {
                    GSMIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.GSMIQActivity.mGsmIqHandler.3
                        @Override // java.lang.Runnable
                        public void run() {
                            GSMIQActivity.this.mCommunicateSwitch.setChecked(false);
                        }
                    });
                    return;
                } else {
                    GSMIQActivity.this.pref.edit().putBoolean("communicate_switch", true).commit();
                    return;
                }
            }
            if (i != 3) {
                return;
            }
            String strSendAt4 = MiscUtils.sendAt("AT+SPDSP=1,0,0,0", "atchannel0");
            if (strSendAt4 == null || !strSendAt4.contains("OK")) {
                GSMIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.GSMIQActivity.mGsmIqHandler.4
                    @Override // java.lang.Runnable
                    public void run() {
                        GSMIQActivity.this.mCommunicateSwitch.setChecked(true);
                    }
                });
            } else {
                GSMIQActivity.this.pref.edit().putBoolean("communicate_switch", false).commit();
            }
        }
    }
}
