package android.support.design.widget;

import android.support.v7.graphics.drawable.DrawableWrapper;

/* loaded from: classes.dex */
public class ShadowDrawableWrapper extends DrawableWrapper {
    static final double COS_45 = Math.cos(Math.toRadians(45.0d));

    public static float calculateVerticalPadding(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - COS_45) * f2)) : f * 1.5f;
    }

    public static float calculateHorizontalPadding(float f, float f2, boolean z) {
        return z ? (float) (f + ((1.0d - COS_45) * f2)) : f;
    }
}
