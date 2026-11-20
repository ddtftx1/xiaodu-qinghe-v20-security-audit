package com.sprd.validationtools.nonpublic;

import android.content.Context;
import android.media.AudioManager;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AudioManagerProxy.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0006H\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fJ&\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u000fJ\u000e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0006J\u000e\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020 J\u001e\u0010!\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fR\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/sprd/validationtools/nonpublic/AudioManagerProxy;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "EXTRA_VOLUME_STREAM_TYPE", "", "EXTRA_VOLUME_STREAM_VALUE", "VOLUME_CHANGED_ACTION", "appCtx", "audioManager", "Landroid/media/AudioManager;", "getField", "fieldName", "getMode", "", "getParameters", "keys", "getStreamMaxVolume", "streamType", "setDeviceConnectionStateForFM", "", "device", "state", "device_address", "device_name", "setMode", "mode", "setParameters", "keyValuePairs", "setSpeakerphoneOn", "on", "", "setStreamVolume", "index", "flags", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public class AudioManagerProxy {
    public final String EXTRA_VOLUME_STREAM_TYPE;
    public final String EXTRA_VOLUME_STREAM_VALUE;
    public final String VOLUME_CHANGED_ACTION;
    private Context appCtx;
    private AudioManager audioManager;

    public AudioManagerProxy(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.appCtx = context;
        this.EXTRA_VOLUME_STREAM_TYPE = (String) getField("EXTRA_VOLUME_STREAM_TYPE");
        this.EXTRA_VOLUME_STREAM_VALUE = (String) getField("EXTRA_VOLUME_STREAM_VALUE");
        this.VOLUME_CHANGED_ACTION = (String) getField("VOLUME_CHANGED_ACTION");
        Object systemService = this.appCtx.getSystemService("audio");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        this.audioManager = (AudioManager) systemService;
    }

    private final Object getField(String str) throws IllegalAccessException, IllegalArgumentException {
        Object obj = AudioManager.class.getField(str).get(null);
        Intrinsics.checkNotNull(obj);
        return obj;
    }

    public final void setParameters(String keyValuePairs) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        AudioManager.class.getMethod("setParameters", String.class).invoke(this.audioManager, keyValuePairs);
    }

    public final String getParameters(String keys) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Object objInvoke = AudioManager.class.getMethod("getParameters", String.class).invoke(this.audioManager, keys);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
        return (String) objInvoke;
    }

    public final void setDeviceConnectionStateForFM(int i, int i2, String device_address, String device_name) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(device_address, "device_address");
        Intrinsics.checkNotNullParameter(device_name, "device_name");
        AudioManager.class.getMethod("setDeviceConnectionStateForFM", Integer.TYPE, Integer.TYPE, String.class, String.class).invoke(this.audioManager, Integer.valueOf(i), Integer.valueOf(i2), device_address, device_name);
    }

    public final void setSpeakerphoneOn(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        AudioManager.class.getMethod("setSpeakerphoneOn", Boolean.TYPE).invoke(this.audioManager, Boolean.valueOf(z));
    }

    public final int getStreamMaxVolume(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = AudioManager.class.getMethod("getStreamMaxVolume", Integer.TYPE).invoke(this.audioManager, Integer.valueOf(i));
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    public final void setStreamVolume(int i, int i2, int i3) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        AudioManager.class.getMethod("setStreamVolume", Integer.TYPE, Integer.TYPE, Integer.TYPE).invoke(this.audioManager, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public final int getMode() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = AudioManager.class.getMethod("getMode", new Class[0]).invoke(this.audioManager, new Object[0]);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objInvoke).intValue();
    }

    public final void setMode(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        AudioManager.class.getMethod("setMode", Integer.TYPE).invoke(this.audioManager, Integer.valueOf(i));
    }
}
