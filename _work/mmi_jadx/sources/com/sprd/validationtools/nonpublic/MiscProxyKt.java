package com.sprd.validationtools.nonpublic;

import android.app.ActivityManager;
import com.sprd.validationtools.CommonKt;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MiscProxy.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"ActivityManager_forceStopPackage", "", "packageName", "", "app_sprdDevRelease"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MiscProxyKt {
    public static final void ActivityManager_forceStopPackage(String packageName) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        ActivityManager.class.getMethod("forceStopPackage", String.class).invoke(CommonKt.getAppCtx().getSystemService("activity"), packageName);
    }
}
