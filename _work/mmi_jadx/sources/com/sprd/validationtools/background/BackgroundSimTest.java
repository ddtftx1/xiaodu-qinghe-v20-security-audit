package com.sprd.validationtools.background;

import android.content.Context;
import android.os.SystemProperties;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.sprd.validationtools.itemstest.telephony.SIMCardTestActivity;
import com.sprd.validationtools.modules.TestItem;
import com.sprd.validationtools.modules.UnitTestItemList;
import com.sprd.validationtools.utils.SocketUtils;

/* loaded from: classes.dex */
public class BackgroundSimTest implements BackgroundTest {
    private static final String TAG = "BackgroundSimTest";
    private static final String TEST_CLASS_NAME = SIMCardTestActivity.class.getName();
    private Context mContext;
    private int testResult = -1;
    boolean isLaMeiProduct = false;

    @Override // com.sprd.validationtools.background.BackgroundTest
    public int getTestItemIdx() {
        return -1;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public void stopTest() {
    }

    public BackgroundSimTest(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.sprd.validationtools.background.BackgroundSimTest$1] */
    @Override // com.sprd.validationtools.background.BackgroundTest
    public void startTest() {
        new Thread() { // from class: com.sprd.validationtools.background.BackgroundSimTest.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String str = SystemProperties.get("persist.vendor.radio.phone_count", "");
                Log.d(BackgroundSimTest.TAG, "onCreate phoneCount:" + str);
                int i = 0;
                if ("1".equals(str)) {
                    BackgroundSimTest.this.isLaMeiProduct = true;
                } else {
                    BackgroundSimTest.this.isLaMeiProduct = false;
                }
                int phoneCount = BackgroundSimTest.this.isLaMeiProduct ? 1 : TelephonyManager.from(BackgroundSimTest.this.mContext).getPhoneCount();
                if (phoneCount == 1) {
                    if (((TelephonyManager) BackgroundSimTest.this.mContext.getSystemService("phone")).getSimState() == 5) {
                        i = 1;
                    }
                } else {
                    TelephonyManager telephonyManager = (TelephonyManager) BackgroundSimTest.this.mContext.getSystemService("phone");
                    int i2 = 0;
                    while (i < phoneCount) {
                        if (telephonyManager.getSimState(i) == 5) {
                            i2++;
                        }
                        i++;
                    }
                    i = i2;
                }
                Log.d(BackgroundSimTest.TAG, "startTest readyCount=" + i + ",phoneCount=" + phoneCount);
                if (i == phoneCount) {
                    BackgroundSimTest.this.testResult = 1;
                    BackgroundSimTest.this.stopTest();
                }
            }
        }.start();
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public int getResult() {
        return this.testResult;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public String getResultStr() {
        if (1 == this.testResult) {
            return "Sim:PASS";
        }
        return "Sim:" + SocketUtils.FAIL;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public TestItem getTestItem(Context context) {
        return UnitTestItemList.getInstance(this.mContext).getTestItemByClassName(TEST_CLASS_NAME);
    }
}
