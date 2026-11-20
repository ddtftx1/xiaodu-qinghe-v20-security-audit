package com.sprd.validationtools.itemstest.bt;

import android.bluetooth.BluetoothDevice;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.MotionEventCompat;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.BtTestUtil;
import com.sprd.validationtools.utils.ReflectUtils;
import com.sprd.validationtools.utils.WcndUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BluetoothTestActivity extends BaseActivity {
    private static final String TAG = "BluetoothTestActivity";
    private List<BluetoothDevice> mBluetoothDeviceList = new ArrayList();
    private TextView tvBtAddr = null;
    private TextView tvBtState = null;
    private TextView tvBtDeviceList = null;
    private BtTestUtil btTestUtil = null;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        WcndUtils.dumpCPLog();
        super.onDestroy();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.w(TAG, "+++++++enter bt+++++++++");
        getWindow().setFlags(128, 128);
        setContentView(R.layout.bluetooth_result);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        getWindow().addFlags(524288);
        this.btTestUtil = new BtTestUtil() { // from class: com.sprd.validationtools.itemstest.bt.BluetoothTestActivity.1
            @Override // com.sprd.validationtools.utils.BtTestUtil
            public void btStateChange(int i) {
                switch (i) {
                    case 10:
                        BluetoothTestActivity.this.tvBtState.setText("Bluetooth OFF");
                        break;
                    case 11:
                        BluetoothTestActivity.this.tvBtState.setText("Bluetooth Opening...");
                        break;
                    case MotionEventCompat.AXIS_RX /* 12 */:
                        BluetoothTestActivity.this.tvBtState.setText("Bluetooth ON,Discovering...");
                        BluetoothTestActivity.this.tvBtAddr.setText(BluetoothTestActivity.this.btTestUtil.getBluetoothAdapter().getAddress() + "\n");
                        break;
                    case MotionEventCompat.AXIS_RY /* 13 */:
                        BluetoothTestActivity.this.tvBtState.setText("Bluetooth Closing");
                        break;
                    default:
                        BluetoothTestActivity.this.tvBtState.setText("Bluetooth state Unknown");
                        break;
                }
            }

            @Override // com.sprd.validationtools.utils.BtTestUtil
            public void btDeviceListAdd(BluetoothDevice bluetoothDevice) {
                String name;
                if (BluetoothTestActivity.this.mBluetoothDeviceList.contains(bluetoothDevice) || bluetoothDevice == null) {
                    return;
                }
                BluetoothTestActivity.this.mBluetoothDeviceList.add(bluetoothDevice);
                if (bluetoothDevice.getBondState() == 12 || (name = bluetoothDevice.getName()) == null || name.isEmpty()) {
                    return;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("device name: ");
                stringBuffer.append(name);
                stringBuffer.append("\n");
                Log.d(BluetoothTestActivity.TAG, "======find bluetooth device => name : " + name + "\n address :" + bluetoothDevice.getAddress());
                BluetoothTestActivity.this.tvBtDeviceList.append(stringBuffer.toString());
            }

            @Override // com.sprd.validationtools.utils.BtTestUtil
            public void btDiscoveryFinished() {
                if (BluetoothTestActivity.this.mBluetoothDeviceList != null && BluetoothTestActivity.this.mBluetoothDeviceList.size() > 0) {
                    Toast.makeText(BluetoothTestActivity.this, R.string.text_pass, 0).show();
                    BluetoothTestActivity.this.storeRusult(true);
                } else {
                    Toast.makeText(BluetoothTestActivity.this, R.string.text_fail, 0).show();
                    BluetoothTestActivity.this.storeRusult(false);
                }
                BluetoothTestActivity.this.btTestUtil.stopTest();
                BluetoothTestActivity.this.finish();
            }
        };
        this.tvBtAddr = (TextView) findViewById(R.id.bt_addr_content);
        this.tvBtState = (TextView) findViewById(R.id.bt_state_content);
        this.tvBtDeviceList = (TextView) findViewById(R.id.tv_bt_device_list);
        if (this.btTestUtil.getBluetoothAdapter() != null) {
            this.tvBtAddr.setText(this.btTestUtil.getBluetoothAdapter().getAddress() + "\n");
        } else {
            this.tvBtAddr.setText("NA");
            Log.w(TAG, "onCreate mBluetoothAdapter == null");
        }
    }

    @Override // android.app.Activity
    protected void onResume() throws ReflectUtils.ReflectException {
        super.onResume();
        this.btTestUtil.startTest(this);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.btTestUtil.stopTest();
    }
}
