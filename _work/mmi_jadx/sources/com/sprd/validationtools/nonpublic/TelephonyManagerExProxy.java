package com.sprd.validationtools.nonpublic;

import android.content.Context;
import android.telephony.CellLocation;
import android.util.Log;
import com.sprd.validationtools.CommonKt;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TelephonyManagerExProxy.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\b\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0001X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/sprd/validationtools/nonpublic/TelephonyManagerExProxy;", "", "()V", "CLASS_NAME", "", "TAG", "tmExClass", "Ljava/lang/Class;", "tmExObject", "getCellLocationForPhone", "Landroid/telephony/CellLocation;", "phoneId", "", "init", "", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TelephonyManagerExProxy {
    private static final String CLASS_NAME = "android.telephony.TelephonyManagerEx";
    public static final TelephonyManagerExProxy INSTANCE;
    private static final String TAG = "TELEPHONYMANAGEREXPROXY";
    private static Class<?> tmExClass;
    private static Object tmExObject;

    private TelephonyManagerExProxy() {
    }

    static {
        TelephonyManagerExProxy telephonyManagerExProxy = new TelephonyManagerExProxy();
        INSTANCE = telephonyManagerExProxy;
        telephonyManagerExProxy.init();
    }

    public final void init() throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName(CLASS_NAME);
            Intrinsics.checkNotNullExpressionValue(cls, "forName(CLASS_NAME)");
            tmExClass = cls;
            if (cls == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tmExClass");
                cls = null;
            }
            Object objInvoke = cls.getMethod("from", Context.class).invoke(CommonKt.getAppCtx(), new Object[0]);
            Intrinsics.checkNotNullExpressionValue(objInvoke, "tmExClass.getMethod(\"fro…lass.java).invoke(appCtx)");
            tmExObject = objInvoke;
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "no such class, android.telephony.TelephonyManagerEx");
            throw e;
        }
    }

    @JvmStatic
    public static final CellLocation getCellLocationForPhone(int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = tmExClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tmExClass");
            cls = null;
        }
        Method method = cls.getMethod("getCellLocationForPhone", new Class[0]);
        Object obj = tmExObject;
        if (obj == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tmExObject");
            obj = Unit.INSTANCE;
        }
        Object objInvoke = method.invoke(obj, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type android.telephony.CellLocation");
        return (CellLocation) objInvoke;
    }
}
