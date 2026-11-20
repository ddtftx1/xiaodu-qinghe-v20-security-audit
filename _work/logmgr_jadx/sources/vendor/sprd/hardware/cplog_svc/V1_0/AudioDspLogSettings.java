package vendor.sprd.hardware.cplog_svc.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.Objects;

/* loaded from: classes.dex */
public final class AudioDspLogSettings {
    public int enable = 0;
    public int pcm = 0;
    public int dest = 0;
    public int agdspdest = 0;
    public int comp = 0;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != AudioDspLogSettings.class) {
            return false;
        }
        AudioDspLogSettings audioDspLogSettings = (AudioDspLogSettings) obj;
        return this.enable == audioDspLogSettings.enable && this.pcm == audioDspLogSettings.pcm && this.dest == audioDspLogSettings.dest && this.agdspdest == audioDspLogSettings.agdspdest && this.comp == audioDspLogSettings.comp;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.enable))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.pcm))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.dest))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.agdspdest))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.comp))));
    }

    public final String toString() {
        return "{.enable = " + this.enable + ", .pcm = " + this.pcm + ", .dest = " + LogDestination.toString(this.dest) + ", .agdspdest = " + AudioDspLogDestination.toString(this.agdspdest) + ", .comp = " + CompressionAlgorithm.toString(this.comp) + "}";
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(20L), 0L);
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.enable = hwBlob.getInt32(0 + j);
        this.pcm = hwBlob.getInt32(4 + j);
        this.dest = hwBlob.getInt32(8 + j);
        this.agdspdest = hwBlob.getInt32(12 + j);
        this.comp = hwBlob.getInt32(j + 16);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(20);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.enable);
        hwBlob.putInt32(4 + j, this.pcm);
        hwBlob.putInt32(8 + j, this.dest);
        hwBlob.putInt32(12 + j, this.agdspdest);
        hwBlob.putInt32(j + 16, this.comp);
    }
}
