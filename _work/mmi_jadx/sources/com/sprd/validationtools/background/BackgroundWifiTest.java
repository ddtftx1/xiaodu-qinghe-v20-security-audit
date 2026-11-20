package com.sprd.validationtools.background;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.util.Log;
import com.sprd.validationtools.itemstest.wifi.WifiTestActivity;
import com.sprd.validationtools.modules.TestItem;
import com.sprd.validationtools.modules.UnitTestItemList;
import com.sprd.validationtools.utils.SocketUtils;
import com.sprd.validationtools.utils.WifiTestUtil;
import java.util.List;

/* loaded from: classes.dex */
public class BackgroundWifiTest implements BackgroundTest {
    private static final String TAG = "BackgroundWifiTest";
    private static final String TEST_CLASS_NAME = WifiTestActivity.class.getName();
    private Context mContext;
    private WifiTestUtil wifiTestUtil = null;
    private int testResult = -1;

    @Override // com.sprd.validationtools.background.BackgroundTest
    public int getTestItemIdx() {
        return -1;
    }

    public BackgroundWifiTest(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public void startTest() {
        this.wifiTestUtil = new WifiTestUtil((WifiManager) this.mContext.getSystemService("wifi")) { // from class: com.sprd.validationtools.background.BackgroundWifiTest.1
            @Override // com.sprd.validationtools.utils.WifiTestUtil
            public void wifiDeviceListChange(List<ScanResult> list) {
                if (list != null) {
                    BackgroundWifiTest.this.testResult = 1;
                    BackgroundWifiTest.this.stopTest();
                }
            }
        };
        Log.d(TAG, "startTest begin!");
        this.wifiTestUtil.startTest(this.mContext);
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public void stopTest() {
        Log.d(TAG, "stopTest!");
        this.wifiTestUtil.stopTest();
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public int getResult() {
        return this.testResult;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public String getResultStr() {
        if (1 == this.testResult) {
            return "Wifi:PASS";
        }
        return "Wifi:" + SocketUtils.FAIL;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public TestItem getTestItem(Context context) {
        return UnitTestItemList.getInstance(this.mContext).getTestItemByClassName(TEST_CLASS_NAME);
    }
}
