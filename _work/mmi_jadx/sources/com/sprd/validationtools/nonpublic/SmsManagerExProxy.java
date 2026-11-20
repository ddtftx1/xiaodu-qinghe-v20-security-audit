package com.sprd.validationtools.nonpublic;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SmsManagerExProxy.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u00020\fH\u0007J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0001X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/sprd/validationtools/nonpublic/SmsManagerExProxy;", "", "()V", "SMSMANAGEREX_CLASS_NAME", "", "smsManagerExClass", "Ljava/lang/Class;", "smsManagerExObject", "getSmscForSubscriber", "subId", "", "init", "", "setSmscForSubscriber", "", "smsc", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SmsManagerExProxy {
    public static final SmsManagerExProxy INSTANCE;
    private static final String SMSMANAGEREX_CLASS_NAME = "android.telephony.SmsManagerEx";
    private static Class<?> smsManagerExClass;
    private static Object smsManagerExObject;

    private SmsManagerExProxy() {
    }

    static {
        SmsManagerExProxy smsManagerExProxy = new SmsManagerExProxy();
        INSTANCE = smsManagerExProxy;
        smsManagerExProxy.init();
    }

    public final void init() throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = Class.forName(SMSMANAGEREX_CLASS_NAME);
        Intrinsics.checkNotNullExpressionValue(cls, "forName(SMSMANAGEREX_CLASS_NAME)");
        smsManagerExClass = cls;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("smsManagerExClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("getDefault", new Class[0]).invoke(null, new Object[0]);
        Intrinsics.checkNotNull(objInvoke);
        smsManagerExObject = objInvoke;
    }

    public final String getSmscForSubscriber(int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = smsManagerExClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("smsManagerExClass");
            cls = null;
        }
        Method method = cls.getMethod("getSmscForSubscriber", Integer.TYPE);
        Object obj = smsManagerExObject;
        if (obj == null) {
            Intrinsics.throwUninitializedPropertyAccessException("smsManagerExObject");
            obj = Unit.INSTANCE;
        }
        Object objInvoke = method.invoke(obj, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
        return (String) objInvoke;
    }

    public final boolean setSmscForSubscriber(int i, String smsc) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(smsc, "smsc");
        Class<?> cls = smsManagerExClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("smsManagerExClass");
            cls = null;
        }
        Method method = cls.getMethod("setSmscForSubscriber", Integer.TYPE, String.class);
        Object obj = smsManagerExObject;
        if (obj == null) {
            Intrinsics.throwUninitializedPropertyAccessException("smsManagerExObject");
            obj = Unit.INSTANCE;
        }
        Object objInvoke = method.invoke(obj, Integer.valueOf(i), smsc);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objInvoke).booleanValue();
    }
}
