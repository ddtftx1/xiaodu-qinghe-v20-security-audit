package com.sprd.validationtools.itemstest.audio;

import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class SmartPATest extends BaseActivity {
    private static final int SMARTPA_CALIBRATION_FAIL = 0;
    private static final int SMARTPA_CALIBRATION_SUCCESS = 1;
    private static final String TAG = "SmartPATest";
    private TextView mRisistanceTV = null;
    private AudioManager mAudioManager = null;
    private float mResistance = 0.0f;
    private float mResistanceMax = 0.0f;
    private float mResistanceMin = 0.0f;
    private Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.audio.SmartPATest.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                Log.d(SmartPATest.TAG, "SMARTPA_CALIBRATION_FAIL, mResistance=:" + SmartPATest.this.mResistance);
                SmartPATest.this.mRisistanceTV.setText(SmartPATest.this.mResistance + "ohm");
                SmartPATest.this.mRisistanceTV.setTextColor(SupportMenu.CATEGORY_MASK);
                Toast.makeText(SmartPATest.this, "SmartPATest Calibration Fialed!", 0).show();
                postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.SmartPATest.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SmartPATest.this.storeRusult(false);
                        SmartPATest.this.finish();
                    }
                }, 2000L);
                return;
            }
            if (i != 1) {
                return;
            }
            Log.d(SmartPATest.TAG, "SMARTPA_CALIBRATION_SUCCESS, mResistance=:" + SmartPATest.this.mResistance);
            SmartPATest.this.mRisistanceTV.setText(SmartPATest.this.mResistance + "ohm");
            SmartPATest.this.mRisistanceTV.setTextColor(-16711936);
            Toast.makeText(SmartPATest.this, "SmartPATest Calibration Success!", 0).show();
            postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.SmartPATest.1.1
                @Override // java.lang.Runnable
                public void run() {
                    SmartPATest.this.storeRusult(true);
                    SmartPATest.this.finish();
                }
            }, 2000L);
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d(TAG, "onCreate");
        setContentView(R.layout.activity_smartpa_test);
        this.mRisistanceTV = (TextView) findViewById(R.id.risistance_tv);
        this.mAudioManager = (AudioManager) getSystemService("audio");
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
    }

    @Override // android.app.Activity
    protected void onResume() {
        Log.d(TAG, "onResume");
        this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.SmartPATest.2
            @Override // java.lang.Runnable
            public void run() {
                SmartPATest.this.startSmartpaTest();
            }
        }, 200L);
        super.onResume();
    }

    protected void startSmartpaTest() {
        new Thread(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.SmartPATest.3
            @Override // java.lang.Runnable
            public void run() {
                Message messageObtain = Message.obtain();
                SmartPATest.this.mAudioManager.setParameters("SmartAmpCalibration=1");
                String parameters = SmartPATest.this.mAudioManager.getParameters("SmartAmpCalibrationValues");
                String parameters2 = SmartPATest.this.mAudioManager.getParameters("SmartAmpMaxResistance");
                String parameters3 = SmartPATest.this.mAudioManager.getParameters("SmartAmpMinResistance");
                Log.d(SmartPATest.TAG, "result=:" + parameters);
                if (parameters == null || parameters.contains("null") || parameters.equals("")) {
                    messageObtain.what = 0;
                    SmartPATest.this.mResistance = 0.0f;
                } else {
                    try {
                        String strSubstring = parameters.substring(parameters.lastIndexOf("=") + 1);
                        String strSubstring2 = parameters2.substring(parameters2.lastIndexOf("=") + 1);
                        String strSubstring3 = parameters3.substring(parameters3.lastIndexOf("=") + 1);
                        float fIntValue = Integer.valueOf(strSubstring).intValue() / 1024.0f;
                        SmartPATest.this.mResistanceMax = Float.parseFloat(strSubstring2);
                        SmartPATest.this.mResistanceMin = Float.parseFloat(strSubstring3);
                        SmartPATest.this.mResistance = Math.round(fIntValue * 100.0f) / 100.0f;
                        Log.d(SmartPATest.TAG, "mResistanceMax = " + SmartPATest.this.mResistanceMax + ", mResistanceMin = " + SmartPATest.this.mResistanceMin + ", mResistance = " + SmartPATest.this.mResistance);
                        if (SmartPATest.this.mResistance > SmartPATest.this.mResistanceMax || SmartPATest.this.mResistance < SmartPATest.this.mResistanceMin) {
                            messageObtain.what = 0;
                        } else {
                            messageObtain.what = 1;
                        }
                    } catch (Exception e) {
                        Log.d(SmartPATest.TAG, "result can not transfer to Integer...");
                        SmartPATest.this.mResistance = 0.0f;
                        e.printStackTrace();
                    }
                }
                SmartPATest.this.mHandler.sendMessageDelayed(messageObtain, 1000L);
            }
        }).start();
    }
}
