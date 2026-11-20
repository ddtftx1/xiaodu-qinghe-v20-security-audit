package com.sprd.validationtools.itemstest.telephony;

import android.os.Bundle;
import android.os.Handler;
import android.os.SystemProperties;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SIMCardTestActivity extends BaseActivity {
    private static final String TAG = "SIMCardTestActivity";
    private LinearLayout container;
    private int phoneCount;
    private TelephonyManager telMgr;
    private int mSimReadyCount = 0;
    public Handler mHandler = new Handler();
    boolean isSingleMeiProduct = false;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sim_card_test);
        String str = SystemProperties.get("persist.vendor.radio.phone_count", "");
        Log.d(TAG, "onCreate phoneCount:" + str);
        if ("1".equals(str)) {
            this.isSingleMeiProduct = true;
        } else {
            this.isSingleMeiProduct = false;
        }
        setTitle(R.string.sim_card_test_tittle);
        getWindow().addFlags(1024);
        this.container = (LinearLayout) findViewById(R.id.sim_test_result_container);
        setTitle(R.string.sim_card_test_tittle);
        if (this.isSingleMeiProduct) {
            this.phoneCount = 1;
        } else {
            this.phoneCount = TelephonyManager.from(this).getPhoneCount();
        }
        showDevice();
        Log.d(TAG, "onCreate phoneCount=" + this.phoneCount + ",mSimReadyCount=" + this.mSimReadyCount);
        if (this.phoneCount == this.mSimReadyCount) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.telephony.SIMCardTestActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(SIMCardTestActivity.this, R.string.text_pass, 0).show();
                    SIMCardTestActivity.this.storeRusult(true);
                    SIMCardTestActivity.this.finish();
                }
            }, 1000L);
        } else {
            this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.telephony.SIMCardTestActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(SIMCardTestActivity.this, R.string.text_fail, 0).show();
                    SIMCardTestActivity.this.storeRusult(false);
                    SIMCardTestActivity.this.finish();
                }
            }, 1000L);
        }
    }

    private List<String> getResultList(int i) {
        ArrayList arrayList = new ArrayList();
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone" + i);
        this.telMgr = telephonyManager;
        if (telephonyManager == null) {
            TelephonyManager telephonyManager2 = (TelephonyManager) getSystemService("phone");
            this.telMgr = telephonyManager2;
            if (telephonyManager2 == null) {
                return null;
            }
        }
        int[] subId = SubscriptionManager.getSubId(i);
        if (subId == null || subId.length <= 0) {
            return null;
        }
        int i2 = subId[0];
        if (this.telMgr.getSimState(i) == 5) {
            arrayList.add("fine");
            this.mSimReadyCount++;
        } else if (this.telMgr.getSimState(i) == 1) {
            arrayList.add("no SIM card");
        } else {
            arrayList.add("locked/unknow");
        }
        if (TelephonyManager.getSimCountryIsoForPhone(i).equals("")) {
            arrayList.add("can not get country");
        } else {
            arrayList.add(TelephonyManager.getSimCountryIsoForPhone(i));
        }
        if (this.telMgr.getSimOperatorNumericForPhone(i).equals("")) {
            arrayList.add("can not get operator");
        } else {
            arrayList.add(this.telMgr.getSimOperatorNumericForPhone(i));
        }
        if (this.telMgr.getSimOperatorNameForPhone(i).equals("")) {
            arrayList.add("can not get operator name");
        } else {
            arrayList.add(this.telMgr.getSimOperatorNameForPhone(i));
        }
        if (this.telMgr.getSimSerialNumber(i2) != null && SubscriptionManager.isValidSubscriptionId(i2)) {
            arrayList.add(this.telMgr.getSimSerialNumber(i2));
        } else {
            arrayList.add("can not get serial number");
        }
        if (this.telMgr.getSubscriberId(i2) != null && SubscriptionManager.isValidSubscriptionId(i2)) {
            arrayList.add(this.telMgr.getSubscriberId(i2));
        } else {
            arrayList.add("can not get subscriber id");
        }
        if (this.telMgr.getDeviceId(i) != null) {
            arrayList.add(this.telMgr.getDeviceId(i));
        } else {
            arrayList.add("can not get device id");
        }
        if (this.telMgr.getLine1Number(i2) != null && SubscriptionManager.isValidSubscriptionId(i2)) {
            arrayList.add(this.telMgr.getLine1Number(i2));
        } else {
            arrayList.add("can not get phone number");
        }
        if (TelephonyManager.getPhoneType(i) == 0) {
            arrayList.add("NONE");
        } else if (TelephonyManager.getPhoneType(i) == 1) {
            arrayList.add("GSM");
        } else if (TelephonyManager.getPhoneType(i) == 2) {
            arrayList.add("CDMA");
        } else if (TelephonyManager.getPhoneType(i) == 3) {
            arrayList.add("SIP");
        }
        if (this.telMgr.getDataState() == 0) {
            arrayList.add("disconnected");
        } else if (this.telMgr.getDataState() == 1) {
            arrayList.add("connecting");
        } else if (this.telMgr.getDataState() == 2) {
            arrayList.add("connected");
        } else if (this.telMgr.getDataState() == 3) {
            arrayList.add("suspended");
        }
        if (this.telMgr.getDataActivity() == 0) {
            arrayList.add("none");
        } else if (this.telMgr.getDataActivity() == 1) {
            arrayList.add("in");
        } else if (this.telMgr.getDataActivity() == 2) {
            arrayList.add("out");
        } else if (this.telMgr.getDataActivity() == 3) {
            arrayList.add("in/out");
        } else if (this.telMgr.getDataActivity() == 4) {
            arrayList.add("dormant");
        }
        if (!this.telMgr.getNetworkCountryIsoForPhone(i).equals("")) {
            arrayList.add(this.telMgr.getNetworkCountryIsoForPhone(i));
        } else {
            arrayList.add("can not get network country");
        }
        if (!this.telMgr.getNetworkOperatorForPhone(i).equals("")) {
            arrayList.add(this.telMgr.getNetworkOperatorForPhone(i));
        } else {
            arrayList.add("can not get network operator");
        }
        if (this.telMgr.getNetworkType(i2) == 0) {
            arrayList.add("unknow");
        } else if (this.telMgr.getNetworkType(i2) == 1) {
            arrayList.add("gprs");
        } else if (this.telMgr.getNetworkType(i2) == 2) {
            arrayList.add("edge");
        } else if (this.telMgr.getNetworkType(i2) == 3) {
            arrayList.add("umts");
        } else if (this.telMgr.getNetworkType(i2) == 4) {
            arrayList.add("hsdpa");
        } else if (this.telMgr.getNetworkType(i2) == 5) {
            arrayList.add("hsupa");
        } else if (this.telMgr.getNetworkType(i2) == 6) {
            arrayList.add("hspa");
        } else if (this.telMgr.getNetworkType(i2) == 7) {
            arrayList.add("cdma");
        } else if (this.telMgr.getNetworkType(i2) == 8) {
            arrayList.add("evdo 0");
        } else if (this.telMgr.getNetworkType(i2) == 9) {
            arrayList.add("evdo a");
        } else if (this.telMgr.getNetworkType(i2) == 10) {
            arrayList.add("evdo b");
        } else if (this.telMgr.getNetworkType(i2) == 11) {
            arrayList.add("1xrtt");
        } else if (this.telMgr.getNetworkType(i2) == 12) {
            arrayList.add("iden");
        } else if (this.telMgr.getNetworkType(i2) == 13) {
            arrayList.add("lte");
        } else if (this.telMgr.getNetworkType(i2) == 14) {
            arrayList.add("ehrpd");
        } else if (this.telMgr.getNetworkType(i2) == 15) {
            arrayList.add("hspap");
        }
        return arrayList;
    }

    private List<String> getKeyList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("Sim State:  ");
        arrayList.add("Sim Country:  ");
        arrayList.add("Sim Operator:  ");
        arrayList.add("Sim Operator Name:  ");
        arrayList.add("Sim Serial Number:  ");
        arrayList.add("Subscriber Id:  ");
        arrayList.add("Device Id:  ");
        arrayList.add("Line 1 Number:  ");
        arrayList.add("Phone Type:  ");
        arrayList.add("Data State:  ");
        arrayList.add("Data Activity:  ");
        arrayList.add("Network Country:  ");
        arrayList.add("Network Operator:  ");
        arrayList.add("Network Type:  ");
        return arrayList;
    }

    private void showDevice() {
        List<String> keyList = getKeyList();
        int i = 0;
        while (i < this.phoneCount) {
            TextView textView = new TextView(this);
            if (i != 0) {
                textView.append("\n\n");
            }
            int i2 = i + 1;
            textView.append("Sim" + i2 + " " + getResources().getString(R.string.sim_test_result) + ":\n");
            List<String> resultList = getResultList(i);
            for (int i3 = 0; i3 < 14; i3++) {
                if (resultList != null) {
                    textView.append(keyList.get(i3) + resultList.get(i3) + "\n");
                } else {
                    textView.append(keyList.get(i3) + "\n");
                }
            }
            this.container.addView(textView);
            i = i2;
        }
    }
}
