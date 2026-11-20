package com.sprd.validationtools.utils;

/* loaded from: classes.dex */
public class ByteUtils {
    private static final String TAG = "ByteUtils";

    public static String intToBinary32(int i, int i2) {
        String binaryString = Integer.toBinaryString(i);
        while (binaryString.length() < i2) {
            binaryString = "0" + binaryString;
        }
        return binaryString;
    }
}
