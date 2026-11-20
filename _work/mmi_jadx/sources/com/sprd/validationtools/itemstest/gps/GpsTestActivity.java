package com.sprd.validationtools.itemstest.gps;

import android.location.GnssStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.util.Timer;

/* loaded from: classes.dex */
public class GpsTestActivity extends BaseActivity {
    public static final String EXTRA_SET_FACTORY_SET_GPS_RESULT = "EXTRA_SET_FACTORY_SET_GPS_RESULT";
    private static final String GPSSET_CLASS_NAME = "com.android.settings.Settings$LocationSettingsActivity";
    private static final String GPSSET_PACKAGE_NAME = "com.android.settings";
    public static final String GPS_SATELLITE_COUNT_NAME = "gpsSatelliteCount";
    public static final String GPS_TEST_FLAG_NAME = "gpsTestFlag";
    public static final String INTENT_EXTRA_KEY_GPS_SEARCH_STAR_COUNT = "intentExtraGpsSearchStarCount";
    private static final String PROVIDER = "gps";
    private static final byte RESULT_FAILURE = 0;
    private static final byte RESULT_SUCCESS = 1;
    private static final int SATELLITE_COUNT_MIN = 4;
    private static final String TAG = "GpsTestActivity";
    private static final int TIME_LENGTH = 1000;
    private static final long UPDATE_MIN_TIME = 1000;
    private GnssStatus mGnssStatus;
    private GnssStatus.Callback mGnssStatusListener;
    private int mSatelliteCount;
    private TextView mSatelliteInfo;
    private LocationManager manager = null;
    private LocationListener locationListener = null;
    private TextView txtGpsMsg = null;
    private Button btnShow = null;
    private Timer timer = null;
    private int timeCount = 0;
    public Handler mHandler = new Handler();
    private Runnable mR = new Runnable() { // from class: com.sprd.validationtools.itemstest.gps.GpsTestActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (GpsTestActivity.this.mSatelliteCount > 0) {
                Toast.makeText(GpsTestActivity.this, R.string.text_pass, 0).show();
                GpsTestActivity.this.storeRusult(true);
                GpsTestActivity.this.finish();
            } else {
                Toast.makeText(GpsTestActivity.this, R.string.text_fail, 0).show();
                GpsTestActivity.this.storeRusult(false);
                GpsTestActivity.this.finish();
            }
        }
    };
    private Runnable mRimer = new Runnable() { // from class: com.sprd.validationtools.itemstest.gps.GpsTestActivity.2
        @Override // java.lang.Runnable
        public void run() {
            GpsTestActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.validationtools.itemstest.gps.GpsTestActivity.2.1
                @Override // java.lang.Runnable
                public void run() {
                    ((TextView) GpsTestActivity.this.findViewById(R.id.txt_gps_time_count)).setText(GpsTestActivity.this.timeCount + " ");
                    if (GpsTestActivity.this.timeCount == 60) {
                        GpsTestActivity.this.mHandler.post(GpsTestActivity.this.mR);
                    }
                }
            });
            GpsTestActivity.access$108(GpsTestActivity.this);
            GpsTestActivity.this.mHandler.postDelayed(GpsTestActivity.this.mRimer, GpsTestActivity.UPDATE_MIN_TIME);
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onBackPressed() {
    }

    static /* synthetic */ int access$108(GpsTestActivity gpsTestActivity) {
        int i = gpsTestActivity.timeCount;
        gpsTestActivity.timeCount = i + 1;
        return i;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.gps_test_main);
        setTitle(R.string.gps_test);
        getWindow().addFlags(524288);
        this.txtGpsMsg = (TextView) findViewById(R.id.txt_gps_not_enabled);
        TextView textView = (TextView) findViewById(R.id.txt_gps_satellite_info);
        this.mSatelliteInfo = textView;
        textView.setText("\n\n");
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mHandler.post(this.mRimer);
        showGpsMsg();
        showSatelliteCount();
    }

    @Override // android.app.Activity
    public void onPause() {
        this.mHandler.removeCallbacks(this.mR);
        this.mHandler.removeCallbacks(this.mRimer);
        super.onPause();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.locationListener = new LocationListener() { // from class: com.sprd.validationtools.itemstest.gps.GpsTestActivity.3
            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
            }

            @Override // android.location.LocationListener
            public void onStatusChanged(String str, int i, Bundle bundle) {
            }

            @Override // android.location.LocationListener
            public void onProviderDisabled(String str) {
                GpsTestActivity.this.showGpsMsg();
            }

            @Override // android.location.LocationListener
            public void onProviderEnabled(String str) {
                GpsTestActivity.this.showGpsMsg();
            }
        };
        Log.d(TAG, "startTest begin!");
        this.manager = (LocationManager) getSystemService("location");
        setTitle(R.string.gps_title_text);
        Settings.Secure.setLocationProviderEnabled(getContentResolver(), PROVIDER, true);
        try {
            this.manager.requestLocationUpdates(PROVIDER, UPDATE_MIN_TIME, 0.0f, this.locationListener);
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(this, getString(R.string.gps_open_err), 0).show();
        }
        GnssStatus.Callback callback = new GnssStatus.Callback() { // from class: com.sprd.validationtools.itemstest.gps.GpsTestActivity.4
            @Override // android.location.GnssStatus.Callback
            public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
                GpsTestActivity.this.mGnssStatus = gnssStatus;
                GpsTestActivity.this.showSatelliteCount();
            }
        };
        this.mGnssStatusListener = callback;
        this.manager.registerGnssStatusCallback(callback);
    }

    @Override // android.app.Activity
    public void onStop() {
        Settings.Secure.setLocationProviderEnabled(getContentResolver(), PROVIDER, false);
        GnssStatus.Callback callback = this.mGnssStatusListener;
        if (callback != null) {
            this.manager.unregisterGnssStatusCallback(callback);
        }
        LocationListener locationListener = this.locationListener;
        if (locationListener != null) {
            this.manager.removeUpdates(locationListener);
        }
        super.onStop();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    private boolean isGpsEnabled() {
        LocationManager locationManager = this.manager;
        if (locationManager == null) {
            return false;
        }
        return locationManager.isProviderEnabled(PROVIDER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showGpsMsg() {
        if (!isGpsEnabled()) {
            this.txtGpsMsg.setText(getString(R.string.gps_not_enabled_msg));
        } else {
            this.txtGpsMsg.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSatelliteCount() {
        if (this.mGnssStatus == null) {
            return;
        }
        this.mSatelliteInfo.setText("\n\n");
        int satelliteCount = this.mGnssStatus.getSatelliteCount();
        Log.d(TAG, "length = " + satelliteCount);
        int i = 0;
        boolean z = false;
        while (i < satelliteCount) {
            int svid = this.mGnssStatus.getSvid(i);
            float cn0DbHz = this.mGnssStatus.getCn0DbHz(i);
            i++;
            if (cn0DbHz > 35.0d) {
                z = true;
            }
            this.mSatelliteInfo.append("id: ");
            this.mSatelliteInfo.append(String.valueOf(svid));
            this.mSatelliteInfo.append("\nsnr: ");
            this.mSatelliteInfo.append(String.valueOf(cn0DbHz));
            this.mSatelliteInfo.append("\n\n");
        }
        if (satelliteCount >= 4 && z) {
            Toast.makeText(this, R.string.text_pass, 0).show();
            storeRusult(true);
            finish();
        }
        if (satelliteCount > this.mSatelliteCount) {
            this.mSatelliteCount = satelliteCount;
        }
        ((TextView) findViewById(R.id.txt_gps_satellite_count)).setText(" " + this.mSatelliteCount);
    }
}
