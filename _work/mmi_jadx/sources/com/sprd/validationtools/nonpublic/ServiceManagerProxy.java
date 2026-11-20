package com.sprd.validationtools.nonpublic;

import android.os.IBinder;
import com.sprd.validationtools.sqlite.EngSqlite;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ServiceManagerProxy.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0007J\b\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/sprd/validationtools/nonpublic/ServiceManagerProxy;", "", "()V", "SERVICE_MANAGER_CLASS_NAME", "", "serviceManagerPropClass", "Ljava/lang/Class;", "getService", "Landroid/os/IBinder;", EngSqlite.ENG_STRING2INT_NAME, "init", "", "waitForDeclaredService", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ServiceManagerProxy {
    public static final ServiceManagerProxy INSTANCE;
    private static final String SERVICE_MANAGER_CLASS_NAME = "android.os.ServiceManager";
    private static Class<?> serviceManagerPropClass;

    private ServiceManagerProxy() {
    }

    static {
        ServiceManagerProxy serviceManagerProxy = new ServiceManagerProxy();
        INSTANCE = serviceManagerProxy;
        serviceManagerProxy.init();
    }

    public final void init() throws ClassNotFoundException {
        Class<?> cls = Class.forName(SERVICE_MANAGER_CLASS_NAME);
        Intrinsics.checkNotNullExpressionValue(cls, "forName(SERVICE_MANAGER_CLASS_NAME)");
        serviceManagerPropClass = cls;
    }

    @JvmStatic
    public static final IBinder waitForDeclaredService(String name) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(name, "name");
        Class<?> cls = serviceManagerPropClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serviceManagerPropClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("waitForDeclaredService", String.class).invoke(null, name);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type android.os.IBinder");
        return (IBinder) objInvoke;
    }

    @JvmStatic
    public static final IBinder getService(String name) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(name, "name");
        Class<?> cls = serviceManagerPropClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serviceManagerPropClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("getService", String.class).invoke(null, name);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type android.os.IBinder");
        return (IBinder) objInvoke;
    }
}
