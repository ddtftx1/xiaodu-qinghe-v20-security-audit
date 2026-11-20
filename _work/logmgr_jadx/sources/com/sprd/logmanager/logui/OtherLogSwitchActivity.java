package com.sprd.logmanager.logui;

import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.SwitchPreference;
import com.sprd.logmanager.R;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;

/* loaded from: classes.dex */
public class OtherLogSwitchActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    private final String TAG = "OtherLogSwitchActivity";
    private SwitchPreference mAudioProcessLogSwitch;
    private SwitchPreference mAudioProcessVoiceLogSwitch;
    private CPLogControlThroughHidl mCpLogControl;
    private Intent mIntent;
    private SwitchPreference mSensorLogSwitch;
    private SwitchPreference mSystemProcessLogSwitch;
    private SwitchPreference mVisionProcessLogSwitch;

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.pref_other_log_switch);
        this.mSensorLogSwitch = (SwitchPreference) findPreference("sensor_log_switch");
        this.mSystemProcessLogSwitch = (SwitchPreference) findPreference("system_process_log_switch");
        this.mAudioProcessLogSwitch = (SwitchPreference) findPreference("audio_process_log_switch");
        this.mAudioProcessVoiceLogSwitch = (SwitchPreference) findPreference("audio_process_voice_log_switch");
        this.mVisionProcessLogSwitch = (SwitchPreference) findPreference("vision_process_log_switch");
        CPLogControlThroughHidl cPLogControlThroughHidl = CPLogControlThroughHidl.getInstance();
        this.mCpLogControl = cPLogControlThroughHidl;
        if (!cPLogControlThroughHidl.isSurportAgdsp()) {
            this.mAudioProcessLogSwitch.setEnabled(false);
            this.mAudioProcessVoiceLogSwitch.setEnabled(false);
        }
        if (!this.mCpLogControl.isSurportSensorHub()) {
            getPreferenceScreen().removePreference(this.mSensorLogSwitch);
        } else {
            this.mSystemProcessLogSwitch.setTitle("PM Log");
        }
        if (!this.mCpLogControl.isSurportVideoProcess()) {
            getPreferenceScreen().removePreference(this.mVisionProcessLogSwitch);
        }
        this.mIntent = new Intent();
        initView();
    }

    private void initView() {
        if (this.mCpLogControl.isSurportSensorHub()) {
            this.mSensorLogSwitch.setChecked(this.mCpLogControl.getSensorHubLogStatus());
            this.mSensorLogSwitch.setOnPreferenceChangeListener(this);
        }
        if (this.mCpLogControl.isSurportVideoProcess()) {
            this.mVisionProcessLogSwitch.setChecked(this.mCpLogControl.getVideoLogStatus());
            this.mVisionProcessLogSwitch.setOnPreferenceChangeListener(this);
        }
        this.mSystemProcessLogSwitch.setChecked(this.mCpLogControl.getSystemProcessLogStatus());
        this.mSystemProcessLogSwitch.setOnPreferenceChangeListener(this);
        this.mAudioProcessLogSwitch.setChecked(this.mCpLogControl.getAgDspLogStatus());
        this.mAudioProcessLogSwitch.setOnPreferenceChangeListener(this);
        this.mAudioProcessVoiceLogSwitch.setChecked(this.mCpLogControl.getAGDspPcmDumpLogStatus());
        this.mAudioProcessVoiceLogSwitch.setOnPreferenceChangeListener(this);
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onBackPressed() {
        setResult(-1, this.mIntent);
        super.onBackPressed();
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        String key = preference.getKey();
        if (key.equals("sensor_log_switch")) {
            this.mCpLogControl.enableSensorHubLog(((Boolean) obj).booleanValue());
        } else if (key.equals("system_process_log_switch")) {
            this.mCpLogControl.enableSystemProcessLog(((Boolean) obj).booleanValue());
        } else if (key.equals("audio_process_log_switch")) {
            this.mCpLogControl.enableAgDsp(((Boolean) obj).booleanValue());
        } else if (key.equals("audio_process_voice_log_switch")) {
            this.mCpLogControl.enableAGDspPcmDumpLog(((Boolean) obj).booleanValue());
        } else if (key.equals("vision_process_log_switch")) {
            this.mCpLogControl.enableVideoLog(((Boolean) obj).booleanValue());
        }
        this.mIntent.putExtra("other_change", true);
        return true;
    }
}
