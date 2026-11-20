package com.sprd.validationtools.itemstest.sensor;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
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
public class ProxSensorCalibrationActivity extends BaseActivity {
    private static final String AUTO_SET_CMD = "0 8 1";
    private static final int AUTO_TEST = 0;
    private static final int CALIB_STATUS_FAIL = 255;
    private static final int CALIB_STATUS_INPROCESS = 1;
    private static final int CALIB_STATUS_NON = 0;
    private static final int CALIB_STATUS_OUT_OF_MINRANGE = 253;
    private static final int CALIB_STATUS_OUT_OF_RANGE = 254;
    private static final int CALIB_STATUS_PASS = 2;
    private static final String CALI_FILE = "/mnt/vendor/productinfo/sensor_calibration_data/proximity";
    private static final int FOUR_SECONDS = 4000;
    private static final String MANUAL_FAR_SET_CMD = "0 8 6";
    private static final String MANUAL_NEAR_SET_CMD = "0 8 5";
    private static final int MANUAL_TEST_FAR = 2;
    private static final int MANUAL_TEST_NEAR = 1;
    private static final int RESULT_AUTO_TEST = 1;
    private static final int RESULT_MANUAL_FAR_TEST = 7;
    private static final int RESULT_MANUAL_NEAR_TEST = 4;
    private static final int SAVEDATA_STATUS_FAIL = 255;
    private static final int SAVEDATA_STATUS_OUT_OF_MINRANGE = 253;
    private static final int SAVEDATA_STATUS_PASS = 0;
    private static final int START_AUTO_TEST = 0;
    private static final int START_MANUAL_FAR_TEST = 6;
    private static final int START_MANUAL_NEAR_TEST = 3;
    private static final int SVAE_AUTO_TEST = 2;
    private static final int SVAE_MANUAL_FAR_TEST = 8;
    private static final int SVAE_MANUAL_NEAR_TEST = 5;
    private static final String TAG = "ProxSensorCalibrationActivity";
    private static final String TEST_GET_RESULT = "1 8 1";
    private static final String TEST_SAVE_RESULT = "3 8 1";
    private static final int TWO_SECONDS = 2000;
    private Button mAutoButton;
    private Context mContext;
    private Button mManualButton;
    private ProxHandler mProxHandler;
    private TextView mTestTips;
    private boolean autoResult = false;
    private boolean nearResult = false;
    private boolean farResult = false;
    private boolean autoSaveResult = false;
    private boolean nearSaveResult = false;
    private boolean farSaveResult = false;
    private Handler mHandler = new Handler();
    private SensorUtils mSensorUtils = null;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sensor_prox_calibration);
        this.mContext = this;
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        this.mProxHandler = new ProxHandler(handlerThread.getLooper());
        this.mAutoButton = (Button) findViewById(R.id.prox_auto_button);
        this.mManualButton = (Button) findViewById(R.id.prox_manual_button);
        this.mTestTips = (TextView) findViewById(R.id.test_tips);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        this.mAutoButton.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProxSensorCalibrationActivity.this.mAutoButton.setVisibility(8);
                ProxSensorCalibrationActivity.this.mManualButton.setVisibility(8);
                ProxSensorCalibrationActivity.this.mTestTips.setVisibility(0);
                ProxSensorCalibrationActivity.this.mTestTips.setText(ProxSensorCalibrationActivity.this.getResources().getString(R.string.prox_auto_test_tips));
                ProxSensorCalibrationActivity.this.mProxHandler.sendMessage(ProxSensorCalibrationActivity.this.mProxHandler.obtainMessage(0));
            }
        });
        this.mManualButton.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProxSensorCalibrationActivity.this.mAutoButton.setVisibility(8);
                ProxSensorCalibrationActivity.this.mManualButton.setVisibility(8);
                ProxSensorCalibrationActivity.this.mTestTips.setVisibility(0);
                ProxSensorCalibrationActivity.this.showTipsDialog(1);
            }
        });
        SensorUtils sensorUtils = new SensorUtils(this, 8);
        this.mSensorUtils = sensorUtils;
        sensorUtils.enableSensor();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCalibration(int i) throws IOException {
        Log.d(TAG, "startCalibration: " + i);
        if (i == 0) {
            FileUtils.writeFile(Const.CALIBRATOR_CMD, AUTO_SET_CMD);
        } else if (i == 1) {
            FileUtils.writeFile(Const.CALIBRATOR_CMD, MANUAL_NEAR_SET_CMD);
        } else if (i == 2) {
            FileUtils.writeFile(Const.CALIBRATOR_CMD, MANUAL_FAR_SET_CMD);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTipsDialog(final int i) {
        String string;
        Log.d(TAG, "showTipsDialog: " + i);
        if (i == 1) {
            string = this.mContext.getString(R.string.prox_manual_tips_near);
        } else {
            string = this.mContext.getString(R.string.prox_manual_tips_far);
        }
        new AlertDialog.Builder(this.mContext).setTitle(getString(R.string.prox_calibration_button_manual)).setMessage(string).setNegativeButton(getString(R.string.alertdialog_ok), new DialogInterface.OnClickListener() { // from class: com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (i == 1) {
                    ProxSensorCalibrationActivity.this.mProxHandler.sendMessage(ProxSensorCalibrationActivity.this.mProxHandler.obtainMessage(3));
                } else {
                    ProxSensorCalibrationActivity.this.mProxHandler.sendMessage(ProxSensorCalibrationActivity.this.mProxHandler.obtainMessage(6));
                }
            }
        }).create().show();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        if (this.mProxHandler != null) {
            Log.d(TAG, "HandlerThread has quit");
            this.mProxHandler.getLooper().quit();
        }
        SensorUtils sensorUtils = this.mSensorUtils;
        if (sensorUtils != null) {
            sensorUtils.disableSensor();
        }
        super.onDestroy();
    }

    private void ThreadSleep(int i) throws InterruptedException {
        try {
            Thread.sleep(i);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    class ProxHandler extends Handler {
        public ProxHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws IOException {
            switch (message.what) {
                case 0:
                    ProxSensorCalibrationActivity.this.startCalibration(0);
                    ProxSensorCalibrationActivity.this.mProxHandler.sendMessageDelayed(ProxSensorCalibrationActivity.this.mProxHandler.obtainMessage(1), 4000L);
                    break;
                case 1:
                    ProxSensorCalibrationActivity.this.autoResult = SensorUtils.getResult(ProxSensorCalibrationActivity.TEST_GET_RESULT);
                    if (ProxSensorCalibrationActivity.this.autoResult) {
                        ProxSensorCalibrationActivity.this.mProxHandler.sendMessage(ProxSensorCalibrationActivity.this.mProxHandler.obtainMessage(2));
                        break;
                    } else {
                        ProxSensorCalibrationActivity.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity.ProxHandler.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ProxSensorCalibrationActivity.this.mTestTips.setText(ProxSensorCalibrationActivity.this.getResources().getString(R.string.prox_auto_test_fail));
                            }
                        });
                        if (Const.isAutoTestMode()) {
                            ProxSensorCalibrationActivity.this.storeRusult(false);
                            ProxSensorCalibrationActivity.this.finish();
                            break;
                        }
                    }
                    break;
                case 2:
                    ProxSensorCalibrationActivity.this.autoSaveResult = SensorUtils.saveResult(ProxSensorCalibrationActivity.TEST_SAVE_RESULT, ProxSensorCalibrationActivity.CALI_FILE);
                    if (!ProxSensorCalibrationActivity.this.autoResult || !ProxSensorCalibrationActivity.this.autoSaveResult) {
                        ProxSensorCalibrationActivity.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity.ProxHandler.3
                            @Override // java.lang.Runnable
                            public void run() {
                                ProxSensorCalibrationActivity.this.mTestTips.setText(ProxSensorCalibrationActivity.this.getResources().getString(R.string.prox_auto_test_fail));
                            }
                        });
                        if (Const.isAutoTestMode()) {
                            ProxSensorCalibrationActivity.this.storeRusult(false);
                            ProxSensorCalibrationActivity.this.finish();
                            break;
                        }
                    } else {
                        ProxSensorCalibrationActivity.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity.ProxHandler.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Toast.makeText(ProxSensorCalibrationActivity.this.mContext, R.string.text_pass, 0).show();
                            }
                        });
                        ProxSensorCalibrationActivity.this.storeRusult(true);
                        ProxSensorCalibrationActivity.this.finish();
                        break;
                    }
                    break;
                case 3:
                    ProxSensorCalibrationActivity.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity.ProxHandler.4
                        @Override // java.lang.Runnable
                        public void run() {
                            ProxSensorCalibrationActivity.this.mTestTips.setText(ProxSensorCalibrationActivity.this.getResources().getString(R.string.prox_manual_tips_near_testing));
                        }
                    });
                    ProxSensorCalibrationActivity.this.startCalibration(1);
                    ProxSensorCalibrationActivity.this.mProxHandler.sendMessageDelayed(ProxSensorCalibrationActivity.this.mProxHandler.obtainMessage(4), 4000L);
                    break;
                case 4:
                    ProxSensorCalibrationActivity.this.showTipsDialog(2);
                    break;
                case 6:
                    ProxSensorCalibrationActivity.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity.ProxHandler.5
                        @Override // java.lang.Runnable
                        public void run() {
                            ProxSensorCalibrationActivity.this.mTestTips.setText(ProxSensorCalibrationActivity.this.getResources().getString(R.string.prox_manual_tips_far_testing));
                        }
                    });
                    ProxSensorCalibrationActivity.this.startCalibration(2);
                    ProxSensorCalibrationActivity.this.mProxHandler.sendMessageDelayed(ProxSensorCalibrationActivity.this.mProxHandler.obtainMessage(7), 4000L);
                    break;
                case 7:
                    ProxSensorCalibrationActivity.this.farResult = SensorUtils.getResult(ProxSensorCalibrationActivity.TEST_GET_RESULT);
                    if (ProxSensorCalibrationActivity.this.farResult) {
                        ProxSensorCalibrationActivity.this.mProxHandler.sendMessage(ProxSensorCalibrationActivity.this.mProxHandler.obtainMessage(8));
                        break;
                    } else {
                        final String string = ProxSensorCalibrationActivity.this.farResult ? ProxSensorCalibrationActivity.this.getResources().getString(R.string.prox_manual_tips_far_pass) : ProxSensorCalibrationActivity.this.getResources().getString(R.string.prox_manual_tips_far_fail);
                        ProxSensorCalibrationActivity.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity.ProxHandler.6
                            @Override // java.lang.Runnable
                            public void run() {
                                ProxSensorCalibrationActivity.this.mTestTips.setText(string);
                            }
                        });
                        break;
                    }
                case 8:
                    ProxSensorCalibrationActivity.this.farSaveResult = SensorUtils.saveResult(ProxSensorCalibrationActivity.TEST_SAVE_RESULT, ProxSensorCalibrationActivity.CALI_FILE);
                    if (ProxSensorCalibrationActivity.this.farResult && ProxSensorCalibrationActivity.this.farSaveResult) {
                        ProxSensorCalibrationActivity.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity.ProxHandler.7
                            @Override // java.lang.Runnable
                            public void run() {
                                Toast.makeText(ProxSensorCalibrationActivity.this.mContext, R.string.text_pass, 0).show();
                            }
                        });
                        ProxSensorCalibrationActivity.this.storeRusult(true);
                        ProxSensorCalibrationActivity.this.finish();
                        break;
                    } else {
                        final String string2 = (ProxSensorCalibrationActivity.this.farResult && ProxSensorCalibrationActivity.this.farSaveResult) ? ProxSensorCalibrationActivity.this.getResources().getString(R.string.prox_manual_tips_far_pass) : ProxSensorCalibrationActivity.this.getResources().getString(R.string.prox_manual_tips_far_fail);
                        ProxSensorCalibrationActivity.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity.ProxHandler.8
                            @Override // java.lang.Runnable
                            public void run() {
                                ProxSensorCalibrationActivity.this.mTestTips.setText(string2);
                            }
                        });
                        break;
                    }
                    break;
            }
        }
    }

    public static boolean isSupport(Context context) {
        ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8);
        return false;
    }
}
