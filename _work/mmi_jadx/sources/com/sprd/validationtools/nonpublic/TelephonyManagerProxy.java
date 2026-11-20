package com.sprd.validationtools.nonpublic;

import android.content.Context;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TelephonyManagerProxy.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006J\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0006J\u000e\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0006J\u0006\u0010\u0018\u001a\u00020\u0006J\u000e\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u0010\u001b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006J\u0006\u0010\u001c\u001a\u00020\tJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\f\u001a\u00020\u0006J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0013\u001a\u00020\u0006J\u000e\u0010 \u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0006J\u000e\u0010!\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0006J\u0010\u0010\"\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006J\u0010\u0010%\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u0006J\u0006\u0010&\u001a\u00020\tJ\u000e\u0010'\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010(\u001a\u00020)2\u0006\u0010\u000f\u001a\u00020\u0006J\u0006\u0010*\u001a\u00020)J\u000e\u0010+\u001a\u00020)2\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020\u0006J\u000e\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020)R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/sprd/validationtools/nonpublic/TelephonyManagerProxy;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "NETWORK_TYPE_LTE_CA", "", "appCtx", "telephonyManagerObject", "Landroid/telephony/TelephonyManager;", "getCdmaPrlVersion", "", "subId", "getCurrentPhoneType", "getCurrentPhoneTypeForSlot", "slotIndex", "getEsn", "getLine1Number", "getNetworkOperatorForPhone", "phoneId", "getNetworkOperatorName", "getNetworkType", "getNetworkTypeName", "type", "getPhoneCount", "getPhoneType", "networkMode", "getPreferredNetworkType", "getService", "getServiceStateForSubscriber", "Landroid/telephony/ServiceState;", "getSimCountryIsoForPhone", "getSimOperatorNameForPhone", "getSimOperatorNumericForPhone", "getSimSerialNumber", "getSimState", "simIdx", "getSubscriberId", "getTelephonyManager", "getVoiceNetworkType", "hasIccCard", "", "isMultiSimEnabled", "isNetworkRoaming", "isSimExist", "simIndex", "setNetworkRoaming", "", "isRoaming", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public class TelephonyManagerProxy {
    public final int NETWORK_TYPE_LTE_CA;
    private Context appCtx;
    private TelephonyManager telephonyManagerObject;

    public TelephonyManagerProxy(Context context) throws IllegalAccessException, IllegalArgumentException {
        Intrinsics.checkNotNullParameter(context, "context");
        this.appCtx = context;
        Object obj = TelephonyManager.class.getField("NETWORK_TYPE_LTE_CA").get(null);
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Int");
        this.NETWORK_TYPE_LTE_CA = ((Integer) obj).intValue();
        Object systemService = this.appCtx.getSystemService("phone");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        this.telephonyManagerObject = (TelephonyManager) systemService;
    }

    public final TelephonyManager getTelephonyManager() {
        return this.telephonyManagerObject;
    }

    public final TelephonyManager getService() {
        return this.telephonyManagerObject;
    }

    public final int getPhoneCount() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getPhoneCount", new Class[0]).invoke(this.telephonyManagerObject, new Object[0]);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    public final int getSimState(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getSimState", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    public final int getPreferredNetworkType(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getPreferredNetworkType", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    public final void setNetworkRoaming(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("setNetworkRoaming", Boolean.TYPE).invoke(this.telephonyManagerObject, Boolean.valueOf(z));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        ((Integer) objInvoke).intValue();
    }

    public final boolean isSimExist(int i) {
        return getSimState(i) == 5;
    }

    public final int getNetworkType(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getNetworkType", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    public final String getNetworkTypeName(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getNetworkTypeName", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
        return (String) objInvoke;
    }

    public final int getVoiceNetworkType(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getVoiceNetworkType", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    public final String getNetworkOperatorName(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getNetworkOperatorName", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
        return (String) objInvoke;
    }

    public final String getNetworkOperatorForPhone(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getNetworkOperatorForPhone", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
        return (String) objInvoke;
    }

    public final boolean isNetworkRoaming(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("isNetworkRoaming", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objInvoke).booleanValue();
    }

    public final boolean hasIccCard(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("hasIccCard", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objInvoke).booleanValue();
    }

    public final boolean isMultiSimEnabled() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("isMultiSimEnabled", new Class[0]).invoke(this.telephonyManagerObject, new Object[0]);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objInvoke).booleanValue();
    }

    public final int getCurrentPhoneTypeForSlot(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getCurrentPhoneTypeForSlot", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    public final String getSubscriberId(int i) {
        return (String) TelephonyManager.class.getMethod("getSubscriberId", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
    }

    public final String getSimOperatorNumericForPhone(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getSimOperatorNumericForPhone", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
        return (String) objInvoke;
    }

    public final String getSimOperatorNameForPhone(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getSimOperatorNameForPhone", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
        return (String) objInvoke;
    }

    public final int getCurrentPhoneType(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getCurrentPhoneType", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    public final int getPhoneType(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = TelephonyManager.class.getMethod("getPhoneType", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    public final ServiceState getServiceStateForSubscriber(int i) {
        return (ServiceState) TelephonyManager.class.getMethod("getServiceStateForSubscriber", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
    }

    public final String getCdmaPrlVersion(int i) {
        return (String) TelephonyManager.class.getMethod("getCdmaPrlVersion", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
    }

    public final String getEsn() {
        return (String) TelephonyManager.class.getMethod("getEsn", new Class[0]).invoke(this.telephonyManagerObject, new Object[0]);
    }

    public final String getSimCountryIsoForPhone(int i) {
        return (String) TelephonyManager.class.getMethod("getSimCountryIsoForPhone", Integer.TYPE).invoke(null, Integer.valueOf(i));
    }

    public final String getLine1Number(int i) {
        return (String) TelephonyManager.class.getMethod("getLine1Number", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
    }

    public final String getSimSerialNumber(int i) {
        return (String) TelephonyManager.class.getMethod("getSimSerialNumber", Integer.TYPE).invoke(this.telephonyManagerObject, Integer.valueOf(i));
    }
}
