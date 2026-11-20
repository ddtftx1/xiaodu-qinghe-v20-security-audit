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
public class MSensorCalibrationActivity extends BaseActivity {
    private static final int CALIBRATION_FAIL = 3;
    private static final int CALIBRATION_SUCCESS = 2;
    private static final String GET_RESULT = "1 2 1";
    private static final String PASS_NUMBER = "0";
    private static final String SAVE_RESULT = "3 2 1";
    private static final String SET_CMD = "0 2 1";
    private static final int SET_CMD_COMPLETE = 1;
    private static final String TAG = "MSensorCalibrationActivity";
    private static final String TEST_OK = "2";
    private Context mContext;
    private TextView mTipsText;
    private boolean isOk = false;
    private boolean saveResult = false;
    private SensorUtils mSensorUtils = null;
    private Runnable mR = new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.MSensorCalibrationActivity.1
        @Override // java.lang.Runnable
        public void run() {
            MSensorCalibrationActivity.this.mTipsText.setText(MSensorCalibrationActivity.this.mContext.getResources().getString(R.string.m_sensor_calibration_fail));
            MSensorCalibrationActivity.this.storeRusult(false);
            MSensorCalibrationActivity.this.finish();
        }
    };
    private Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.sensor.MSensorCalibrationActivity.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                new Thread(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.MSensorCalibrationActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() throws IOException {
                        MSensorCalibrationActivity.this.getResult();
                    }
                }).start();
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                MSensorCalibrationActivity.this.mHandler.post(MSensorCalibrationActivity.this.mR);
            } else {
                Toast.makeText(MSensorCalibrationActivity.this.mContext, R.string.text_pass, 0).show();
                MSensorCalibrationActivity.this.storeRusult(true);
                MSensorCalibrationActivity.this.finish();
            }
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sensor_m_calibration);
        this.mContext = this;
        this.mTipsText = (TextView) findViewById(R.id.title_sensor_m);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        SensorUtils sensorUtils = new SensorUtils(this, 2);
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
            MSensorCalibrationActivity.this.sensorCalibration();
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
        Log.d(TAG, "the result of MSensor calibration: " + file);
        if (this.saveResult && file != null && TEST_OK.equals(file.trim())) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(2));
        } else {
            Handler handler2 = this.mHandler;
            handler2.sendMessage(handler2.obtainMessage(3));
        }
    }

    private boolean saveResult() throws IOException {
        Log.d(TAG, "saveResult...");
        FileUtils.writeFile(Const.CALIBRATOR_CMD, SAVE_RESULT);
        String file = FileUtils.readFile(Const.CALIBRATOR_DATA);
        Log.d(TAG, "save result: " + file);
        if (file != null && PASS_NUMBER.equals(file.trim())) {
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
