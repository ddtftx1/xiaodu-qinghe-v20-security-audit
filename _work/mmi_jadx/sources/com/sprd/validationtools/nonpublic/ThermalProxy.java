package com.sprd.validationtools.nonpublic;

import android.os.RemoteException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* compiled from: ThermalProxy.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\n\u0010\f\u001a\u0004\u0018\u00010\u0001H\u0007J\b\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/sprd/validationtools/nonpublic/ThermalProxy;", "", "()V", "THERMAL_CLASS_NAME", "", "thermalObject", "Ljava/lang/Class;", "exists", "", "getExtThermal", "var1", "", "getService", "init", "", "setExtThermal", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ThermalProxy {
    public static final ThermalProxy INSTANCE;
    private static final String THERMAL_CLASS_NAME = "vendor.sprd.hardware.thermal.V1_0.IExtThermal";
    private static Class<?> thermalObject;

    private ThermalProxy() {
    }

    static {
        ThermalProxy thermalProxy = new ThermalProxy();
        INSTANCE = thermalProxy;
        thermalProxy.init();
    }

    public final void init() {
        try {
            thermalObject = Class.forName(THERMAL_CLASS_NAME);
        } catch (Exception unused) {
        }
    }

    @JvmStatic
    public static final boolean exists() {
        return thermalObject != null;
    }

    @JvmStatic
    public static final Object getService() throws RemoteException {
        Method method;
        Class<?> cls = thermalObject;
        if (cls == null || (method = cls.getMethod("getService", new Class[0])) == null) {
            return null;
        }
        return method.invoke(null, new Object[0]);
    }

    @JvmStatic
    public static final void setExtThermal(int i) throws IllegalAccessException, RemoteException, IllegalArgumentException, InvocationTargetException {
        Method method;
        Class<?> cls = thermalObject;
        if (cls == null || (method = cls.getMethod("setExtThermal", Integer.TYPE)) == null) {
            return;
        }
        method.invoke(getService(), Integer.valueOf(i));
    }

    @JvmStatic
    public static final boolean getExtThermal(int i) throws RemoteException {
        Method method;
        Class<?> cls = thermalObject;
        Object objInvoke = (cls == null || (method = cls.getMethod("getExtThermal", Integer.TYPE)) == null) ? null : method.invoke(getService(), Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objInvoke).booleanValue();
    }
}
