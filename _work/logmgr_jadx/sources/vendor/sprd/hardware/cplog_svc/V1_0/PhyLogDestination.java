package vendor.sprd.hardware.cplog_svc.V1_0;

/* loaded from: classes.dex */
public final class PhyLogDestination {
    public static final String toString(int i) {
        if (i == 0) {
            return "PLD_FOLLOW_PS";
        }
        if (i == 1) {
            return "PLD_UART";
        }
        return "0x" + Integer.toHexString(i);
    }
}
