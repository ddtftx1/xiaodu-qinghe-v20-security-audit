package com.sprd.validationtools.itemstest.camera;

import android.hardware.Camera;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class CIFCameraTest extends BaseActivity {
    private static final String TAG = "CIFCameraTest";
    private static final String brightnessinfoPath = "/sys/devices/virtual/misc/sprd_sensor/cif_brightness";
    private TextView cif_camera_tv;
    private int timeCount = 0;
    private Camera mCamera = null;
    public Handler mHandler = new Handler();
    private String brightness_value_old = "00";
    private boolean isResultOK = false;
    private Runnable mR = new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.CIFCameraTest.1
        @Override // java.lang.Runnable
        public void run() {
            if (CIFCameraTest.this.isResultOK) {
                Toast.makeText(CIFCameraTest.this, R.string.text_pass, 0).show();
                CIFCameraTest.this.storeRusult(true);
                CIFCameraTest.this.finish();
            } else {
                Toast.makeText(CIFCameraTest.this, R.string.text_fail, 0).show();
                CIFCameraTest.this.storeRusult(false);
                CIFCameraTest.this.finish();
            }
        }
    };
    private Runnable mRimer = new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.CIFCameraTest.2
        @Override // java.lang.Runnable
        public void run() {
            CIFCameraTest.this.runOnUiThread(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.CIFCameraTest.2.1
                @Override // java.lang.Runnable
                public void run() throws IOException {
                    String infoByPath = CIFCameraTest.this.getInfoByPath(CIFCameraTest.brightnessinfoPath);
                    CIFCameraTest.this.cif_camera_tv.setText(CIFCameraTest.this.getString(R.string.cif_camera_info_value, new Object[]{infoByPath}));
                    if (!"0x7a8d".equals(infoByPath) && !"0".equals(infoByPath)) {
                        if (!CIFCameraTest.this.brightness_value_old.equals(infoByPath)) {
                            CIFCameraTest.this.isResultOK = true;
                        }
                    } else {
                        CIFCameraTest.this.setPassBtnEnabled(false);
                    }
                    CIFCameraTest.this.brightness_value_old = CIFCameraTest.this.getInfoByPath(CIFCameraTest.brightnessinfoPath);
                    if (CIFCameraTest.this.timeCount == 20) {
                        CIFCameraTest.this.mHandler.post(CIFCameraTest.this.mR);
                    }
                }
            });
            CIFCameraTest.access$408(CIFCameraTest.this);
            CIFCameraTest.this.mHandler.postDelayed(CIFCameraTest.this.mRimer, 200L);
        }
    };

    static /* synthetic */ int access$408(CIFCameraTest cIFCameraTest) {
        int i = cIFCameraTest.timeCount;
        cIFCameraTest.timeCount = i + 1;
        return i;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.cif_camera_layout);
        getWindow().setFlags(128, 128);
        getWindow().addFlags(524288);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        this.cif_camera_tv = (TextView) findViewById(R.id.cif_camera_info);
        try {
            this.mCamera = Camera.open(0);
        } catch (RuntimeException e) {
            Log.e(TAG, "fail to open camera");
            e.printStackTrace();
            this.mCamera = null;
        }
        this.mHandler.post(this.mRimer);
        this.brightness_value_old = getInfoByPath(brightnessinfoPath);
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.mHandler.removeCallbacks(this.mR);
        this.mHandler.removeCallbacks(this.mRimer);
        Camera camera = this.mCamera;
        if (camera != null) {
            camera.release();
        }
        super.onPause();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getInfoByPath(String str) throws IOException {
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
}
