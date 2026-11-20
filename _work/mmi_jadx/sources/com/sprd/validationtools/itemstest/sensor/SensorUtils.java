package com.sprd.validationtools.itemstest.sensor;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
import com.sprd.validationtools.Const;
import com.sprd.validationtools.utils.FileUtils;
import java.io.IOException;

/* loaded from: classes.dex */
public class SensorUtils {
    private static final String TAG = "SensorUtils";
    private static final String TEST_OK = "2";
    private static final int mSensorCaliSaveResultPass = 30;
    private Context mContext;
    private Sensor mSensor;
    private SensorEventListener mSensorEventListener;
    private SensorManager mSensorManager;
    private int mSensorType;

    public SensorUtils(Context context, int i) {
        this.mSensorManager = null;
        this.mSensor = null;
        this.mContext = null;
        this.mSensorType = -1;
        this.mSensorEventListener = null;
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.mSensorManager = sensorManager;
        this.mContext = context;
        this.mSensorType = i;
        this.mSensor = sensorManager.getDefaultSensor(i);
        this.mSensorEventListener = new SensorEventListener() { // from class: com.sprd.validationtools.itemstest.sensor.SensorUtils.1
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i2) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
            }
        };
    }

    public boolean enableSensor() {
        if (this.mSensorManager == null) {
            this.mSensorManager = (SensorManager) this.mContext.getSystemService("sensor");
        }
        Log.d(TAG, "enableSensor mSensorType=" + this.mSensorType);
        SensorManager sensorManager = this.mSensorManager;
        if (sensorManager != null) {
            return sensorManager.registerListener(this.mSensorEventListener, this.mSensor, 0);
        }
        return false;
    }

    public void disableSensor() {
        if (this.mSensorManager == null) {
            this.mSensorManager = (SensorManager) this.mContext.getSystemService("sensor");
        }
        Log.d(TAG, "enableSensor mSensorType=" + this.mSensorType);
        SensorManager sensorManager = this.mSensorManager;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.mSensorEventListener);
        }
    }

    public static boolean getResult(String str) throws IOException {
        FileUtils.writeFile(Const.CALIBRATOR_CMD, str);
        String file = FileUtils.readFile(Const.CALIBRATOR_DATA);
        Log.d(TAG, "getResult the result of boolen Result: " + file);
        return file != null && TEST_OK.equals(file.trim());
    }

    public static boolean saveResult(String str, String str2) throws Throwable {
        Log.d(TAG, "saveResult...");
        FileUtils.writeFile(Const.CALIBRATOR_CMD, str);
        if (FileUtils.readFileData(Const.CALIBRATOR_DATA) == mSensorCaliSaveResultPass) {
            int iSaveFileData = FileUtils.saveFileData(Const.CALIBRATOR_DATA, str2);
            Log.d(TAG, "save result: " + iSaveFileData);
            if (iSaveFileData == mSensorCaliSaveResultPass) {
                return true;
            }
        }
        return false;
    }
}
