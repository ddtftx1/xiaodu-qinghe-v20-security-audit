package com.sprd.validationtools.itemstest.sensor;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class MagneticTestActivity extends BaseActivity {
    private static final int M_COMPAR_VALUE = 20;
    private static final String TAG = "MagneticTestActivity";
    private Context mContext;
    private TextView mDisplayText;
    private TextView mWarnText;
    private float[] data_last = {0.0f, 0.0f, 0.0f};
    private float[] data_current = {0.0f, 0.0f, 0.0f};
    private SensorManager mSManager = null;
    private Sensor mSensor = null;
    private SensorEventListener mListener = null;
    private boolean onetime = true;
    private boolean xPass = false;
    private boolean yPass = false;
    private boolean zPass = false;
    private boolean mSuccessFlag = false;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mContext = this;
        setContentView(R.layout.sensor_magnetic);
        this.mDisplayText = (TextView) findViewById(R.id.magnetic_xyz);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        diplayXYZ(0.0f, 0.0f, 0.0f);
        initSensor();
        this.mSuccessFlag = false;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void diplayXYZ(float f, float f2, float f3) {
        this.mDisplayText.setText("\nX: " + f + "\nY: " + f2 + "\nZ: " + f3);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mSManager.registerListener(this.mListener, this.mSensor, 0);
    }

    @Override // android.app.Activity
    protected void onPause() {
        SensorManager sensorManager = this.mSManager;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.mListener);
        }
        super.onPause();
    }

    private void initSensor() {
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        this.mSManager = sensorManager;
        this.mSensor = sensorManager.getDefaultSensor(2);
        this.mListener = new SensorEventListener() { // from class: com.sprd.validationtools.itemstest.sensor.MagneticTestActivity.1
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
                Log.d(MagneticTestActivity.TAG, "mmi test values: " + sensorEvent.values[0] + "," + sensorEvent.values[1] + "," + sensorEvent.values[2]);
                MagneticTestActivity.this.diplayXYZ(sensorEvent.values[0], sensorEvent.values[1], sensorEvent.values[2]);
                MagneticTestActivity.this.data_current[0] = sensorEvent.values[0];
                MagneticTestActivity.this.data_current[1] = sensorEvent.values[1];
                MagneticTestActivity.this.data_current[2] = sensorEvent.values[2];
                if (MagneticTestActivity.this.onetime && MagneticTestActivity.this.data_current[0] != 0.0f && MagneticTestActivity.this.data_current[1] != 0.0f && MagneticTestActivity.this.data_current[2] != 0.0f) {
                    MagneticTestActivity.this.onetime = false;
                    MagneticTestActivity.this.data_last[0] = MagneticTestActivity.this.data_current[0];
                    MagneticTestActivity.this.data_last[1] = MagneticTestActivity.this.data_current[1];
                    MagneticTestActivity.this.data_last[2] = MagneticTestActivity.this.data_current[2];
                }
                if (Math.abs(MagneticTestActivity.this.data_current[0] - MagneticTestActivity.this.data_last[0]) > 20.0f) {
                    MagneticTestActivity.this.xPass = true;
                }
                if (Math.abs(MagneticTestActivity.this.data_current[1] - MagneticTestActivity.this.data_last[1]) > 20.0f) {
                    MagneticTestActivity.this.yPass = true;
                }
                if (Math.abs(MagneticTestActivity.this.data_current[1] - MagneticTestActivity.this.data_last[1]) > 20.0f) {
                    MagneticTestActivity.this.zPass = true;
                }
                if (MagneticTestActivity.this.xPass && MagneticTestActivity.this.yPass && MagneticTestActivity.this.zPass && !MagneticTestActivity.this.mSuccessFlag) {
                    MagneticTestActivity.this.mSuccessFlag = true;
                    Toast.makeText(MagneticTestActivity.this.mContext, R.string.text_pass, 0).show();
                    MagneticTestActivity.this.storeRusult(true);
                    MagneticTestActivity.this.finish();
                }
            }
        };
    }
}
