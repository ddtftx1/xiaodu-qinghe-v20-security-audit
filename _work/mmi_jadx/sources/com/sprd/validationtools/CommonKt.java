package com.sprd.validationtools;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Common.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\"\u001e\u0010\u0000\u001a\u00020\u00018\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"appCtx", "Landroid/content/Context;", "getAppCtx", "()Landroid/content/Context;", "setAppCtx", "(Landroid/content/Context;)V", "app_sprdDevRelease"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CommonKt {
    public static Context appCtx;

    public static final Context getAppCtx() {
        Context context = appCtx;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException("appCtx");
        return null;
    }

    public static final void setAppCtx(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        appCtx = context;
    }
}
