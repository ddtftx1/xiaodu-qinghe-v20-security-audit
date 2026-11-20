package com.sprd.validationtools.itemstest.sensor;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.util.Iterator;

/* loaded from: classes.dex */
public class SarSensorTestActivity extends BaseActivity {
    private static final String TAG = "SarSensorTestActivity";
    private SensorManager mSensorManager;
    private TextView sarInfoTextView;
    private Sensor sarSensor;
    private TextView sarValueTextView;
    private SensorEventListener sarListener = null;
    private Sensor lSensor = null;
    private boolean is_head_test_ok = false;
    private boolean is_tail_test_ok = false;
    private boolean is_middle_test_ok = false;
    private boolean is_far_test_ok = false;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sar_sensor_layout);
        getWindow().setFlags(128, 128);
        this.sarValueTextView = (TextView) findViewById(R.id.sar_value);
        this.sarInfoTextView = (TextView) findViewById(R.id.sar_info);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        this.mSensorManager = sensorManager;
        Iterator<Sensor> it = sensorManager.getSensorList(-1).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Sensor next = it.next();
            if (next != null) {
                Log.d(TAG, "sensor.getName():" + next.getName());
            }
            if (next.getName().contains("Sar")) {
                this.sarSensor = next;
                Log.d(TAG, "find SAR Sensor");
                break;
            }
        }
        this.sarListener = new SensorEventListener() { // from class: com.sprd.validationtools.itemstest.sensor.SarSensorTestActivity.1
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
                Log.d(SarSensorTestActivity.TAG, "onSensorChanged......");
                int i = (int) sensorEvent.values[0];
                int i2 = (int) sensorEvent.values[1];
                SarSensorTestActivity.this.sarValueTextView.setText("sarValueX:" + i + "  sarValueY:" + i2);
                if (i == 1 && i2 == 0) {
                    SarSensorTestActivity.this.sarInfoTextView.setText(R.string.sar_sensor_test_head);
                    SarSensorTestActivity.this.is_head_test_ok = true;
                } else if (i == 0 && i2 == 0) {
                    SarSensorTestActivity.this.sarInfoTextView.setText(R.string.sar_sensor_test_far_away);
                    SarSensorTestActivity.this.is_far_test_ok = true;
                }
                Log.d(SarSensorTestActivity.TAG, "is_head_test_ok:=" + SarSensorTestActivity.this.is_head_test_ok + " is_far_test_ok:=" + SarSensorTestActivity.this.is_far_test_ok);
                if (SarSensorTestActivity.this.is_head_test_ok && SarSensorTestActivity.this.is_far_test_ok) {
                    SarSensorTestActivity.this.setPassBtnEnabled(true);
                }
            }
        };
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Sensor sensor = this.sarSensor;
        if (sensor != null) {
            this.mSensorManager.registerListener(this.sarListener, sensor, 0);
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        if (this.sarSensor != null) {
            this.mSensorManager.unregisterListener(this.sarListener);
        }
        super.onPause();
    }
}
