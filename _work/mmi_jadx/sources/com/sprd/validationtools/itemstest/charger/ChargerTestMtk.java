package com.sprd.validationtools.itemstest.charger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.IPowerManager;
import android.os.Message;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.text.format.DateUtils;
import android.util.Log;
import android.widget.TextView;
import com.android.internal.app.IBatteryStats;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class ChargerTestMtk extends BaseActivity {
    private static final int EVENT_TICK = 1;
    private static String charger_patch = "/proc/Sprocomm_Battery/charge_now";
    private IBatteryStats mBatteryStats;
    private TextView mElectronic;
    private TextView mHealth;
    private IntentFilter mIntentFilter;
    private TextView mLevel;
    private TextView mPower;
    private TextView mScale;
    private IPowerManager mScreenStats;
    private TextView mTechnology;
    private TextView mTemperature;
    private TextView mTestResult;
    private TextView mUptime;
    private TextView mVoltage;
    private Handler myHandler;
    private boolean isPlugUSB = false;
    private Runnable mElectronicUpdate = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTestMtk.1
        @Override // java.lang.Runnable
        public void run() throws IOException {
            String infoByPath = ChargerTestMtk.this.getInfoByPath(ChargerTestMtk.charger_patch);
            Log.d("ChargerTest", "charger_value>>>" + infoByPath);
            if (!ChargerTestMtk.this.isPlugUSB || 250 > Integer.parseInt(infoByPath) / 1000) {
                ChargerTestMtk.this.myHandler.postDelayed(ChargerTestMtk.this.mElectronicUpdate, 3000L);
                return;
            }
            ChargerTestMtk.this.mTestResult.setText(ChargerTestMtk.this.getString(R.string.charger_test_success));
            ChargerTestMtk.this.mTestResult.setTextColor(-16711936);
            ChargerTestMtk.this.mTestResult.setVisibility(0);
            ChargerTestMtk.this.storeRusult(true);
            ChargerTestMtk.this.finish();
        }
    };
    private Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTestMtk.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            ChargerTestMtk.this.updateBatteryStats();
            sendEmptyMessageDelayed(1, 1000L);
        }
    };
    private BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTestMtk.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String string;
            if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                int intExtra = intent.getIntExtra("plugged", 0);
                Log.d("huangli", "plugType>>>" + intExtra);
                ChargerTestMtk.this.mLevel.setText("" + intent.getIntExtra("level", 0));
                ChargerTestMtk.this.mScale.setText("" + intent.getIntExtra("scale", 0));
                ChargerTestMtk.this.mVoltage.setText("" + intent.getIntExtra("voltage", 0) + " " + ChargerTestMtk.this.getString(R.string.battery_info_voltage_units));
                ChargerTestMtk.this.mTemperature.setText("" + ChargerTestMtk.this.tenthsToFixedString(intent.getIntExtra("temperature", 0)) + ChargerTestMtk.this.getString(R.string.battery_info_temperature_units));
                ChargerTestMtk.this.mTechnology.setText("" + intent.getStringExtra("technology"));
                if (intExtra == 0) {
                    ChargerTestMtk.this.mPower.setText(ChargerTestMtk.this.getString(R.string.battery_info_power_unplugged));
                } else if (intExtra == 1) {
                    ChargerTestMtk.this.mPower.setText(ChargerTestMtk.this.getString(R.string.battery_info_power_ac));
                } else if (intExtra == 2) {
                    ChargerTestMtk.this.mPower.setText(ChargerTestMtk.this.getString(R.string.battery_info_power_usb));
                } else if (intExtra == 3) {
                    ChargerTestMtk.this.mPower.setText(ChargerTestMtk.this.getString(R.string.battery_info_power_ac_usb));
                } else if (intExtra != 4) {
                    ChargerTestMtk.this.mPower.setText(ChargerTestMtk.this.getString(R.string.battery_info_power_unknown));
                } else {
                    ChargerTestMtk.this.mPower.setText(ChargerTestMtk.this.getString(R.string.battery_info_power_wireless));
                }
                int intExtra2 = intent.getIntExtra("health", 1);
                if (intExtra2 == 2) {
                    string = ChargerTestMtk.this.getString(R.string.battery_info_health_good);
                } else if (intExtra2 == 3) {
                    string = ChargerTestMtk.this.getString(R.string.battery_info_health_overheat);
                } else if (intExtra2 == 4) {
                    string = ChargerTestMtk.this.getString(R.string.battery_info_health_dead);
                } else if (intExtra2 == 5) {
                    string = ChargerTestMtk.this.getString(R.string.battery_info_health_over_voltage);
                } else if (intExtra2 == 6) {
                    string = ChargerTestMtk.this.getString(R.string.battery_info_health_unspecified_failure);
                } else if (intExtra2 == 7) {
                    string = ChargerTestMtk.this.getString(R.string.battery_info_health_cold);
                } else {
                    string = ChargerTestMtk.this.getString(R.string.battery_info_health_unknown);
                }
                ChargerTestMtk.this.mHealth.setText(string);
                if ((intExtra == 1 || intExtra == 2 || intExtra == 4) && intExtra2 == 2) {
                    ChargerTestMtk.this.isPlugUSB = true;
                }
            }
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setTitle(R.string.battery_title_text);
        setContentView(R.layout.charge_layout);
        getWindow().addFlags(524288);
        this.mPower = (TextView) findViewById(R.id.power);
        this.mLevel = (TextView) findViewById(R.id.level);
        this.mScale = (TextView) findViewById(R.id.scale);
        this.mHealth = (TextView) findViewById(R.id.health);
        this.mTechnology = (TextView) findViewById(R.id.technology);
        this.mVoltage = (TextView) findViewById(R.id.voltage);
        this.mElectronic = (TextView) findViewById(R.id.electronic);
        this.mTemperature = (TextView) findViewById(R.id.temperature);
        this.mUptime = (TextView) findViewById(R.id.uptime);
        this.mTestResult = (TextView) findViewById(R.id.testResult);
        this.myHandler = new Handler();
        IntentFilter intentFilter = new IntentFilter();
        this.mIntentFilter = intentFilter;
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mBatteryStats = IBatteryStats.Stub.asInterface(ServiceManager.getService("batterystats"));
        this.mScreenStats = IPowerManager.Stub.asInterface(ServiceManager.getService("power"));
        this.mHandler.sendEmptyMessageDelayed(1, 1000L);
        this.myHandler.postDelayed(this.mElectronicUpdate, 3000L);
        registerReceiver(this.mIntentReceiver, this.mIntentFilter);
    }

    @Override // android.app.Activity
    public void onPause() {
        this.mHandler.removeMessages(1);
        this.myHandler.removeCallbacks(this.mElectronicUpdate);
        unregisterReceiver(this.mIntentReceiver);
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBatteryStats() {
        this.mUptime.setText(DateUtils.formatElapsedTime(SystemClock.elapsedRealtime() / 1000));
        this.mElectronic.setText("" + (this.isPlugUSB ? Integer.valueOf(Integer.parseInt(getInfoByPath(charger_patch)) / 1000) : "0") + " " + getString(R.string.battery_info_electronic_units));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getInfoByPath(String str) throws IOException {
        String line = "25000";
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(str)));
            line = bufferedReader.readLine();
            bufferedReader.close();
        } catch (FileNotFoundException e) {
            Log.e("ChargerTest", "FileNotFoundException");
            e.printStackTrace();
        } catch (IOException e2) {
            Log.e("ChargerTest", "IOException");
            e2.printStackTrace();
        }
        Log.e("ChargerTest", "infomation>>>" + line);
        return line;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String tenthsToFixedString(int i) {
        int i2 = i / 10;
        return Integer.toString(i2) + "." + Math.abs(i - (i2 * 10));
    }
}
