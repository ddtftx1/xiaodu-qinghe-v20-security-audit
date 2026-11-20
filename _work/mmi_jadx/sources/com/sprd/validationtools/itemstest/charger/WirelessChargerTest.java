package com.sprd.validationtools.itemstest.charger;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
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
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class WirelessChargerTest extends BaseActivity {
    private static final String CHARGER_STATUS_AC = "/sys/class/power_supply/ac/online";
    private static final String CHARGER_STATUS_USB = "/sys/class/power_supply/usb/online";
    private static final String CHARGING_PROTOCOL = "/sys/class/power_supply/nu1619_wireless_charger/wireless_type";
    private static final String ENG_CHARGER_CURRENT = "/sys/class/power_supply/battery/current_now";
    private static final String ENG_CHARGER_FGU_CURRENT = "/sys/class/power_supply/sc27xx-fgu/current_now";
    private static final String ENG_CHARGER_VOLTAGE = "/sys/class/power_supply/sc27xx-fgu/constant_charge_voltage";
    private static final int NOT_WORKING = 0;
    private static final String PLUGGED = "plugged";
    private static final String STATUS = "status";
    private static final String TAG = "WirelessChargerTest";
    private static final String TEST_RESULT_FAIL = "fail";
    private static final String TEST_RESULT_SUCCESS = "success";
    private static final String VOLTAGE = "voltage";
    private static final String WIRELESS_CHARGER_STATUS = "/sys/class/power_supply/wireless/online";
    private static final int WORKING = 1;
    private int chargerStateWireless;
    private float mBatteryElectronic;
    private TableRow mBatteryElectronicTableRow;
    private TextView mBatteryElectronicTextView;
    private TextView mBatteryTextView;
    private float mChargerElectronic;
    private float mChargerVoltage;
    private TextView mElectronicTextView;
    private Handler mHandler;
    private TextView mTestResultTextView;
    private TextView pluggedTextView;
    private TextView statusTextView;
    private TextView voltageTextView;
    private String mPluggeString = null;
    private boolean mIsPlugWirelsee = false;
    private boolean mIsPlugUSB_AC = false;
    AsyncTask<Void, Void, String> task = null;
    private String mInputCurrent = null;
    private int mRetryNum = 0;
    private int mWaitTime = 0;
    private Runnable mElectronicUpdate = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.WirelessChargerTest.1
        @Override // java.lang.Runnable
        public void run() {
            WirelessChargerTest.this.task = new AsyncTask<Void, Void, String>() { // from class: com.sprd.validationtools.itemstest.charger.WirelessChargerTest.1.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public String doInBackground(Void... voidArr) {
                    return WirelessChargerTest.this.getInputElectronicNewStep();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public void onPostExecute(String str) {
                    WirelessChargerTest.this.chargerStateWireless = Integer.parseInt(WirelessChargerTest.this.readFile(WirelessChargerTest.WIRELESS_CHARGER_STATUS).trim());
                    Log.d(WirelessChargerTest.TAG, "chargerStateWireless = " + WirelessChargerTest.this.chargerStateWireless);
                    Log.d(WirelessChargerTest.TAG, "mElectronicUpdate data,mChargerVoltage=" + WirelessChargerTest.this.mChargerVoltage + ", mChargerElectronic=" + WirelessChargerTest.this.mChargerElectronic + ",testResult:" + str);
                    if (WirelessChargerTest.TEST_RESULT_SUCCESS.equals(str)) {
                        if (WirelessChargerTest.this.chargerStateWireless == 1) {
                            WirelessChargerTest.this.mTestResultTextView.setText(WirelessChargerTest.this.getString(R.string.charger_test_success));
                            WirelessChargerTest.this.mTestResultTextView.setTextColor(-16711936);
                            WirelessChargerTest.this.storeRusult(true);
                            WirelessChargerTest.this.mHandler.postDelayed(WirelessChargerTest.this.mCompleteTest, 2000L);
                            return;
                        }
                        WirelessChargerTest.this.mHandler.postDelayed(WirelessChargerTest.this.mElectronicUpdate, 2000L);
                        return;
                    }
                    if (WirelessChargerTest.this.mIsPlugUSB_AC) {
                        WirelessChargerTest.this.mTestResultTextView.setText(WirelessChargerTest.this.getString(R.string.charger_test_fail));
                        WirelessChargerTest.this.mTestResultTextView.setTextColor(SupportMenu.CATEGORY_MASK);
                        WirelessChargerTest.this.storeRusult(false);
                        WirelessChargerTest.this.mHandler.postDelayed(WirelessChargerTest.this.mCompleteTest, 2000L);
                        return;
                    }
                    if (WirelessChargerTest.this.chargerStateWireless != 1) {
                        WirelessChargerTest.this.mHandler.postDelayed(WirelessChargerTest.this.mElectronicUpdate, 2000L);
                        return;
                    }
                    WirelessChargerTest.access$1008(WirelessChargerTest.this);
                    if (WirelessChargerTest.this.mRetryNum > 5) {
                        WirelessChargerTest.this.mTestResultTextView.setText(WirelessChargerTest.this.getString(R.string.charger_test_fail));
                        WirelessChargerTest.this.mTestResultTextView.setTextColor(SupportMenu.CATEGORY_MASK);
                        WirelessChargerTest.this.storeRusult(false);
                        WirelessChargerTest.this.mHandler.postDelayed(WirelessChargerTest.this.mCompleteTest, 2000L);
                        return;
                    }
                    WirelessChargerTest.this.mWaitTime = WirelessChargerTest.this.mRetryNum * 500;
                    WirelessChargerTest.this.mHandler.post(WirelessChargerTest.this.mElectronicUpdate);
                    Log.d(WirelessChargerTest.TAG, "retry test num:" + WirelessChargerTest.this.mRetryNum + ",wait time is " + WirelessChargerTest.this.mWaitTime);
                }
            };
            WirelessChargerTest.this.task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    };
    private Runnable mCompleteTest = new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.WirelessChargerTest.2
        @Override // java.lang.Runnable
        public void run() {
            WirelessChargerTest.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.WirelessChargerTest.2.1
                @Override // java.lang.Runnable
                public void run() {
                    WirelessChargerTest.this.finish();
                }
            }, 1000L);
        }
    };
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.sprd.validationtools.itemstest.charger.WirelessChargerTest.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Resources.NotFoundException {
            String string;
            if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                int intExtra = intent.getIntExtra("status", 0);
                int intExtra2 = intent.getIntExtra(WirelessChargerTest.PLUGGED, 0);
                int intExtra3 = intent.getIntExtra(WirelessChargerTest.VOLTAGE, 0);
                if (intExtra == 1) {
                    string = WirelessChargerTest.this.getResources().getString(R.string.charger_unknown);
                } else if (intExtra == 2) {
                    string = WirelessChargerTest.this.getResources().getString(R.string.charger_charging);
                } else if (intExtra == 3) {
                    string = WirelessChargerTest.this.getResources().getString(R.string.charger_discharging);
                } else if (intExtra == 4) {
                    string = WirelessChargerTest.this.getResources().getString(R.string.charger_not_charging);
                } else {
                    string = intExtra != 5 ? "" : WirelessChargerTest.this.getResources().getString(R.string.charger_full);
                }
                if (intExtra2 == 1) {
                    WirelessChargerTest.this.mIsPlugUSB_AC = true;
                    WirelessChargerTest wirelessChargerTest = WirelessChargerTest.this;
                    wirelessChargerTest.mPluggeString = wirelessChargerTest.getResources().getString(R.string.charger_ac_plugged);
                    WirelessChargerTest.this.mTestResultTextView.setVisibility(8);
                } else if (intExtra2 == 2) {
                    WirelessChargerTest.this.mIsPlugUSB_AC = true;
                    WirelessChargerTest wirelessChargerTest2 = WirelessChargerTest.this;
                    wirelessChargerTest2.mPluggeString = wirelessChargerTest2.getResources().getString(R.string.charger_usb_plugged);
                    WirelessChargerTest.this.mTestResultTextView.setVisibility(8);
                } else {
                    WirelessChargerTest wirelessChargerTest3 = WirelessChargerTest.this;
                    wirelessChargerTest3.chargerStateWireless = Integer.parseInt(wirelessChargerTest3.readFile(WirelessChargerTest.WIRELESS_CHARGER_STATUS).trim());
                    WirelessChargerTest.this.mTestResultTextView.setTextColor(-1);
                    if (WirelessChargerTest.this.chargerStateWireless == 1) {
                        WirelessChargerTest wirelessChargerTest4 = WirelessChargerTest.this;
                        wirelessChargerTest4.mPluggeString = wirelessChargerTest4.getResources().getString(R.string.charger_wireless_plugged);
                        WirelessChargerTest.this.mTestResultTextView.setText(WirelessChargerTest.this.getString(R.string.charging_test));
                        WirelessChargerTest.this.mTestResultTextView.setVisibility(0);
                    } else {
                        WirelessChargerTest wirelessChargerTest5 = WirelessChargerTest.this;
                        wirelessChargerTest5.mPluggeString = wirelessChargerTest5.getResources().getString(R.string.charger_no_plugged);
                    }
                }
                WirelessChargerTest.this.statusTextView.setText(string);
                WirelessChargerTest.this.pluggedTextView.setText(WirelessChargerTest.this.mPluggeString);
                WirelessChargerTest.this.voltageTextView.setText(Integer.toString(intExtra3) + " mv");
                WirelessChargerTest.this.mBatteryElectronic = Integer.parseInt(r9.readFile(WirelessChargerTest.ENG_CHARGER_FGU_CURRENT).trim()) / 1000;
                WirelessChargerTest.this.mBatteryElectronicTextView.setText(WirelessChargerTest.this.mBatteryElectronic + " ma");
                Log.v("status", string);
                Log.v(WirelessChargerTest.PLUGGED, WirelessChargerTest.this.mPluggeString);
            }
        }
    };

    static /* synthetic */ int access$1008(WirelessChargerTest wirelessChargerTest) {
        int i = wirelessChargerTest.mRetryNum;
        wirelessChargerTest.mRetryNum = i + 1;
        return i;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setTitle(R.string.battery_title_text);
        setContentView(R.layout.battery_wireless_charged_result);
        getWindow().addFlags(524288);
        this.mHandler = new Handler();
        this.statusTextView = (TextView) findViewById(R.id.statusTextView);
        this.pluggedTextView = (TextView) findViewById(R.id.pluggedTextView);
        this.voltageTextView = (TextView) findViewById(R.id.voltageTextView);
        this.mElectronicTextView = (TextView) findViewById(R.id.electronicTextView);
        this.mBatteryTextView = (TextView) findViewById(R.id.batteryelectronicTextView);
        this.mTestResultTextView = (TextView) findViewById(R.id.test_resultTextView);
        this.mBatteryElectronicTextView = (TextView) findViewById(R.id.battery_electronic_tv);
        this.mBatteryElectronicTableRow = (TableRow) findViewById(R.id.TableRow09);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        registerReceiver(this.mBroadcastReceiver, intentFilter);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mBatteryElectronic = Integer.parseInt(readFile(ENG_CHARGER_FGU_CURRENT).trim()) / 1000;
        this.mBatteryElectronicTextView.setText(this.mBatteryElectronic + " ma");
        boolean z = true;
        if (Integer.parseInt(readFile(CHARGER_STATUS_USB).trim()) != 1 && Integer.parseInt(readFile(CHARGER_STATUS_AC).trim()) != 1) {
            z = false;
        }
        this.mIsPlugUSB_AC = z;
        if (z) {
            showTips();
        } else {
            this.mHandler.post(this.mElectronicUpdate);
        }
    }

    private void showTips() {
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(this).setMessage(R.string.wireless_charger_tip).setNegativeButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.sprd.validationtools.itemstest.charger.WirelessChargerTest.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                WirelessChargerTest.this.finish();
            }
        });
        negativeButton.setCancelable(false);
        negativeButton.show();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mHandler.removeCallbacks(this.mElectronicUpdate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getInputElectronicNewStep() throws java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 283
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.charger.WirelessChargerTest.getInputElectronicNewStep():java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initView() {
        this.mBatteryElectronic = Integer.parseInt(readFile(ENG_CHARGER_CURRENT).trim()) / 1000;
        this.mBatteryElectronicTextView.setText(this.mBatteryElectronic + " ma");
        this.mChargerElectronic = getDateFromNode(ENG_CHARGER_FGU_CURRENT) / 1000.0f;
        this.mChargerVoltage = getDateFromNode(ENG_CHARGER_VOLTAGE) / 1000.0f;
        Log.d(TAG, "initView mChargerElectronic=" + this.mChargerElectronic + ",mChargerVoltage=" + this.mChargerVoltage);
        if (this.mChargerElectronic > -40.0d) {
            this.mBatteryTextView.setText(this.mChargerElectronic + " ma");
        } else {
            this.mBatteryTextView.setText("n/a");
        }
        if (this.mChargerVoltage >= 100.0d) {
            this.mElectronicTextView.setText(this.mChargerVoltage + " mv");
        } else {
            this.mElectronicTextView.setText("n/a");
        }
    }

    private float getDateFromNode(String str) throws Throwable {
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
