package com.sprd.validationtools.itemstest.fingerprint;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class FingerprintTestActivity extends BaseActivity {
    private static final int CALIBRATION_FAIL = 2;
    private static final int INIT_SUCCESS = 1;
    private static final int RESULT_OK = 0;
    private static final String TAG = "FingerprintTestActivity";
    private static final int TEST_FAIL = 4;
    private static final int TEST_SUCCESS = 3;
    private Context mContext;
    private Button mFingerDetect;
    private TextView mFingerDetectResult;
    private TextView mFingerDetectTips;
    IFactoryTestImpl theTestImpl = null;
    ISprdFingerDetectListener listener_fd = new ISprdFingerDetectListener() { // from class: com.sprd.validationtools.itemstest.fingerprint.FingerprintTestActivity.2
        @Override // com.sprd.validationtools.itemstest.fingerprint.ISprdFingerDetectListener
        public void on_finger_detected(int i) {
            Log.d(FingerprintTestActivity.TAG, "ISprdFingerDetectListener fd ret = " + i);
            if (i == 0) {
                FingerprintTestActivity.this.mHandler.removeMessages(4);
                FingerprintTestActivity.this.mHandler.sendMessage(FingerprintTestActivity.this.mHandler.obtainMessage(3));
            } else {
                FingerprintTestActivity.this.mHandler.removeMessages(4);
                FingerprintTestActivity.this.mHandler.sendMessage(FingerprintTestActivity.this.mHandler.obtainMessage(2));
                FingerprintTestActivity.this.mHandler.sendEmptyMessageDelayed(4, 1000L);
            }
        }
    };
    private Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.fingerprint.FingerprintTestActivity.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                FingerprintTestActivity.this.mFingerDetectTips.setText(FingerprintTestActivity.this.mContext.getResources().getString(R.string.finger_print_tips));
                return;
            }
            if (i == 2) {
                FingerprintTestActivity.this.mFingerDetectTips.setText(FingerprintTestActivity.this.mContext.getResources().getString(R.string.finger_print_init_fail));
                return;
            }
            if (i == 3) {
                FingerprintTestActivity.this.mFingerDetectResult.setText(FingerprintTestActivity.this.mContext.getResources().getString(R.string.have_a_finger));
                Toast.makeText(FingerprintTestActivity.this, R.string.text_pass, 0).show();
                FingerprintTestActivity.this.storeRusult(true);
                FingerprintTestActivity.this.finish();
                return;
            }
            if (i != 4) {
                return;
            }
            FingerprintTestActivity.this.mFingerDetectResult.setText(FingerprintTestActivity.this.mContext.getResources().getString(R.string.no_finger));
            Toast.makeText(FingerprintTestActivity.this, R.string.text_fail, 0).show();
            FingerprintTestActivity.this.storeRusult(false);
            FingerprintTestActivity.this.finish();
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.finger_print);
        Log.d(TAG, "onCreate");
        this.mContext = this;
        this.mFingerDetectTips = (TextView) findViewById(R.id.finger_detect_tips);
        this.mFingerDetectResult = (TextView) findViewById(R.id.result);
        Button button = (Button) findViewById(R.id.finger_detect_button);
        this.mFingerDetect = button;
        button.setVisibility(8);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        initSensor();
    }

    private void initSensor() {
        new Thread(new Runnable() { // from class: com.sprd.validationtools.itemstest.fingerprint.FingerprintTestActivity.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    FingerprintTestActivity.this.theTestImpl = new FingerprintTestImpl();
                    int iFactory_init = FingerprintTestActivity.this.theTestImpl.factory_init();
                    Log.d(FingerprintTestActivity.TAG, "factory_init = " + iFactory_init);
                    if (iFactory_init == 0) {
                        FingerprintTestActivity.this.mHandler.sendMessage(FingerprintTestActivity.this.mHandler.obtainMessage(1));
                        int iSpi_test = FingerprintTestActivity.this.theTestImpl.spi_test();
                        Log.d(FingerprintTestActivity.TAG, "spi_test = " + iSpi_test);
                        if (iSpi_test == -1) {
                            Log.e(FingerprintTestActivity.TAG, "spi_test fail!!");
                            FingerprintTestActivity.this.mHandler.sendMessage(FingerprintTestActivity.this.mHandler.obtainMessage(2));
                            FingerprintTestActivity.this.mHandler.sendEmptyMessageDelayed(4, 1000L);
                            return;
                        }
                        int iInterrupt_test = FingerprintTestActivity.this.theTestImpl.interrupt_test();
                        Log.d(FingerprintTestActivity.TAG, "interrupt_test = " + iInterrupt_test);
                        if (iInterrupt_test == -1) {
                            Log.e(FingerprintTestActivity.TAG, "interrupt_test fail!!");
                            FingerprintTestActivity.this.mHandler.sendMessage(FingerprintTestActivity.this.mHandler.obtainMessage(2));
                            FingerprintTestActivity.this.mHandler.sendEmptyMessageDelayed(4, 1000L);
                            return;
                        }
                        int iDeadpixel_test = FingerprintTestActivity.this.theTestImpl.deadpixel_test();
                        Log.d(FingerprintTestActivity.TAG, "deadpixel_test = " + iDeadpixel_test);
                        if (iDeadpixel_test != -1) {
                            FingerprintTestActivity.this.mHandler.sendEmptyMessageDelayed(4, 15000L);
                            FingerprintTestActivity.this.theTestImpl.finger_detect(FingerprintTestActivity.this.listener_fd);
                            return;
                        } else {
                            Log.e(FingerprintTestActivity.TAG, "deadpixel_test fail!!");
                            FingerprintTestActivity.this.mHandler.sendMessage(FingerprintTestActivity.this.mHandler.obtainMessage(2));
                            FingerprintTestActivity.this.mHandler.sendEmptyMessageDelayed(4, 1000L);
                            return;
                        }
                    }
                    FingerprintTestActivity.this.mHandler.sendMessage(FingerprintTestActivity.this.mHandler.obtainMessage(2));
                    FingerprintTestActivity.this.mHandler.sendEmptyMessageDelayed(4, 1000L);
                } catch (NullPointerException e) {
                    e.printStackTrace();
                    FingerprintTestActivity.this.mHandler.sendEmptyMessageDelayed(4, 1000L);
                } catch (UnsatisfiedLinkError e2) {
                    e2.printStackTrace();
                    FingerprintTestActivity.this.mHandler.sendEmptyMessageDelayed(4, 1000L);
                }
            }
        }).start();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mHandler.removeMessages(4);
        Log.d(TAG, "onPause, deInit sensor");
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        int iFactory_exit;
        try {
            iFactory_exit = this.theTestImpl.factory_exit();
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
            iFactory_exit = 0;
        }
        Log.d(TAG, "deinit fd ret = " + iFactory_exit);
        super.onDestroy();
    }
}
