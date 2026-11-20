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
public class GyroscopeTestActivity extends BaseActivity {
    private static final int M_COMPAR_VALUE = 3;
    private static final String TAG = "GyroscopeTestActivity";
    private Context mContext;
    private TextView mDisplayText;
    private TextView mXsensorText;
    private TextView mYsensorText;
    private TextView mZsensorText;
    private SensorManager manager = null;
    private Sensor sensor = null;
    private SensorEventListener listener = null;
    private boolean onetime = true;
    private boolean xPass = false;
    private boolean yPass = false;
    private boolean zPass = false;
    private float[] data_last = {0.0f, 0.0f, 0.0f};
    private float[] data_current = {0.0f, 0.0f, 0.0f};
    private boolean mPassed = false;
    private boolean mSuccessFlag = false;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sensor_gyroscope);
        this.mContext = this;
        this.mDisplayText = (TextView) findViewById(R.id.txt_msg_gyroscope);
        this.mXsensorText = (TextView) findViewById(R.id.txt_sensor_x);
        this.mYsensorText = (TextView) findViewById(R.id.txt_sensor_y);
        this.mZsensorText = (TextView) findViewById(R.id.txt_sensor_z);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        diplayXYZ(0.0f, 0.0f, 0.0f);
        showPass(0, 0);
        showPass(0, 1);
        showPass(0, 2);
        initSensor();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Log.d(TAG, "onResume...");
        this.manager.registerListener(this.listener, this.sensor, 0);
    }

    @Override // android.app.Activity
    protected void onPause() {
        Log.d(TAG, "onPause...");
        SensorManager sensorManager = this.manager;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.listener);
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPass(int i, int i2) {
        if (i2 == 0) {
            if (i == 0) {
                this.mXsensorText.setTextColor(-1);
                this.mXsensorText.setText("X-axis: ");
            } else {
                this.mXsensorText.setTextColor(-16711936);
                this.mXsensorText.setText("X-axis: Pass!");
            }
        }
        if (i2 == 1) {
            if (i == 0) {
                this.mYsensorText.setTextColor(-1);
                this.mYsensorText.setText("Y-axis: ");
            } else {
                this.mYsensorText.setTextColor(-16711936);
                this.mYsensorText.setText("Y-axis: Pass!");
            }
        }
        if (i2 == 2) {
            if (i == 0) {
                this.mZsensorText.setTextColor(-1);
                this.mZsensorText.setText("Z-axis: ");
            } else {
                this.mZsensorText.setTextColor(-16711936);
                this.mZsensorText.setText("Z-axis: Pass!");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean gsensorCheck(float f) {
        return Math.abs(f) > 3.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void diplayXYZ(float f, float f2, float f3) {
        this.mDisplayText.setText("\nX: " + f + "\nY: " + f2 + "\nZ: " + f3);
    }

    private void initSensor() {
        Log.d(TAG, "Gyroscope test, init...");
        this.mPassed = false;
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        this.manager = sensorManager;
        this.sensor = sensorManager.getDefaultSensor(4);
        this.listener = new SensorEventListener() { // from class: com.sprd.validationtools.itemstest.sensor.GyroscopeTestActivity.1
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
                float f = sensorEvent.values[0];
                float f2 = sensorEvent.values[1];
                float f3 = sensorEvent.values[2];
                Log.d(GyroscopeTestActivity.TAG, "mmi test values: " + f + "," + f2 + "," + f3);
                GyroscopeTestActivity.this.diplayXYZ(f, f2, f3);
                GyroscopeTestActivity.this.data_current[0] = f;
                GyroscopeTestActivity.this.data_current[1] = f2;
                GyroscopeTestActivity.this.data_current[2] = f3;
                if (GyroscopeTestActivity.this.onetime && f != 0.0f && f2 != 0.0f && f3 != 0.0f) {
                    GyroscopeTestActivity.this.onetime = false;
                    GyroscopeTestActivity.this.data_last[0] = f;
                    GyroscopeTestActivity.this.data_last[1] = f2;
                    GyroscopeTestActivity.this.data_last[2] = f3;
                }
                if (!GyroscopeTestActivity.this.xPass) {
                    GyroscopeTestActivity gyroscopeTestActivity = GyroscopeTestActivity.this;
                    if (gyroscopeTestActivity.gsensorCheck(gyroscopeTestActivity.data_current[0]) && GyroscopeTestActivity.this.data_current[0] != GyroscopeTestActivity.this.data_last[0]) {
                        GyroscopeTestActivity.this.xPass = true;
                        GyroscopeTestActivity.this.showPass(1, 0);
                    }
                }
                if (!GyroscopeTestActivity.this.yPass) {
                    GyroscopeTestActivity gyroscopeTestActivity2 = GyroscopeTestActivity.this;
                    if (gyroscopeTestActivity2.gsensorCheck(gyroscopeTestActivity2.data_current[1]) && GyroscopeTestActivity.this.data_current[1] != GyroscopeTestActivity.this.data_last[1]) {
                        GyroscopeTestActivity.this.yPass = true;
                        GyroscopeTestActivity.this.showPass(1, 1);
                    }
                }
                if (!GyroscopeTestActivity.this.zPass) {
                    GyroscopeTestActivity gyroscopeTestActivity3 = GyroscopeTestActivity.this;
                    if (gyroscopeTestActivity3.gsensorCheck(gyroscopeTestActivity3.data_current[2]) && GyroscopeTestActivity.this.data_current[2] != GyroscopeTestActivity.this.data_last[2]) {
                        GyroscopeTestActivity.this.zPass = true;
                        GyroscopeTestActivity.this.showPass(1, 2);
                    }
                }
                if (GyroscopeTestActivity.this.xPass && GyroscopeTestActivity.this.yPass && GyroscopeTestActivity.this.zPass) {
                    if (!GyroscopeTestActivity.this.mPassed) {
                        GyroscopeTestActivity.this.mPassed = true;
                        Toast.makeText(GyroscopeTestActivity.this.mContext, R.string.text_pass, 0).show();
                        GyroscopeTestActivity.this.storeRusult(true);
                    }
                    if (GyroscopeTestActivity.this.isFinishing() || GyroscopeTestActivity.this.isDestroyed()) {
                        return;
                    }
                    GyroscopeTestActivity.this.finish();
                }
            }
        };
    }
}
