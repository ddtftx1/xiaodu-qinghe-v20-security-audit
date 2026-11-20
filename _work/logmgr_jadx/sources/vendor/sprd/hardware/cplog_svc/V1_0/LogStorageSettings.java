package vendor.sprd.hardware.cplog_svc.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.Objects;

/* loaded from: classes.dex */
public final class LogStorageSettings {
    public int externalTotal = 0;
    public int internalTotal = 0;
    public int fileLimit = 0;
    public int overwrite = 0;
    public int comp = 0;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != LogStorageSettings.class) {
            return false;
        }
        LogStorageSettings logStorageSettings = (LogStorageSettings) obj;
        return this.externalTotal == logStorageSettings.externalTotal && this.internalTotal == logStorageSettings.internalTotal && this.fileLimit == logStorageSettings.fileLimit && this.overwrite == logStorageSettings.overwrite && this.comp == logStorageSettings.comp;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.externalTotal))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.internalTotal))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.fileLimit))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.overwrite))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.comp))));
    }

    public final String toString() {
        return "{.externalTotal = " + this.externalTotal + ", .internalTotal = " + this.internalTotal + ", .fileLimit = " + this.fileLimit + ", .overwrite = " + this.overwrite + ", .comp = " + CompressionAlgorithm.toString(this.comp) + "}";
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(20L), 0L);
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.externalTotal = hwBlob.getInt32(0 + j);
        this.internalTotal = hwBlob.getInt32(4 + j);
        this.fileLimit = hwBlob.getInt32(8 + j);
        this.overwrite = hwBlob.getInt32(12 + j);
        this.comp = hwBlob.getInt32(j + 16);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(20);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.externalTotal);
        hwBlob.putInt32(4 + j, this.internalTotal);
        hwBlob.putInt32(8 + j, this.fileLimit);
        hwBlob.putInt32(12 + j, this.overwrite);
        hwBlob.putInt32(j + 16, this.comp);
    }
}
