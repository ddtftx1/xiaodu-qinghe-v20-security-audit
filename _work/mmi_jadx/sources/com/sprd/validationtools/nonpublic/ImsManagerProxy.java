package com.sprd.validationtools.nonpublic;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImsManagerProxy.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0007J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\r\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/sprd/validationtools/nonpublic/ImsManagerProxy;", "", "()V", "IMSMANAGER_CLASS_NAME", "", "imsManagerClass", "Ljava/lang/Class;", "init", "", "isWfcEnabledByPlatform", "", "ctx", "Landroid/content/Context;", "setEnhanced4gLteModeSetting", "enable", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImsManagerProxy {
    private static final String IMSMANAGER_CLASS_NAME = "com.android.ims.ImsManager";
    public static final ImsManagerProxy INSTANCE;
    private static Class<?> imsManagerClass;

    private ImsManagerProxy() {
    }

    static {
        ImsManagerProxy imsManagerProxy = new ImsManagerProxy();
        INSTANCE = imsManagerProxy;
        imsManagerProxy.init();
    }

    public final void init() throws ClassNotFoundException {
        Class<?> cls = Class.forName(IMSMANAGER_CLASS_NAME);
        Intrinsics.checkNotNullExpressionValue(cls, "forName(IMSMANAGER_CLASS_NAME)");
        imsManagerClass = cls;
    }

    public final void setEnhanced4gLteModeSetting(Context ctx, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Class<?> cls = imsManagerClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imsManagerClass");
            cls = null;
        }
        cls.getMethod("setEnhanced4gLteModeSetting", Context.class, Boolean.TYPE).invoke(null, ctx, Boolean.valueOf(z));
    }

    public final boolean isWfcEnabledByPlatform(Context ctx) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Class<?> cls = imsManagerClass;
        if (cls == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imsManagerClass");
            cls = null;
        }
        Object objInvoke = cls.getMethod("isWfcEnabledByPlatform", Context.class).invoke(null, ctx);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objInvoke).booleanValue();
    }
}
