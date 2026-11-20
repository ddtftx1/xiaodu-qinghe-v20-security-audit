package vendor.sprd.hardware.cplog_svc.V1_0;

/* loaded from: classes.dex */
public final class AudioDspLogDestination {
    public static final String toString(int i) {
        if (i == 0) {
            return "ADLD_AP";
        }
        if (i == 1) {
            return "ADLD_UART";
        }
        return "0x" + Integer.toHexString(i);
    }
}
