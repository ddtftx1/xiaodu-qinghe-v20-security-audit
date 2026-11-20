package com.sprd.validationtools.itemstest.sensor;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class LsensorNoiseTestActivity extends BaseActivity {
    private static final float PSENSOR_DEFAULT_VALUE = 1.0f;
    public static final String SensorNoiseFile = "/sys/class/xr-pls/device/ps_noise";
    private static final String TAG = "LsensorNoiseTestActivity";
    private static final String VALUE_CLOSE = "Closer";
    private static final String VALUE_FAR = "Distant";
    private static final float VALUE_OF_CHANGE_COLOR = 0.5f;
    private Context mContext;
    private TextView psensorTextView;
    private SensorManager pManager = null;
    private Sensor pSensor = null;
    private SensorEventListener pListener = null;
    private boolean mIsCloseDone = false;
    private boolean mIsDistantDone = false;
    private HandlerThread mBackgroundThread = null;
    private Handler mHandler = null;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mContext = this;
        setContentView(R.layout.sensor_noise_proximity);
        this.psensorTextView = (TextView) findViewById(R.id.txt_psensor);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        initSensor();
        setPsensorDisplay(VALUE_FAR, PSENSOR_DEFAULT_VALUE, -1, "0");
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.psensorTextView.setBackgroundColor(-1);
        this.pManager.registerListener(this.pListener, this.pSensor, 0);
        startBackgroundThread();
        this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.LsensorNoiseTestActivity.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                LsensorNoiseTestActivity.this.checkLightSensorNoise(LsensorNoiseTestActivity.PSENSOR_DEFAULT_VALUE);
            }
        }, 1000L);
    }

    @Override // android.app.Activity
    protected void onPause() {
        SensorManager sensorManager = this.pManager;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.pListener);
        }
        stopBackgroundThread();
        super.onPause();
    }

    private void setPsensorDisplay(String str, float f, int i, String str2) {
        this.psensorTextView.setText("");
        if (this.pSensor != null) {
            this.psensorTextView.append("Chip id: " + this.pSensor.getName() + "\n");
        }
        this.psensorTextView.append(getString(R.string.psensor_noise_msg_data) + " " + str2 + "\n");
        this.psensorTextView.append(getString(R.string.psensor_msg_value) + " " + str);
        this.psensorTextView.setBackgroundColor(i);
    }

    private void initSensor() {
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        this.pManager = sensorManager;
        this.pSensor = sensorManager.getDefaultSensor(8);
        this.pListener = new SensorEventListener() { // from class: com.sprd.validationtools.itemstest.sensor.LsensorNoiseTestActivity.2
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x007a A[Catch: IOException -> 0x0076, TRY_LEAVE, TryCatch #2 {IOException -> 0x0076, blocks: (B:42:0x0072, B:46:0x007a), top: B:52:0x0072 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String getValueFromFile(java.lang.String r6) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "0"
            java.io.File r1 = new java.io.File
            r1.<init>(r6)
            r6 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L56
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L56
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
            java.nio.charset.Charset r3 = java.nio.charset.Charset.defaultCharset()     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
            r6 = 1024(0x400, float:1.435E-42)
            char[] r6 = new char[r6]     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L6f
            int r3 = r1.read(r6)     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L6f
            r1.close()     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L6f
            r2.close()     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L6f
            if (r3 <= 0) goto L3b
            r4 = 0
            java.lang.String r6 = java.lang.String.valueOf(r6, r4, r3)     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L6f
            java.lang.String r6 = r6.trim()     // Catch: java.io.IOException -> L47 java.lang.Throwable -> L6f
            r1.close()     // Catch: java.io.IOException -> L36
            r2.close()     // Catch: java.io.IOException -> L36
            goto L3a
        L36:
            r0 = move-exception
            r0.printStackTrace()
        L3a:
            return r6
        L3b:
            r1.close()     // Catch: java.io.IOException -> L42
            r2.close()     // Catch: java.io.IOException -> L42
            goto L46
        L42:
            r6 = move-exception
            r6.printStackTrace()
        L46:
            return r0
        L47:
            r6 = move-exception
            goto L5a
        L49:
            r0 = move-exception
            r1 = r6
            goto L54
        L4c:
            r1 = move-exception
            r5 = r1
            r1 = r6
            r6 = r5
            goto L5a
        L51:
            r0 = move-exception
            r1 = r6
            r2 = r1
        L54:
            r6 = r0
            goto L70
        L56:
            r1 = move-exception
            r2 = r6
            r6 = r1
            r1 = r2
        L5a:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L6f
            if (r1 == 0) goto L65
            r1.close()     // Catch: java.io.IOException -> L63
            goto L65
        L63:
            r6 = move-exception
            goto L6b
        L65:
            if (r2 == 0) goto L6e
            r2.close()     // Catch: java.io.IOException -> L63
            goto L6e
        L6b:
            r6.printStackTrace()
        L6e:
            return r0
        L6f:
            r6 = move-exception
        L70:
            if (r1 == 0) goto L78
            r1.close()     // Catch: java.io.IOException -> L76
            goto L78
        L76:
            r0 = move-exception
            goto L7e
        L78:
            if (r2 == 0) goto L81
            r2.close()     // Catch: java.io.IOException -> L76
            goto L81
        L7e:
            r0.printStackTrace()
        L81:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.sensor.LsensorNoiseTestActivity.getValueFromFile(java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLightSensorNoise(float f) throws Throwable {
        int iIntValue;
        String valueFromFile = getValueFromFile(SensorNoiseFile);
        Log.d(TAG, "setPsensorDisplay value=" + valueFromFile);
        if (f <= VALUE_OF_CHANGE_COLOR) {
            setPsensorDisplay(VALUE_CLOSE, f, SupportMenu.CATEGORY_MASK, valueFromFile);
            this.mIsDistantDone = false;
        } else {
            setPsensorDisplay(VALUE_FAR, f, -1, valueFromFile);
            this.mIsDistantDone = true;
        }
        Log.d(TAG, "onSensorChanged value=" + valueFromFile + ",mIsCloseDone=" + this.mIsCloseDone + ",mIsDistantDone=" + this.mIsDistantDone);
        try {
            iIntValue = Integer.valueOf(valueFromFile).intValue();
        } catch (NumberFormatException e) {
            e.printStackTrace();
            iIntValue = 0;
        }
        Log.d(TAG, "onSensorChanged inValues=" + iIntValue);
        if (!this.mIsDistantDone || iIntValue <= 190) {
            return;
        }
        Toast.makeText(this.mContext, R.string.text_fail, 0).show();
        storeRusult(false);
        finish();
    }

    private void startBackgroundThread() {
        HandlerThread handlerThread = new HandlerThread("CameraBackground");
        this.mBackgroundThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(this.mBackgroundThread.getLooper());
    }

    private void stopBackgroundThread() {
        try {
            this.mBackgroundThread.quitSafely();
            this.mBackgroundThread.join();
            this.mBackgroundThread = null;
            this.mHandler = null;
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        }
    }
}
