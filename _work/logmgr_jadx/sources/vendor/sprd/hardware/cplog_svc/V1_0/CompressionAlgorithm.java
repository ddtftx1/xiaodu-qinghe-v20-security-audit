package vendor.sprd.hardware.cplog_svc.V1_0;

/* loaded from: classes.dex */
public final class CompressionAlgorithm {
    public static final String toString(int i) {
        if (i == 0) {
            return "CA_NONE";
        }
        if (i == 1) {
            return "CA_LZ4";
        }
        if (i == 2) {
            return "CA_ZSTD";
        }
        return "0x" + Integer.toHexString(i);
    }
}
