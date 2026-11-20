package com.sprd.validationtools.utils;

import android.util.Log;

/* loaded from: classes.dex */
public class SysUtils {
    private static final String TAG = "SysUtils";

    public static <T> T getSystemProperty(String str, T t) {
        try {
            return (T) ReflectUtils.reflect("android.os.SystemProperties").method("get").get();
        } catch (Exception unused) {
            Log.e(TAG, "Unable to read system properties [" + str + "]");
            return t;
        }
    }

    public static void setSystemProperty(String str, Object obj) {
        try {
            ReflectUtils.reflect("android.os.SystemProperties").method("set", str, obj);
        } catch (Exception unused) {
            Log.e(TAG, "Unable to set system properties [" + str + "]");
        }
    }

    public static <T> T getFiled(String str, String str2) {
        try {
            return (T) ReflectUtils.reflect(str).field(str2).get();
        } catch (Exception unused) {
            Log.e(TAG, "Unable to get system filed [" + str2 + "]");
            return null;
        }
    }
}
