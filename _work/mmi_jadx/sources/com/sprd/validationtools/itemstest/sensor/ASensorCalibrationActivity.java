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
import java.io.IOException;

/* loaded from: classes.dex */
public class ASensorCalibrationActivity extends BaseActivity implements View.OnClickListener {
    private static final int CALIBRATION_FAIL = 3;
    private static final int CALIBRATION_SUCCESS = 2;
    private static final String CALI_FILE = "/mnt/vendor/productinfo/sensor_calibration_data/acc";
    private static final String GET_RESULT = "1 1 1";
    private static final String PASS_NUMBER = "0";
    private static final String SAVE_RESULT = "3 1 1";
    private static final String SET_CMD = "0 1 1";
    private static final int SET_CMD_COMPLETE = 1;
    private static final String TAG = "ASensorCalibrationActivity";
    private static final String TEST_OK = "2";
    private Context mContext;
    private TextView mDisplayText;
    private Button start;
    private boolean isOk = false;
    private boolean saveResult = false;
    private SensorUtils mSensorUtils = null;
    private boolean isstart = false;
    private Runnable mR = new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.ASensorCalibrationActivity.1
        @Override // java.lang.Runnable
        public void run() {
            ASensorCalibrationActivity.this.mDisplayText.setText(ASensorCalibrationActivity.this.mContext.getResources().getString(R.string.a_sensor_calibration_fail));
        }
    };
    private Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.sensor.ASensorCalibrationActivity.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                new Thread(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.ASensorCalibrationActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() throws IOException {
                        ASensorCalibrationActivity.this.getResult();
                    }
                }).start();
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                ASensorCalibrationActivity.this.mHandler.post(ASensorCalibrationActivity.this.mR);
            } else {
                Toast.makeText(ASensorCalibrationActivity.this.mContext, R.string.text_pass, 0).show();
                ASensorCalibrationActivity.this.storeRusult(true);
                ASensorCalibrationActivity.this.finish();
            }
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sensor_a_calibration);
        this.mContext = this;
        this.mDisplayText = (TextView) findViewById(R.id.result_sensor_a);
        initRsultBtn(findViewById(R.id.result_btn));
        Button button = (Button) findViewById(R.id.btn_start);
        this.start = button;
        button.setOnClickListener(this);
        setPassBtnEnabled(false);
        SensorUtils sensorUtils = new SensorUtils(this, 1);
        this.mSensorUtils = sensorUtils;
        sensorUtils.enableSensor();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    private void startSensorCalibration() {
        new SensorCalibrationThread().start();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.start.setEnabled(false);
        startSensorCalibration();
    }

    class SensorCalibrationThread extends Thread {
        SensorCalibrationThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws InterruptedException, IOException {
            ASensorCalibrationActivity.this.sensorCalibration();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sensorCalibration() throws InterruptedException, IOException {
        try {
            Thread.sleep(4000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        FileUtils.writeFile(Const.CALIBRATOR_CMD, SET_CMD);
        try {
            Thread.sleep(4000L);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getResult() throws IOException {
        FileUtils.writeFile(Const.CALIBRATOR_CMD, GET_RESULT);
        String file = FileUtils.readFile(Const.CALIBRATOR_DATA);
        Log.d(TAG, "getResult the result of boolen Result: " + file);
        this.saveResult = saveResult();
        Log.d(TAG, "getResult the result of boolen saveResult: " + this.saveResult);
        boolean z = this.saveResult && file != null && TEST_OK.equals(file.trim());
        Log.d(TAG, "getResult the result of isOK: " + z);
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
