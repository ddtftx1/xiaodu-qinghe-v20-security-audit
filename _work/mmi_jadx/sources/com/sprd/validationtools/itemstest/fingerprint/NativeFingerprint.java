package com.sprd.validationtools.itemstest.fingerprint;

import android.util.Log;

/* loaded from: classes.dex */
public class NativeFingerprint {
    public static native int deadpixel_test();

    public static native int factory_exit();

    public static native int factory_init();

    public static native int finger_detect();

    public static native int interrupt_test();

    public static native int spi_test();

    static {
        try {
            System.loadLibrary("jni_fingerprint");
        } catch (UnsatisfiedLinkError e) {
            Log.d("NativeFingerprint", " #loadLibrary jni_fingerprint failed  ");
            e.printStackTrace();
        }
    }
}
