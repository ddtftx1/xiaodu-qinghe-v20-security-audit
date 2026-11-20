package com.sprd.validationtools.itemstest.sensor;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.Settings;
import android.util.Log;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.OpenOption;

/* loaded from: classes.dex */
public class PsensorTestActivity extends BaseActivity {
    private static final int BRIGHTNESS_CURRENT_VALUE = 180;
    private static final float BRIGHTNESS_MAX_VALUE = 255.0f;
    private static final int LSENSOR_DEFAULT_VALUE = 0;
    private static final float MAXIMUM_BACKLIGHT = 1.0f;
    private static final int MAX_VALUE_PROGRESSBAR = 300;
    private static final float MINIMUM_BACKLIGHT = 0.1f;
    private static final int PSENSORNOISE_DEFAULT_VALUE = 0;
    private static final float PSENSOR_DEFAULT_VALUE = 1.0f;
    private static final String SensorNoiseFile = "/sys/class/sprd_sensorhub/sensor_hub/raw_data_ps";
    private static final String TAG = "PsensorTestActivity";
    private static final String VALUE_CLOSE = "Closer";
    private static final String VALUE_FAR = "Distant";
    private static final float VALUE_OF_CHANGE_COLOR = 0.5f;
    private ProgressBar lsensorProgressBar;
    private float mBrightnessValue;
    private Context mContext;
    private int mCurrentValue;
    private TextView psensorNoiseView;
    private TextView psensorTextView;
    private TextView valueIllumination;
    private SensorManager pManager = null;
    private Sensor pSensor = null;
    private SensorEventListener pListener = null;
    private SensorManager lManager = null;
    private Sensor lSensor = null;
    private SensorEventListener lListener = null;
    private int mSensorMin = -1;
    private int mSensorMax = -1;
    private boolean mIsCloseDone = false;
    private boolean mIsDistantDone = false;
    private boolean mSupportLsensor = true;
    private boolean flag = true;
    private Handler mHandler = null;
    private HandlerThread mBackgroundThread = null;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mContext = this;
        setContentView(R.layout.sensor_proximity);
        this.psensorTextView = (TextView) findViewById(R.id.txt_psensor);
        initSensor();
        setPsensorDisplay(VALUE_FAR, 1.0f, -1);
        try {
            this.mCurrentValue = Settings.System.getInt(getContentResolver(), "screen_brightness");
        } catch (Settings.SettingNotFoundException unused) {
            this.mCurrentValue = BRIGHTNESS_CURRENT_VALUE;
        }
        this.mBrightnessValue = this.mCurrentValue / BRIGHTNESS_MAX_VALUE;
        this.valueIllumination = (TextView) findViewById(R.id.txt_value_lsensor);
        this.psensorNoiseView = (TextView) findViewById(R.id.txt_noise_psensor);
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.progressbar_lsensor);
        this.lsensorProgressBar = progressBar;
        progressBar.setMax(MAX_VALUE_PROGRESSBAR);
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        this.lManager = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(5);
        this.lSensor = defaultSensor;
        this.mSupportLsensor = defaultSensor != null;
        Log.d(TAG, "onCreate lSensor=" + this.lSensor + ",mSupportLsensor=" + this.mSupportLsensor);
        this.lsensorProgressBar.setVisibility(!this.mSupportLsensor ? 8 : 0);
        this.valueIllumination.setVisibility(this.mSupportLsensor ? 0 : 8);
        TextView textView = (TextView) findViewById(R.id.test_tile);
        if (textView != null) {
            textView.setText(!this.mSupportLsensor ? R.string.tip_for_psensor_zte : R.string.tip_for_psensor);
        }
        setTitle(this.mSupportLsensor ? R.string.proximity_sensor_test : R.string.proximity_sensor_only_test);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        this.lListener = new SensorEventListener() { // from class: com.sprd.validationtools.itemstest.sensor.PsensorTestActivity.1
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
                float f = sensorEvent.values[0];
                int i = (int) f;
                if (PsensorTestActivity.this.mSensorMin == -1 || PsensorTestActivity.this.mSensorMin > f) {
                    PsensorTestActivity.this.mSensorMin = i;
                }
                if (PsensorTestActivity.this.mSensorMax == -1 || PsensorTestActivity.this.mSensorMax < f) {
                    PsensorTestActivity.this.mSensorMax = i;
                }
                PsensorTestActivity.this.showStatus(f);
                if (PsensorTestActivity.this.mSensorMax - PsensorTestActivity.this.mSensorMin <= 0 || !PsensorTestActivity.this.mIsCloseDone) {
                    return;
                }
                boolean unused2 = PsensorTestActivity.this.mIsDistantDone;
            }
        };
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        setPsensorDisplay(VALUE_FAR, 1.0f, -1);
        this.psensorTextView.setBackgroundColor(-1);
        this.pManager.registerListener(this.pListener, this.pSensor, 0);
        this.valueIllumination.setText(getString(R.string.lsensor_value) + 0);
        this.psensorNoiseView.setText(getString(R.string.psensornoise_value) + 0);
        this.lsensorProgressBar.setProgress(0);
        this.lManager.registerListener(this.lListener, this.lSensor, 0);
        startBackgroundThread();
        this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.sensor.PsensorTestActivity.2
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                PsensorTestActivity.this.mHandler.postDelayed(this, 1000L);
                PsensorTestActivity.this.checkPSensorNoise();
            }
        }, 1000L);
    }

    @Override // android.app.Activity
    protected void onPause() {
        SensorManager sensorManager = this.pManager;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.pListener);
        }
        this.lManager.unregisterListener(this.lListener);
        setBrightness(this.mBrightnessValue);
        stopBackgroundThread();
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showStatus(float f) {
        this.valueIllumination.setText(getString(R.string.lsensor_value) + f);
        this.lsensorProgressBar.setProgress((int) f);
        float f2 = f / BRIGHTNESS_MAX_VALUE;
        if (f2 > 1.0f) {
            setBrightness(1.0f);
        } else if (f2 < MINIMUM_BACKLIGHT) {
            setBrightness(MINIMUM_BACKLIGHT);
        } else {
            setBrightness(f2);
        }
    }

    private void setBrightness(float f) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.screenBrightness = f;
        getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPsensorDisplay(String str, float f, int i) {
        this.psensorTextView.setText("");
        if (this.pSensor != null) {
            this.psensorTextView.append("Chip id: " + this.pSensor.getName() + "\n");
        }
        this.psensorTextView.append(getString(R.string.psensor_msg_data) + " " + f + "\n");
        this.psensorTextView.append(getString(R.string.psensor_msg_value) + " " + str);
        this.psensorTextView.setBackgroundColor(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0091: MOVE (r2 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:44:0x0091 */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.InputStream] */
    private String getValueFromFile() throws Throwable {
        InputStreamReader inputStreamReader;
        Exception e;
        InputStreamReader inputStreamReader2;
        ?? file = new File(SensorNoiseFile);
        InputStreamReader inputStreamReader3 = null;
        try {
            try {
                file = Files.newInputStream(file.toPath(), new OpenOption[0]);
            } catch (Throwable th) {
                th = th;
                inputStreamReader3 = inputStreamReader2;
            }
        } catch (Exception e2) {
            inputStreamReader = null;
            e = e2;
            file = 0;
        } catch (Throwable th2) {
            th = th2;
            file = 0;
        }
        try {
            inputStreamReader = new InputStreamReader((InputStream) file, Charset.defaultCharset());
            try {
                char[] cArr = new char[1024];
                int i = inputStreamReader.read(cArr);
                inputStreamReader.close();
                file.close();
                if (i <= 0) {
                    try {
                        inputStreamReader.close();
                        if (file != 0) {
                            file.close();
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    return "0";
                }
                String strTrim = String.valueOf(cArr, 0, i).trim();
                try {
                    inputStreamReader.close();
                    if (file != 0) {
                        file.close();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return strTrim;
            } catch (Exception e5) {
                e = e5;
                e.printStackTrace();
                this.showToastShort("/sys/class/sprd_sensorhub/sensor_hub/raw_data_ps " + e.getMessage());
                if (inputStreamReader != null) {
                    try {
                        inputStreamReader.close();
                    } catch (Exception e6) {
                        e6.printStackTrace();
                        return "0";
                    }
                }
                if (file != 0) {
                    file.close();
                }
                return "0";
            }
        } catch (Exception e7) {
            inputStreamReader = null;
            e = e7;
        } catch (Throwable th3) {
            th = th3;
            if (inputStreamReader3 != null) {
                try {
                    inputStreamReader3.close();
                } catch (Exception e8) {
                    e8.printStackTrace();
                    throw th;
                }
            }
            if (file != 0) {
                file.close();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPSensorNoise() throws Throwable {
        String valueFromFile = getValueFromFile();
        try {
            Integer.parseInt(valueFromFile);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        this.psensorNoiseView.setText(getString(R.string.psensornoise_value) + valueFromFile);
    }

    private void startBackgroundThread() {
        HandlerThread handlerThread = new HandlerThread("pSensorBackground");
        this.mBackgroundThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(getMainLooper());
    }

    private void stopBackgroundThread() {
        try {
            this.mBackgroundThread.quitSafely();
            this.mBackgroundThread.join();
            this.mHandler.removeCallbacksAndMessages(null);
            this.mBackgroundThread = null;
            this.mHandler = null;
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        }
    }

    private void initSensor() {
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        this.pManager = sensorManager;
        this.pSensor = sensorManager.getDefaultSensor(8);
        this.pListener = new SensorEventListener() { // from class: com.sprd.validationtools.itemstest.sensor.PsensorTestActivity.3
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
                float f = sensorEvent.values[0];
                if (f <= PsensorTestActivity.VALUE_OF_CHANGE_COLOR) {
                    PsensorTestActivity.this.setPsensorDisplay(PsensorTestActivity.VALUE_CLOSE, f, SupportMenu.CATEGORY_MASK);
                    PsensorTestActivity.this.mIsCloseDone = true;
                } else if (PsensorTestActivity.this.mIsCloseDone) {
                    PsensorTestActivity.this.setPsensorDisplay(PsensorTestActivity.VALUE_FAR, f, -1);
                    PsensorTestActivity.this.mIsDistantDone = true;
                } else {
                    Log.d("", "Must be test near first!");
                }
                Log.d(PsensorTestActivity.TAG, "onSensorChanged22 mSensorMax=" + PsensorTestActivity.this.mSensorMax + ",mSensorMin=" + PsensorTestActivity.this.mSensorMin + ",mIsCloseDone=" + PsensorTestActivity.this.mIsCloseDone + ",mIsDistantDone=" + PsensorTestActivity.this.mIsDistantDone + ",mSupportLsensor=" + PsensorTestActivity.this.mSupportLsensor);
                if (PsensorTestActivity.this.mSupportLsensor) {
                    if (PsensorTestActivity.this.mSensorMax - PsensorTestActivity.this.mSensorMin > 0 && PsensorTestActivity.this.mIsCloseDone && PsensorTestActivity.this.mIsDistantDone) {
                        Toast.makeText(PsensorTestActivity.this.mContext, R.string.text_pass, 0).show();
                        PsensorTestActivity.this.storeRusult(true);
                        PsensorTestActivity.this.flag = false;
                        PsensorTestActivity.this.finish();
                        return;
                    }
                    return;
                }
                if (PsensorTestActivity.this.mIsCloseDone && PsensorTestActivity.this.mIsDistantDone) {
                    Toast.makeText(PsensorTestActivity.this.mContext, R.string.text_pass, 0).show();
                    PsensorTestActivity.this.storeRusult(true);
                    PsensorTestActivity.this.flag = false;
                    PsensorTestActivity.this.finish();
                }
            }
        };
    }
}
