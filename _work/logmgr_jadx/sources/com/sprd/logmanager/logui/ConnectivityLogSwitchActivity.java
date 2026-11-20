package com.sprd.logmanager.logui;

import android.content.Intent;
import android.os.Bundle;
import android.os.HandlerThread;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.SwitchPreference;
import com.sprd.logmanager.R;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;

/* loaded from: classes.dex */
public class ConnectivityLogSwitchActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    private CPLogControlThroughHidl mCpLogCtrol;
    private SwitchPreference mGnssLogSwitch;
    private Intent mIntent;
    private ListPreference mWifiBtLevel;
    private SwitchPreference mWifiBtSwitch;

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.pref_wcn_log_switch);
        this.mWifiBtSwitch = (SwitchPreference) findPreference("wifi_bt_switch");
        this.mWifiBtLevel = (ListPreference) findPreference("wifi_bt_level");
        getPreferenceScreen().removePreference(this.mWifiBtLevel);
        this.mGnssLogSwitch = (SwitchPreference) findPreference("gnss_log_switch");
        this.mCpLogCtrol = CPLogControlThroughHidl.getInstance();
        new HandlerThread("ConnectivityLogSwitchActivity").start();
        this.mIntent = new Intent();
        initView();
    }

    private void initView() {
        this.mWifiBtSwitch.setChecked(this.mCpLogCtrol.getWcnLogStatus());
        this.mWifiBtLevel.setValue("" + this.mCpLogCtrol.getWcnLogLevel());
        this.mGnssLogSwitch.setChecked(this.mCpLogCtrol.getGnssLogStatus());
        this.mWifiBtSwitch.setOnPreferenceChangeListener(this);
        this.mWifiBtLevel.setOnPreferenceChangeListener(this);
        this.mGnssLogSwitch.setOnPreferenceChangeListener(this);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onBackPressed() {
        setResult(-1, this.mIntent);
        super.onBackPressed();
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        String key = preference.getKey();
        if (key.equals("wifi_bt_switch")) {
            this.mCpLogCtrol.enableWcnLog(((Boolean) obj).booleanValue());
        } else if (key.equals("wifi_bt_level")) {
            this.mCpLogCtrol.setWcnLogLevel(Integer.parseInt((String) obj));
        } else if (key.equals("gnss_log_switch")) {
            this.mCpLogCtrol.enableGpsLog(((Boolean) obj).booleanValue());
        }
        this.mIntent.putExtra("connectivity_change", true);
        return true;
    }
}
