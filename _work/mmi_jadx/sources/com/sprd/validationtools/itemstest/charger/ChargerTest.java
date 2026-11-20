package com.sprd.validationtools.itemstest.charger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.Const;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.FileUtils;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class ChargerTest extends BaseActivity {
    private static final String CHARGER_ELECTRONIC = "/sys/class/power_supply/sprdfgu/fgu_current";
    private static final String ENG_BATTERY_TVOL = "/sys/class/power_supply/battery/real_time_voltage";
    private static final String ENG_CHARGER_CURRENT_K414 = "/sys/class/power_supply/battery/current_now";
    private static final String ENG_CHARGER_FGU_CURRENT_K414 = "/sys/class/power_supply/sc27xx-fgu/current_now";
    private static final String ENG_CHARGER_TEMP = "sys/class/power_supply/battery/temp";
    private static final String ENG_CHARGER_VOL = "/sys/class/power_supply/battery/charger_voltage";
    private static final String ENG_CHARGER_VOLTAGE_K414 = "/sys/class/power_supply/sc27xx-fgu/constant_charge_voltage";
    private static final String EXT_CHARGE_IC = "ext charge ic";
    private static final String FD_BATTERY_ID = "sys/class/power_supply/battery/bat_id";
    private static final String ID_BAK = "17";
    private static final String ID_BYD = "04";
    private static final String INPUT_ELECTRONIC = "/sys/class/power_supply/battery/real_time_current";
    private static final String PLUGGED = "plugged";
    private static final String STATUS = "status";
    private static final String TAG = "ChargerTest";
    private static final String TEST_RESULT_FAIL = "fail";
    private static final String TEST_RESULT_SUCCESS = "success";
    private static final String VOLTAGE = "voltage";
    private TableRow mBatteryElectronicTableRow;
    private TextView mBatteryElectronicTextView;
    private float mBatteryTemperature;
    private TextView mBatteryTextView;
    private float mChargerElectronic;
    private float mChargerVoltage;
    private TextView mElectronicTextView;
    private Handler mHandler;
    private TableRow mTemperatureTableRow;
    private TextView mTemperatureTextView;
    private TextView mTestResultTextView;
    private TextView pluggedTextView;
    private TextView statusTextView;
    private TextView voltageTextView;
    private static final String ENG_REAL_BATTERY_TEMPERATURE = "sys/class/power_supply/sc27xx-fgu/temp";
    private static final boolean ENABLE_BATTRY_TEMPERATURE = FileUtils.fileIsExists(ENG_REAL_BATTERY_TEMPERATURE);
    private String mBatteryTypeId = "";
    private TableRow mBatteryTypeIdTableRow = null;
    private TextView mBatteryTypeIdTextView = null;
    private String mPluggeString = null;
    private boolean mIsPlugUSB = false;
    private boolean mIsSupportK414 = false;
    AsyncTask<Void, Void, String> task = null;
    private Runnable mRealtimeShow = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTest.1
        @Override // java.lang.Runnable
        public void run() {
            ChargerTest.this.mHandler.removeCallbacks(this);
            ChargerTest.this.initView();
            ChargerTest.this.mHandler.postDelayed(this, 1000L);
        }
    };
    private String mInputCurrent = null;
    private int mRetryNum = 0;
    private int mWaitTime = 3000;
    private Runnable mElectronicUpdate = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTest.2
        @Override // java.lang.Runnable
        public void run() {
            if (Const.isBoardISharkL210c10()) {
                ChargerTest chargerTest = ChargerTest.this;
                chargerTest.mBatteryTypeId = chargerTest.readFile(ChargerTest.FD_BATTERY_ID).trim();
                Log.d(ChargerTest.TAG, "mBatteryTypeId=" + ChargerTest.this.mBatteryTypeId);
                if (ChargerTest.this.mBatteryTypeIdTextView != null && !TextUtils.isEmpty(ChargerTest.this.mBatteryTypeId)) {
                    String string = ChargerTest.this.getString(R.string.battery_type_id);
                    Log.d(ChargerTest.TAG, "text =" + string);
                    ChargerTest.this.mBatteryTypeIdTextView.setText(string + (ChargerTest.this.mBatteryTypeId.equals("0") ? ChargerTest.ID_BYD : ChargerTest.ID_BAK));
                }
            }
            ChargerTest.this.task = new AsyncTask<Void, Void, String>() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTest.2.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public String doInBackground(Void... voidArr) {
                    return ChargerTest.this.getInputElectronicNewStep();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public void onPostExecute(String str) {
                    Log.d(ChargerTest.TAG, "mElectronicUpdate data,mChargerVoltage=" + ChargerTest.this.mChargerVoltage + ", mChargerElectronic=" + ChargerTest.this.mChargerElectronic + ", mBatteryTemperature=" + ChargerTest.this.mBatteryTemperature + ",testResult:" + str);
                    if (ChargerTest.TEST_RESULT_SUCCESS.equals(str)) {
                        if (ChargerTest.this.mIsPlugUSB) {
                            ChargerTest.this.mTestResultTextView.setText(ChargerTest.this.getString(R.string.charger_test_success));
                            ChargerTest.this.mTestResultTextView.setTextColor(-16711936);
                            if (Const.isBoardISharkL210c10()) {
                                ChargerTest.this.setPassBtnEnabled(true);
                                return;
                            } else {
                                ChargerTest.this.storeRusult(true);
                                ChargerTest.this.mHandler.postDelayed(ChargerTest.this.mCompleteTest, 1000L);
                                return;
                            }
                        }
                        ChargerTest.this.mHandler.postDelayed(ChargerTest.this.mElectronicUpdate, 2000L);
                        return;
                    }
                    if (!ChargerTest.this.mIsPlugUSB) {
                        ChargerTest.this.mHandler.postDelayed(ChargerTest.this.mElectronicUpdate, 2000L);
                        return;
                    }
                    ChargerTest.access$1308(ChargerTest.this);
                    if (ChargerTest.this.mRetryNum > 5) {
                        ChargerTest.this.mTestResultTextView.setText(ChargerTest.this.getString(R.string.charger_test_fail));
                        ChargerTest.this.mTestResultTextView.setTextColor(SupportMenu.CATEGORY_MASK);
                        ChargerTest.this.storeRusult(false);
                        ChargerTest.this.mHandler.postDelayed(ChargerTest.this.mCompleteTest, 1000L);
                        return;
                    }
                    ChargerTest.this.mWaitTime = ChargerTest.this.mRetryNum * 500;
                    ChargerTest.this.mHandler.post(ChargerTest.this.mElectronicUpdate);
                    Log.d(ChargerTest.TAG, "retry test num:" + ChargerTest.this.mRetryNum + ",wait time is " + ChargerTest.this.mWaitTime);
                }
            };
            ChargerTest.this.task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    };
    private Runnable mCompleteTest = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTest.3
        @Override // java.lang.Runnable
        public void run() {
            if (!Const.isBoardISharkL210c10()) {
                ChargerTest.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTest.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ChargerTest.this.finish();
                    }
                }, 1000L);
            } else {
                Log.d("", "isBoardISharkL210c10 is return!");
            }
        }
    };
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTest.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Resources.NotFoundException {
            String string;
            if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                int intExtra = intent.getIntExtra("status", 0);
                int intExtra2 = intent.getIntExtra(ChargerTest.PLUGGED, 0);
                int intExtra3 = intent.getIntExtra(ChargerTest.VOLTAGE, 0);
                if (intExtra == 1) {
                    string = ChargerTest.this.getResources().getString(R.string.charger_unknown);
                } else if (intExtra == 2) {
                    string = ChargerTest.this.getResources().getString(R.string.charger_charging);
                } else if (intExtra == 3) {
                    string = ChargerTest.this.getResources().getString(R.string.charger_discharging);
                } else if (intExtra == 4) {
                    string = ChargerTest.this.getResources().getString(R.string.charger_not_charging);
                } else {
                    string = intExtra != 5 ? "" : ChargerTest.this.getResources().getString(R.string.charger_full);
                }
                if (intExtra2 == 1) {
                    ChargerTest.this.mIsPlugUSB = true;
                    ChargerTest chargerTest = ChargerTest.this;
                    chargerTest.mPluggeString = chargerTest.getResources().getString(R.string.charger_ac_plugged);
                    ChargerTest.this.mTestResultTextView.setVisibility(0);
                } else if (intExtra2 != 2) {
                    ChargerTest.this.mIsPlugUSB = false;
                    ChargerTest chargerTest2 = ChargerTest.this;
                    chargerTest2.mPluggeString = chargerTest2.getResources().getString(R.string.charger_no_plugged);
                    ChargerTest.this.mTestResultTextView.setText(ChargerTest.this.getString(R.string.charging_test));
                    ChargerTest.this.mTestResultTextView.setTextColor(-1);
                    ChargerTest.this.mTestResultTextView.setVisibility(8);
                    if (string.equals(ChargerTest.this.getString(R.string.charger_charging))) {
                        string = ChargerTest.this.getResources().getString(R.string.charger_discharging);
                        Log.d(ChargerTest.TAG, "Correct the error displays charge status.");
                    }
                } else {
                    ChargerTest.this.mIsPlugUSB = true;
                    ChargerTest chargerTest3 = ChargerTest.this;
                    chargerTest3.mPluggeString = chargerTest3.getResources().getString(R.string.charger_usb_plugged);
                    ChargerTest.this.mTestResultTextView.setVisibility(0);
                }
                ChargerTest.this.statusTextView.setText(string);
                ChargerTest.this.pluggedTextView.setText(ChargerTest.this.mPluggeString);
                ChargerTest.this.voltageTextView.setText(Integer.toString(intExtra3) + " mv");
                if (ChargerTest.ENABLE_BATTRY_TEMPERATURE) {
                    ChargerTest.this.mBatteryElectronicTextView.setText((Integer.parseInt(ChargerTest.this.readFile(ChargerTest.ENG_CHARGER_FGU_CURRENT_K414).trim()) / 1000) + " ma");
                    ChargerTest chargerTest4 = ChargerTest.this;
                    chargerTest4.mBatteryTemperature = chargerTest4.getDateFromNode(ChargerTest.ENG_REAL_BATTERY_TEMPERATURE);
                    ChargerTest.this.mTemperatureTextView.setText((ChargerTest.this.mBatteryTemperature / 10.0f) + " ℃");
                }
                Log.v("status", string);
                Log.v(ChargerTest.PLUGGED, ChargerTest.this.mPluggeString);
            }
        }
    };

    static /* synthetic */ int access$1308(ChargerTest chargerTest) {
        int i = chargerTest.mRetryNum;
        chargerTest.mRetryNum = i + 1;
        return i;
    }

    private void initSupportK414() {
        File file = new File(ENG_CHARGER_VOLTAGE_K414);
        Log.d(TAG, "initSupportK414 file=" + file + ",exists=" + file.exists());
        if (file.exists()) {
            this.mIsSupportK414 = true;
        } else {
            this.mIsSupportK414 = false;
        }
    }

    private boolean isSupportK414() {
        Log.d(TAG, "isSupportK414 mIsSupportK414=" + this.mIsSupportK414);
        return this.mIsSupportK414;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setTitle(R.string.battery_title_text);
        setContentView(R.layout.battery_charged_result);
        getWindow().addFlags(524288);
        this.mHandler = new Handler();
        initSupportK414();
        this.statusTextView = (TextView) findViewById(R.id.statusTextView);
        this.pluggedTextView = (TextView) findViewById(R.id.pluggedTextView);
        this.voltageTextView = (TextView) findViewById(R.id.voltageTextView);
        this.mElectronicTextView = (TextView) findViewById(R.id.electronicTextView);
        this.mBatteryTextView = (TextView) findViewById(R.id.batteryelectronicTextView);
        this.mTestResultTextView = (TextView) findViewById(R.id.test_resultTextView);
        this.mTemperatureTextView = (TextView) findViewById(R.id.batterytemperatureTextView);
        this.mTemperatureTableRow = (TableRow) findViewById(R.id.TableRow06);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        if (Const.isBoardISharkL210c10() || ENABLE_BATTRY_TEMPERATURE) {
            this.mTemperatureTableRow.setVisibility(0);
        }
        this.mBatteryTypeIdTextView = (TextView) findViewById(R.id.battery_type_id);
        this.mBatteryTypeIdTableRow = (TableRow) findViewById(R.id.TableRow08);
        if (Const.isBoardISharkL210c10()) {
            this.mBatteryTypeIdTableRow.setVisibility(0);
        }
        this.mBatteryElectronicTextView = (TextView) findViewById(R.id.battery_electronic_tv);
        this.mBatteryElectronicTableRow = (TableRow) findViewById(R.id.TableRow09);
        if (ENABLE_BATTRY_TEMPERATURE) {
            this.mTemperatureTableRow.setVisibility(0);
            this.mBatteryElectronicTableRow.setVisibility(0);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        registerReceiver(this.mBroadcastReceiver, intentFilter);
        if (Const.isBoardISharkL210c10()) {
            setPassBtnEnabled(true);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (ENABLE_BATTRY_TEMPERATURE) {
            this.mBatteryElectronicTextView.setText((Integer.parseInt(readFile(ENG_CHARGER_FGU_CURRENT_K414).trim()) / 1000) + " ma");
            this.mBatteryTemperature = getDateFromNode(ENG_REAL_BATTERY_TEMPERATURE);
            this.mTemperatureTextView.setText((this.mBatteryTemperature / 10.0f) + " ℃");
        }
        this.mHandler.postDelayed(this.mElectronicUpdate, 500L);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mHandler.removeCallbacks(this.mElectronicUpdate);
        this.mHandler.removeCallbacks(this.mRealtimeShow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getInputElectronicNewStep() throws InterruptedException, NumberFormatException {
        final int i;
        int i2;
        String str = "";
        Log.d(TAG, "getInputElectronicNewStep inputCurrent[]");
        try {
            if (Const.isBoardISharkL210c10()) {
                this.mHandler.postDelayed(this.mRealtimeShow, 100L);
            } else {
                this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTest.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ChargerTest.this.initView();
                    }
                });
            }
            stopCharge();
            Thread.sleep(1000L);
            if (isSupportK414()) {
                i = Integer.parseInt(readFile(ENG_CHARGER_FGU_CURRENT_K414).trim()) / 1000;
            } else {
                i = Integer.parseInt(readFile(CHARGER_ELECTRONIC).trim());
            }
            Log.d(TAG, "getInputElectronicNewStep inputCurrent c1=[" + i + "]");
            this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTest.5
                @Override // java.lang.Runnable
                public void run() {
                    ChargerTest.this.mBatteryTextView.setText(i + " ma");
                    if (ChargerTest.ENABLE_BATTRY_TEMPERATURE) {
                        ChargerTest.this.mBatteryElectronicTextView.setText((Integer.parseInt(ChargerTest.this.readFile(ChargerTest.ENG_CHARGER_FGU_CURRENT_K414).trim()) / 1000) + " ma");
                    }
                }
            });
            startCharge();
            Thread.sleep(2000L);
            if (isSupportK414()) {
                i2 = Integer.parseInt(readFile(ENG_CHARGER_FGU_CURRENT_K414).trim()) / 1000;
            } else {
                i2 = Integer.parseInt(readFile(CHARGER_ELECTRONIC).trim());
            }
            Log.d(TAG, "getInputElectronicNewStep inputCurrent c2=[" + i2 + "]");
            final int i3 = i2 - i;
            Log.d(TAG, "getInputElectronicNewStep inputCurrent i1=[" + i3 + "]");
            Log.d(TAG, "getInputElectronicNewStep inputCurrent mChargerVoltage=[" + this.mChargerVoltage + "]");
            String str2 = TEST_RESULT_SUCCESS;
            if (i3 < 200 && (i3 <= 100 || i3 >= 200 || this.mChargerVoltage < 4100.0f)) {
                str2 = TEST_RESULT_FAIL;
            }
            str = str2;
            this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.ChargerTest.6
                @Override // java.lang.Runnable
                public void run() {
                    ChargerTest.this.mBatteryTextView.setText(i3 + " ma");
                    if (ChargerTest.ENABLE_BATTRY_TEMPERATURE) {
                        ChargerTest.this.mBatteryElectronicTextView.setText((Integer.parseInt(ChargerTest.this.readFile(ChargerTest.ENG_CHARGER_FGU_CURRENT_K414).trim()) / 1000) + " ma");
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
        if (isSupportK414()) {
            this.mChargerElectronic = getDateFromNode(ENG_CHARGER_CURRENT_K414) / 1000.0f;
            this.mChargerVoltage = getDateFromNode(ENG_CHARGER_VOLTAGE_K414) / 1000.0f;
        } else {
            this.mChargerElectronic = getDateFromNode(CHARGER_ELECTRONIC);
            this.mChargerVoltage = getDateFromNode(ENG_CHARGER_VOL);
        }
        Log.d(TAG, "initView mChargerElectronic=" + this.mChargerElectronic + ",mChargerVoltage=" + this.mChargerVoltage);
        boolean z = ENABLE_BATTRY_TEMPERATURE;
        if (z) {
            this.mBatteryTemperature = getDateFromNode(ENG_REAL_BATTERY_TEMPERATURE);
        } else {
            this.mBatteryTemperature = getDateFromNode(ENG_CHARGER_TEMP);
        }
        if (this.mChargerElectronic > -40.0d && this.mIsPlugUSB) {
            this.mBatteryTextView.setText(this.mChargerElectronic + " ma");
        } else {
            this.mBatteryTextView.setText("n/a");
        }
        if (this.mChargerVoltage >= 100.0d && this.mIsPlugUSB) {
            this.mElectronicTextView.setText(this.mChargerVoltage + " mv");
        } else {
            this.mElectronicTextView.setText("n/a");
        }
        if (Const.isBoardISharkL210c10() || z) {
            this.mTemperatureTextView.setText((this.mBatteryTemperature / 10.0f) + " ℃");
        }
    }

    public boolean isNum(String str) {
        return str.matches("^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$");
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
        Log.d(TAG, "stopCharge res=" + PhaseCheckParse.getInstance().writeChargeSwitch(0));
    }
}
