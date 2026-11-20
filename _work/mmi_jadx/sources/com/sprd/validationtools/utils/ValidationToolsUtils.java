package com.sprd.validationtools.utils;

import android.content.Context;
import android.media.AudioManager;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.WindowManagerGlobal;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class ValidationToolsUtils {
    private static final String AI_KEY_MODALIAS_VALUE = "2FE";
    private static final String AUDIO_WHALE_HAL_PROP = "ro.vendor.mmi.use.audio.whale.hal";
    private static final String CAMERA_SENSOR_CCT = "ro.vendor.mmi.camera.sensor.cct";
    private static final String CAMERA_SENSOR_TOF = "ro.vendor.mmi.camera.sensor.tof";
    public static final boolean ENABLE_UID = false;
    private static final String ENG_PCBA_SUPPORT_CONFIG = "/vendor/etc/PCBA.conf";
    private static final String KEY_INPUT_MODALIAS_PATH = "/sys/class/input/input2/modalias";
    private static final String TAG = "ValidationToolsUtils";
    private static final String UID_PATH_1 = "sys/class/misc/sprd_efuse_otp/uid";
    private static final String UID_PATH_2 = "sys/class/misc/sprd_otp_ap_efuse/uid";
    private static Map<String, Integer> mSupportMap = new HashMap();

    public static String getUid() {
        String file;
        if (FileUtils.fileIsExists(UID_PATH_1)) {
            file = FileUtils.readFile(UID_PATH_1);
            if (file != null && file.contains(":")) {
                file = file.substring(file.indexOf(":") + 1);
            }
        } else {
            file = FileUtils.readFile(UID_PATH_2);
            if (file != null && file.contains(":")) {
                file = file.substring(file.indexOf(":") + 1);
            }
        }
        Log.d(TAG, "getUID uidText:" + file);
        return file;
    }

    public static String getImei(Context context, int i) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        int phoneCount = telephonyManager.getPhoneCount();
        Log.d(TAG, "getIMEI===phoneCnt: " + phoneCount + ",index=" + i);
        return (i < 0 || i >= phoneCount) ? "" : telephonyManager.getDeviceId(i);
    }

    public static boolean isFileExist(String str) {
        return new File(str).exists();
    }

    public static boolean isSupportAGDSP(Context context) {
        try {
            String parameters = ((AudioManager) context.getSystemService("audio")).getParameters("isAudioDspExist");
            Log.i(TAG, "isAudioDspExist =" + parameters);
            return parameters.indexOf("=1") != -1;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean getAudioWhaleLoopbackFlag() {
        String str = "";
        try {
            str = SystemProperties.get(AUDIO_WHALE_HAL_PROP, "");
            Log.d(TAG, "getAudioWhaleLoopbackFlag flagValue=" + str + ",AUDIO_WHALE_HAL_PROP=" + AUDIO_WHALE_HAL_PROP);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return !TextUtils.isEmpty(str) && str.equals("1");
    }

    public static boolean get_camera_sensor_tof_support_flag() {
        String str = "";
        try {
            str = SystemProperties.get(CAMERA_SENSOR_TOF, "");
            Log.d(TAG, "get_camera_sensor_tof_support_flag flagValue=" + str + ",CAMERA_SENSOR_TOF=" + CAMERA_SENSOR_TOF);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return !TextUtils.isEmpty(str) && str.equals("tof_vl53l0");
    }

    public static boolean get_TARGET_CAMERA_SENSOR_CCT_TCS3430_flag() {
        String str = "";
        try {
            str = SystemProperties.get(CAMERA_SENSOR_CCT, "");
            Log.d(TAG, "native_get_TARGET_CAMERA_SENSOR_CCT_TCS3430_flag flagValue=" + str + ",CAMERA_SENSOR_CCT=" + CAMERA_SENSOR_CCT);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return !TextUtils.isEmpty(str) && str.equals("ams_tcs3430");
    }

    public static boolean hasNavigationBar(Context context) {
        try {
            return WindowManagerGlobal.getWindowManagerService().hasNavigationBar(context.getDisplayId());
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean setSoundEffect(Context context, boolean z) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (z) {
            audioManager.loadSoundEffects();
        } else {
            audioManager.unloadSoundEffects();
        }
        boolean z2 = Settings.System.getInt(context.getContentResolver(), "sound_effects_enabled", 0) == 1;
        Settings.System.putInt(context.getContentResolver(), "sound_effects_enabled", z ? 1 : 0);
        return z2;
    }

    public static boolean setLockSound(Context context, boolean z) {
        boolean z2 = Settings.System.getInt(context.getContentResolver(), "lockscreen_sounds_enabled", 0) == 1;
        Settings.System.putInt(context.getContentResolver(), "lockscreen_sounds_enabled", z ? 1 : 0);
        return z2;
    }

    public static boolean isSupportInPCBAConf(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.w(TAG, "Empty itemName:" + str);
            return false;
        }
        Log.d(TAG, "containsKey containsKey=" + str);
        if (!mSupportMap.containsKey(str)) {
            return false;
        }
        Integer num = mSupportMap.get(str);
        Log.d(TAG, "containsKey support=" + num);
        return num.intValue() == 1;
    }

    public static void parsePCBAConf() throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                } catch (IOException e) {
                    e.printStackTrace();
                    return;
                }
            } catch (Exception e2) {
                e = e2;
            }
            if (!FileUtils.fileIsExists(ENG_PCBA_SUPPORT_CONFIG)) {
                Log.w(TAG, "File not exists:/vendor/etc/PCBA.conf");
                return;
            }
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(new File(ENG_PCBA_SUPPORT_CONFIG)), "UTF-8"));
            try {
                mSupportMap.clear();
                while (true) {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        break;
                    }
                    if (!line.startsWith("#") && !TextUtils.isEmpty(line) && Character.isDigit(line.charAt(0))) {
                        String[] strArrSplit = line.split("\t");
                        if (strArrSplit.length == 3) {
                            String str = strArrSplit[0];
                            String str2 = strArrSplit[1];
                            String str3 = strArrSplit[2];
                            int iValueOf = 0;
                            try {
                                iValueOf = Integer.valueOf(str2);
                            } catch (NumberFormatException e3) {
                                e3.printStackTrace();
                            }
                            mSupportMap.put(str3, iValueOf);
                        }
                    }
                }
                bufferedReader2.close();
            } catch (Exception e4) {
                e = e4;
                bufferedReader = bufferedReader2;
                e.printStackTrace();
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
            } catch (Throwable th) {
                th = th;
                bufferedReader = bufferedReader2;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean isSupportAIKey() {
        if (!FileUtils.fileIsExists(KEY_INPUT_MODALIAS_PATH)) {
            return false;
        }
        String file = FileUtils.readFile(KEY_INPUT_MODALIAS_PATH);
        Log.d(TAG, "isSupportAIKey result=" + file);
        if (!TextUtils.isEmpty(file)) {
            for (String str : file.split(",")) {
                if (AI_KEY_MODALIAS_VALUE.equalsIgnoreCase(str)) {
                    Log.d(TAG, "isSupportAIKey support AI key!");
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isInteger(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.compile("^[-\\+]?[\\d]*$").matcher(str.trim()).matches();
    }
}
