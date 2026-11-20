package com.sprd.validationtools.nonpublic;

import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AudioSystemProxy.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J\b\u0010\u0014\u001a\u00020\u0015H\u0007J(\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0007J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u0010X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/sprd/validationtools/nonpublic/AudioSystemProxy;", "", "()V", "AS_CLASS_NAME", "", "DEVICE_IN_BACK_MIC", "", "DEVICE_OUT_EARPIECE", "DEVICE_STATE_AVAILABLE", "DEVICE_STATE_UNAVAILABLE", "FORCE_NONE", "FORCE_SPEAKER", "MODE_IN_CALL", "STREAM_MUSIC", "STREAM_VOICE_CALL", "asClass", "Ljava/lang/Class;", "getDeviceConnectionState", "device", "device_address", "init", "", "setDeviceConnectionState", "state", "device_name", "setForceUse", "usage", "config", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AudioSystemProxy {
    private static final String AS_CLASS_NAME = "android.media.AudioSystem";
    public static final int DEVICE_IN_BACK_MIC;
    public static final int DEVICE_OUT_EARPIECE;
    public static final int DEVICE_STATE_AVAILABLE;
    public static final int DEVICE_STATE_UNAVAILABLE;
    public static final int FORCE_NONE;
    public static final int FORCE_SPEAKER;
    public static final AudioSystemProxy INSTANCE;
    public static final int MODE_IN_CALL;
    public static final int STREAM_MUSIC;
    public static final int STREAM_VOICE_CALL;
    private static Class<?> asClass;

    private AudioSystemProxy() {
    }

    static {
        AudioSystemProxy audioSystemProxy = new AudioSystemProxy();
        INSTANCE = audioSystemProxy;
        audioSystemProxy.init();
        Class<?> cls = asClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls = null;
        }
        Object obj = cls.getField("DEVICE_STATE_UNAVAILABLE").get(null);
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Int");
        DEVICE_STATE_UNAVAILABLE = ((Integer) obj).intValue();
        Class<?> cls2 = asClass;
        if (cls2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls2 = null;
        }
        Object obj2 = cls2.getField("DEVICE_STATE_AVAILABLE").get(null);
        Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Int");
        DEVICE_STATE_AVAILABLE = ((Integer) obj2).intValue();
        Class<?> cls3 = asClass;
        if (cls3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls3 = null;
        }
        Object obj3 = cls3.getField("FORCE_SPEAKER").get(null);
        Objects.requireNonNull(obj3, "null cannot be cast to non-null type kotlin.Int");
        FORCE_SPEAKER = ((Integer) obj3).intValue();
        Class<?> cls4 = asClass;
        if (cls4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls4 = null;
        }
        Object obj4 = cls4.getField("FORCE_NONE").get(null);
        Objects.requireNonNull(obj4, "null cannot be cast to non-null type kotlin.Int");
        FORCE_NONE = ((Integer) obj4).intValue();
        Class<?> cls5 = asClass;
        if (cls5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls5 = null;
        }
        Object obj5 = cls5.getField("STREAM_MUSIC").get(null);
        Objects.requireNonNull(obj5, "null cannot be cast to non-null type kotlin.Int");
        STREAM_MUSIC = ((Integer) obj5).intValue();
        Class<?> cls6 = asClass;
        if (cls6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls6 = null;
        }
        Object obj6 = cls6.getField("STREAM_VOICE_CALL").get(null);
        Objects.requireNonNull(obj6, "null cannot be cast to non-null type kotlin.Int");
        STREAM_VOICE_CALL = ((Integer) obj6).intValue();
        Class<?> cls7 = asClass;
        if (cls7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls7 = null;
        }
        Object obj7 = cls7.getField("MODE_IN_CALL").get(null);
        Objects.requireNonNull(obj7, "null cannot be cast to non-null type kotlin.Int");
        MODE_IN_CALL = ((Integer) obj7).intValue();
        Class<?> cls8 = asClass;
        if (cls8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls8 = null;
        }
        Object obj8 = cls8.getField("DEVICE_OUT_EARPIECE").get(null);
        Objects.requireNonNull(obj8, "null cannot be cast to non-null type kotlin.Int");
        DEVICE_OUT_EARPIECE = ((Integer) obj8).intValue();
        Class<?> cls9 = asClass;
        if (cls9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls9 = null;
        }
        Object obj9 = cls9.getField("DEVICE_IN_BACK_MIC").get(null);
        Objects.requireNonNull(obj9, "null cannot be cast to non-null type kotlin.Int");
        DEVICE_IN_BACK_MIC = ((Integer) obj9).intValue();
    }

    public final void init() throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName(AS_CLASS_NAME);
            Intrinsics.checkNotNullExpressionValue(cls, "forName(AS_CLASS_NAME)");
            asClass = cls;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println(Unit.INSTANCE);
        }
    }

    @JvmStatic
    public static final int setDeviceConnectionState(int i, int i2, String device_address, String device_name) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(device_address, "device_address");
        Intrinsics.checkNotNullParameter(device_name, "device_name");
        Class<?> cls = asClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("setDeviceConnectionState", Integer.TYPE, Integer.TYPE, String.class, String.class).invoke(null, Integer.valueOf(i), Integer.valueOf(i2), device_address, device_name);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    @JvmStatic
    public static final int getDeviceConnectionState(int i, String device_address) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(device_address, "device_address");
        Class<?> cls = asClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("getDeviceConnectionState", Integer.TYPE, String.class).invoke(null, Integer.valueOf(i), device_address);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    @JvmStatic
    public static final int setForceUse(int i, int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = asClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("asClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("setForceUse", Integer.TYPE, Integer.TYPE).invoke(null, Integer.valueOf(i), Integer.valueOf(i2));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }
}
