package com.sprd.validationtools.nonpublic;

import com.sprd.validationtools.sqlite.EngSqlite;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SystemPropertiesProxy.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0007J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u000bH\u0007J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\rH\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/sprd/validationtools/nonpublic/SystemPropertiesProxy;", "", "()V", "SYSPROP_CLASS_NAME", "", "sysPropClass", "Ljava/lang/Class;", "get", "key", "defaultValue", "getBoolean", "", "getInt", "", "init", "", "set", EngSqlite.ENG_STRING2INT_VALUE, "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SystemPropertiesProxy {
    public static final SystemPropertiesProxy INSTANCE;
    private static final String SYSPROP_CLASS_NAME = "android.os.SystemProperties";
    private static Class<?> sysPropClass;

    private SystemPropertiesProxy() {
    }

    static {
        SystemPropertiesProxy systemPropertiesProxy = new SystemPropertiesProxy();
        INSTANCE = systemPropertiesProxy;
        systemPropertiesProxy.init();
    }

    public final void init() throws ClassNotFoundException {
        Class<?> cls = Class.forName(SYSPROP_CLASS_NAME);
        Intrinsics.checkNotNullExpressionValue(cls, "forName(SYSPROP_CLASS_NAME)");
        sysPropClass = cls;
    }

    @JvmStatic
    public static final String get(String key) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(key, "key");
        Class<?> cls = sysPropClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sysPropClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("get", String.class).invoke(null, key);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
        return (String) objInvoke;
    }

    @JvmStatic
    public static final String get(String key, String defaultValue) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Class<?> cls = sysPropClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sysPropClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("get", String.class, String.class).invoke(null, key, defaultValue);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
        return (String) objInvoke;
    }

    @JvmStatic
    public static final boolean getBoolean(String key, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(key, "key");
        Class<?> cls = sysPropClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sysPropClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("getBoolean", String.class, Boolean.TYPE).invoke(null, key, Boolean.valueOf(z));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objInvoke).booleanValue();
    }

    @JvmStatic
    public static final int getInt(String key, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(key, "key");
        Class<?> cls = sysPropClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sysPropClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("getInt", String.class, Integer.TYPE).invoke(null, key, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    @JvmStatic
    public static final void set(String key, String value) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Class<?> cls = sysPropClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sysPropClass");
            cls = null;
        }
        cls.getMethod("set", String.class, String.class).invoke(null, key, value);
    }
}
