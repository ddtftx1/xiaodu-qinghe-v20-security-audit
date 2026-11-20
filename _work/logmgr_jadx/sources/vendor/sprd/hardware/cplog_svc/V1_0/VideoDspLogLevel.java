package vendor.sprd.hardware.cplog_svc.V1_0;

/* loaded from: classes.dex */
public final class VideoDspLogLevel {
    public static final String toString(int i) {
        if (i == 0) {
            return "VDLL_ERROR";
        }
        if (i == 1) {
            return "VDLL_WARNING";
        }
        if (i == 2) {
            return "VDLL_DEBUG";
        }
        if (i == 3) {
            return "VDLL_INFO";
        }
        if (i == 4) {
            return "VDLL_DUMP";
        }
        return "0x" + Integer.toHexString(i);
    }
}
