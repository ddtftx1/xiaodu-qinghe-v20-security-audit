package com.sprd.validationtools;

import com.sprd.validationtools.utils.ReflectUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Constant.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/sprd/validationtools/Constant;", "", "()V", "JAVA_FEATURE_CAMERA_AF", "", "JAVA_FEATURE_HAVE_DURALCAEMRA", "JAVA_FEATURE_HAVE_FINGER_KEY", "JAVA_FEATURE_HAVE_NAVIGATIONBAR", "JAVA_VALUE_HARDWARE_VERSION", "", "JAVA_VALUE_PCBA_VERSION", "JAVA_VALUE_PLATFORM_BASELINE_VERSION", "JAVA_VALUE_PRIVATE_SW_VERSION", "MEDIATEK", "QUALCOMM", "SPREADTRUM", "currentPlatform", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Constant {
    public static boolean JAVA_FEATURE_CAMERA_AF = false;
    public static boolean JAVA_FEATURE_HAVE_DURALCAEMRA = false;
    public static boolean JAVA_FEATURE_HAVE_FINGER_KEY = false;
    public static boolean JAVA_FEATURE_HAVE_NAVIGATIONBAR = false;
    public static String JAVA_VALUE_HARDWARE_VERSION = null;
    public static String JAVA_VALUE_PCBA_VERSION = null;
    public static String JAVA_VALUE_PLATFORM_BASELINE_VERSION = null;
    public static String JAVA_VALUE_PRIVATE_SW_VERSION = null;
    public static final String MEDIATEK = "mediatek";
    public static final String QUALCOMM = "qualcomm";
    public static final String SPREADTRUM = "spreadtrum";
    public static final Constant INSTANCE = new Constant();
    public static String currentPlatform = "";

    private Constant() {
    }

    static {
        Object obj = ReflectUtils.reflect("android.plugin.Features").field("JAVA_VALUE_PRIVATE_SW_VERSION").get();
        Intrinsics.checkNotNullExpressionValue(obj, "reflect(\"android.plugin.…RIVATE_SW_VERSION\").get()");
        JAVA_VALUE_PRIVATE_SW_VERSION = (String) obj;
        Object obj2 = ReflectUtils.reflect("android.plugin.Features").field("JAVA_FEATURE_HAVE_DURALCAEMRA").get();
        Intrinsics.checkNotNullExpressionValue(obj2, "reflect(\"android.plugin.…_HAVE_DURALCAEMRA\").get()");
        JAVA_FEATURE_HAVE_DURALCAEMRA = ((Boolean) obj2).booleanValue();
        Object obj3 = ReflectUtils.reflect("android.plugin.Features").field("JAVA_FEATURE_HAVE_FINGER_KEY").get();
        Intrinsics.checkNotNullExpressionValue(obj3, "reflect(\"android.plugin.…E_HAVE_FINGER_KEY\").get()");
        JAVA_FEATURE_HAVE_FINGER_KEY = ((Boolean) obj3).booleanValue();
        Object obj4 = ReflectUtils.reflect("android.plugin.Features").field("JAVA_VALUE_PLATFORM_BASELINE_VERSION").get();
        Intrinsics.checkNotNullExpressionValue(obj4, "reflect(\"android.plugin.…_BASELINE_VERSION\").get()");
        JAVA_VALUE_PLATFORM_BASELINE_VERSION = (String) obj4;
        Object obj5 = ReflectUtils.reflect("android.plugin.Features").field("JAVA_VALUE_HARDWARE_VERSION").get();
        Intrinsics.checkNotNullExpressionValue(obj5, "reflect(\"android.plugin.…_HARDWARE_VERSION\").get()");
        JAVA_VALUE_HARDWARE_VERSION = (String) obj5;
        Object obj6 = ReflectUtils.reflect("android.plugin.Features").field("JAVA_VALUE_PCBA_VERSION").get();
        Intrinsics.checkNotNullExpressionValue(obj6, "reflect(\"android.plugin.…ALUE_PCBA_VERSION\").get()");
        JAVA_VALUE_PCBA_VERSION = (String) obj6;
        Object obj7 = ReflectUtils.reflect("android.plugin.Features").field("JAVA_FEATURE_CAMERA_AF").get();
        Intrinsics.checkNotNullExpressionValue(obj7, "reflect(\"android.plugin.…FEATURE_CAMERA_AF\").get()");
        JAVA_FEATURE_CAMERA_AF = ((Boolean) obj7).booleanValue();
        Object obj8 = ReflectUtils.reflect("android.plugin.Features").field("JAVA_FEATURE_HAVE_NAVIGATIONBAR").get();
        Intrinsics.checkNotNullExpressionValue(obj8, "reflect(\"android.plugin.…AVE_NAVIGATIONBAR\").get()");
        JAVA_FEATURE_HAVE_NAVIGATIONBAR = ((Boolean) obj8).booleanValue();
    }
}
