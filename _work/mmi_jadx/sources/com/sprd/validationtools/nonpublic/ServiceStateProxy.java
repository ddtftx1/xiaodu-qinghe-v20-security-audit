package com.sprd.validationtools.nonpublic;

import android.telephony.ServiceState;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ServiceStateProxy.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\b"}, d2 = {"Lcom/sprd/validationtools/nonpublic/ServiceStateProxy;", "", "()V", "getDataNetworkType", "", "ss", "Landroid/telephony/ServiceState;", "getVoiceRegState", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ServiceStateProxy {
    public static final ServiceStateProxy INSTANCE = new ServiceStateProxy();

    private ServiceStateProxy() {
    }

    @JvmStatic
    public static final int getDataNetworkType(ServiceState ss) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(ss, "ss");
        Object objInvoke = ServiceState.class.getMethod("getDataNetworkType", new Class[0]).invoke(ss, new Object[0]);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    @JvmStatic
    public static final int getVoiceRegState(ServiceState ss) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(ss, "ss");
        Object objInvoke = ServiceState.class.getMethod("getVoiceRegState", new Class[0]).invoke(ss, new Object[0]);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }
}
