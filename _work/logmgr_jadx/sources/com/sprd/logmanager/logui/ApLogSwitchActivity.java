package com.sprd.logmanager.logui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.SwitchPreference;
import android.util.Log;
import android.widget.Toast;
import com.sprd.logmanager.R;
import com.sprd.logmanager.logcontrol.APLogControl;

/* loaded from: classes.dex */
public class ApLogSwitchActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    private SwitchPreference mAndroidSwitch;
    private EditTextPreference mCapLen;
    private SwitchPreference mCapSwitch;
    WorkHandler mHandler;
    private SwitchPreference mHciSwitch;
    Intent mIntent;
    private SwitchPreference mKernelSwitch;
    private SwitchPreference mLastKmsgSwitch;
    private SwitchPreference mThermalSwitch;
    private SwitchPreference mUtootSwitch;
    private final int MSG_GET_UBOOT_STATUS = 0;
    private final int MSG_GET_LAST_KMSG_STATUS = 1;
    private final int MSG_GET_KERNEL_STATUS = 2;
    private final int MSG_GET_ANDROID_STATUS = 3;
    private final int MSG_GET_CAP_STATUS = 4;
    private final int MSG_GET_CAP_SIZE = 5;
    private final int MSG_GET_HCI_STATUS = 6;
    private final int MSG_GET_THERMAL_STATUS = 7;
    private final int MSG_SET_UBOOT_STATUS = 8;
    private final int MSG_SET_LAST_KMSG_STATUS = 9;
    private final int MSG_SET_KERNEL_STATUS = 10;
    private final int MSG_SET_ANDROID_STATUS = 11;
    private final int MSG_SET_CAP_STATUS = 12;
    private final int MSG_SET_CAP_SIZE = 13;
    private final int MSG_SET_HCI_STATUS = 14;
    private final int MSG_SET_THERMAL_STATUS = 15;
    private final int MSG_SET_AUDIO_STATUS = 16;
    private final String TAG = "ApLogSwitchActivity";
    APLogControl apLogControl = APLogControl.getInstance();

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.pref_aplog_switch);
        this.mUtootSwitch = (SwitchPreference) findPreference("uboot_log_switch");
        this.mLastKmsgSwitch = (SwitchPreference) findPreference("last_kmsg_switch");
        this.mKernelSwitch = (SwitchPreference) findPreference("kernel_log_switch");
        this.mAndroidSwitch = (SwitchPreference) findPreference("android_log_switch");
        this.mCapSwitch = (SwitchPreference) findPreference("cap_log_switch");
        this.mCapLen = (EditTextPreference) findPreference("cap_len");
        this.mHciSwitch = (SwitchPreference) findPreference("hci_log_switch");
        this.mThermalSwitch = (SwitchPreference) findPreference("thermal_log_switch");
        HandlerThread handlerThread = new HandlerThread("ApLogSwitchActivity");
        handlerThread.start();
        this.mIntent = new Intent();
        this.mHandler = new WorkHandler(handlerThread.getLooper());
        initView();
    }

    private void initView() {
        this.mUtootSwitch.setOnPreferenceChangeListener(this);
        this.mLastKmsgSwitch.setOnPreferenceChangeListener(this);
        this.mKernelSwitch.setOnPreferenceChangeListener(this);
        this.mAndroidSwitch.setOnPreferenceChangeListener(this);
        this.mCapSwitch.setOnPreferenceChangeListener(this);
        this.mCapLen.setOnPreferenceChangeListener(this);
        this.mHciSwitch.setOnPreferenceChangeListener(this);
        this.mThermalSwitch.setOnPreferenceChangeListener(this);
        this.mUtootSwitch.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.sprd.logmanager.logui.ApLogSwitchActivity.1
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                if (!preference.getKey().equals("uboot_log_switch")) {
                    return true;
                }
                Log.i("ApLogSwitchActivity", "uboot log on click");
                return true;
            }
        });
        getUbootStatus();
        getLastKmsgStatus();
        getKernelStatus();
        getAndroidStatus();
        getCapStatus();
        getCapSizeStatus();
        getHciStatus();
        getThermalStatus();
    }

    private void getUbootStatus() {
        this.mHandler.sendEmptyMessage(0);
    }

    private void getLastKmsgStatus() {
        this.mHandler.sendEmptyMessage(1);
    }

    private void getKernelStatus() {
        this.mHandler.sendEmptyMessage(2);
    }

    private void getAndroidStatus() {
        this.mHandler.sendEmptyMessage(3);
    }

    private void getCapStatus() {
        this.mHandler.sendEmptyMessage(4);
    }

    private void getCapSizeStatus() {
        this.mHandler.sendEmptyMessage(5);
    }

    private void getHciStatus() {
        this.mHandler.sendEmptyMessage(6);
    }

    private void getThermalStatus() {
        this.mHandler.sendEmptyMessage(7);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onBackPressed() {
        setResult(-1, this.mIntent);
        super.onBackPressed();
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        WorkHandler workHandler = this.mHandler;
        if (workHandler != null) {
            workHandler.getLooper().quit();
        }
        super.onDestroy();
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        String key = preference.getKey();
        Message messageObtainMessage = this.mHandler.obtainMessage();
        if (key.equals("uboot_log_switch")) {
            Log.i("ApLogSwitchActivity", "uboot log onPreferenceChange");
            messageObtainMessage.what = 8;
        } else if (key.equals("last_kmsg_switch")) {
            messageObtainMessage.what = 9;
        } else if (key.equals("kernel_log_switch")) {
            messageObtainMessage.what = 10;
        } else if (key.equals("android_log_switch")) {
            messageObtainMessage.what = 11;
        } else if (key.equals("cap_log_switch")) {
            messageObtainMessage.what = 12;
        } else if (key.equals("cap_len")) {
            messageObtainMessage.what = 13;
        } else if (key.equals("hci_log_switch")) {
            messageObtainMessage.what = 14;
        } else if (key.equals("thermal_log_switch")) {
            messageObtainMessage.what = 15;
        }
        messageObtainMessage.obj = obj;
        this.mHandler.sendMessage(messageObtainMessage);
        this.mIntent.putExtra("ap_change", true);
        return true;
    }

    class WorkHandler extends Handler {
        public WorkHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws NumberFormatException {
            switch (message.what) {
                case 0:
                    final boolean ubootStatus = ApLogSwitchActivity.this.apLogControl.getUbootStatus();
                    ApLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.ApLogSwitchActivity.WorkHandler.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ApLogSwitchActivity.this.mUtootSwitch.setChecked(ubootStatus);
                        }
                    });
                    break;
                case 1:
                    final boolean lastKmsgStatus = ApLogSwitchActivity.this.apLogControl.getLastKmsgStatus();
                    ApLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.ApLogSwitchActivity.WorkHandler.2
                        @Override // java.lang.Runnable
                        public void run() {
                            ApLogSwitchActivity.this.mLastKmsgSwitch.setChecked(lastKmsgStatus);
                        }
                    });
                    break;
                case 2:
                    final boolean kernelLogStatus = ApLogSwitchActivity.this.apLogControl.getKernelLogStatus();
                    ApLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.ApLogSwitchActivity.WorkHandler.3
                        @Override // java.lang.Runnable
                        public void run() {
                            ApLogSwitchActivity.this.mKernelSwitch.setChecked(kernelLogStatus);
                        }
                    });
                    break;
                case 3:
                    final boolean androidLogStatus = ApLogSwitchActivity.this.apLogControl.getAndroidLogStatus();
                    ApLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.ApLogSwitchActivity.WorkHandler.4
                        @Override // java.lang.Runnable
                        public void run() {
                            ApLogSwitchActivity.this.mAndroidSwitch.setChecked(androidLogStatus);
                        }
                    });
                    break;
                case 4:
                    final boolean capLogStatus = ApLogSwitchActivity.this.apLogControl.getCapLogStatus();
                    ApLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.ApLogSwitchActivity.WorkHandler.5
                        @Override // java.lang.Runnable
                        public void run() {
                            ApLogSwitchActivity.this.mCapSwitch.setChecked(capLogStatus);
                        }
                    });
                    break;
                case 5:
                    final int capSize = ApLogSwitchActivity.this.apLogControl.getCapSize();
                    ApLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.ApLogSwitchActivity.WorkHandler.6
                        @Override // java.lang.Runnable
                        public void run() {
                            ApLogSwitchActivity.this.mCapLen.setSummary("" + capSize);
                            ApLogSwitchActivity.this.mCapLen.setText("" + capSize);
                        }
                    });
                    break;
                case 6:
                    final boolean hciLogStatus = ApLogSwitchActivity.this.apLogControl.getHciLogStatus();
                    ApLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.ApLogSwitchActivity.WorkHandler.7
                        @Override // java.lang.Runnable
                        public void run() {
                            ApLogSwitchActivity.this.mHciSwitch.setChecked(hciLogStatus);
                        }
                    });
                    break;
                case 7:
                    final boolean thermalLogStatus = ApLogSwitchActivity.this.apLogControl.getThermalLogStatus();
                    ApLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.ApLogSwitchActivity.WorkHandler.8
                        @Override // java.lang.Runnable
                        public void run() {
                            ApLogSwitchActivity.this.mThermalSwitch.setChecked(thermalLogStatus);
                        }
                    });
                    break;
                case 8:
                    ApLogSwitchActivity.this.apLogControl.enableUboot(((Boolean) message.obj).booleanValue());
                    break;
                case 9:
                    ApLogSwitchActivity.this.apLogControl.enableLastKmsg(((Boolean) message.obj).booleanValue());
                    break;
                case 10:
                    ApLogSwitchActivity.this.apLogControl.enableKernelLog(((Boolean) message.obj).booleanValue());
                    break;
                case 11:
                    ApLogSwitchActivity.this.apLogControl.enableAndroidLog(((Boolean) message.obj).booleanValue());
                    break;
                case 12:
                    ApLogSwitchActivity.this.apLogControl.enableCapLog(((Boolean) message.obj).booleanValue());
                    break;
                case 13:
                    final String str = (String) message.obj;
                    if ("".equals(str)) {
                        Toast.makeText(ApLogSwitchActivity.this, R.string.log_size_toast, 0).show();
                        break;
                    } else {
                        long j = Long.parseLong(str);
                        if (j > 10000 || j < 1) {
                            Toast.makeText(ApLogSwitchActivity.this, R.string.ap_cap_limit_toast, 0).show();
                            break;
                        } else {
                            ApLogSwitchActivity.this.apLogControl.setCapSize((int) j);
                            ApLogSwitchActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.ApLogSwitchActivity.WorkHandler.9
                                @Override // java.lang.Runnable
                                public void run() {
                                    ApLogSwitchActivity.this.mCapLen.setSummary(str);
                                }
                            });
                            break;
                        }
                    }
                case 14:
                    ApLogSwitchActivity.this.apLogControl.enableHciLog(((Boolean) message.obj).booleanValue());
                    break;
                case 15:
                    ApLogSwitchActivity.this.apLogControl.enableThermalLog(((Boolean) message.obj).booleanValue());
                    break;
                case 16:
                    ApLogSwitchActivity.this.apLogControl.enableAPAudio(((Boolean) message.obj).booleanValue());
                    break;
            }
        }
    }
}
