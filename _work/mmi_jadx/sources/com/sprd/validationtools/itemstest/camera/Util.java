package com.sprd.validationtools.itemstest.camera;

import android.content.Context;
import android.os.SystemProperties;
import android.util.Log;

/* loaded from: classes.dex */
public class Util {
    public static final int[][] ALL_SUPPORT_RES_SIZE = {new int[]{640, 480}, new int[]{1600, 1200}, new int[]{1920, 1080}, new int[]{2592, 1944}, new int[]{3264, 2448}, new int[]{4000, 3000}, new int[]{4160, 3120}};
    public static final String PROP_RES_BOKEH = "persist.vendor.cam.res.bokeh";
    public static final String TAG = "Util";

    public enum RES_NAME {
        RES_0_3M,
        RES_2M,
        RES_1080P,
        RES_5M,
        RES_8M,
        RES_12M,
        RES_13M
    }

    public static RES_NAME getSupportResName(Context context) {
        String str = SystemProperties.get(PROP_RES_BOKEH, "RES_5M");
        Log.d(TAG, "getSupportResName type=" + str);
        if (str.equals("RES_0_3M")) {
            return RES_NAME.RES_0_3M;
        }
        if (str.equals("RES_2M")) {
            return RES_NAME.RES_2M;
        }
        if (str.equals("RES_1080P")) {
            return RES_NAME.RES_1080P;
        }
        if (str.equals("RES_5M")) {
            return RES_NAME.RES_5M;
        }
        if (str.equals("RES_8M")) {
            return RES_NAME.RES_8M;
        }
        if (str.equals("RES_12M")) {
            return RES_NAME.RES_12M;
        }
        if (str.equals("RES_13M")) {
            return RES_NAME.RES_13M;
        }
        Log.w(TAG, "getSupportResName wrong type=" + str);
        return RES_NAME.RES_8M;
    }

    public static int[] getSupportBokehSize(Context context) {
        RES_NAME supportResName = getSupportResName(context);
        Log.d(TAG, "getSupportBokehSize name=" + supportResName);
        int iOrdinal = supportResName.ordinal();
        Log.d(TAG, "getSupportBokehSize index=" + iOrdinal);
        return ALL_SUPPORT_RES_SIZE[iOrdinal];
    }

    public static Tuple<Integer, Integer> getOptimalSize(int i, int i2, int i3, int i4, boolean z) {
        return getOptimalSize(i, i2, 1.0d / (Math.max(i3, i4) / Math.min(r4, i4)), z);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002a A[PHI: r7 r9
      0x002a: PHI (r7v3 int) = (r7v2 int), (r7v6 int) binds: [B:10:0x0028, B:7:0x001e] A[DONT_GENERATE, DONT_INLINE]
      0x002a: PHI (r9v2 int) = (r9v1 int), (r9v5 int) binds: [B:10:0x0028, B:7:0x001e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.sprd.validationtools.itemstest.camera.Tuple<java.lang.Integer, java.lang.Integer> getOptimalSize(int r5, int r6, double r7, boolean r9) {
        /*
            com.sprd.validationtools.itemstest.camera.Tuple r0 = new com.sprd.validationtools.itemstest.camera.Tuple
            java.lang.Integer r1 = java.lang.Integer.valueOf(r5)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r6)
            r0.<init>(r1, r2)
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r3 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r3 <= 0) goto L15
            double r7 = r1 / r7
        L15:
            if (r9 == 0) goto L21
            int r9 = java.lang.Math.max(r5, r6)
            double r1 = (double) r9
            double r1 = r1 * r7
            int r7 = (int) r1
            if (r5 >= r6) goto L2d
            goto L2a
        L21:
            int r9 = java.lang.Math.min(r5, r6)
            double r1 = (double) r9
            double r1 = r1 / r7
            int r7 = (int) r1
            if (r5 <= r6) goto L2d
        L2a:
            r4 = r9
            r9 = r7
            r7 = r4
        L2d:
            if (r5 != r9) goto L31
            if (r6 == r7) goto L3e
        L31:
            com.sprd.validationtools.itemstest.camera.Tuple r0 = new com.sprd.validationtools.itemstest.camera.Tuple
            java.lang.Integer r5 = java.lang.Integer.valueOf(r9)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)
            r0.<init>(r5, r6)
        L3e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.camera.Util.getOptimalSize(int, int, double, boolean):com.sprd.validationtools.itemstest.camera.Tuple");
    }
}
