package com.sprd.validationtools.itemstest.wifi;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.WcndUtils;
import com.sprd.validationtools.utils.WifiTestUtil;
import java.util.List;

/* loaded from: classes.dex */
public class WifiTestActivity extends BaseActivity {
    private static final int BAND_5_GHZ_END_FREQ_MHZ = 5865;
    private static final int BAND_5_GHZ_START_FREQ_MHZ = 5160;
    private static final String TAG = "WifiTestActivity";
    private static final int TIMEOUT = 20000;
    private TextView tvWifiAddr = null;
    private TextView tvWifiState = null;
    private TextView tvWifiDeviceList = null;
    private WifiTestUtil wifiTestUtil = null;
    private boolean mFindFlag = false;
    public Handler mHandler = new Handler();
    private WifiManager mWifiManager = null;
    private boolean mIs5GHzBandSupported = false;
    private Runnable mR = new Runnable() { // from class: com.sprd.validationtools.itemstest.wifi.WifiTestActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (WifiTestActivity.this.mFindFlag) {
                Toast.makeText(WifiTestActivity.this, R.string.text_pass, 0).show();
                WifiTestActivity.this.storeRusult(true);
            } else {
                Toast.makeText(WifiTestActivity.this, R.string.text_fail, 0).show();
                WifiTestActivity.this.storeRusult(false);
            }
            WifiTestActivity.this.mHandler.removeCallbacks(WifiTestActivity.this.mR);
            WifiTestActivity.this.wifiTestUtil.stopTest();
            WifiTestActivity.this.finish();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public boolean is5GHz(int i) {
        return i >= BAND_5_GHZ_START_FREQ_MHZ && i <= BAND_5_GHZ_END_FREQ_MHZ;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        WcndUtils.dumpCPLog();
        this.mHandler.removeCallbacks(this.mR);
        this.wifiTestUtil.stopTest();
        super.onDestroy();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.wifi_test_main);
        getWindow().addFlags(524288);
        getWindow().addFlags(1024);
        setTitle(R.string.wifi_test);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        this.mWifiManager = (WifiManager) getSystemService("wifi");
        this.wifiTestUtil = new WifiTestUtil(this.mWifiManager) { // from class: com.sprd.validationtools.itemstest.wifi.WifiTestActivity.2
            @Override // com.sprd.validationtools.utils.WifiTestUtil
            public void wifiStateChange(int i) {
                Log.d(WifiTestActivity.TAG, "wifiStateChange newState=" + i);
                if (i == 0) {
                    WifiTestActivity.this.tvWifiState.setText("Wifi Closing");
                    return;
                }
                if (i == 1) {
                    WifiTestActivity.this.tvWifiState.setText("Wifi OFF");
                    return;
                }
                if (i == 2) {
                    WifiTestActivity.this.tvWifiState.setText("Wifi Opening");
                } else {
                    if (i != 3) {
                        WifiTestActivity.this.tvWifiState.setText("Wifi state Unknown");
                        return;
                    }
                    WifiTestActivity.this.tvWifiState.setText("Wifi ON,Discovering...");
                    WifiTestActivity wifiTestActivity = WifiTestActivity.this;
                    wifiTestActivity.mIs5GHzBandSupported = wifiTestActivity.mWifiManager.is5GHzBandSupported();
                }
            }

            @Override // com.sprd.validationtools.utils.WifiTestUtil
            public void wifiDeviceListChange(List<ScanResult> list) {
                if (list == null) {
                    return;
                }
                WifiTestActivity.this.tvWifiDeviceList.setText("");
                Log.d(WifiTestActivity.TAG, "wifiDeviceListChange mIs5GHzBandSupported=" + WifiTestActivity.this.mIs5GHzBandSupported);
                boolean z = false;
                boolean z2 = false;
                for (ScanResult scanResult : list) {
                    WifiTestActivity.this.tvWifiDeviceList.append("device name: ");
                    WifiTestActivity.this.tvWifiDeviceList.append(scanResult.SSID);
                    WifiTestActivity.this.tvWifiDeviceList.append("\nsignal level: ");
                    WifiTestActivity.this.tvWifiDeviceList.append(String.valueOf(scanResult.level));
                    WifiTestActivity.this.tvWifiDeviceList.append("\n\n");
                    Log.d(WifiTestActivity.TAG, "wifiDeviceListChange result=" + scanResult.toString());
                    if (!WifiTestActivity.this.mIs5GHzBandSupported) {
                        WifiTestActivity.this.mFindFlag = true;
                    } else {
                        int i = scanResult.frequency;
                        Log.d(WifiTestActivity.TAG, "wifiDeviceListChange frequency" + i);
                        if (WifiTestActivity.this.is5GHz(i)) {
                            Log.d(WifiTestActivity.TAG, "is support 5GHz");
                            z = true;
                        } else {
                            z2 = true;
                        }
                        WifiTestActivity.this.mFindFlag = z && z2;
                    }
                }
            }
        };
        this.tvWifiAddr = (TextView) findViewById(R.id.wifi_addr_content);
        this.tvWifiState = (TextView) findViewById(R.id.wifi_state_content);
        this.tvWifiDeviceList = (TextView) findViewById(R.id.tv_wifi_device_list);
        this.tvWifiAddr.setText(this.wifiTestUtil.getWifiManager().getConnectionInfo().getMacAddress());
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mHandler.postDelayed(this.mR, 20000L);
        this.wifiTestUtil.startTest(this);
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.mHandler.removeCallbacks(this.mR);
        this.wifiTestUtil.stopTest();
        super.onPause();
    }
}
