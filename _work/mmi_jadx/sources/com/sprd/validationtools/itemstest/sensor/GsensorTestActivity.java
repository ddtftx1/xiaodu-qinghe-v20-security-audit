package com.sprd.validationtools.itemstest.sensor;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class GsensorTestActivity extends BaseActivity {
    private static final int DATA_X = 0;
    private static final int DATA_Y = 1;
    private static final int DELAY_TIME = 300;
    private static final int SHOW_MSG = 1;
    private TextView mDownTxt;
    private TextView mLeftTxt;
    private TextView mRightTxt;
    private Timer mTimer;
    private TextView mUpTxt;
    private float[] mValues;
    private SensorManager manager = null;
    private Sensor sensor = null;
    private SensorEventListener listener = null;
    private TextView mTextView = null;
    public Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.sensor.GsensorTestActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            String str = (String) message.obj;
            if (GsensorTestActivity.this.mTextView != null) {
                GsensorTestActivity.this.mTextView.setText(str);
            }
        }
    };
    private boolean mDxOk = false;
    private boolean mDyOk = false;
    private boolean mDzOk = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void showMsg(float f, float f2, float f3) {
        StringBuffer stringBuffer = new StringBuffer("");
        if (this.sensor != null) {
            stringBuffer.append("chip id: " + this.sensor.getName() + "\n");
        }
        stringBuffer.append(" X = " + f + "\n");
        stringBuffer.append(" Y = " + f2 + "\n");
        stringBuffer.append(" Z = " + f3 + "\n");
        Message messageObtain = Message.obtain();
        messageObtain.obj = stringBuffer.toString();
        messageObtain.what = 1;
        this.mHandler.sendMessage(messageObtain);
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sensor_gravity);
        setTitle(R.string.gravity_sensor_test);
        this.mTextView = (TextView) findViewById(R.id.txt_msg_gsensor);
        this.mUpTxt = (TextView) findViewById(R.id.txt_sensor_arrow_up);
        this.mDownTxt = (TextView) findViewById(R.id.txt_sensor_arrow_down);
        this.mLeftTxt = (TextView) findViewById(R.id.txt_sensor_arrow_left);
        this.mRightTxt = (TextView) findViewById(R.id.txt_sensor_arrow_right);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        showMsg(0.0f, 0.0f, 0.0f);
        initSensor();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.manager.registerListener(this.listener, this.sensor, 1);
        Timer timer = this.mTimer;
        if (timer != null) {
            timer.cancel();
            this.mTimer = null;
        }
        Timer timer2 = new Timer();
        this.mTimer = timer2;
        timer2.schedule(new TimerTask() { // from class: com.sprd.validationtools.itemstest.sensor.GsensorTestActivity.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                GsensorTestActivity.this.runOnUiThread(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.GsensorTestActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (GsensorTestActivity.this.mValues != null) {
                            float f = GsensorTestActivity.this.mValues[0];
                            float f2 = GsensorTestActivity.this.mValues[1];
                            if (Math.abs(f) < 1.0f) {
                                f = 0.0f;
                            }
                            if (Math.abs(f2) < 1.0f) {
                                f2 = 0.0f;
                            }
                            GsensorTestActivity.this.showArrow(f, f2);
                        }
                    }
                });
            }
        }, 0L, 300L);
    }

    @Override // android.app.Activity
    protected void onPause() {
        Timer timer = this.mTimer;
        if (timer != null) {
            timer.cancel();
            this.mTimer = null;
        }
        this.manager.unregisterListener(this.listener);
        super.onPause();
    }

    private void initSensor() {
        this.listener = new SensorEventListener() { // from class: com.sprd.validationtools.itemstest.sensor.GsensorTestActivity.3
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
                GsensorTestActivity.this.mValues = sensorEvent.values;
                GsensorTestActivity.this.showMsg(sensorEvent.values[0], sensorEvent.values[1], sensorEvent.values[2]);
                double dAbs = Math.abs(9.8d - Math.abs(r0));
                double dAbs2 = Math.abs(9.8d - Math.abs(r2));
                double dAbs3 = Math.abs(9.8d - Math.abs(r13));
                if (!GsensorTestActivity.this.mDxOk) {
                    GsensorTestActivity.this.mDxOk = dAbs < 0.784d;
                }
                if (!GsensorTestActivity.this.mDyOk) {
                    GsensorTestActivity.this.mDyOk = dAbs2 < 0.784d;
                }
                if (GsensorTestActivity.this.mDzOk) {
                    return;
                }
                GsensorTestActivity.this.mDzOk = dAbs3 < 0.784d;
            }
        };
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        this.manager = sensorManager;
        this.sensor = sensorManager.getDefaultSensor(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showArrow(float f, float f2) {
        Handler handler;
        if (Math.abs(f) <= Math.abs(f2)) {
            if (f2 < 0.0f) {
                this.mUpTxt.setBackgroundResource(R.drawable.arrow_up);
            } else if (f2 > 0.0f) {
                this.mDownTxt.setBackgroundResource(R.drawable.arrow_down);
            }
        } else if (f < 0.0f) {
            this.mRightTxt.setBackgroundResource(R.drawable.arrow_right);
        } else {
            this.mLeftTxt.setBackgroundResource(R.drawable.arrow_left);
        }
        if (this.mUpTxt.getBackground() == null || this.mDownTxt.getBackground() == null || this.mLeftTxt.getBackground() == null || this.mRightTxt.getBackground() == null || (handler = this.mHandler) == null) {
            return;
        }
        handler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.GsensorTestActivity.4
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(GsensorTestActivity.this, R.string.text_pass, 0).show();
                GsensorTestActivity.this.storeRusult(true);
                GsensorTestActivity.this.finish();
            }
        }, 500L);
    }
}
