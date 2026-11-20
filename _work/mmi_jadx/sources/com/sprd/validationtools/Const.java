package com.sprd.validationtools;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.nfc.NfcManager;
import android.os.Build;
import android.os.SystemProperties;
import android.util.Log;
import android.view.ViewConfiguration;
import androidx.core.os.EnvironmentCompat;
import com.sprd.validationtools.difference.station.IStationCheck;
import com.sprd.validationtools.itemstest.ai.AITest;
import com.sprd.validationtools.itemstest.audio.HeadSetTest;
import com.sprd.validationtools.itemstest.audio.HeadsetTestForMmx;
import com.sprd.validationtools.itemstest.audio.MicTestForMmx;
import com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest;
import com.sprd.validationtools.itemstest.audio.ReceivcerTestForMmx;
import com.sprd.validationtools.itemstest.audio.SmartPATest;
import com.sprd.validationtools.itemstest.audio.SoundTriggerTestActivity;
import com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx;
import com.sprd.validationtools.itemstest.camera.CameraTestActivity;
import com.sprd.validationtools.itemstest.camera.ColorTemperatureTestActivty;
import com.sprd.validationtools.itemstest.camera.FrontCameraTestActivity;
import com.sprd.validationtools.itemstest.camera.FrontSecondaryCameraTestActivity;
import com.sprd.validationtools.itemstest.camera.MacroLensCameraTestActivity;
import com.sprd.validationtools.itemstest.camera.SecondaryCameraTestActivity;
import com.sprd.validationtools.itemstest.camera.SpwCameraTestActivity;
import com.sprd.validationtools.itemstest.camera.TofCalibrationTest;
import com.sprd.validationtools.itemstest.charger.ChargerTest;
import com.sprd.validationtools.itemstest.charger.ChargerTestMtk;
import com.sprd.validationtools.itemstest.charger.QuickChargerTest;
import com.sprd.validationtools.itemstest.charger.TypecChargerTest;
import com.sprd.validationtools.itemstest.charger.WirelessChargerTest;
import com.sprd.validationtools.itemstest.fingerprint.FingerprintTestActivity;
import com.sprd.validationtools.itemstest.fm.FMTest;
import com.sprd.validationtools.itemstest.gps.GpsTestActivity;
import com.sprd.validationtools.itemstest.led.BlueLightTest;
import com.sprd.validationtools.itemstest.led.GreenLightTest;
import com.sprd.validationtools.itemstest.led.RedLightTest;
import com.sprd.validationtools.itemstest.nfc.NFCTestActivity;
import com.sprd.validationtools.itemstest.otg.OTGTest;
import com.sprd.validationtools.itemstest.sensor.ASensorCalibrationActivity;
import com.sprd.validationtools.itemstest.sensor.CompassTestActivity;
import com.sprd.validationtools.itemstest.sensor.GSensorCalibrationActivity;
import com.sprd.validationtools.itemstest.sensor.GyroscopeTestActivity;
import com.sprd.validationtools.itemstest.sensor.LightSensorCalibrationActivity;
import com.sprd.validationtools.itemstest.sensor.LsensorNoiseTestActivity;
import com.sprd.validationtools.itemstest.sensor.MSensorCalibrationActivity;
import com.sprd.validationtools.itemstest.sensor.MagneticTestActivity;
import com.sprd.validationtools.itemstest.sensor.PressureTestActivity;
import com.sprd.validationtools.itemstest.sensor.ProxSensorCalibrationActivity;
import com.sprd.validationtools.itemstest.sensor.PsensorTestActivity;
import com.sprd.validationtools.itemstest.sensor.SarSensorTestActivity;
import com.sprd.validationtools.itemstest.sysinfo.HardwareInfoTest;
import com.sprd.validationtools.itemstest.tp.CTPrulingTest;
import com.sprd.validationtools.itemstest.tp.SingleTouchPointTest;
import com.sprd.validationtools.itemstest.tp.SingleTouchPointTestCustom;
import com.sprd.validationtools.utils.FileUtils;
import com.sprd.validationtools.utils.Native;
import com.sprd.validationtools.utils.ValidationToolsUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class Const {
    private static final CameraCharacteristics.Key<int[]> ANDROID_SPRD_FEATURE_LIST;
    private static final CameraCharacteristics.Key<Integer> ANDROID_SPRD_SPW_CAMERA_ID;
    public static final String CALIBRATOR_CMD = "/sys/class/sprd_sensorhub/sensor_hub/calibrator_cmd";
    public static final String CALIBRATOR_DATA = "/sys/class/sprd_sensorhub/sensor_hub/calibrator_data";
    public static final String CAMERA_CALI_VERI = "persist.vendor.cam.multicam.cali.veri";
    public static final String CAMERA_FLASH = "/sys/devices/virtual/misc/sprd_flash/test";
    public static final int CAMERA_SPW_FEATURE = 7;
    public static boolean DEBUG = true;
    public static final int DEFAULT = 2;
    public static String DEFAULT_RESULT = "noTest";
    public static final boolean DISABLE_BLUE_LED;
    public static final boolean DISABLE_MSENSOR_CALI = true;
    public static final int EXT_COMMON_PATH = 1;
    public static final int EXT_EMULATED_PATH = 0;
    public static final int FAIL = 0;
    public static String FAIL_RESULT = "fail";
    public static final String HEADSET_STATE_PATH = "/sys/class/switch/h2w/state";
    public static final String INTENT_BACKGROUND_TEST_RESULT = "bgtestresult";
    public static final String INTENT_PARA_TEST_CLASSNAME = "test_classname";
    public static final String INTENT_PARA_TEST_INDEX = "testindex";
    public static final String INTENT_PARA_TEST_NAME = "testname";
    public static final String INTENT_RESULT_TYPE = "resulttype";
    public static final boolean IS_SUPPORT_CALIBTATION_TEST = false;
    public static final boolean IS_SUPPORT_DUALCAMERA_CALIBRATION;
    public static final boolean IS_SUPPORT_LIGHT_CALIBTATION_TEST = false;
    public static final boolean IS_SUPPORT_WIDEVINE_KEY;
    public static final String LED_BLUE_PATH = "/sys/class/leds/sc27xx:blue/brightness";
    public static final String LED_GREEN_PATH = "/sys/class/leds/sc27xx:green/brightness";
    public static final String LED_RED_PATH = "/sys/class/leds/sc27xx:red/brightness";
    public static final String LIGHT_CALIBRATOR_CMD = "/sys/class/sprd_sensorhub/sensor_hub/light_sensor_calibrator";
    public static final String MACRO_NAME_FEATURE_PHONE_SUPPORT = "BOARD_FEATUREPHONE_CONFIG";
    public static final String OTG_PATH = "/sys/class/dual_role_usb/sprd_dual_role_usb/supported_modes";
    public static final String OTG_PATH_k414 = "/sys/class/typec/port0/port_type";
    public static final int OTG_UDISK_PATH = 2;
    public static String PASS_RESULT = "pass";
    public static final String PRODUCTINFO_DIR = "/mnt/vendor/productinfo";
    public static final String QUICK_CHARGER_PATH = "/sys/class/power_supply/sc2730_fast_charger";
    public static final String RESULT_TEST_NAME = "result";
    public static final int RESULT_TYPE_FOR_SYSTEMTEST = 0;
    public static final int RESULT_TYPE_NORMAL = 1;
    public static final String SECURITY_CODE = "SECURITY_CODE";
    public static String[] STATION = null;
    public static final int SUCCESS = 1;
    private static String TAG = "Const";
    public static final int TEST_ITEM_DONE = 0;
    public static final int TEST_ITEM_FIALED = 1;
    public static final String WIRELESS_CHARGER_PATH_L6 = "/sys/class/power_supply/nu1619_wireless_charger";
    public static final String WIRELESS_CHARGER_PATH_N6 = "/sys/class/power_supply/sy65153_wireless_charger";
    private static long lastClickTime;
    public static String mCurrentStation;
    private static boolean mSupportLightSensor;
    public static final String LED_PATH = "/sys/class/leds/red/brightness";
    public static final boolean IS_SUPPORT_LED_TEST = FileUtils.fileIsExists(LED_PATH);

    public static boolean isAutoTestMode() {
        return true;
    }

    public static boolean isBoardISharkL210c10() {
        return false;
    }

    public static boolean isSupportFeaturePhone() {
        return false;
    }

    static {
        isSupportBoardByName("sp9832e_1h10");
        IS_SUPPORT_DUALCAMERA_CALIBRATION = true;
        IS_SUPPORT_WIDEVINE_KEY = isSupportBoardByName("ums512_1h10");
        DISABLE_BLUE_LED = isBoardISharkL210c10();
        mCurrentStation = IStationCheck.STATION_MMI1;
        mSupportLightSensor = true;
        STATION = new String[0];
        ANDROID_SPRD_SPW_CAMERA_ID = new CameraCharacteristics.Key<>("com.addParameters.sprdUltraWideId", Integer.class);
        ANDROID_SPRD_FEATURE_LIST = new CameraCharacteristics.Key<>("com.addParameters.sprdCamFeatureList", int[].class);
        lastClickTime = 0L;
    }

    public static int getStationIndex(String str) {
        STATION = PhaseCheckParse.getInstance().getStation().split(Pattern.quote("|"));
        for (int i = 0; i < STATION.length; i++) {
            Log.i("station", "Const ---STATION[i]---" + STATION[i]);
            Log.i("station", "Const ---getStationIndex---" + i);
            if (STATION[i].equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public static void setStation(String str) {
        Log.d(TAG, "SetStation:" + str);
        mCurrentStation = str;
    }

    public static boolean isMMI1() {
        Log.d(TAG, "station" + mCurrentStation);
        return mCurrentStation.contains(IStationCheck.STATION_MMI1);
    }

    public static boolean isSupportCameraCaliVeri() {
        String str = SystemProperties.get(CAMERA_CALI_VERI, "0");
        Log.d(TAG, "isSupportCameraCaliVeri calibraionSupport=" + str);
        return str.equals("1");
    }

    public static boolean isSupport(String str, Context context) {
        Log.d(TAG, "isSupport className=" + str);
        if (FrontCameraTestActivity.class.getName().equals(str)) {
            return true;
        }
        if (TofCalibrationTest.class.getName().equals(str)) {
            return ValidationToolsUtils.get_camera_sensor_tof_support_flag();
        }
        if (AITest.class.getName().equals(str)) {
            String str2 = SystemProperties.get("persist.vendor.npu.version", "0");
            Log.d(TAG, "ipFlag=:" + str2);
            return !str2.equals("0");
        }
        if (SmartPATest.class.getName().equals(str)) {
            Log.d(TAG, "supportResult=:" + ((AudioManager) context.getSystemService("audio")).getParameters("SmartAmpCalibration"));
            return false;
        }
        if (CameraTestActivity.class.getName().equals(str)) {
            return true;
        }
        if (OTGTest.class.getName().equals(str)) {
            return isSupportOTG();
        }
        if (CompassTestActivity.class.getName().equals(str)) {
            return true;
        }
        if (PsensorTestActivity.class.getName().equals(str)) {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            if (sensorManager.getDefaultSensor(5) == null) {
                Log.d(TAG, "Not support light sensor!");
                mSupportLightSensor = false;
            }
            if (sensorManager.getDefaultSensor(8) == null) {
                return false;
            }
        } else if (GyroscopeTestActivity.class.getName().equals(str)) {
            if (((SensorManager) context.getSystemService("sensor")).getDefaultSensor(4) == null) {
                return false;
            }
        } else if (MagneticTestActivity.class.getName().equals(str)) {
            if (((SensorManager) context.getSystemService("sensor")).getDefaultSensor(2) == null) {
                return false;
            }
        } else if (PressureTestActivity.class.getName().equals(str)) {
            if (((SensorManager) context.getSystemService("sensor")).getDefaultSensor(6) == null) {
                return false;
            }
        } else {
            if (ASensorCalibrationActivity.class.getName().equals(str)) {
                return isMMI1();
            }
            if (LightSensorCalibrationActivity.class.getName().equals(str)) {
                ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(5);
                return false;
            }
            if (GSensorCalibrationActivity.class.getName().equals(str)) {
                ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(4);
                return false;
            }
            if (MSensorCalibrationActivity.class.getName().equals(str)) {
                return false;
            }
            if (ProxSensorCalibrationActivity.class.getName().equals(str)) {
                ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8);
                return false;
            }
            if (SecondaryCameraTestActivity.class.getName().equals(str)) {
                int numberOfCameras = Camera.getNumberOfCameras();
                String str3 = SystemProperties.get("persist.sys.cam3.type", EnvironmentCompat.MEDIA_UNKNOWN);
                Log.d(TAG, "SecondaryCameraTestActivity 1 mNumberOfCameras=" + numberOfCameras + ",cam3type=" + str3);
                if (numberOfCameras <= 2) {
                    return false;
                }
                String str4 = SystemProperties.get("persist.sys.3d.calibraion", "0");
                Log.d(TAG, "SecondaryCameraTestActivity calibraionSupport=" + str4);
                return numberOfCameras < 3 || str3.equals("back_blur") || str3.equals("back_sbs") || (str4 != null && str4.equals("1"));
            }
            if (FrontSecondaryCameraTestActivity.class.getName().equals(str)) {
                int numberOfCameras2 = Camera.getNumberOfCameras();
                String str5 = SystemProperties.get("persist.sys.cam3.type", EnvironmentCompat.MEDIA_UNKNOWN);
                Log.d(TAG, "FrontSecondaryCameraTestActivity mNumberOfCameras=" + numberOfCameras2 + ",cam3type=" + str5);
                if (numberOfCameras2 <= 2) {
                    return false;
                }
                return numberOfCameras2 < 3 || str5.equals("front_blur") || str5.equals("front_sbs");
            }
            if (SoundTriggerTestActivity.class.getName().equals(str)) {
                if (!isWhale2Support() || isSharkL2Support()) {
                    return false;
                }
            } else {
                if (NFCTestActivity.class.getName().equals(str)) {
                    return isSupportNfc(context);
                }
                if (FingerprintTestActivity.class.getName().equals(str)) {
                    return false;
                }
                if (GpsTestActivity.class.getName().equals(str)) {
                    boolean zIsSupportGPS = isSupportGPS(context);
                    Log.d(TAG, "isSupportGPS:" + zIsSupportGPS);
                    return zIsSupportGPS;
                }
                if (RedLightTest.class.getName().equals(str) || GreenLightTest.class.getName().equals(str) || BlueLightTest.class.getName().equals(str)) {
                    return false;
                }
                if (LsensorNoiseTestActivity.class.getName().equals(str)) {
                    if (((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) == null) {
                        Log.d(TAG, "LsensorNoiseTestActivity false");
                        return false;
                    }
                    if (FileUtils.fileIsExists(LsensorNoiseTestActivity.SensorNoiseFile)) {
                        Log.d(TAG, "LsensorNoiseTestActivity true");
                        return true;
                    }
                    Log.d(TAG, "LsensorNoiseTestActivity false");
                    return false;
                }
                if (ColorTemperatureTestActivty.class.getName().equals(str)) {
                    return isSupportColorTemplture();
                }
                if (SpwCameraTestActivity.class.getName().equals(str)) {
                    int numberOfCameras3 = Camera.getNumberOfCameras();
                    Log.d(TAG, "SpwCameraTestActivity mNumberOfCameras=" + numberOfCameras3);
                    return numberOfCameras3 > 3;
                }
                if (MacroLensCameraTestActivity.class.getName().equals(str)) {
                    int numberOfCameras4 = Camera.getNumberOfCameras();
                    Log.d(TAG, "MacroLensCameraTestActivity mNumberOfCameras=" + numberOfCameras4);
                    return numberOfCameras4 > 4;
                }
                if (FMTest.class.getName().equals(str)) {
                    String str6 = SystemProperties.get("ro.vendor.validationtools.fmdisable", "0");
                    Log.d(TAG, "FMTest disableFm=" + str6);
                    if (str6 != null && str6.equals("1")) {
                        return false;
                    }
                } else {
                    if (ChargerTest.class.getName().equals(str)) {
                        return Constant.currentPlatform.equals(Constant.SPREADTRUM);
                    }
                    if (ChargerTestMtk.class.getName().equals(str)) {
                        return Constant.currentPlatform.equals(Constant.MEDIATEK);
                    }
                    if (QuickChargerTest.class.getName().equals(str)) {
                        if (!new File(QUICK_CHARGER_PATH).exists()) {
                            return false;
                        }
                    } else {
                        if (TypecChargerTest.class.getName().equals(str)) {
                            return Constant.currentPlatform.equals(Constant.SPREADTRUM);
                        }
                        if (WirelessChargerTest.class.getName().equals(str)) {
                            File file = new File(WIRELESS_CHARGER_PATH_L6);
                            File file2 = new File(WIRELESS_CHARGER_PATH_N6);
                            if (!file.exists() && !file2.exists()) {
                                return false;
                            }
                        } else {
                            if (SingleTouchPointTest.class.getName().equals(str) || SingleTouchPointTestCustom.class.getName().equals(str) || CTPrulingTest.class.getName().equals(str) || HardwareInfoTest.class.getName().equals(str) || MicTestForMmx.class.getName().equals(str) || SpeakerTestForMmx.class.getName().equals(str) || ReceivcerTestForMmx.class.getName().equals(str) || HeadsetTestForMmx.class.getName().equals(str)) {
                                return false;
                            }
                            return PhoneLoopBackTest.class.getName().equals(str) ? Constant.currentPlatform.equals(Constant.SPREADTRUM) : HeadSetTest.class.getName().equals(str) || !SarSensorTestActivity.class.getName().equals(str) || Constant.currentPlatform.equals(Constant.SPREADTRUM);
                        }
                    }
                }
            }
        }
        return true;
    }

    private static boolean isEnableSPW(Context context) {
        Object systemService;
        boolean z = Build.VERSION.SDK_INT >= 21 || "L".equals(Build.VERSION.CODENAME) || "LOLLIPOP".equals(Build.VERSION.CODENAME);
        Log.d(TAG, "isLOrHigher is " + z);
        if (z) {
            try {
                systemService = context.getSystemService("camera");
            } catch (Exception e) {
                e.printStackTrace();
                SystemProperties.set("persist.sys.spw.enable", "0");
                return false;
            }
        } else {
            systemService = null;
        }
        CameraManager cameraManager = (CameraManager) systemService;
        int[] iArr = (int[]) cameraManager.getCameraCharacteristics(Integer.toString(0)).get(ANDROID_SPRD_FEATURE_LIST);
        if (iArr != null && iArr.length != 0) {
            boolean z2 = iArr[7] == 1;
            Log.d(TAG, "SPW feature enable from HAL is " + z2);
            if (z2) {
                SystemProperties.set("persist.sys.spw.cameraid", String.valueOf(((Integer) cameraManager.getCameraCharacteristics(Integer.toString(0)).get(ANDROID_SPRD_SPW_CAMERA_ID)).intValue()));
            }
            SystemProperties.set("persist.sys.spw.enable", z2 ? "1" : "0");
            return z2;
        }
        Log.d(TAG, "HAL does not have feature list");
        SystemProperties.set("persist.sys.spw.enable", "0");
        return false;
    }

    protected static boolean isSupportColorTemplture() {
        return ValidationToolsUtils.get_TARGET_CAMERA_SENSOR_CCT_TCS3430_flag();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v16, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v18, types: [java.lang.String] */
    private static boolean isSupportOTG() throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        ?? e = "isSupportOTG()  Exception happens:";
        ?? FileIsExists = FileUtils.fileIsExists(OTG_PATH_k414);
        BufferedReader bufferedReader3 = null;
        bufferedReader3 = null;
        bufferedReader3 = null;
        bufferedReader3 = null;
        bufferedReader3 = null;
        bufferedReader3 = null;
        bufferedReader = null;
        bufferedReader = null;
        BufferedReader bufferedReader4 = null;
        BufferedReader bufferedReader5 = null;
        bufferedReader = null;
        BufferedReader bufferedReader6 = null;
        bufferedReader3 = null;
        try {
            try {
                try {
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
            e.printStackTrace();
        }
        if (FileIsExists == 0) {
            try {
                Log.d(TAG, "OTGTest  OTG_PATH:/sys/class/dual_role_usb/sprd_dual_role_usb/supported_modes");
                e = new FileInputStream(OTG_PATH);
                try {
                    bufferedReader2 = new BufferedReader(new InputStreamReader((InputStream) e, Charset.defaultCharset()));
                } catch (FileNotFoundException e3) {
                    e = e3;
                } catch (IOException e4) {
                    e = e4;
                }
            } catch (FileNotFoundException e5) {
                e = e5;
                e = 0;
            } catch (IOException e6) {
                e = e6;
                e = 0;
            } catch (Throwable th3) {
                th = th3;
                e = 0;
            }
            try {
                String line = bufferedReader2.readLine();
                ?? r4 = TAG;
                Log.d(r4, "OTGTest  str:" + line);
                bufferedReader3 = r4;
                if (line != null) {
                    bufferedReader3 = "ufp";
                    if (line.contains("ufp")) {
                        try {
                            bufferedReader2.close();
                            e.close();
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                        return true;
                    }
                }
                bufferedReader2.close();
                e.close();
            } catch (FileNotFoundException e8) {
                e = e8;
                bufferedReader3 = bufferedReader2;
                Log.e(TAG, "getSupportList()  Exception happens:");
                e.printStackTrace();
                if (bufferedReader3 != null) {
                    bufferedReader3.close();
                }
                if (e != 0) {
                    e.close();
                }
                return false;
            } catch (IOException e9) {
                e = e9;
                bufferedReader3 = bufferedReader2;
                Log.e(TAG, "getSupportList()  Exception happens:");
                e.printStackTrace();
                if (bufferedReader3 != null) {
                    bufferedReader3.close();
                }
                if (e != 0) {
                    e.close();
                }
                return false;
            } catch (Throwable th4) {
                th = th4;
                bufferedReader3 = bufferedReader2;
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                        throw th;
                    }
                }
                if (e != 0) {
                    e.close();
                }
                throw th;
            }
            return false;
        }
        try {
            Log.d(TAG, "isSupportOTG  OTG_PATH:/sys/class/typec/port0/port_type");
            FileIsExists = new FileInputStream(OTG_PATH_k414);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader((InputStream) FileIsExists, Charset.defaultCharset()));
            } catch (FileNotFoundException e11) {
                e = e11;
            } catch (IOException e12) {
                e = e12;
            }
        } catch (FileNotFoundException e13) {
            e = e13;
            FileIsExists = 0;
        } catch (IOException e14) {
            e = e14;
            FileIsExists = 0;
        } catch (Throwable th5) {
            th = th5;
            FileIsExists = 0;
        }
        try {
            String line2 = bufferedReader.readLine();
            Log.d(TAG, "isSupportOTG  str:" + line2);
            if (line2 != null) {
                if (line2.contains("[dual] source sink")) {
                    try {
                        bufferedReader.close();
                        FileIsExists.close();
                    } catch (IOException e15) {
                        Log.e(TAG, "getSupportList()  Exception happens:");
                        e15.printStackTrace();
                    }
                    return true;
                }
            }
            try {
                bufferedReader.close();
                FileIsExists.close();
            } catch (IOException e16) {
                Log.e(TAG, "getSupportList()  Exception happens:");
                e16.printStackTrace();
            }
            return false;
        } catch (FileNotFoundException e17) {
            e = e17;
            bufferedReader4 = bufferedReader;
            Log.e(TAG, "isSupportOTG()  Exception happens:");
            e.printStackTrace();
            if (bufferedReader4 != null) {
                try {
                    bufferedReader4.close();
                } catch (IOException e18) {
                    Log.e(TAG, "getSupportList()  Exception happens:");
                    e18.printStackTrace();
                    return false;
                }
            }
            if (FileIsExists != 0) {
                FileIsExists.close();
            }
            return false;
        } catch (IOException e19) {
            e = e19;
            bufferedReader5 = bufferedReader;
            Log.e(TAG, "isSupportOTG()  Exception happens:");
            e.printStackTrace();
            if (bufferedReader5 != null) {
                try {
                    bufferedReader5.close();
                } catch (IOException e20) {
                    Log.e(TAG, "getSupportList()  Exception happens:");
                    e20.printStackTrace();
                    return false;
                }
            }
            if (FileIsExists != 0) {
                FileIsExists.close();
            }
            return false;
        } catch (Throwable th6) {
            th = th6;
            bufferedReader6 = bufferedReader;
            if (bufferedReader6 != null) {
                try {
                    bufferedReader6.close();
                } catch (IOException e21) {
                    Log.e(TAG, "getSupportList()  Exception happens:");
                    e21.printStackTrace();
                    throw th;
                }
            }
            if (FileIsExists != 0) {
                FileIsExists.close();
            }
            throw th;
        }
    }

    public static boolean isCameraSupport() {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo[] cameraInfoArr = new Camera.CameraInfo[numberOfCameras];
        for (int i = 0; i < numberOfCameras; i++) {
            cameraInfoArr[i] = new Camera.CameraInfo();
            Camera.getCameraInfo(i, cameraInfoArr[i]);
            if (cameraInfoArr[i].facing == 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean isHomeSupport(Context context) {
        Log.d(TAG, "hw home is support:" + ViewConfiguration.get(context).hasPermanentMenuKey());
        return true;
    }

    public static boolean isBackSupport(Context context) {
        Log.d(TAG, "hw Back is support:" + ViewConfiguration.get(context).hasPermanentMenuKey());
        return true;
    }

    public static boolean isMenuSupport(Context context) {
        Log.d(TAG, "hw menu is support:" + ViewConfiguration.get(context).hasPermanentMenuKey());
        return true;
    }

    public static boolean isVolumeUpSupport() {
        boolean z = SystemProperties.getBoolean("ro.config.hw.vol_up_support", true);
        Log.d(TAG, "hw VolumeUp is support:" + z);
        return z;
    }

    public static boolean isVolumeDownSupport() {
        boolean z = SystemProperties.getBoolean("ro.config.hw.vol_down_support", true);
        Log.d(TAG, "hw VolumeDown is support:" + z);
        return z;
    }

    public static boolean isWhale2Support() {
        return SystemProperties.get("ro.boot.hardware", EnvironmentCompat.MEDIA_UNKNOWN).contains("9860");
    }

    public static boolean isIWhale2Support() {
        return SystemProperties.get("ro.boot.hardware", EnvironmentCompat.MEDIA_UNKNOWN).contains("9861");
    }

    public static boolean isSupportMeidShow() {
        String str = SystemProperties.get("ro.product.name", EnvironmentCompat.MEDIA_UNKNOWN);
        Log.d(TAG, "isSupportMeidShow board=:" + str);
        if (str != null && str.startsWith("ums312_1h10_ctcc")) {
            return true;
        }
        if (str == null || !str.startsWith("ums312_2h10_ctcc")) {
            return str != null && str.startsWith("ums312_20c10_ctcc");
        }
        return true;
    }

    public static boolean isSharkL2Support() {
        return SystemProperties.get("ro.boot.hardware", EnvironmentCompat.MEDIA_UNKNOWN).contains("9850");
    }

    public static boolean isSupportBoardByName(String str) {
        String str2 = SystemProperties.get("ro.product.board", EnvironmentCompat.MEDIA_UNKNOWN);
        Log.d(TAG, "isSupportBoardByName board=" + str2 + ",boardName=" + str);
        return str2 != null && str2.equals(str);
    }

    public static boolean isSupportNfc(Context context) {
        return ((NfcManager) context.getSystemService("nfc")).getDefaultAdapter() != null;
    }

    public static boolean isRefMicSupport() {
        return !SystemProperties.getBoolean("ro.factory.remove.refmic", false);
    }

    public static boolean isSupportGPS(Context context) {
        List<String> allProviders;
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        if (locationManager == null || (allProviders = locationManager.getAllProviders()) == null) {
            return false;
        }
        return allProviders.contains("gps");
    }

    public static boolean isSupportMacroByName(String str) {
        Log.d(TAG, "isSupportMacroByName macroName=" + str);
        try {
            boolean z = true;
            if (Native.native_is_support_macro(str) != 1) {
                z = false;
            }
            Log.d(TAG, "isSupportMacroByName support=" + z);
            return z;
        } catch (UnknownError e) {
            e.printStackTrace();
            return false;
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean isSupportFingerPrint(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.fingerprint");
    }

    public static boolean isFastDoubleClick(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = jCurrentTimeMillis - lastClickTime;
        Log.v("isFastDoubleClick", "timeD:" + j2);
        if (j2 < j) {
            Log.v("isFastDoubleClick", "isFastDoubleClick");
            return true;
        }
        lastClickTime = jCurrentTimeMillis;
        return false;
    }
}
