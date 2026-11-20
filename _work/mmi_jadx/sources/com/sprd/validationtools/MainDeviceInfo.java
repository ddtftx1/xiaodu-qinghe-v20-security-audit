package com.sprd.validationtools;

import android.app.Activity;
import android.hardware.Camera;
import android.os.Bundle;
import android.os.SystemProperties;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.core.os.EnvironmentCompat;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class MainDeviceInfo extends Activity {
    private static final String TAG = "MainDeviceInfo";
    private static final String alssensorinfoPath = "/proc/Sprocomm_ALSSensorInfo";
    private static final String camerainfopath = "/sys/devices/virtual/misc/sprd_sensor/sprocomm_camera_info";
    private static final String ddr_info = "/proc/sprd_dmc/ddr_info";
    private static final String ddr_name = "/proc/sprd_dmc/property";
    private static final String flashinfoPath_name = "/sys/bus/mmc/devices/mmc0:0001/memory_type";
    private static final String flashinfoPath_name_ufs = "/sys/devices/platform/soc/soc:ap-apb/20200000.ufs/driver/20200000.ufs/string_descriptors/product_name";
    private static final String fpinfoPath = "/sys/finger_properties/finger.data";
    private static final String gsensorinfoPath = "/proc/Sprocomm_GSensorInfo";
    private static final boolean hasFrontCamera = true;
    private static final String lcdinfoPath = "/proc/sprocomm_lcdInfo";
    private static final String psensorinfoPath = "/proc/Sprocomm_PSensorInfo";
    private static final String tpinfoPath = "/proc/sprocomm_tpInfo";
    private TextView mAlspuInfo;
    private TextView mBandVersionInfo;
    private Camera mCamera = null;
    private TextView mFlagsInfo;
    private TextView mFlashInfo;
    private TextView mFpInfo;
    private View mFpview;
    private TextView mFrontCameraInfo;
    private TextView mGsensorInfo;
    private TextView mLcdInfo;
    private TextView mModemInfo;
    private TextView mPsensorInfo;
    private TextView mRearCameraInfo;
    private TextView mSecondCameraInfo;
    private TextView mThirdCameraInfo;
    private TextView mTpInfo;
    private TextView mVersionInfo;
    private TextView mfp_notice;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) throws IOException {
        super.onCreate(bundle);
        setContentView(R.layout.main_device_info);
        getWindow().setFlags(128, 128);
        try {
            this.mCamera = Camera.open(0);
        } catch (RuntimeException e) {
            Log.e(TAG, "fail to open camera");
            e.printStackTrace();
            this.mCamera = null;
        }
        TextView textView = (TextView) findViewById(R.id.flash_info);
        this.mFlashInfo = textView;
        textView.setText(getFlashInfo());
        String[] cameraInfo = getCameraInfo(true);
        TextView textView2 = (TextView) findViewById(R.id.rear_camera);
        this.mRearCameraInfo = textView2;
        textView2.setText(cameraInfo[0]);
        this.mFrontCameraInfo = (TextView) findViewById(R.id.front_camera);
        this.mSecondCameraInfo = (TextView) findViewById(R.id.second_camera);
        this.mThirdCameraInfo = (TextView) findViewById(R.id.third_camera);
        this.mFrontCameraInfo.setText(cameraInfo[1]);
        if (Constant.JAVA_FEATURE_HAVE_DURALCAEMRA) {
            this.mSecondCameraInfo.setText(cameraInfo[2]);
        } else {
            this.mSecondCameraInfo.setVisibility(8);
        }
        this.mThirdCameraInfo.setText(cameraInfo[3]);
        TextView textView3 = (TextView) findViewById(R.id.lcd_info);
        this.mLcdInfo = textView3;
        textView3.setText(getInfoByPath(lcdinfoPath));
        TextView textView4 = (TextView) findViewById(R.id.tp_info);
        this.mTpInfo = textView4;
        textView4.setText(getInfoByPath(tpinfoPath));
        TextView textView5 = (TextView) findViewById(R.id.version_info);
        this.mVersionInfo = textView5;
        textView5.setText(getVersionInfo());
        this.mfp_notice = (TextView) findViewById(R.id.fp_notice);
        TextView textView6 = (TextView) findViewById(R.id.fp_info);
        this.mFpInfo = textView6;
        textView6.setText(getFringerInfo());
        this.mFpview = findViewById(R.id.fp_view);
        if (!Constant.JAVA_FEATURE_HAVE_FINGER_KEY) {
            this.mfp_notice.setVisibility(8);
            this.mFpInfo.setVisibility(8);
            this.mFpview.setVisibility(8);
        }
        TextView textView7 = (TextView) findViewById(R.id.gsensor_info);
        this.mGsensorInfo = textView7;
        textView7.setText(getInfoByPath(gsensorinfoPath));
        TextView textView8 = (TextView) findViewById(R.id.psensor_info);
        this.mPsensorInfo = textView8;
        textView8.setText(getInfoByPath(psensorinfoPath));
        TextView textView9 = (TextView) findViewById(R.id.alssensor_info);
        this.mAlspuInfo = textView9;
        textView9.setText(getInfoByPath(alssensorinfoPath));
        TextView textView10 = (TextView) findViewById(R.id.flags_info);
        this.mFlashInfo = textView10;
        textView10.setText(getFlagsInfo());
        TextView textView11 = (TextView) findViewById(R.id.modem_info);
        this.mModemInfo = textView11;
        textView11.setText(SystemProperties.get("gsm.version.baseband", "unkown"));
        TextView textView12 = (TextView) findViewById(R.id.bandversion_info);
        this.mBandVersionInfo = textView12;
        textView12.setText(Constant.JAVA_VALUE_PLATFORM_BASELINE_VERSION);
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

    private String getFlashInfo() throws IOException {
        String infoByPath = getInfoByPath(flashinfoPath_name);
        String infoByPath2 = getInfoByPath(flashinfoPath_name_ufs);
        String infoByPath3 = getInfoByPath(ddr_name);
        String line = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(ddr_info)));
            int i = 3;
            while (true) {
                int i2 = i - 1;
                if (i <= 0) {
                    break;
                }
                line = bufferedReader.readLine();
                i = i2;
            }
            bufferedReader.close();
        } catch (FileNotFoundException e) {
            Log.e(TAG, "FileNotFoundException");
            e.printStackTrace();
        } catch (IOException e2) {
            Log.e(TAG, "IOException");
            e2.printStackTrace();
        }
        System.out.println("rathma memory_info = " + line);
        if (infoByPath2.contains("C2A562")) {
            infoByPath = "FORESEE FEUDNN128G-C2A56";
        }
        String str = "unknown!";
        if ("1024".equals(infoByPath3)) {
            if ("ISOCOM MEMA064G-M0S00".equals(infoByPath)) {
                str = infoByPath + ":MDXC2024G-M4";
            } else if ("SCY E32GCYNB1ABE00".equals(infoByPath)) {
                str = infoByPath + ":Rayson RS768M32LZ4D4ANQ-75BT";
            } else if ("ISOCOM MEMA064G M0D02".equals(infoByPath)) {
                str = infoByPath + ":MDXC1024G-M3";
            } else if ("FORESEE FEMDNN032G-A3A55".equals(infoByPath)) {
                str = infoByPath + ":NCLD3B1256M32";
            }
        } else if ("2048".equals(infoByPath3)) {
            if ("ISOCOM MEMA032G".equals(infoByPath)) {
                str = "ISOCOM MEMA032G:MDXC1016G-M2";
            } else if ("FORESEE FEMDNN032G-A3A55".equals(infoByPath)) {
                str = infoByPath + ":NCLD3B2512M32";
            } else {
                str = infoByPath + ":MDXC1016G-M2";
            }
        } else if ("3072".equals(infoByPath3)) {
            if ("ISOCOM MEMA064G-M0S00".equals(infoByPath)) {
                str = infoByPath + ":MDXC2024G-M4";
            } else if ("SCY E32GCYNB1ABE00".equals(infoByPath)) {
                str = infoByPath + ":Rayson RS768M32LZ4D4ANQ-75BT";
            } else if ("ISOCOM MEMA064G M0D02".equals(infoByPath)) {
                str = infoByPath + ":MDXC1024G-M3";
            }
        } else if ("4096".equals(infoByPath3)) {
            if ("SCY E64GDSAA2ABE00".equals(infoByPath)) {
                str = infoByPath + ":Rayson RS1G32LF4D2BDS-53BT";
            } else if ("FORESEE FEUDNN128G-C2A56".equals(infoByPath)) {
                str = infoByPath + ":Rayson RS1G32LO4D2BDS-53BT";
            } else {
                str = infoByPath + ":Rayson RS1G32LO4D2BDS-53BT";
            }
        } else {
            str = "6144".equals(infoByPath3) ? infoByPath + ":Rayson RS1536M32LB4D4BDT-53BT" : null;
        }
        return String.format("memory: %s", str);
    }

    private String getFringerInfo() {
        return String.format("finger ic: %s", getInfoByPath(fpinfoPath));
    }

    private String[] getCameraInfo(boolean z) throws IOException {
        String[] strArr = {"", "", "", ""};
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
            strArr[3] = " ";
            bufferedReader.close();
        } catch (FileNotFoundException e) {
            Log.e(TAG, "FileNotFoundException");
            e.printStackTrace();
        } catch (IOException e2) {
            Log.e(TAG, "IOException");
            e2.printStackTrace();
        }
        Camera camera = this.mCamera;
        if (camera != null) {
            camera.release();
        }
        return strArr;
    }

    private String getVersionInfo() {
        return String.format("HardWareVer: %s\nSoftWareVer: %s", Constant.JAVA_VALUE_HARDWARE_VERSION, SystemProperties.get("ro.build.display.id", EnvironmentCompat.MEDIA_UNKNOWN));
    }

    private String getFlagsInfo() {
        return PhaseCheckParse.getInstance().getPhaseCheck();
    }
}
