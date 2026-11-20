package com.unisoc.silent.reboot;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemProperties;

/* loaded from: classes.dex */
public class UniSilentRebootReceiver extends BroadcastReceiver {
    private static final String TAG = UniSilentRebootReceiver.class.getSimpleName();
    private UniSilentRebootUtils mUniSilentRebootUtils;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        intent.getAction();
        if (SystemProperties.getBoolean("persist.silent.reboot.enabled", true)) {
            UniSilentRebootUtils uniSilentRebootUtils = new UniSilentRebootUtils(context);
            this.mUniSilentRebootUtils = uniSilentRebootUtils;
            uniSilentRebootUtils.scheduleNextSilentReboot(2001, context, uniSilentRebootUtils.getSilentRebootTimeStamp());
        }
    }
}
