package vendor.sprd.hardware.cplog_svc.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.Objects;

/* loaded from: classes.dex */
public final class VideoDspLogSettings {
    public int enable = 0;
    public int dest = 0;
    public int comp = 0;
    public int level = 0;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != VideoDspLogSettings.class) {
            return false;
        }
        VideoDspLogSettings videoDspLogSettings = (VideoDspLogSettings) obj;
        return this.enable == videoDspLogSettings.enable && this.dest == videoDspLogSettings.dest && this.comp == videoDspLogSettings.comp && this.level == videoDspLogSettings.level;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.enable))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.dest))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.comp))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.level))));
    }

    public final String toString() {
        return "{.enable = " + this.enable + ", .dest = " + VideoDspLogDestination.toString(this.dest) + ", .comp = " + CompressionAlgorithm.toString(this.comp) + ", .level = " + VideoDspLogLevel.toString(this.level) + "}";
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(16L), 0L);
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.enable = hwBlob.getInt32(0 + j);
        this.dest = hwBlob.getInt32(4 + j);
        this.comp = hwBlob.getInt32(8 + j);
        this.level = hwBlob.getInt32(j + 12);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(16);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.enable);
        hwBlob.putInt32(4 + j, this.dest);
        hwBlob.putInt32(8 + j, this.comp);
        hwBlob.putInt32(j + 12, this.level);
    }
}
