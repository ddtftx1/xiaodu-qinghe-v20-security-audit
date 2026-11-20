package com.sprd.validationtools.itemstest.sensor;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.Const;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.FileUtils;

/* loaded from: classes.dex */
public class LightSensorCalibrationActivity extends BaseActivity {
    private static final int CALIBRATION_FAIL = 3;
    private static final int CALIBRATION_SUCCESS = 2;
    private static final String CALI_FILE = "/mnt/vendor/productinfo/sensor_calibration_data/light";
    private static final int PASS_DATA_LEN = 30;
    private static final int START_CALIBRATION = 1;
    private static final String TAG = "LightSensorCalibrationActivity";
    private Context mContext;
    private TextView mDisplayText;
    private Button startCalibration;
    private SensorUtils mSensorUtils = null;
    private Runnable mR = new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.LightSensorCalibrationActivity.1
        @Override // java.lang.Runnable
        public void run() {
            LightSensorCalibrationActivity.this.mDisplayText.setText(LightSensorCalibrationActivity.this.mContext.getResources().getString(R.string.light_sensor_calibration_fail));
        }
    };
    private Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.sensor.LightSensorCalibrationActivity.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                new Thread(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.LightSensorCalibrationActivity.3.1
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        LightSensorCalibrationActivity.this.getResult();
                    }
                }).start();
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                LightSensorCalibrationActivity.this.mHandler.post(LightSensorCalibrationActivity.this.mR);
            } else {
                Toast.makeText(LightSensorCalibrationActivity.this.mContext, R.string.text_pass, 0).show();
                LightSensorCalibrationActivity.this.storeRusult(true);
                LightSensorCalibrationActivity.this.finish();
            }
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sensor_light_calibration);
        this.mContext = this;
        this.mDisplayText = (TextView) findViewById(R.id.result_sensor_light);
        this.startCalibration = (Button) findViewById(R.id.start_test_button);
        SensorUtils sensorUtils = new SensorUtils(this, 5);
        this.mSensorUtils = sensorUtils;
        sensorUtils.enableSensor();
        this.startCalibration.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.sensor.LightSensorCalibrationActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LightSensorCalibrationActivity.this.mDisplayText.setText(LightSensorCalibrationActivity.this.mContext.getResources().getString(R.string.light_sensor_calibration_start));
                LightSensorCalibrationActivity.this.startSensorCalibration();
                LightSensorCalibrationActivity.this.startCalibration.setVisibility(8);
            }
        });
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSensorCalibration() {
        new SensorCalibrationThread().start();
    }

    class SensorCalibrationThread extends Thread {
        SensorCalibrationThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            LightSensorCalibrationActivity.this.sensorCalibration();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sensorCalibration() {
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getResult() throws Throwable {
        Log.d(TAG, "saveResult...");
        int iSaveFileData = FileUtils.saveFileData(Const.LIGHT_CALIBRATOR_CMD, CALI_FILE);
        Log.d(TAG, "save result: " + iSaveFileData);
        boolean z = iSaveFileData == PASS_DATA_LEN;
        Log.d(TAG, "getResult the result of isOK: " + z);
        if (z) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(2));
        } else {
            Handler handler2 = this.mHandler;
            handler2.sendMessage(handler2.obtainMessage(3));
        }
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        this.mHandler.removeCallbacks(this.mR);
        SensorUtils sensorUtils = this.mSensorUtils;
        if (sensorUtils != null) {
            sensorUtils.disableSensor();
        }
        super.onDestroy();
    }
}
