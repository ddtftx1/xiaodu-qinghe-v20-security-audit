package com.sprd.validationtools.nonpublic;

import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnvironmentExProxy.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0007J\b\u0010\b\u001a\u00020\tH\u0007J\u0015\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000bH\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\tH\u0007J\b\u0010\u000f\u001a\u00020\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/sprd/validationtools/nonpublic/EnvironmentExProxy;", "", "()V", "ENVEX_CLASS_NAME", "", "environmentExClass", "Ljava/lang/Class;", "getExternalStoragePathState", "getInternalStoragePath", "Ljava/io/File;", "getUsbdiskVolumePaths", "", "()[Ljava/io/File;", "getUsbdiskVolumeState", "file", "init", "", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EnvironmentExProxy {
    private static final String ENVEX_CLASS_NAME = "android.os.EnvironmentEx";
    public static final EnvironmentExProxy INSTANCE;
    private static Class<?> environmentExClass;

    private EnvironmentExProxy() {
    }

    static {
        EnvironmentExProxy environmentExProxy = new EnvironmentExProxy();
        INSTANCE = environmentExProxy;
        environmentExProxy.init();
    }

    public final void init() throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName(ENVEX_CLASS_NAME);
            Intrinsics.checkNotNullExpressionValue(cls, "forName(ENVEX_CLASS_NAME)");
            environmentExClass = cls;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println(Unit.INSTANCE);
        }
    }

    @JvmStatic
    public static final File getInternalStoragePath() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = environmentExClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("environmentExClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("getInternalStoragePath", new Class[0]).invoke(null, new Object[0]);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type java.io.File");
        return (File) objInvoke;
    }

    @JvmStatic
    public static final String getExternalStoragePathState() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = environmentExClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("environmentExClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("getExternalStoragePathState", new Class[0]).invoke(null, new Object[0]);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
        return (String) objInvoke;
    }

    @JvmStatic
    public static final File[] getUsbdiskVolumePaths() {
        Class<?> cls = environmentExClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("environmentExClass");
            cls = null;
        }
        return (File[]) cls.getMethod("getUsbdiskVolumePaths", new Class[0]).invoke(null, new Object[0]);
    }

    @JvmStatic
    public static final String getUsbdiskVolumeState(File file) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(file, "file");
        Class<?> cls = environmentExClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("environmentExClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("getUsbdiskVolumeState", File.class).invoke(null, file);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
        return (String) objInvoke;
    }
}
