package com.sprd.logmanager.logui;

import android.content.Intent;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.SwitchPreference;
import android.widget.Toast;
import com.sprd.logmanager.R;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;

/* loaded from: classes.dex */
public class ModemLogSwitchActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    private final String TAG = "ModemLogSwitchActivity";
    private EditTextPreference mCapLen;
    private SwitchPreference mCapLogSwitch;
    private SwitchPreference mCpAudioLogSwitch;
    private CPLogControlThroughHidl mCpLogControl;
    private SwitchPreference mEtbSwitch;
    private Intent mIntent;
    private SwitchPreference mPhysicalAudioSwitch;
    private ListPreference mPhysicalLogLevel;
    private SwitchPreference mPhysicalLogSwitch;
    private ListPreference mPsLogLevel;
    private SwitchPreference mPsLogSwitch;

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.pref_modem_log_switch);
        this.mPsLogSwitch = (SwitchPreference) findPreference("ps_log_switch");
        this.mPsLogLevel = (ListPreference) findPreference("ps_log_level");
        getPreferenceScreen().removePreference(this.mPsLogLevel);
        this.mCpAudioLogSwitch = (SwitchPreference) findPreference("cp_audio_log_switch");
        this.mPhysicalLogSwitch = (SwitchPreference) findPreference("physical_log_switch");
        this.mPhysicalLogLevel = (ListPreference) findPreference("physical_log_level");
        getPreferenceScreen().removePreference(this.mPhysicalLogLevel);
        this.mPhysicalAudioSwitch = (SwitchPreference) findPreference("physical_audio_log_switch");
        this.mCapLogSwitch = (SwitchPreference) findPreference("cp_cap_log_switch");
        this.mCapLen = (EditTextPreference) findPreference("cp_cap_len");
        this.mEtbSwitch = (SwitchPreference) findPreference("etb_switch");
        this.mCpLogControl = CPLogControlThroughHidl.getInstance();
        this.mIntent = new Intent();
        initView();
    }

    private void initView() {
        this.mPsLogSwitch.setChecked(this.mCpLogControl.getPsLogStatus());
        this.mPsLogLevel.setValue(this.mCpLogControl.getPsLogLevel() + "");
        this.mCpAudioLogSwitch.setChecked(this.mCpLogControl.getArmPcmLogStatus());
        this.mPhysicalLogSwitch.setChecked(this.mCpLogControl.getDspLogStatus());
        this.mPhysicalLogLevel.setValue(this.mCpLogControl.getPhysicalLogLevel() + "");
        this.mPhysicalAudioSwitch.setChecked(this.mCpLogControl.getDspPcmLogStatus());
        this.mCapLogSwitch.setChecked(this.mCpLogControl.getCapLogStatus());
        this.mCapLen.setSummary(this.mCpLogControl.getCapSize() + "");
        this.mCapLen.setText(this.mCpLogControl.getCapSize() + "");
        this.mEtbSwitch.setChecked(this.mCpLogControl.getETBStatus());
        this.mPsLogSwitch.setOnPreferenceChangeListener(this);
        this.mPsLogLevel.setOnPreferenceChangeListener(this);
        this.mCpAudioLogSwitch.setOnPreferenceChangeListener(this);
        this.mPhysicalLogSwitch.setOnPreferenceChangeListener(this);
        this.mPhysicalLogLevel.setOnPreferenceChangeListener(this);
        this.mPhysicalAudioSwitch.setOnPreferenceChangeListener(this);
        this.mCapLogSwitch.setOnPreferenceChangeListener(this);
        this.mCapLen.setOnPreferenceChangeListener(this);
        this.mEtbSwitch.setOnPreferenceChangeListener(this);
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
    public boolean onPreferenceChange(Preference preference, final Object obj) throws NumberFormatException {
        String key = preference.getKey();
        if (key.equals("ps_log_switch")) {
            this.mCpLogControl.enablePsLog(((Boolean) obj).booleanValue());
        } else if (key.equals("ps_log_level")) {
            this.mCpLogControl.setPsLogLevel(Integer.parseInt((String) obj));
        } else if (key.equals("cp_audio_log_switch")) {
            this.mCpLogControl.enableArmPcmLog(((Boolean) obj).booleanValue());
        } else if (key.equals("physical_log_switch")) {
            this.mCpLogControl.enableDspLog(((Boolean) obj).booleanValue());
        } else if (key.equals("physical_log_level")) {
            this.mCpLogControl.setPhysicalLogLevel(Integer.parseInt((String) obj));
        } else if (key.equals("physical_audio_log_switch")) {
            this.mCpLogControl.enableDspPcmLog(((Boolean) obj).booleanValue());
        } else if (key.equals("cp_cap_log_switch")) {
            this.mCpLogControl.enableCapLog(((Boolean) obj).booleanValue());
        } else if (key.equals("cp_cap_len")) {
            String str = (String) obj;
            if ("".equals(str)) {
                Toast.makeText(this, R.string.log_size_toast, 0).show();
                return false;
            }
            long j = Long.parseLong(str);
            if (j > 10000) {
                Toast.makeText(this, R.string.cp_cap_max_toast, 0).show();
            } else {
                this.mCpLogControl.setCapSize((int) j);
                runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.ModemLogSwitchActivity.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ModemLogSwitchActivity.this.mCapLen.setSummary((String) obj);
                    }
                });
            }
        } else if (key.equals("audio_log_switch")) {
            this.mCpLogControl.enableDspPcmLog(((Boolean) obj).booleanValue());
        } else if (key.equals("etb_switch")) {
            this.mCpLogControl.enableETB(((Boolean) obj).booleanValue());
        }
        this.mIntent.putExtra("modem_change", true);
        return true;
    }
}
