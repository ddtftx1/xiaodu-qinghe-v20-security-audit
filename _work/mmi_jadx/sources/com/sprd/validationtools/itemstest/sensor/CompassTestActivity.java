package com.sprd.validationtools.itemstest.sensor;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.widget.TextView;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class CompassTestActivity extends BaseActivity {
    private static final float FULL_DEGREES = 360.0f;
    private Bitmap mBackground;
    private Bitmap mBitmap;
    private Canvas mCanvas;
    private SensorEventListener mMListener;
    private Sensor mMSensor;
    private SensorManager mManager;
    private SensorEventListener mOListener;
    private Sensor mOSensor;
    private Bitmap mPointer;
    private boolean isOSensorOK = false;
    private boolean isMSensorOK = false;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sensor_oritentation);
        setTitle(R.string.oritention_sensor_test);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        initDrawer();
        initSensor();
        showInfo(0.0f, 0.0f, 0.0f);
        draw(0.0f);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mManager.registerListener(this.mOListener, this.mOSensor, 0);
        this.mManager.registerListener(this.mMListener, this.mMSensor, 0);
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.mManager.unregisterListener(this.mOListener);
        this.mManager.unregisterListener(this.mMListener);
        super.onPause();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        this.mBackground.recycle();
        this.mPointer.recycle();
        this.mBitmap.recycle();
        this.mCanvas = null;
        super.onDestroy();
    }

    private void initSensor() {
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        this.mManager = sensorManager;
        this.mOSensor = sensorManager.getDefaultSensor(3);
        this.mOListener = new SensorEventListener() { // from class: com.sprd.validationtools.itemstest.sensor.CompassTestActivity.1
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
                float f = sensorEvent.values[0];
                CompassTestActivity.this.showOrien(f);
                CompassTestActivity.this.draw(f);
                if (f != 0.0f) {
                    CompassTestActivity.this.isOSensorOK = true;
                }
                if (CompassTestActivity.this.isOSensorOK && CompassTestActivity.this.isMSensorOK) {
                    CompassTestActivity.this.setPassBtnEnabled(true);
                }
            }
        };
        this.mMSensor = this.mManager.getDefaultSensor(2);
        this.mMListener = new SensorEventListener() { // from class: com.sprd.validationtools.itemstest.sensor.CompassTestActivity.2
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
                float f = sensorEvent.values[0];
                float f2 = sensorEvent.values[1];
                float f3 = sensorEvent.values[2];
                CompassTestActivity.this.showInfo(f, f2, f3);
                if (f != 0.0f && f2 != 0.0f && f3 != 0.0f) {
                    CompassTestActivity.this.isMSensorOK = true;
                }
                if (CompassTestActivity.this.isOSensorOK && CompassTestActivity.this.isMSensorOK) {
                    CompassTestActivity.this.setPassBtnEnabled(true);
                }
            }
        };
    }

    private void initDrawer() {
        this.mBackground = BitmapFactory.decodeResource(getResources(), R.drawable.compass_bg);
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.compass_p);
        this.mPointer = bitmapDecodeResource;
        this.mBitmap = Bitmap.createBitmap(bitmapDecodeResource.getWidth(), this.mPointer.getHeight(), Bitmap.Config.ARGB_8888);
        this.mCanvas = new Canvas(this.mBitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showInfo(float f, float f2, float f3) {
        TextView textView = (TextView) findViewById(R.id.txt_msg_osensor);
        textView.setText("");
        if (this.mMSensor != null) {
            textView.append("chip id: " + this.mMSensor.getName() + "\n");
        }
        textView.append(" X = " + f + "\n");
        textView.append(" Y = " + f2 + "\n");
        textView.append(" Z = " + f3 + "\n");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOrien(float f) {
        ((TextView) findViewById(R.id.txt_msg_orien)).setText(getString(R.string.osensor_orien) + f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void draw(float f) {
        Matrix matrix = new Matrix();
        Paint paint = new Paint();
        matrix.postRotate(FULL_DEGREES - f, this.mPointer.getWidth() / 2.0f, this.mPointer.getHeight() / 2.0f);
        this.mCanvas.drawBitmap(this.mBackground, new Matrix(), paint);
        this.mCanvas.drawBitmap(this.mPointer, matrix, paint);
        findViewById(R.id.orien_image).setBackgroundDrawable(new BitmapDrawable(this.mBitmap));
    }
}
