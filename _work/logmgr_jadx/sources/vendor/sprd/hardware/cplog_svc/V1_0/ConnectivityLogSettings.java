package vendor.sprd.hardware.cplog_svc.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ConnectivityLogSettings {
    public int dest = 0;
    public int comp = 0;
    public int wifiBt = 0;
    public int wifiBtLevel = 0;
    public int saveDump = 0;
    public int gnss = 0;
    public int reset_state = 0;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != ConnectivityLogSettings.class) {
            return false;
        }
        ConnectivityLogSettings connectivityLogSettings = (ConnectivityLogSettings) obj;
        return this.dest == connectivityLogSettings.dest && this.comp == connectivityLogSettings.comp && this.wifiBt == connectivityLogSettings.wifiBt && this.wifiBtLevel == connectivityLogSettings.wifiBtLevel && this.saveDump == connectivityLogSettings.saveDump && this.gnss == connectivityLogSettings.gnss && this.reset_state == connectivityLogSettings.reset_state;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.dest))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.comp))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.wifiBt))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.wifiBtLevel))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.saveDump))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.gnss))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.reset_state))));
    }

    public final String toString() {
        return "{.dest = " + LogDestination.toString(this.dest) + ", .comp = " + CompressionAlgorithm.toString(this.comp) + ", .wifiBt = " + this.wifiBt + ", .wifiBtLevel = " + this.wifiBtLevel + ", .saveDump = " + this.saveDump + ", .gnss = " + this.gnss + ", .reset_state = " + this.reset_state + "}";
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(28L), 0L);
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.dest = hwBlob.getInt32(0 + j);
        this.comp = hwBlob.getInt32(4 + j);
        this.wifiBt = hwBlob.getInt32(8 + j);
        this.wifiBtLevel = hwBlob.getInt32(12 + j);
        this.saveDump = hwBlob.getInt32(16 + j);
        this.gnss = hwBlob.getInt32(20 + j);
        this.reset_state = hwBlob.getInt32(j + 24);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(28);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.dest);
        hwBlob.putInt32(4 + j, this.comp);
        hwBlob.putInt32(8 + j, this.wifiBt);
        hwBlob.putInt32(12 + j, this.wifiBtLevel);
        hwBlob.putInt32(16 + j, this.saveDump);
        hwBlob.putInt32(20 + j, this.gnss);
        hwBlob.putInt32(j + 24, this.reset_state);
    }
}
