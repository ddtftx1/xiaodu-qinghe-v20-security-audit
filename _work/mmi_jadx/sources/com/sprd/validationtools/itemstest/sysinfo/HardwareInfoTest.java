package com.sprd.validationtools.itemstest.sysinfo;

import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.TextView;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.Constant;
import com.sprd.validationtools.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class HardwareInfoTest extends BaseActivity {
    private static final String TAG = "HardwareInfoTest";
    private static final String camerainfopath = "/sys/devices/virtual/misc/sprd_sensor/sprocomm_camera_info";
    private static final String flashinfoPath_name = "/sys/bus/mmc/devices/mmc0:0001/memory_type";
    private static final String lcdinfoPath = "/proc/sprocomm_lcdInfo";
    private static final String tpinfoPath = "/proc/sprocomm_tpInfo";
    TextView androidTP;
    private Runnable mRunnable;
    private Handler mUiHandler = new Handler();

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IOException {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.hardware_test);
        setTitle(R.string.hardware_test);
        this.androidTP = (TextView) findViewById(R.id.android_tp);
        String[] cameraInfo = getCameraInfo(true);
        this.androidTP.setText((((("Flash Info:\n" + getInfoByPath(flashinfoPath_name) + "\n") + "Camera Info:\n" + cameraInfo[0] + "\n" + cameraInfo[1] + "\n" + cameraInfo[2] + "\n") + "LCD Info:\n" + getInfoByPath(lcdinfoPath) + "\n") + "TP Version:\n" + getInfoByPath(tpinfoPath) + "\n") + "Momery Info:\nRAM Memory: 3GB\nROM Memory: 32GB\n");
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(true);
    }

    private String getInfoByPath(String str) throws IOException {
        String line = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(str)));
            line = bufferedReader.readLine();
            bufferedReader.close();
            return line;
        } catch (FileNotFoundException e) {
            Log.e(TAG, "FileNotFoundException");
            e.printStackTrace();
            return line;
        } catch (IOException e2) {
            Log.e(TAG, "IOException");
            e2.printStackTrace();
            return line;
        }
    }

    private String[] getCameraInfo(boolean z) throws IOException {
        String[] strArr = {"", "", ""};
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(camerainfopath)));
            strArr[0] = bufferedReader.readLine();
            Log.i("simon", "Rear Camera info: " + strArr[0]);
            if (z) {
                strArr[1] = bufferedReader.readLine();
                Log.i("simon", "Front Camera info: " + strArr[1]);
            }
            if (Constant.JAVA_FEATURE_HAVE_DURALCAEMRA) {
                strArr[2] = bufferedReader.readLine();
                Log.i("simon", "Second Camera info: " + strArr[2]);
            }
            bufferedReader.close();
        } catch (FileNotFoundException e) {
            Log.e(TAG, "FileNotFoundException");
            e.printStackTrace();
        } catch (IOException e2) {
            Log.e(TAG, "IOException");
            e2.printStackTrace();
        }
        return strArr;
    }
}
