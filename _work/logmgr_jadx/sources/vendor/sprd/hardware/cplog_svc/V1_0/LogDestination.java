package vendor.sprd.hardware.cplog_svc.V1_0;

/* loaded from: classes.dex */
public final class LogDestination {
    public static final String toString(int i) {
        if (i == 0) {
            return "LD_NONE";
        }
        if (i == 1) {
            return "LD_STORAGE";
        }
        if (i == 2) {
            return "LD_USB";
        }
        if (i == 3) {
            return "LD_ETHERNET";
        }
        return "0x" + Integer.toHexString(i);
    }
}
