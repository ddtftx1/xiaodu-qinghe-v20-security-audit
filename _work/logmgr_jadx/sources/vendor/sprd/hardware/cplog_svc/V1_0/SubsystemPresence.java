package vendor.sprd.hardware.cplog_svc.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.Objects;

/* loaded from: classes.dex */
public final class SubsystemPresence {
    public CellularPresence cellular = new CellularPresence();
    public int has_connectvity = 0;
    public int has_audio_dsp = 0;
    public int has_vdsp = 0;
    public int has_pm = 0;
    public int has_sensor_hub = 0;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != SubsystemPresence.class) {
            return false;
        }
        SubsystemPresence subsystemPresence = (SubsystemPresence) obj;
        return HidlSupport.deepEquals(this.cellular, subsystemPresence.cellular) && this.has_connectvity == subsystemPresence.has_connectvity && this.has_audio_dsp == subsystemPresence.has_audio_dsp && this.has_vdsp == subsystemPresence.has_vdsp && this.has_pm == subsystemPresence.has_pm && this.has_sensor_hub == subsystemPresence.has_sensor_hub;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.cellular)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.has_connectvity))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.has_audio_dsp))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.has_vdsp))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.has_pm))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.has_sensor_hub))));
    }

    public final String toString() {
        return "{.cellular = " + this.cellular + ", .has_connectvity = " + this.has_connectvity + ", .has_audio_dsp = " + this.has_audio_dsp + ", .has_vdsp = " + this.has_vdsp + ", .has_pm = " + this.has_pm + ", .has_sensor_hub = " + this.has_sensor_hub + "}";
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(28L), 0L);
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.cellular.readEmbeddedFromParcel(hwParcel, hwBlob, 0 + j);
        this.has_connectvity = hwBlob.getInt32(8 + j);
        this.has_audio_dsp = hwBlob.getInt32(12 + j);
        this.has_vdsp = hwBlob.getInt32(16 + j);
        this.has_pm = hwBlob.getInt32(20 + j);
        this.has_sensor_hub = hwBlob.getInt32(j + 24);
    }
}
