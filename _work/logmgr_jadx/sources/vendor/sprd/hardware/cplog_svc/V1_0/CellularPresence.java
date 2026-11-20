package vendor.sprd.hardware.cplog_svc.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.Objects;

/* loaded from: classes.dex */
public final class CellularPresence {
    public int present = 0;
    public int has_audio_dsp = 0;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != CellularPresence.class) {
            return false;
        }
        CellularPresence cellularPresence = (CellularPresence) obj;
        return this.present == cellularPresence.present && this.has_audio_dsp == cellularPresence.has_audio_dsp;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.present))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.has_audio_dsp))));
    }

    public final String toString() {
        return "{.present = " + this.present + ", .has_audio_dsp = " + this.has_audio_dsp + "}";
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.present = hwBlob.getInt32(0 + j);
        this.has_audio_dsp = hwBlob.getInt32(j + 4);
    }
}
