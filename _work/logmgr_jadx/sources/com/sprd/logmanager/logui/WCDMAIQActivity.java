package com.sprd.logmanager.logui;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.preference.TwoStatePreference;
import android.util.Log;
import android.widget.Toast;
import com.sprd.logmanager.R;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import com.sprd.logmanager.utils.MiscUtils;
import java.io.IOException;

/* loaded from: classes.dex */
public class WCDMAIQActivity extends PreferenceActivity implements SharedPreferences.OnSharedPreferenceChangeListener, Preference.OnPreferenceChangeListener {
    private CPLogControlThroughHidl mCpLogCtrol;
    private ListPreference mFunctionItemPref;
    private ListPreference mIqSamplePosPref;
    private mWcdmaIqHandler mWcdmaIqHandler;
    private TwoStatePreference mWiqSwitchPref;
    private String functionItemValue = null;
    private String iqSamplePosValue = null;
    private String mSupportMode = null;
    private Handler uiThread = new Handler();

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.pref_wcdma_iq);
        this.mWiqSwitchPref = (TwoStatePreference) findPreference("wiq_switch");
        this.mFunctionItemPref = (ListPreference) findPreference("function_item");
        this.mIqSamplePosPref = (ListPreference) findPreference("iq_sample_pos");
        this.mWiqSwitchPref.setOnPreferenceChangeListener(this);
        CPLogControlThroughHidl cPLogControlThroughHidl = CPLogControlThroughHidl.getInstance();
        this.mCpLogCtrol = cPLogControlThroughHidl;
        if (cPLogControlThroughHidl.isCP0Enable()) {
            this.mSupportMode = "WCDMA";
        } else if (this.mCpLogCtrol.isCP4Enable()) {
            this.mSupportMode = "FDD-LTE";
        } else if (this.mCpLogCtrol.isCP5Enable()) {
            this.mSupportMode = "5MODE";
        }
        if (this.mSupportMode == null) {
            this.mWiqSwitchPref.setEnabled(false);
        }
        HandlerThread handlerThread = new HandlerThread("wcdmaIqActivity");
        handlerThread.start();
        this.mWcdmaIqHandler = new mWcdmaIqHandler(handlerThread.getLooper());
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
        if (this.mWiqSwitchPref != null) {
            this.mWcdmaIqHandler.sendMessage(this.mWcdmaIqHandler.obtainMessage(1));
        }
        if (this.mFunctionItemPref != null) {
            this.mWcdmaIqHandler.sendMessage(this.mWcdmaIqHandler.obtainMessage(4));
        }
        if (this.mIqSamplePosPref != null) {
            this.mWcdmaIqHandler.sendMessage(this.mWcdmaIqHandler.obtainMessage(6));
        }
    }

    class mWcdmaIqHandler extends Handler {
        public mWcdmaIqHandler(Looper looper) {
            super.getLooper();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws InterruptedException, IOException {
            boolean z = true;
            switch (message.what) {
                case 1:
                    String strSendAt = MiscUtils.sendAt("AT+SPIQMENU=0,0", "atchannel0");
                    if (strSendAt != null) {
                        String strAnalysisResponse = WCDMAIQActivity.this.analysisResponse(strSendAt, 1);
                        if (strAnalysisResponse.equals("AT FAILED")) {
                            WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Log.d("WCDMAIQActivityActivity", "GET_WIQ_SWITCH Fail");
                                    WCDMAIQActivity.this.mWiqSwitchPref.setEnabled(false);
                                    WCDMAIQActivity.this.mWiqSwitchPref.setSummary(R.string.feature_abnormal);
                                    WCDMAIQActivity.this.mFunctionItemPref.setEnabled(false);
                                    WCDMAIQActivity.this.mIqSamplePosPref.setEnabled(false);
                                }
                            });
                        }
                        if (strAnalysisResponse.trim().equals("1")) {
                            WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    WCDMAIQActivity.this.mWiqSwitchPref.setChecked(true);
                                }
                            });
                            break;
                        } else {
                            WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    WCDMAIQActivity.this.mWiqSwitchPref.setChecked(false);
                                    WCDMAIQActivity.this.mFunctionItemPref.setEnabled(false);
                                    WCDMAIQActivity.this.mIqSamplePosPref.setEnabled(false);
                                }
                            });
                            break;
                        }
                    } else {
                        Toast.makeText(WCDMAIQActivity.this, "Socket connection failed", 0).show();
                        break;
                    }
                case 2:
                    new AlertDialog.Builder(WCDMAIQActivity.this).setMessage(WCDMAIQActivity.this.getString(R.string.choose_to_reboot)).setCancelable(false).setPositiveButton(WCDMAIQActivity.this.getString(R.string.alertdialog_ok), new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.5
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) throws InterruptedException, IOException {
                            String strSendAt2 = MiscUtils.sendAt("AT+SPIQMENU=0,1,1", "atchannel0");
                            if (strSendAt2 != null) {
                                String strAnalysisResponse2 = WCDMAIQActivity.this.analysisResponse(strSendAt2, 2);
                                boolean cellularModemIqMode = WCDMAIQActivity.this.mCpLogCtrol.setCellularModemIqMode(1);
                                if (strAnalysisResponse2 == null || !strAnalysisResponse2.contains("OK") || !cellularModemIqMode) {
                                    WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.5.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            WCDMAIQActivity.this.mWiqSwitchPref.setChecked(false);
                                        }
                                    });
                                    return;
                                } else {
                                    WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.5.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            WCDMAIQActivity.this.mWiqSwitchPref.setChecked(true);
                                            WCDMAIQActivity.this.mFunctionItemPref.setEnabled(true);
                                            WCDMAIQActivity.this.mIqSamplePosPref.setEnabled(false);
                                            ((PowerManager) WCDMAIQActivity.this.getSystemService("power")).reboot("iqmode");
                                        }
                                    });
                                    return;
                                }
                            }
                            Toast.makeText(WCDMAIQActivity.this, "Socket connection failed", 0).show();
                        }
                    }).setNegativeButton(R.string.alertdialog_cancel, new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.4
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            WCDMAIQActivity.this.mWiqSwitchPref.setChecked(false);
                        }
                    }).create().show();
                    break;
                case 3:
                    new AlertDialog.Builder(WCDMAIQActivity.this).setMessage(WCDMAIQActivity.this.getString(R.string.choose_to_reboot)).setCancelable(false).setPositiveButton(WCDMAIQActivity.this.getString(R.string.alertdialog_ok), new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.7
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) throws InterruptedException, IOException {
                            String strSendAt2 = MiscUtils.sendAt("AT+SPIQMENU=0,1,0", "atchannel0");
                            if (strSendAt2 != null) {
                                String strAnalysisResponse2 = WCDMAIQActivity.this.analysisResponse(strSendAt2, 3);
                                boolean cellularModemIqMode = WCDMAIQActivity.this.mCpLogCtrol.setCellularModemIqMode(0);
                                if (strAnalysisResponse2 == null || !strAnalysisResponse2.contains("OK") || !cellularModemIqMode) {
                                    WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.7.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            WCDMAIQActivity.this.mWiqSwitchPref.setChecked(true);
                                        }
                                    });
                                    return;
                                } else {
                                    WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.7.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            WCDMAIQActivity.this.mWiqSwitchPref.setChecked(false);
                                            WCDMAIQActivity.this.mFunctionItemPref.setEnabled(false);
                                            WCDMAIQActivity.this.mIqSamplePosPref.setEnabled(false);
                                            ((PowerManager) WCDMAIQActivity.this.getSystemService("power")).reboot(null);
                                        }
                                    });
                                    return;
                                }
                            }
                            Toast.makeText(WCDMAIQActivity.this, "Socket connection failed", 0).show();
                        }
                    }).setNegativeButton(R.string.alertdialog_cancel, new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.6
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            WCDMAIQActivity.this.mWiqSwitchPref.setChecked(true);
                        }
                    }).create().show();
                    break;
                case 4:
                    String strSendAt2 = MiscUtils.sendAt("AT+SPIQMENU=1,0", "atchannel0");
                    if (strSendAt2 == null) {
                        Toast.makeText(WCDMAIQActivity.this, "Socket connection failed", 0).show();
                        break;
                    } else {
                        WCDMAIQActivity wCDMAIQActivity = WCDMAIQActivity.this;
                        wCDMAIQActivity.functionItemValue = wCDMAIQActivity.analysisResponse(strSendAt2, 4);
                        if (WCDMAIQActivity.this.functionItemValue.trim().equals("-1") || !strSendAt2.contains("OK")) {
                            if (WCDMAIQActivity.this.functionItemValue.contains("AT FAILED")) {
                                Toast.makeText(WCDMAIQActivity.this, "GET_FUNCTION_ITEM Fail", 0).show();
                                break;
                            }
                        } else {
                            WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.8
                                @Override // java.lang.Runnable
                                public void run() {
                                    WCDMAIQActivity.this.mFunctionItemPref.setValueIndex(Integer.valueOf(WCDMAIQActivity.this.functionItemValue.trim()).intValue());
                                    WCDMAIQActivity.this.mFunctionItemPref.setSummary(WCDMAIQActivity.this.mFunctionItemPref.getEntry());
                                }
                            });
                            break;
                        }
                    }
                    break;
                case 5:
                    if (Integer.valueOf(WCDMAIQActivity.this.mFunctionItemPref.getValue()).intValue() == 15) {
                        try {
                            Runtime.getRuntime().exec(new String[]{"system/bin/iqdata_daemon", "start", "/sdcard"});
                        } catch (Exception e) {
                            e.printStackTrace();
                            z = false;
                        }
                        if (z) {
                            WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.9
                                @Override // java.lang.Runnable
                                public void run() {
                                    WCDMAIQActivity.this.mFunctionItemPref.setSummary(WCDMAIQActivity.this.mFunctionItemPref.getEntry());
                                }
                            });
                            break;
                        } else {
                            WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.10
                                @Override // java.lang.Runnable
                                public void run() {
                                    WCDMAIQActivity.this.mWcdmaIqHandler.sendMessage(WCDMAIQActivity.this.mWcdmaIqHandler.obtainMessage(4));
                                }
                            });
                            break;
                        }
                    } else {
                        String strSendAt3 = MiscUtils.sendAt("AT+SPIQMENU=1,1," + ((String) message.obj), "atchannel0");
                        if (strSendAt3 == null) {
                            Toast.makeText(WCDMAIQActivity.this, "Socket connection failed", 0).show();
                            break;
                        } else if (WCDMAIQActivity.this.analysisResponse(strSendAt3, 5).contains("OK")) {
                            WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.11
                                @Override // java.lang.Runnable
                                public void run() {
                                    WCDMAIQActivity.this.mFunctionItemPref.setSummary(WCDMAIQActivity.this.mFunctionItemPref.getEntry());
                                }
                            });
                            break;
                        } else {
                            WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.12
                                @Override // java.lang.Runnable
                                public void run() {
                                    WCDMAIQActivity.this.mWcdmaIqHandler.sendMessage(WCDMAIQActivity.this.mWcdmaIqHandler.obtainMessage(4));
                                }
                            });
                            break;
                        }
                    }
                case 6:
                    String strSendAt4 = MiscUtils.sendAt("AT+SPIQMENU=2,0", "atchannel0");
                    if (strSendAt4 == null) {
                        Toast.makeText(WCDMAIQActivity.this, "Socket connection failed", 0).show();
                        break;
                    } else {
                        WCDMAIQActivity wCDMAIQActivity2 = WCDMAIQActivity.this;
                        wCDMAIQActivity2.iqSamplePosValue = wCDMAIQActivity2.analysisResponse(strSendAt4, 6);
                        if (WCDMAIQActivity.this.iqSamplePosValue.trim().equals("-1") || !strSendAt4.contains("OK")) {
                            if (WCDMAIQActivity.this.iqSamplePosValue.contains("AT FAILED")) {
                                Toast.makeText(WCDMAIQActivity.this, "GET_IQ_SAMPLE_POS Fail", 0).show();
                                break;
                            }
                        } else {
                            WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.13
                                @Override // java.lang.Runnable
                                public void run() {
                                    WCDMAIQActivity.this.mIqSamplePosPref.setSummary(WCDMAIQActivity.this.mIqSamplePosPref.getEntry());
                                    WCDMAIQActivity.this.mIqSamplePosPref.setValueIndex(Integer.valueOf(WCDMAIQActivity.this.iqSamplePosValue).intValue());
                                }
                            });
                            break;
                        }
                    }
                    break;
                case 7:
                    String strSendAt5 = MiscUtils.sendAt("AT+SPIQMENU=2,1," + ((String) message.obj), "atchannel0");
                    if (strSendAt5 == null) {
                        Toast.makeText(WCDMAIQActivity.this, "Socket connection failed", 0).show();
                        break;
                    } else if (WCDMAIQActivity.this.analysisResponse(strSendAt5, 7).contains("OK")) {
                        WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.14
                            @Override // java.lang.Runnable
                            public void run() {
                                WCDMAIQActivity.this.mIqSamplePosPref.setSummary(WCDMAIQActivity.this.mIqSamplePosPref.getEntry());
                            }
                        });
                        break;
                    } else {
                        WCDMAIQActivity.this.uiThread.post(new Runnable() { // from class: com.sprd.logmanager.logui.WCDMAIQActivity.mWcdmaIqHandler.15
                            @Override // java.lang.Runnable
                            public void run() {
                                WCDMAIQActivity.this.mWcdmaIqHandler.sendMessage(WCDMAIQActivity.this.mWcdmaIqHandler.obtainMessage(6));
                            }
                        });
                        break;
                    }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String analysisResponse(String str, int i) {
        if (str == null || !str.contains("OK")) {
            return "AT FAILED";
        }
        Log.d("WCDMAIQActivityActivity", str + "");
        if (i != 1 && i != 4 && i != 6) {
            return (i == 5 || i == 7 || i == 2 || i == 3) ? "OK" : "AT FAILED";
        }
        String[] strArrSplit = str.split("\n")[0].split(",");
        Log.d("WCDMAIQActivityActivity", i + " " + strArrSplit[2]);
        return strArrSplit[2].trim();
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        int i;
        TwoStatePreference twoStatePreference = this.mWiqSwitchPref;
        if (preference == twoStatePreference) {
            i = twoStatePreference.isChecked() ? 3 : 2;
        } else {
            i = 0;
        }
        this.mWcdmaIqHandler.sendMessage(this.mWcdmaIqHandler.obtainMessage(i));
        return true;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (str.equals("function_item")) {
            String string = sharedPreferences.getString(str, "");
            Log.d("WCDMAIQActivityActivity", "onSharedPreferenceChange,key=" + str + ",value=" + string);
            this.mWcdmaIqHandler.sendMessage(this.mWcdmaIqHandler.obtainMessage(5, string));
        }
        if (str.equals("iq_sample_pos")) {
            String string2 = sharedPreferences.getString(str, "");
            Log.d("WCDMAIQActivityActivity", "onSharedPreferenceChange,key=" + str + ",value=" + string2);
            this.mWcdmaIqHandler.sendMessage(this.mWcdmaIqHandler.obtainMessage(7, string2));
        }
    }
}
