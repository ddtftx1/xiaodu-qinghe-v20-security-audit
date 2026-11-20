package vendor.sprd.hardware.cplog_svc.V1_0;

/* loaded from: classes.dex */
public final class CellularLogMode {
    public static final String toString(int i) {
        if (i == 0) {
            return "NO_LOG";
        }
        if (i == 1) {
            return "NORMAL";
        }
        if (i == 2) {
            return "EXCEPTION";
        }
        return "0x" + Integer.toHexString(i);
    }
}
