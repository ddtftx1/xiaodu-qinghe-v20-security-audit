package com.sprd.validationtools.nonpublic;

import android.content.Context;
import android.util.Log;
import com.sprd.validationtools.CommonKt;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RadioInteractorProxy.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0001X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/sprd/validationtools/nonpublic/RadioInteractorProxy;", "", "()V", "CLASS_NAME", "", "TAG", "radioInteractorClass", "Ljava/lang/Class;", "radioInteractorObject", "init", "", "setPreferredNetworkType", "", "slot", "networkType", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RadioInteractorProxy {
    private static final String CLASS_NAME = "com.android.sprd.telephony.RadioInteractor";
    public static final RadioInteractorProxy INSTANCE;
    private static final String TAG = "RADIOINTERACTORPROXY";
    private static Class<?> radioInteractorClass;
    private static Object radioInteractorObject;

    private RadioInteractorProxy() {
    }

    static {
        RadioInteractorProxy radioInteractorProxy = new RadioInteractorProxy();
        INSTANCE = radioInteractorProxy;
        radioInteractorProxy.init();
    }

    public final void init() throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName(CLASS_NAME);
            Intrinsics.checkNotNullExpressionValue(cls, "forName(CLASS_NAME)");
            radioInteractorClass = cls;
            if (cls == null) {
                Intrinsics.throwUninitializedPropertyAccessException("radioInteractorClass");
                cls = null;
            }
            Object objNewInstance = cls.getConstructor(Context.class).newInstance(CommonKt.getAppCtx());
            Intrinsics.checkNotNullExpressionValue(objNewInstance, "radioInteractorClass.get…     .newInstance(appCtx)");
            radioInteractorObject = objNewInstance;
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "no such class, com.android.sprd.telephony.RadioInteractor");
            throw e;
        }
    }

    @JvmStatic
    public static final int setPreferredNetworkType(int i, int i2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = radioInteractorClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("radioInteractorClass");
            cls = null;
        }
        Method method = cls.getMethod("setPreferredNetworkType", new Class[0]);
        Object obj = radioInteractorObject;
        if (obj == null) {
            Intrinsics.throwUninitializedPropertyAccessException("radioInteractorObject");
            obj = Unit.INSTANCE;
        }
        Object objInvoke = method.invoke(obj, Integer.valueOf(i), Integer.valueOf(i2));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }
}
