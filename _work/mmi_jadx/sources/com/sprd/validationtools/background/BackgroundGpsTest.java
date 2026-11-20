package com.sprd.validationtools.background;

import android.content.Context;
import android.location.GnssStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import com.sprd.validationtools.itemstest.gps.GpsTestActivity;
import com.sprd.validationtools.modules.TestItem;
import com.sprd.validationtools.modules.UnitTestItemList;
import com.sprd.validationtools.utils.SocketUtils;

/* loaded from: classes.dex */
public class BackgroundGpsTest implements BackgroundTest {
    private static final int SATELLITE_COUNT_MIN = 4;
    private static final String TAG = "BackgroundGpsTest";
    private static final String TEST_CLASS_NAME = GpsTestActivity.class.getName();
    private static final long UPDATE_MIN_TIME = 1000;
    private Context mContext;
    private GnssStatus mGnssStatus;
    private GnssStatus.Callback mGnssStatusListener;
    private LocationListener locationListener = null;
    private LocationManager manager = null;
    private int testResult = -1;

    @Override // com.sprd.validationtools.background.BackgroundTest
    public int getTestItemIdx() {
        return -1;
    }

    public BackgroundGpsTest(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public void startTest() {
        this.locationListener = new LocationListener() { // from class: com.sprd.validationtools.background.BackgroundGpsTest.1
            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
            }

            @Override // android.location.LocationListener
            public void onProviderDisabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onProviderEnabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onStatusChanged(String str, int i, Bundle bundle) {
            }
        };
        this.mGnssStatusListener = new GnssStatus.Callback() { // from class: com.sprd.validationtools.background.BackgroundGpsTest.2
            @Override // android.location.GnssStatus.Callback
            public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
                BackgroundGpsTest.this.mGnssStatus = gnssStatus;
                if (BackgroundGpsTest.this.mGnssStatus == null) {
                    return;
                }
                int satelliteCount = BackgroundGpsTest.this.mGnssStatus.getSatelliteCount();
                Log.d(BackgroundGpsTest.TAG, "length = " + satelliteCount);
                int i = 0;
                boolean z = false;
                while (i < satelliteCount) {
                    float cn0DbHz = BackgroundGpsTest.this.mGnssStatus.getCn0DbHz(i);
                    i++;
                    if (cn0DbHz > 35.0d) {
                        z = true;
                    }
                }
                if (satelliteCount < 4 || !z) {
                    return;
                }
                BackgroundGpsTest.this.testResult = 1;
                BackgroundGpsTest.this.stopTest();
            }
        };
        Log.d(TAG, "startTest begin!");
        this.manager = (LocationManager) this.mContext.getSystemService("location");
        Settings.Secure.setLocationProviderEnabled(this.mContext.getContentResolver(), "gps", true);
        try {
            Log.d(TAG, "startTest requestLocationUpdates");
            this.manager.requestLocationUpdates("gps", UPDATE_MIN_TIME, 0.0f, this.locationListener);
            this.manager.registerGnssStatusCallback(this.mGnssStatusListener);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public void stopTest() {
        Log.d(TAG, "stopTest!");
        GnssStatus.Callback callback = this.mGnssStatusListener;
        if (callback != null) {
            this.manager.unregisterGnssStatusCallback(callback);
        }
        LocationListener locationListener = this.locationListener;
        if (locationListener != null) {
            this.manager.removeUpdates(locationListener);
        }
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public int getResult() {
        return this.testResult;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public String getResultStr() {
        if (1 == this.testResult) {
            return "GPS:PASS";
        }
        return "GPS:" + SocketUtils.FAIL;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public TestItem getTestItem(Context context) {
        return UnitTestItemList.getInstance(this.mContext).getTestItemByClassName(TEST_CLASS_NAME);
    }
}
