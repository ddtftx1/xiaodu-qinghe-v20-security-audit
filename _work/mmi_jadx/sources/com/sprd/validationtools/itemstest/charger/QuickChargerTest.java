package com.sprd.validationtools.itemstest.charger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.FileUtils;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class QuickChargerTest extends BaseActivity {
    private static final String BATTERY_CHARGER_VOLTAGE = "/sys/class/power_supply/sc27xx-fgu/VOLTAGE_AVG";
    private static final String ENG_CHARGER_CURRENT = "/sys/class/power_supply/battery/current_now";
    private static final String ENG_CHARGER_FGU_CURRENT = "/sys/class/power_supply/sc27xx-fgu/current_now";
    private static final String ENG_CHARGER_TEMP = "sys/class/power_supply/battery/temp";
    private static final String ENG_CHARGER_VOLTAGE = "/sys/class/power_supply/sc27xx-fgu/constant_charge_voltage";
    private static final String ENG_REAL_CHARGER_TYPE = "/sys/class/power_supply/sc2730_fast_charger/usb_type";
    private static final String PLUGGED = "plugged";
    public static final String QUICK_CHARGER_TYPE_PD_PPS = "/sys/class/power_supply/bq2597x-standalone";
    private static final String STATUS = "status";
    private static final String TAG = "QuickChargerTest";
    private static final String TEST_RESULT_FAIL = "fail";
    private static final String TEST_RESULT_SUCCESS = "success";
    private static final String VOLTAGE = "voltage";
    private float mBatteryElectronic;
    private TableRow mBatteryElectronicTableRow;
    private TextView mBatteryElectronicTextView;
    private float mBatteryTemperature;
    private TextView mBatteryVoltageTextView;
    private float mChargerElectronic;
    private TextView mChargerElectronicTextView;
    private TextView mChargerVolatgeTextView;
    private float mChargerVoltage;
    private TextView mChargingProtocolTextView;
    private Handler mHandler;
    private int mPluggedType;
    private TableRow mTemperatureTableRow;
    private TextView mTemperatureTextView;
    private TextView mTestResultTextView;
    private TextView pluggedTextView;
    private TextView statusTextView;
    private static final String ENG_REAL_BATTERY_TEMPERATURE = "sys/class/power_supply/sc27xx-fgu/temp";
    private static final boolean ENABLE_BATTRY_TEMPERATURE = FileUtils.fileIsExists(ENG_REAL_BATTERY_TEMPERATURE);
    private String mPluggeString = null;
    AsyncTask<Void, Void, String> task = null;
    private String mChargerType = null;
    private boolean mIsQuickCharger = false;
    private int mRetryNum = 0;
    private int mWaitTime = 3000;
    private int updateTime = 0;
    private int mBatteryPercent = 0;
    private Runnable mElectronicUpdate = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.QuickChargerTest.1
        @Override // java.lang.Runnable
        public void run() {
            QuickChargerTest.this.task = new AsyncTask<Void, Void, String>() { // from class: com.sprd.validationtools.itemstest.charger.QuickChargerTest.1.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public String doInBackground(Void... voidArr) throws InterruptedException {
                    String inputElectronicNewStep = QuickChargerTest.this.getInputElectronicNewStep();
                    Log.d(QuickChargerTest.TAG, "testResult = " + inputElectronicNewStep);
                    return inputElectronicNewStep;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public void onPostExecute(String str) {
                    Log.d(QuickChargerTest.TAG, "mElectronicUpdate data, mChargerVoltage=" + QuickChargerTest.this.mChargerVoltage + ", mChargerElectronic=" + QuickChargerTest.this.mChargerElectronic + ", mBatteryTemperature=" + QuickChargerTest.this.mBatteryTemperature + ",testResult:" + str);
                    if (QuickChargerTest.TEST_RESULT_SUCCESS.equals(str)) {
                        if (1 == QuickChargerTest.this.mPluggedType) {
                            QuickChargerTest.this.mTestResultTextView.setText(QuickChargerTest.this.getChargerTypeTip() + QuickChargerTest.this.getString(R.string.charger_test_success));
                            QuickChargerTest.this.mTestResultTextView.setTextColor(-16711936);
                            QuickChargerTest.this.storeRusult(true);
                            QuickChargerTest.this.mHandler.postDelayed(QuickChargerTest.this.mCompleteTest, 1000L);
                            return;
                        }
                        QuickChargerTest.this.mHandler.postDelayed(QuickChargerTest.this.mElectronicUpdate, 1000L);
                        return;
                    }
                    if (1 != QuickChargerTest.this.mPluggedType) {
                        QuickChargerTest.this.mHandler.postDelayed(QuickChargerTest.this.mElectronicUpdate, 1000L);
                        return;
                    }
                    QuickChargerTest.access$1008(QuickChargerTest.this);
                    if (QuickChargerTest.this.mRetryNum > 5) {
                        QuickChargerTest.this.mTestResultTextView.setText(QuickChargerTest.this.getChargerTypeTip() + QuickChargerTest.this.getString(R.string.charger_test_fail));
                        QuickChargerTest.this.mTestResultTextView.setTextColor(SupportMenu.CATEGORY_MASK);
                        QuickChargerTest.this.storeRusult(false);
                        QuickChargerTest.this.mHandler.postDelayed(QuickChargerTest.this.mCompleteTest, 1000L);
                        return;
                    }
                    QuickChargerTest.this.mWaitTime = QuickChargerTest.this.mRetryNum * 500;
                    QuickChargerTest.this.mHandler.post(QuickChargerTest.this.mElectronicUpdate);
                    Log.d(QuickChargerTest.TAG, "retry test num:" + QuickChargerTest.this.mRetryNum + ",wait time is " + QuickChargerTest.this.mWaitTime);
                }
            };
            QuickChargerTest.this.task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    };
    private Runnable mCompleteTest = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.QuickChargerTest.2
        @Override // java.lang.Runnable
        public void run() {
            QuickChargerTest.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.QuickChargerTest.2.1
                @Override // java.lang.Runnable
                public void run() {
                    QuickChargerTest.this.finish();
                }
            }, 1000L);
        }
    };
    public Runnable mCheckRunnable = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.QuickChargerTest.3
        @Override // java.lang.Runnable
        public void run() {
            Log.i(QuickChargerTest.TAG, "=== checkVolatge! ===");
            QuickChargerTest quickChargerTest = QuickChargerTest.this;
            quickChargerTest.mIsQuickCharger = quickChargerTest.getChargerType();
            if (QuickChargerTest.this.updateTime == 30) {
                QuickChargerTest.this.mTestResultTextView.setText(QuickChargerTest.this.getChargerTypeTip() + QuickChargerTest.this.getString(R.string.charger_test_fail));
                QuickChargerTest.this.mTestResultTextView.setTextColor(SupportMenu.CATEGORY_MASK);
                QuickChargerTest.this.storeRusult(false);
                QuickChargerTest.this.mHandler.postDelayed(QuickChargerTest.this.mCompleteTest, 1000L);
            }
            QuickChargerTest.this.initView();
            if (QuickChargerTest.this.mIsQuickCharger) {
                if (QuickChargerTest.this.mBatteryPercent >= 90) {
                    QuickChargerTest.this.mTestResultTextView.setText(QuickChargerTest.this.getChargerTypeTip() + QuickChargerTest.this.getString(R.string.charger_test_success));
                    QuickChargerTest.this.mTestResultTextView.setTextColor(-16711936);
                    QuickChargerTest.this.storeRusult(true);
                    QuickChargerTest.this.mHandler.postDelayed(QuickChargerTest.this.mCompleteTest, 1000L);
                }
                QuickChargerTest.access$1308(QuickChargerTest.this);
                if (7000.0f <= QuickChargerTest.this.mChargerVoltage) {
                    QuickChargerTest.this.mHandler.postDelayed(QuickChargerTest.this.mElectronicUpdate, 500L);
                    return;
                } else {
                    QuickChargerTest.this.mHandler.postDelayed(QuickChargerTest.this.mCheckRunnable, 1000L);
                    return;
                }
            }
            QuickChargerTest.this.updateTime = 0;
            QuickChargerTest.this.mHandler.postDelayed(QuickChargerTest.this.mCheckRunnable, 1000L);
        }
    };
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.sprd.validationtools.itemstest.charger.QuickChargerTest.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Resources.NotFoundException {
            String string;
            if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                int intExtra = intent.getIntExtra("status", 0);
                int intExtra2 = intent.getIntExtra(QuickChargerTest.PLUGGED, 0);
                int intExtra3 = intent.getIntExtra(QuickChargerTest.VOLTAGE, 0);
                QuickChargerTest.this.mBatteryPercent = (intent.getExtras().getInt("level") * 100) / intent.getExtras().getInt("scale");
                if (intExtra == 1) {
                    string = QuickChargerTest.this.getResources().getString(R.string.charger_unknown);
                } else if (intExtra == 2) {
                    string = QuickChargerTest.this.getResources().getString(R.string.charger_charging);
                } else if (intExtra == 3) {
                    string = QuickChargerTest.this.getResources().getString(R.string.charger_discharging);
                } else if (intExtra == 4) {
                    string = QuickChargerTest.this.getResources().getString(R.string.charger_not_charging);
                } else {
                    string = intExtra != 5 ? "" : QuickChargerTest.this.getResources().getString(R.string.charger_full);
                }
                if (intExtra2 == 1) {
                    QuickChargerTest.this.mPluggedType = 1;
                    QuickChargerTest quickChargerTest = QuickChargerTest.this;
                    quickChargerTest.mPluggeString = quickChargerTest.getResources().getString(R.string.charger_ac_plugged);
                    QuickChargerTest.this.mTestResultTextView.setVisibility(0);
                } else if (intExtra2 != 2) {
                    QuickChargerTest.this.mPluggedType = -1;
                    QuickChargerTest quickChargerTest2 = QuickChargerTest.this;
                    quickChargerTest2.mPluggeString = quickChargerTest2.getResources().getString(R.string.charger_no_plugged);
                    QuickChargerTest.this.mTestResultTextView.setText(QuickChargerTest.this.getString(R.string.charging_test));
                    QuickChargerTest.this.mTestResultTextView.setTextColor(-1);
                    QuickChargerTest.this.mTestResultTextView.setVisibility(8);
                    if (string.equals(QuickChargerTest.this.getString(R.string.charger_charging))) {
                        string = QuickChargerTest.this.getResources().getString(R.string.charger_discharging);
                        Log.d(QuickChargerTest.TAG, "Correct the error displays charge status.");
                    }
                } else {
                    QuickChargerTest.this.mPluggedType = 0;
                    QuickChargerTest quickChargerTest3 = QuickChargerTest.this;
                    quickChargerTest3.mPluggeString = quickChargerTest3.getResources().getString(R.string.charger_usb_plugged);
                    QuickChargerTest.this.mTestResultTextView.setVisibility(0);
                }
                QuickChargerTest.this.statusTextView.setText(string);
                Log.d(QuickChargerTest.TAG, "mIsQuickCharger = " + QuickChargerTest.this.getChargerType());
                QuickChargerTest.this.mChargingProtocolTextView.setText(QuickChargerTest.this.mChargerType);
                QuickChargerTest.this.pluggedTextView.setText(QuickChargerTest.this.mPluggeString);
                QuickChargerTest.this.mBatteryVoltageTextView.setText(Integer.toString(intExtra3) + " mv");
                if (QuickChargerTest.ENABLE_BATTRY_TEMPERATURE) {
                    QuickChargerTest.this.mBatteryElectronic = Integer.parseInt(r11.readFile(QuickChargerTest.ENG_CHARGER_FGU_CURRENT).trim()) / 1000;
                    QuickChargerTest.this.mBatteryElectronicTextView.setText(QuickChargerTest.this.mBatteryElectronic + " ma");
                    QuickChargerTest quickChargerTest4 = QuickChargerTest.this;
                    quickChargerTest4.mBatteryTemperature = quickChargerTest4.getDateFromNode(QuickChargerTest.ENG_REAL_BATTERY_TEMPERATURE);
                    QuickChargerTest.this.mTemperatureTextView.setText((QuickChargerTest.this.mBatteryTemperature / 10.0f) + " ℃");
                }
                Log.v("status", string);
                Log.v(QuickChargerTest.PLUGGED, QuickChargerTest.this.mPluggeString);
            }
        }
    };

    static /* synthetic */ int access$1008(QuickChargerTest quickChargerTest) {
        int i = quickChargerTest.mRetryNum;
        quickChargerTest.mRetryNum = i + 1;
        return i;
    }

    static /* synthetic */ int access$1308(QuickChargerTest quickChargerTest) {
        int i = quickChargerTest.updateTime;
        quickChargerTest.updateTime = i + 1;
        return i;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setTitle(R.string.battery_title_text);
        setContentView(R.layout.battery_quick_charged_result);
        getWindow().addFlags(524288);
        this.mHandler = new Handler();
        this.statusTextView = (TextView) findViewById(R.id.tv_status);
        this.mChargingProtocolTextView = (TextView) findViewById(R.id.tv_get_protocol);
        this.pluggedTextView = (TextView) findViewById(R.id.tv_plugged);
        this.mBatteryVoltageTextView = (TextView) findViewById(R.id.tv_battery_voltage);
        this.mChargerVolatgeTextView = (TextView) findViewById(R.id.tv_charger_Voltage);
        this.mChargerElectronicTextView = (TextView) findViewById(R.id.tv_chargerelectronic);
        this.mTestResultTextView = (TextView) findViewById(R.id.tv_test_result);
        this.mTemperatureTextView = (TextView) findViewById(R.id.tv_batterytemperature);
        this.mTemperatureTableRow = (TableRow) findViewById(R.id.TableRow06);
        this.mBatteryElectronicTextView = (TextView) findViewById(R.id.tv_battery_electronic);
        this.mBatteryElectronicTableRow = (TableRow) findViewById(R.id.TableRow09);
        if (ENABLE_BATTRY_TEMPERATURE) {
            this.mTemperatureTableRow.setVisibility(0);
            this.mBatteryElectronicTableRow.setVisibility(0);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        registerReceiver(this.mBroadcastReceiver, intentFilter);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (ENABLE_BATTRY_TEMPERATURE) {
            this.mBatteryElectronic = Integer.parseInt(readFile(ENG_CHARGER_FGU_CURRENT).trim()) / 1000;
            this.mBatteryElectronicTextView.setText(this.mBatteryElectronic + " ma");
            this.mBatteryTemperature = getDateFromNode(ENG_REAL_BATTERY_TEMPERATURE);
            this.mTemperatureTextView.setText((this.mBatteryTemperature / 10.0f) + " ℃");
        }
        this.mIsQuickCharger = getChargerType();
        float dateFromNode = getDateFromNode(ENG_CHARGER_VOLTAGE) / 1000.0f;
        this.mChargerVoltage = dateFromNode;
        if (this.mIsQuickCharger && dateFromNode >= 7000.0f) {
            this.mHandler.postDelayed(this.mElectronicUpdate, 500L);
        } else {
            this.mHandler.postDelayed(this.mCheckRunnable, 500L);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mHandler.removeCallbacks(this.mElectronicUpdate);
        this.mHandler.removeCallbacks(this.mCheckRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getInputElectronicNewStep() throws InterruptedException {
        String str;
        str = "";
        Log.d(TAG, "getInputElectronicNewStep inputCurrent[]");
        try {
            this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.QuickChargerTest.4
                @Override // java.lang.Runnable
                public void run() {
                    QuickChargerTest.this.initView();
                }
            });
            stopCharge();
            Thread.sleep(2000L);
            final int i = Integer.parseInt(readFile(ENG_CHARGER_FGU_CURRENT).trim()) / 1000;
            Log.d(TAG, "getInputElectronicNewStep inputCurrent c1=[" + i + "]");
            this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.QuickChargerTest.5
                @Override // java.lang.Runnable
                public void run() {
                    QuickChargerTest.this.mChargerElectronicTextView.setText(i + " ma");
                    if (QuickChargerTest.ENABLE_BATTRY_TEMPERATURE) {
                        QuickChargerTest.this.mBatteryElectronicTextView.setText((Integer.parseInt(QuickChargerTest.this.readFile(QuickChargerTest.ENG_CHARGER_FGU_CURRENT).trim()) / 1000) + " ma");
                    }
                }
            });
            startCharge();
            Thread.sleep(2000L);
            int i2 = Integer.parseInt(readFile(ENG_CHARGER_FGU_CURRENT).trim()) / 1000;
            Log.d(TAG, "getInputElectronicNewStep inputCurrent c2=[" + i2 + "]");
            final int i3 = i2 - i;
            Log.d(TAG, "getInputElectronicNewStep inputCurrent i1=[" + i3 + "]");
            Log.d(TAG, "getInputElectronicNewStep inputCurrent mChargerVoltage=[" + this.mChargerVoltage + "]");
            str = i3 >= 50 ? TEST_RESULT_SUCCESS : "";
            this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.QuickChargerTest.6
                @Override // java.lang.Runnable
                public void run() {
                    QuickChargerTest.this.mChargerElectronicTextView.setText(i3 + " ma");
                    if (QuickChargerTest.ENABLE_BATTRY_TEMPERATURE) {
                        QuickChargerTest.this.mBatteryElectronicTextView.setText((Integer.parseInt(QuickChargerTest.this.readFile(QuickChargerTest.ENG_CHARGER_FGU_CURRENT).trim()) / 1000) + " ma");
                    }
                }
            });
        } catch (InterruptedException | NumberFormatException e) {
            Log.w(TAG, "getInputElectronicNewStep fail", e);
            e.printStackTrace();
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initView() {
        this.mChargerElectronic = getDateFromNode(ENG_CHARGER_CURRENT) / 1000.0f;
        this.mChargerVoltage = getDateFromNode(ENG_CHARGER_VOLTAGE) / 1000.0f;
        this.mBatteryElectronic = Integer.parseInt(readFile(ENG_CHARGER_FGU_CURRENT).trim()) / 1000;
        this.mBatteryElectronicTextView.setText(this.mBatteryElectronic + " ma");
        Log.d(TAG, "initView mChargerElectronic=" + this.mChargerElectronic + ",mChargerVoltage=" + this.mChargerVoltage);
        if (ENABLE_BATTRY_TEMPERATURE) {
            this.mBatteryTemperature = getDateFromNode(ENG_REAL_BATTERY_TEMPERATURE);
        } else {
            this.mBatteryTemperature = getDateFromNode(ENG_CHARGER_TEMP);
        }
        if (this.mChargerElectronic > -40.0d && this.mPluggedType >= 0) {
            this.mChargerElectronicTextView.setText(this.mChargerElectronic + " ma");
        } else {
            this.mChargerElectronicTextView.setText("n/a");
        }
        if (this.mChargerVoltage >= 100.0d && this.mPluggedType >= 0) {
            this.mChargerVolatgeTextView.setText(this.mChargerVoltage + " mv");
        } else {
            this.mChargerVolatgeTextView.setText("n/a");
        }
    }

    public boolean getChargerType() {
        String strTrim = readFile(ENG_REAL_CHARGER_TYPE).trim();
        String strSubstring = strTrim.substring(strTrim.indexOf("[") + 1, strTrim.indexOf("]"));
        this.mChargerType = strSubstring;
        this.mChargingProtocolTextView.setText(strSubstring);
        Log.d(TAG, "chargerType = " + this.mChargerType);
        return this.mChargerType.equals("PD") || this.mChargerType.equals("PD_PPS") || this.mChargerType.equals("SFCP_1P0") || this.mChargerType.equals("SFCP_2P0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getChargerTypeTip() {
        boolean zExists = new File(QUICK_CHARGER_TYPE_PD_PPS).exists();
        Log.d(TAG, "quick charger type PD_PPS = " + zExists);
        return (zExists && "PD_PPS".equals(this.mChargerType)) ? "PPS " : "PD".equals(this.mChargerType) ? "PD " : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDateFromNode(String str) throws Throwable {
        StringBuilder sb;
        FileReader fileReader;
        char[] cArr = new char[1024];
        FileReader fileReader2 = null;
        try {
            try {
                fileReader = new FileReader(str);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        } catch (NumberFormatException e2) {
            e = e2;
        }
        try {
            float fFloatValue = Float.valueOf(new String(cArr, 0, fileReader.read(cArr, 0, 1024))).floatValue();
            try {
                fileReader.close();
                return fFloatValue;
            } catch (IOException unused) {
                Log.e(TAG, "getDateFromNode fail , nodeString is:" + str);
                return fFloatValue;
            }
        } catch (IOException e3) {
            e = e3;
            fileReader2 = fileReader;
            e.printStackTrace();
            if (fileReader2 != null) {
                try {
                    fileReader2.close();
                } catch (IOException unused2) {
                    sb = new StringBuilder();
                    Log.e(TAG, sb.append("getDateFromNode fail , nodeString is:").append(str).toString());
                    return -100.0f;
                }
            }
            return -100.0f;
        } catch (NumberFormatException e4) {
            e = e4;
            fileReader2 = fileReader;
            e.printStackTrace();
            if (fileReader2 != null) {
                try {
                    fileReader2.close();
                } catch (IOException unused3) {
                    sb = new StringBuilder();
                    Log.e(TAG, sb.append("getDateFromNode fail , nodeString is:").append(str).toString());
                    return -100.0f;
                }
            }
            return -100.0f;
        } catch (Throwable th2) {
            th = th2;
            fileReader2 = fileReader;
            if (fileReader2 != null) {
                try {
                    fileReader2.close();
                } catch (IOException unused4) {
                    Log.e(TAG, "getDateFromNode fail , nodeString is:" + str);
                }
            }
            throw th;
        }
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.mBroadcastReceiver);
        this.mHandler.removeCallbacks(this.mCompleteTest);
        AsyncTask<Void, Void, String> asyncTask = this.task;
        if (asyncTask != null) {
            asyncTask.cancel(false);
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String readFile(String str) throws Throwable {
        FileReader fileReader;
        char[] cArr = new char[1024];
        FileReader fileReader2 = null;
        try {
            try {
                fileReader = new FileReader(str);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            String str2 = new String(cArr, 0, fileReader.read(cArr, 0, 1024));
            try {
                fileReader.close();
                return str2;
            } catch (IOException unused) {
                Log.w(TAG, "read file close fail");
                return str2;
            }
        } catch (IOException e2) {
            e = e2;
            fileReader2 = fileReader;
            e.printStackTrace();
            if (fileReader2 != null) {
                try {
                    fileReader2.close();
                } catch (IOException unused2) {
                    Log.w(TAG, "read file close fail");
                }
            }
            return "";
        } catch (Throwable th2) {
            th = th2;
            fileReader2 = fileReader;
            if (fileReader2 != null) {
                try {
                    fileReader2.close();
                } catch (IOException unused3) {
                    Log.w(TAG, "read file close fail");
                }
            }
            throw th;
        }
    }

    private void stopCharge() {
        Log.d(TAG, "stopCharge res=" + PhaseCheckParse.getInstance().writeChargeSwitch(1));
    }

    private void startCharge() {
        Log.d(TAG, "startCharge res=" + PhaseCheckParse.getInstance().writeChargeSwitch(0));
    }
}
