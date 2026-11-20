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
public class PressureTestActivity extends BaseActivity {
    private static final int P_MAX_VALUE = 1100;
    private static final int P_MIN_VALUE = 900;
    private static final int P_PASS_TIMES = 5;
    private static final String TAG = "PressureTestActivity";
    private Context mContext;
    private TextView mDisplayText;
    private SensorManager manager = null;
    private Sensor sensor = null;
    private SensorEventListener listener = null;
    private int cnt = 0;
    private boolean mPass = false;
    private float pressureValue = 0.0f;
    private float dataPressure = 0.0f;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sensor_pressure);
        this.mContext = this;
        TextView textView = (TextView) findViewById(R.id.txt_pressure_value);
        this.mDisplayText = textView;
        textView.setTextColor(-16711936);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
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
    public void displayValue(float f) {
        this.mDisplayText.setText(this.mContext.getResources().getString(R.string.pressure_value) + f + " hPa");
    }

    private void initSensor() {
        Log.d(TAG, "pressure test, init...");
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        this.manager = sensorManager;
        this.sensor = sensorManager.getDefaultSensor(6);
        this.listener = new SensorEventListener() { // from class: com.sprd.validationtools.itemstest.sensor.PressureTestActivity.1
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
                float f = sensorEvent.values[0];
                PressureTestActivity.this.displayValue(f);
                Log.d(PressureTestActivity.TAG, "mmitest get value of pressure sensor: " + f);
                PressureTestActivity.this.dataPressure = f;
                if (PressureTestActivity.this.pressureValue != PressureTestActivity.this.dataPressure && 900.0f <= PressureTestActivity.this.dataPressure && 1100.0f > PressureTestActivity.this.dataPressure) {
                    PressureTestActivity.this.cnt++;
                    if (PressureTestActivity.this.cnt > 5) {
                        PressureTestActivity.this.mPass = true;
                    }
                    PressureTestActivity pressureTestActivity = PressureTestActivity.this;
                    pressureTestActivity.pressureValue = pressureTestActivity.dataPressure;
                }
                if (PressureTestActivity.this.mPass) {
                    Toast.makeText(PressureTestActivity.this.mContext, R.string.text_pass, 0).show();
                    PressureTestActivity.this.storeRusult(true);
                    PressureTestActivity.this.finish();
                }
            }
        };
    }
}
