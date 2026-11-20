package com.sprd.validationtools.itemstest.sensor;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.Const;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.FileUtils;
import java.io.IOException;

/* loaded from: classes.dex */
public class GSensorCalibrationActivity extends BaseActivity {
    private static final int CALIBRATION_FAIL = 3;
    private static final int CALIBRATION_SUCCESS = 2;
    private static final String CALI_FILE = "/mnt/vendor/productinfo/sensor_calibration_data/gyro";
    private static final String GET_RESULT = "1 4 1";
    private static final String PASS_NUMBER = "0";
    private static final String SAVE_RESULT = "3 4 1";
    private static final String SET_CMD = "0 4 1";
    private static final int SET_CMD_COMPLETE = 1;
    private static final String TAG = "GSensorCalibrationActivity";
    private static final String TEST_OK = "2";
    private Context mContext;
    private TextView mDisplayText;
    private boolean isOk = false;
    private boolean saveResult = false;
    private SensorUtils mSensorUtils = null;
    private Runnable mR = new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.GSensorCalibrationActivity.1
        @Override // java.lang.Runnable
        public void run() {
            GSensorCalibrationActivity.this.mDisplayText.setText(GSensorCalibrationActivity.this.mContext.getResources().getString(R.string.g_sensor_calibration_fail));
        }
    };
    private Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.sensor.GSensorCalibrationActivity.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                new Thread(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.GSensorCalibrationActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() throws IOException {
                        GSensorCalibrationActivity.this.getResult();
                    }
                }).start();
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                GSensorCalibrationActivity.this.mHandler.post(GSensorCalibrationActivity.this.mR);
            } else {
                Toast.makeText(GSensorCalibrationActivity.this.mContext, R.string.text_pass, 0).show();
                GSensorCalibrationActivity.this.storeRusult(true);
                GSensorCalibrationActivity.this.finish();
            }
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sensor_g_calibration);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        this.mContext = this;
        this.mDisplayText = (TextView) findViewById(R.id.result_sensor_g);
        SensorUtils sensorUtils = new SensorUtils(this, 4);
        this.mSensorUtils = sensorUtils;
        sensorUtils.enableSensor();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        startSensorCalibration();
    }

    private void startSensorCalibration() {
        new SensorCalibrationThread().start();
    }

    class SensorCalibrationThread extends Thread {
        SensorCalibrationThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws InterruptedException, IOException {
            GSensorCalibrationActivity.this.sensorCalibration();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sensorCalibration() throws InterruptedException, IOException {
        FileUtils.writeFile(Const.CALIBRATOR_CMD, SET_CMD);
        try {
            Thread.sleep(4000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getResult() throws IOException {
        FileUtils.writeFile(Const.CALIBRATOR_CMD, GET_RESULT);
        String file = FileUtils.readFile(Const.CALIBRATOR_DATA);
        this.saveResult = saveResult();
        Log.d(TAG, "the result of boolen saveResult: " + this.saveResult);
        boolean z = this.saveResult && file != null && TEST_OK.equals(file.trim());
        Log.d(TAG, "getResult the result of GSensor calibration isOK: " + z);
        if (z) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(2));
        } else {
            Handler handler2 = this.mHandler;
            handler2.sendMessage(handler2.obtainMessage(3));
        }
    }

    private boolean saveResult() throws Throwable {
        Log.d(TAG, "saveResult...");
        FileUtils.writeFile(Const.CALIBRATOR_CMD, SAVE_RESULT);
        int iSaveFileData = FileUtils.saveFileData(Const.CALIBRATOR_DATA, CALI_FILE);
        Log.d(TAG, "save result: " + iSaveFileData);
        if (iSaveFileData == 30) {
            this.isOk = true;
            Log.d(TAG, "save result isOk: " + this.isOk);
        }
        return this.isOk;
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
