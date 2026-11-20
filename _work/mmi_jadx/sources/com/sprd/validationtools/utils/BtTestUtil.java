package com.sprd.validationtools.utils;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.sprd.validationtools.utils.ReflectUtils;

/* loaded from: classes.dex */
public class BtTestUtil {
    private static String TAG = "BtTestUtil";
    private BluetoothAdapter mBluetoothAdapter;
    private BluetoothDiscoveryReceiver btDiscoveryReceiver = null;
    private BlueToothStateReceiver btStateReceiver = null;
    private Context mContext = null;

    public void btDeviceListAdd(BluetoothDevice bluetoothDevice) {
    }

    public void btDiscoveryFinished() {
    }

    public void btStateChange(int i) {
    }

    public BtTestUtil() {
        this.mBluetoothAdapter = null;
        Log.d(TAG, "=btt");
        this.mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    }

    private void registerAllReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        BluetoothDiscoveryReceiver bluetoothDiscoveryReceiver = new BluetoothDiscoveryReceiver();
        this.btDiscoveryReceiver = bluetoothDiscoveryReceiver;
        this.mContext.registerReceiver(bluetoothDiscoveryReceiver, intentFilter);
        this.btStateReceiver = new BlueToothStateReceiver();
        this.mContext.registerReceiver(this.btStateReceiver, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
    }

    private void unregisterAllReceiver() {
        BluetoothDiscoveryReceiver bluetoothDiscoveryReceiver = this.btDiscoveryReceiver;
        if (bluetoothDiscoveryReceiver != null) {
            this.mContext.unregisterReceiver(bluetoothDiscoveryReceiver);
            this.btDiscoveryReceiver = null;
        }
        BlueToothStateReceiver blueToothStateReceiver = this.btStateReceiver;
        if (blueToothStateReceiver != null) {
            this.mContext.unregisterReceiver(blueToothStateReceiver);
            this.btStateReceiver = null;
        }
        this.mContext = null;
    }

    public BluetoothAdapter getBluetoothAdapter() {
        return this.mBluetoothAdapter;
    }

    public void startTest(Context context) throws ReflectUtils.ReflectException {
        if (this.mBluetoothAdapter == null) {
            Log.w(TAG, "startTest mBluetoothAdapter == null");
            return;
        }
        this.mContext = context;
        registerAllReceiver();
        Log.d(TAG, "startTest mBluetoothAdapter isEnabled=" + this.mBluetoothAdapter.isEnabled());
        if (this.mBluetoothAdapter.isEnabled()) {
            btStateChange(12);
            btPageScan();
            btStartDiscovery();
        } else {
            btStateChange(10);
            this.mBluetoothAdapter.enable();
        }
    }

    public void stopTest() {
        if (this.mBluetoothAdapter == null) {
            Log.w(TAG, "stopTest mBluetoothAdapter == null");
            return;
        }
        Log.d(TAG, "stopTest mBluetoothAdapter isEnabled=" + this.mBluetoothAdapter.isEnabled());
        this.mBluetoothAdapter.cancelDiscovery();
        this.mBluetoothAdapter.disable();
        unregisterAllReceiver();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void btStartDiscovery() {
        BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter;
        if (bluetoothAdapter == null) {
            Log.w(TAG, "btPageScan mBluetoothAdapter == null");
        } else if (bluetoothAdapter != null) {
            bluetoothAdapter.startDiscovery();
            Log.w(TAG, "============startDiscovery===============");
        }
    }

    public void btPageScan() throws ReflectUtils.ReflectException {
        BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter;
        if (bluetoothAdapter == null) {
            Log.w(TAG, "btPageScan mBluetoothAdapter == null");
        } else if (bluetoothAdapter != null) {
            ReflectUtils.reflect(bluetoothAdapter).method("setScanMode", 23);
            Log.w(TAG, "============btPageScan SCAN_MODE_CONNECTABLE_DISCOVERABLE===============");
        }
    }

    private class BlueToothStateReceiver extends BroadcastReceiver {
        private BlueToothStateReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws ReflectUtils.ReflectException {
            Log.w(BtTestUtil.TAG, "BlueToothStateReceiver");
            if (BtTestUtil.this.mBluetoothAdapter == null) {
                Log.w(BtTestUtil.TAG, "mBluetoothAdapter == null");
                return;
            }
            int state = BtTestUtil.this.mBluetoothAdapter.getState();
            if (state == 10) {
                BtTestUtil.this.mBluetoothAdapter.enable();
            } else if (state == 12) {
                BtTestUtil.this.btPageScan();
                BtTestUtil.this.btStartDiscovery();
            }
            BtTestUtil.this.btStateChange(state);
        }
    }

    private class BluetoothDiscoveryReceiver extends BroadcastReceiver {
        private BluetoothDiscoveryReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.bluetooth.device.action.FOUND".equals(action)) {
                Log.v(BtTestUtil.TAG, "found bluetooth device");
                BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                if (bluetoothDevice == null) {
                    Log.w(BtTestUtil.TAG, "not find any device");
                    return;
                } else {
                    if (bluetoothDevice.getBondState() != 12) {
                        BtTestUtil.this.btDeviceListAdd(bluetoothDevice);
                        return;
                    }
                    return;
                }
            }
            if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(action)) {
                Log.v(BtTestUtil.TAG, "=============discovery finished !");
                BtTestUtil.this.btDiscoveryFinished();
            }
        }
    }
}
