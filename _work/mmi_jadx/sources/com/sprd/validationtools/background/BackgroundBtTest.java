package com.sprd.validationtools.background;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.util.Log;
import com.sprd.validationtools.itemstest.bt.BluetoothTestActivity;
import com.sprd.validationtools.modules.TestItem;
import com.sprd.validationtools.modules.UnitTestItemList;
import com.sprd.validationtools.utils.BtTestUtil;
import com.sprd.validationtools.utils.ReflectUtils;
import com.sprd.validationtools.utils.SocketUtils;

/* loaded from: classes.dex */
public class BackgroundBtTest implements BackgroundTest {
    private static final String TAG = "BackgroundBtTest";
    private static final String TEST_CLASS_NAME = BluetoothTestActivity.class.getName();
    private Context mContext;
    private BtTestUtil mBtTestUtil = null;
    private int testResult = -1;

    @Override // com.sprd.validationtools.background.BackgroundTest
    public int getTestItemIdx() {
        return -1;
    }

    public BackgroundBtTest(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public void startTest() throws ReflectUtils.ReflectException {
        this.mBtTestUtil = new BtTestUtil() { // from class: com.sprd.validationtools.background.BackgroundBtTest.1
            boolean mIsPass = false;

            @Override // com.sprd.validationtools.utils.BtTestUtil
            public void btDeviceListAdd(BluetoothDevice bluetoothDevice) {
                if (bluetoothDevice == null || bluetoothDevice.getBondState() == 12) {
                    return;
                }
                BackgroundBtTest.this.testResult = 1;
                this.mIsPass = true;
                BackgroundBtTest.this.stopTest();
            }

            @Override // com.sprd.validationtools.utils.BtTestUtil
            public void btDiscoveryFinished() {
                if (this.mIsPass) {
                    return;
                }
                BackgroundBtTest.this.testResult = 0;
                BackgroundBtTest.this.stopTest();
            }
        };
        Log.d(TAG, "startTest begin!");
        this.mBtTestUtil.startTest(this.mContext);
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public void stopTest() {
        Log.d(TAG, "stopTest!");
        this.mBtTestUtil.stopTest();
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public int getResult() {
        return this.testResult;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public String getResultStr() {
        if (1 == this.testResult) {
            return "BlueTooth:PASS";
        }
        return "BlueTooth:" + SocketUtils.FAIL;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public TestItem getTestItem(Context context) {
        return UnitTestItemList.getInstance(this.mContext).getTestItemByClassName(TEST_CLASS_NAME);
    }
}
