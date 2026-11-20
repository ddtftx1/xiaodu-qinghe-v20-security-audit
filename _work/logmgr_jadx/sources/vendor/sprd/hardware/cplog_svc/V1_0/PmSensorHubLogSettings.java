package vendor.sprd.hardware.cplog_svc.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.Objects;

/* loaded from: classes.dex */
public final class PmSensorHubLogSettings {
    public int enable = 0;
    public int comp = 0;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != PmSensorHubLogSettings.class) {
            return false;
        }
        PmSensorHubLogSettings pmSensorHubLogSettings = (PmSensorHubLogSettings) obj;
        return this.enable == pmSensorHubLogSettings.enable && this.comp == pmSensorHubLogSettings.comp;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.enable))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.comp))));
    }

    public final String toString() {
        return "{.enable = " + this.enable + ", .comp = " + CompressionAlgorithm.toString(this.comp) + "}";
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(8L), 0L);
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.enable = hwBlob.getInt32(0 + j);
        this.comp = hwBlob.getInt32(j + 4);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(8);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.enable);
        hwBlob.putInt32(j + 4, this.comp);
    }
}
