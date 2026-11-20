package com.sprd.validationtools.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.SystemClock;
import android.util.Log;
import java.util.List;

/* loaded from: classes.dex */
public class WifiTestUtil {
    private static final int DELAY_TIME = 5000;
    private static String TAG = "WifiTestUtil";
    private WifiManager mWifiManager;
    private Context mContext = null;
    private int mLastCount = 0;
    private WifiStateChangeReceiver mWifiStateChangeReceiver = null;
    private WifiScanReceiver mWifiScanReceiver = null;
    private StartScanThread mStartScanThread = null;

    public void wifiDeviceListChange(List<ScanResult> list) {
    }

    public void wifiDiscoveryFinished() {
    }

    public void wifiStateChange(int i) {
    }

    public WifiTestUtil(WifiManager wifiManager) {
        this.mWifiManager = null;
        this.mWifiManager = wifiManager;
    }

    private void registerAllReceiver() {
        this.mWifiStateChangeReceiver = new WifiStateChangeReceiver();
        this.mContext.registerReceiver(this.mWifiStateChangeReceiver, new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED"));
        this.mWifiScanReceiver = new WifiScanReceiver();
        this.mContext.registerReceiver(this.mWifiScanReceiver, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
    }

    private void unregisterAllReceiver() {
        WifiStateChangeReceiver wifiStateChangeReceiver = this.mWifiStateChangeReceiver;
        if (wifiStateChangeReceiver != null) {
            this.mContext.unregisterReceiver(wifiStateChangeReceiver);
            this.mWifiStateChangeReceiver = null;
        }
        WifiScanReceiver wifiScanReceiver = this.mWifiScanReceiver;
        if (wifiScanReceiver != null) {
            this.mContext.unregisterReceiver(wifiScanReceiver);
            this.mWifiScanReceiver = null;
        }
        this.mContext = null;
    }

    public WifiManager getWifiManager() {
        return this.mWifiManager;
    }

    public void startTest(Context context) {
        this.mContext = context;
        registerAllReceiver();
        Log.d(TAG, "startTest mWifiManager.isWifiEnabled=" + this.mWifiManager.isWifiEnabled());
        if (this.mWifiManager.isWifiEnabled()) {
            wifiStateChange(3);
            wifiStartDiscovery();
        } else {
            wifiStateChange(1);
            this.mWifiManager.setWifiEnabled(true);
        }
    }

    public void stopTest() {
        unregisterAllReceiver();
        Log.d(TAG, "stopTest! mWifiManager.isWifiEnabled=" + this.mWifiManager.isWifiEnabled());
        this.mWifiManager.setWifiEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wifiStartDiscovery() {
        if (this.mWifiManager != null) {
            StartScanThread startScanThread = new StartScanThread();
            this.mStartScanThread = startScanThread;
            startScanThread.start();
            Log.w(TAG, "============startDiscovery===============");
        }
    }

    private class WifiStateChangeReceiver extends BroadcastReceiver {
        private WifiStateChangeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int wifiState = WifiTestUtil.this.mWifiManager.getWifiState();
            Log.d(WifiTestUtil.TAG, "" + wifiState);
            if (wifiState == 3) {
                WifiTestUtil.this.wifiStartDiscovery();
            }
            WifiTestUtil.this.wifiStateChange(wifiState);
        }
    }

    private class WifiScanReceiver extends BroadcastReceiver {
        private WifiScanReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            List<ScanResult> scanResults;
            if (!intent.getAction().equals("android.net.wifi.SCAN_RESULTS") || (scanResults = WifiTestUtil.this.mWifiManager.getScanResults()) == null || scanResults.size() == WifiTestUtil.this.mLastCount) {
                return;
            }
            WifiTestUtil.this.wifiDeviceListChange(scanResults);
            WifiTestUtil.this.mLastCount = scanResults.size();
        }
    }

    class StartScanThread extends Thread {
        StartScanThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                SystemClock.sleep(5000L);
                WifiTestUtil.this.mWifiManager.startScan();
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }
    }

    public String getMacAddress(Context context) {
        String[] factoryMacAddresses = ((WifiManager) context.getSystemService("wifi")).getFactoryMacAddresses();
        String str = (factoryMacAddresses == null || factoryMacAddresses.length <= 0) ? "" : factoryMacAddresses[0];
        Log.d(TAG, "getMacAddress getFactoryMacAddresses wifiMac=" + str);
        return str;
    }
}
