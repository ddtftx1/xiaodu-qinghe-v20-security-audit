package vendor.sprd.hardware.cplog_svc.V1_0;

/* loaded from: classes.dex */
public final class VideoDspLogDestination {
    public static final String toString(int i) {
        if (i == 0) {
            return "VDLD_AP";
        }
        if (i == 1) {
            return "VDLD_UART";
        }
        if (i == 2) {
            return "VDLD_REG";
        }
        return "0x" + Integer.toHexString(i);
    }
}
