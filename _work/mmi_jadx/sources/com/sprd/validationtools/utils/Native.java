package com.sprd.validationtools.utils;

import android.util.Log;

/* loaded from: classes.dex */
public class Native {
    public static native int native_get_TARGET_CAMERA_SENSOR_CCT_TCS3430_flag();

    public static native int native_get_audio_whale_loopback_flag();

    public static native int native_get_camera_sensor_tof_support_flag();

    public static native int native_is_support_macro(String str);

    public static native String native_sendATCmd(int i, String str);

    static {
        try {
            System.loadLibrary("jni_validationtools");
        } catch (UnsatisfiedLinkError e) {
            Log.d("ValidationToolsNative", " #loadLibrary jni_validationtools failed  ");
            e.printStackTrace();
        }
    }
}
