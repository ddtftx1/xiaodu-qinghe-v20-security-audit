package com.sprd.validationtools.nonpublic;

import android.content.Context;
import android.net.Uri;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SubscriptionManagerProxy.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\bH\u0007J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\bJ\u0006\u0010\u0015\u001a\u00020\bJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0017\u001a\u00020\bJ\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\bJ\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\bR\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/sprd/validationtools/nonpublic/SubscriptionManagerProxy;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "CONTENT_URI", "Landroid/net/Uri;", "INVALID_SIM_SLOT_INDEX", "", "SIM_SLOT_INDEX", "", "appCtx", "subscriptionManagerObject", "Landroid/telephony/SubscriptionManager;", "getActiveSubscriptionIdList", "", "getActiveSubscriptionInfo", "Landroid/telephony/SubscriptionInfo;", "subId", "getActiveSubscriptionInfoForSimSlotIndex", "slotIndex", "getDefaultDataPhoneId", "getSubId", "slotIdx", "isValidPhoneId", "", "isValidSubscriptionId", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public class SubscriptionManagerProxy {
    public final Uri CONTENT_URI;
    public final int INVALID_SIM_SLOT_INDEX;
    public final String SIM_SLOT_INDEX;
    private Context appCtx;
    private final SubscriptionManager subscriptionManagerObject;

    public SubscriptionManagerProxy(Context context) throws IllegalAccessException, IllegalArgumentException {
        Intrinsics.checkNotNullParameter(context, "context");
        this.appCtx = context;
        Object obj = SubscriptionManager.class.getField("SIM_SLOT_INDEX").get(null);
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.String");
        this.SIM_SLOT_INDEX = (String) obj;
        Object obj2 = SubscriptionManager.class.getField("INVALID_SIM_SLOT_INDEX").get(null);
        Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Int");
        this.INVALID_SIM_SLOT_INDEX = ((Integer) obj2).intValue();
        Object obj3 = SubscriptionManager.class.getField("CONTENT_URI").get(null);
        Objects.requireNonNull(obj3, "null cannot be cast to non-null type android.net.Uri");
        this.CONTENT_URI = (Uri) obj3;
        Object systemService = this.appCtx.getSystemService("telephony_subscription_service");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telephony.SubscriptionManager");
        this.subscriptionManagerObject = (SubscriptionManager) systemService;
    }

    public final int getDefaultDataPhoneId() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = SubscriptionManager.class.getMethod("getDefaultDataPhoneId", new Class[0]).invoke(this.subscriptionManagerObject, new Object[0]);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    public final int[] getSubId(int i) {
        return (int[]) SubscriptionManager.class.getMethod("getSubId", Integer.TYPE).invoke(null, Integer.valueOf(i));
    }

    public final boolean isValidPhoneId(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = SubscriptionManager.class.getMethod("isValidPhoneId", Integer.TYPE).invoke(null, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objInvoke).booleanValue();
    }

    public final boolean isValidSubscriptionId(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = SubscriptionManager.class.getMethod("isValidSubscriptionId", Integer.TYPE).invoke(null, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objInvoke).booleanValue();
    }

    public final SubscriptionInfo getActiveSubscriptionInfoForSimSlotIndex(int i) {
        return (SubscriptionInfo) SubscriptionManager.class.getMethod("getActiveSubscriptionInfoForSimSlotIndex", Integer.TYPE).invoke(this.subscriptionManagerObject, Integer.valueOf(i));
    }

    public final int[] getActiveSubscriptionIdList() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = SubscriptionManager.class.getMethod("getActiveSubscriptionIdList", new Class[0]).invoke(this.subscriptionManagerObject, new Object[0]);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.IntArray");
        return (int[]) objInvoke;
    }

    public final SubscriptionInfo getActiveSubscriptionInfo(int i) {
        SubscriptionInfo activeSubscriptionInfo = this.subscriptionManagerObject.getActiveSubscriptionInfo(i);
        Intrinsics.checkNotNullExpressionValue(activeSubscriptionInfo, "subscriptionManagerObjec…veSubscriptionInfo(subId)");
        return activeSubscriptionInfo;
    }
}
