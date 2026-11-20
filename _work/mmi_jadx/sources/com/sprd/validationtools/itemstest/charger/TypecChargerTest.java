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
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class TypecChargerTest extends BaseActivity {
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
    private static final String TAG = "TypecChargerTest";
    private static final String TEST_RESULT_FAIL = "fail";
    private static final String TEST_RESULT_SUCCESS = "success";
    private static final String VOLTAGE = "voltage";
    private String cc;
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
    private TextView typeCinfo;
    private TextView voltageTextView;
    private static final String ENG_REAL_BATTERY_TEMPERATURE = "sys/class/power_supply/sc27xx-fgu/temp";
    private static final boolean ENABLE_BATTRY_TEMPERATURE = FileUtils.fileIsExists(ENG_REAL_BATTERY_TEMPERATURE);
    private String mBatteryTypeId = "";
    private TableRow mBatteryTypeIdTableRow = null;
    private TextView mBatteryTypeIdTextView = null;
    private String mPluggeString = null;
    private boolean mIsPlugUSB = false;
    private boolean CC1flag = false;
    private boolean CC2flag = false;
    private boolean mIsSupportK414 = false;
    AsyncTask<Void, Void, String> task = null;
    private boolean isTypeC_0 = false;
    private boolean isTypeC_1 = false;
    private String mTypeCNode = "/sys/devices/platform/soc/soc:aon/64200000.spi/spi_master/spi4/spi4.0/64200000.spi:pmic@0:typec@380/typec_cc_polarity_role";
    private Runnable mRealtimeShow = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.TypecChargerTest.1
        @Override // java.lang.Runnable
        public void run() {
            TypecChargerTest.this.mHandler.removeCallbacks(this);
            TypecChargerTest.this.initView();
            TypecChargerTest.this.mHandler.postDelayed(this, 1000L);
        }
    };
    private String mInputCurrent = null;
    private int mRetryNum = 0;
    private int mWaitTime = 3000;
    private Runnable mElectronicUpdate = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.TypecChargerTest.2
        @Override // java.lang.Runnable
        public void run() {
            if (Const.isBoardISharkL210c10()) {
                TypecChargerTest typecChargerTest = TypecChargerTest.this;
                typecChargerTest.mBatteryTypeId = typecChargerTest.readFile(TypecChargerTest.FD_BATTERY_ID).trim();
                Log.d(TypecChargerTest.TAG, "mBatteryTypeId=" + TypecChargerTest.this.mBatteryTypeId);
                if (TypecChargerTest.this.mBatteryTypeIdTextView != null && !TextUtils.isEmpty(TypecChargerTest.this.mBatteryTypeId)) {
                    String string = TypecChargerTest.this.getString(R.string.battery_type_id);
                    Log.d(TypecChargerTest.TAG, "text =" + string);
                    TypecChargerTest.this.mBatteryTypeIdTextView.setText(string + (TypecChargerTest.this.mBatteryTypeId.equals("0") ? TypecChargerTest.ID_BYD : TypecChargerTest.ID_BAK));
                }
            }
            TypecChargerTest.this.task = new AsyncTask<Void, Void, String>() { // from class: com.sprd.validationtools.itemstest.charger.TypecChargerTest.2.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public String doInBackground(Void... voidArr) {
                    return TypecChargerTest.this.getInputElectronicNewStep();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public void onPostExecute(String str) {
                    Log.d(TypecChargerTest.TAG, "mElectronicUpdate data,mChargerVoltage=" + TypecChargerTest.this.mChargerVoltage + ", mChargerElectronic=" + TypecChargerTest.this.mChargerElectronic + ", mBatteryTemperature=" + TypecChargerTest.this.mBatteryTemperature + ",testResult:" + str);
                    if (TypecChargerTest.TEST_RESULT_SUCCESS.equals(str)) {
                        if (TypecChargerTest.this.mIsPlugUSB) {
                            TypecChargerTest.this.mTestResultTextView.setText(TypecChargerTest.this.getString(R.string.charger_test_success));
                            TypecChargerTest.this.mTestResultTextView.setTextColor(-16711936);
                            if (!Const.isBoardISharkL210c10()) {
                                if (TypecChargerTest.this.cc.contains("cc_1")) {
                                    TypecChargerTest.this.CC1flag = true;
                                }
                                if (TypecChargerTest.this.cc.contains("cc_2")) {
                                    TypecChargerTest.this.CC2flag = true;
                                }
                                Log.d(TypecChargerTest.TAG, "CC1flag=" + TypecChargerTest.this.CC1flag + "CC2flag=" + TypecChargerTest.this.CC2flag);
                                if (!TypecChargerTest.this.CC1flag || !TypecChargerTest.this.CC2flag) {
                                    TypecChargerTest.this.mHandler.postDelayed(TypecChargerTest.this.mElectronicUpdate, 2000L);
                                    return;
                                } else {
                                    TypecChargerTest.this.storeRusult(true);
                                    TypecChargerTest.this.mHandler.postDelayed(TypecChargerTest.this.mCompleteTest, 1000L);
                                    return;
                                }
                            }
                            TypecChargerTest.this.setPassBtnEnabled(true);
                            return;
                        }
                        TypecChargerTest.this.mHandler.postDelayed(TypecChargerTest.this.mElectronicUpdate, 2000L);
                        return;
                    }
                    if (!TypecChargerTest.this.mIsPlugUSB) {
                        TypecChargerTest.this.mHandler.postDelayed(TypecChargerTest.this.mElectronicUpdate, 2000L);
                        return;
                    }
                    TypecChargerTest.access$1608(TypecChargerTest.this);
                    if (TypecChargerTest.this.mRetryNum > 5) {
                        TypecChargerTest.this.mTestResultTextView.setText(TypecChargerTest.this.getString(R.string.charger_test_fail));
                        TypecChargerTest.this.mTestResultTextView.setTextColor(SupportMenu.CATEGORY_MASK);
                        TypecChargerTest.this.storeRusult(false);
                        TypecChargerTest.this.mHandler.postDelayed(TypecChargerTest.this.mCompleteTest, 1000L);
                        return;
                    }
                    TypecChargerTest.this.mWaitTime = TypecChargerTest.this.mRetryNum * 500;
                    TypecChargerTest.this.mHandler.post(TypecChargerTest.this.mElectronicUpdate);
                    Log.d(TypecChargerTest.TAG, "retry test num:" + TypecChargerTest.this.mRetryNum + ",wait time is " + TypecChargerTest.this.mWaitTime);
                }
            };
            TypecChargerTest.this.task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    };
    private Runnable mCompleteTest = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.TypecChargerTest.3
        @Override // java.lang.Runnable
        public void run() {
            if (!Const.isBoardISharkL210c10()) {
                TypecChargerTest.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.TypecChargerTest.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TypecChargerTest.this.finish();
                    }
                }, 1000L);
            } else {
                Log.d("", "isBoardISharkL210c10 is return!");
            }
        }
    };
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.sprd.validationtools.itemstest.charger.TypecChargerTest.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Resources.NotFoundException, IOException {
            String string;
            if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                int intExtra = intent.getIntExtra("status", 0);
                int intExtra2 = intent.getIntExtra(TypecChargerTest.PLUGGED, 0);
                int intExtra3 = intent.getIntExtra(TypecChargerTest.VOLTAGE, 0);
                if (intExtra == 1) {
                    string = TypecChargerTest.this.getResources().getString(R.string.charger_unknown);
                } else if (intExtra == 2) {
                    string = TypecChargerTest.this.getResources().getString(R.string.charger_charging);
                } else if (intExtra == 3) {
                    string = TypecChargerTest.this.getResources().getString(R.string.charger_discharging);
                } else if (intExtra == 4) {
                    string = TypecChargerTest.this.getResources().getString(R.string.charger_not_charging);
                } else {
                    string = intExtra != 5 ? "" : TypecChargerTest.this.getResources().getString(R.string.charger_full);
                }
                if (intExtra2 == 1) {
                    TypecChargerTest.this.mIsPlugUSB = true;
                    TypecChargerTest typecChargerTest = TypecChargerTest.this;
                    typecChargerTest.mPluggeString = typecChargerTest.getResources().getString(R.string.charger_ac_plugged);
                    TypecChargerTest.this.mTestResultTextView.setVisibility(0);
                    TypecChargerTest.this.getcc();
                } else if (intExtra2 != 2) {
                    TypecChargerTest.this.mIsPlugUSB = false;
                    TypecChargerTest typecChargerTest2 = TypecChargerTest.this;
                    typecChargerTest2.mPluggeString = typecChargerTest2.getResources().getString(R.string.charger_no_plugged);
                    TypecChargerTest.this.mTestResultTextView.setText(TypecChargerTest.this.getString(R.string.charging_test));
                    TypecChargerTest.this.mTestResultTextView.setTextColor(-1);
                    TypecChargerTest.this.mTestResultTextView.setVisibility(8);
                    if (string.equals(TypecChargerTest.this.getString(R.string.charger_charging))) {
                        string = TypecChargerTest.this.getResources().getString(R.string.charger_discharging);
                        Log.d(TypecChargerTest.TAG, "Correct the error displays charge status.");
                    }
                } else {
                    TypecChargerTest.this.mIsPlugUSB = true;
                    TypecChargerTest typecChargerTest3 = TypecChargerTest.this;
                    typecChargerTest3.mPluggeString = typecChargerTest3.getResources().getString(R.string.charger_usb_plugged);
                    TypecChargerTest.this.mTestResultTextView.setVisibility(0);
                    TypecChargerTest.this.getcc();
                }
                TypecChargerTest.this.statusTextView.setText(string);
                TypecChargerTest.this.pluggedTextView.setText(TypecChargerTest.this.mPluggeString);
                TypecChargerTest.this.voltageTextView.setText(Integer.toString(intExtra3) + " mv");
                if (TypecChargerTest.ENABLE_BATTRY_TEMPERATURE) {
                    TypecChargerTest.this.mBatteryElectronicTextView.setText((Integer.parseInt(TypecChargerTest.this.readFile(TypecChargerTest.ENG_CHARGER_FGU_CURRENT_K414).trim()) / 1000) + " ma");
                    TypecChargerTest typecChargerTest4 = TypecChargerTest.this;
                    typecChargerTest4.mBatteryTemperature = typecChargerTest4.getDateFromNode(TypecChargerTest.ENG_REAL_BATTERY_TEMPERATURE);
                    TypecChargerTest.this.mTemperatureTextView.setText((TypecChargerTest.this.mBatteryTemperature / 10.0f) + " ℃");
                }
                Log.v("status", string);
                Log.v(TypecChargerTest.PLUGGED, TypecChargerTest.this.mPluggeString);
            }
        }
    };

    static /* synthetic */ int access$1608(TypecChargerTest typecChargerTest) {
        int i = typecChargerTest.mRetryNum;
        typecChargerTest.mRetryNum = i + 1;
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
        setTitle(R.string.TypeC_Charger_Test);
        setContentView(R.layout.typec_charger_result);
        getWindow().addFlags(524288);
        this.mHandler = new Handler();
        initSupportK414();
        TextView textView = (TextView) findViewById(R.id.hall_tip);
        this.typeCinfo = textView;
        textView.setText("请将设备正反插入USB充电线");
        new IntentFilter().addAction("android.intent.action.BATTERY_CHANGED");
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
                this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.TypecChargerTest.4
                    @Override // java.lang.Runnable
                    public void run() {
                        TypecChargerTest.this.initView();
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
            this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.TypecChargerTest.5
                @Override // java.lang.Runnable
                public void run() {
                    TypecChargerTest.this.mBatteryTextView.setText(i + " ma");
                    if (TypecChargerTest.ENABLE_BATTRY_TEMPERATURE) {
                        TypecChargerTest.this.mBatteryElectronicTextView.setText((Integer.parseInt(TypecChargerTest.this.readFile(TypecChargerTest.ENG_CHARGER_FGU_CURRENT_K414).trim()) / 1000) + " ma");
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
            this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.TypecChargerTest.6
                @Override // java.lang.Runnable
                public void run() {
                    TypecChargerTest.this.mBatteryTextView.setText(i3 + " ma");
                    if (TypecChargerTest.ENABLE_BATTRY_TEMPERATURE) {
                        TypecChargerTest.this.mBatteryElectronicTextView.setText((Integer.parseInt(TypecChargerTest.this.readFile(TypecChargerTest.ENG_CHARGER_FGU_CURRENT_K414).trim()) / 1000) + " ma");
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

    /* JADX INFO: Access modifiers changed from: private */
    public void getcc() throws IOException {
        String infoByPath = getInfoByPath(this.mTypeCNode);
        this.cc = infoByPath;
        if (infoByPath.contains("cc_2")) {
            this.isTypeC_0 = true;
        } else if (this.cc.contains("cc_1")) {
            this.isTypeC_1 = true;
        }
        this.typeCinfo.setText("type c status :" + this.cc);
    }

    private boolean typec() {
        return this.isTypeC_0 && this.isTypeC_1;
    }

    private String getInfoByPath(String str) throws IOException {
        Log.d(TAG, "path:" + str);
        String str2 = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(str)));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                str2 = str2 + "\n" + line;
            }
            bufferedReader.close();
        } catch (FileNotFoundException e) {
            Log.e(TAG, "FileNotFoundException");
            e.printStackTrace();
        } catch (IOException e2) {
            Log.e(TAG, "IOException");
            e2.printStackTrace();
        }
        return str2;
    }
}
