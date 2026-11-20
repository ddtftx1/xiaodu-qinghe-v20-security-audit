package vendor.sprd.hardware.cplog_svc.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.Objects;

/* loaded from: classes.dex */
public final class CellularModemLogSettings {
    public int mode = 0;
    public int dest = 0;
    public int comp = 0;
    public int psLog = 0;
    public int psLogLevel = 0;
    public int psPcm = 0;
    public int ipCap = 0;
    public int ipLen = 0;
    public int saveDump = 0;
    public int etb = 0;
    public int phyDest = 0;
    public int phyLog = 0;
    public int phyLogLevel = 0;
    public int phyPcm = 0;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != CellularModemLogSettings.class) {
            return false;
        }
        CellularModemLogSettings cellularModemLogSettings = (CellularModemLogSettings) obj;
        return this.mode == cellularModemLogSettings.mode && this.dest == cellularModemLogSettings.dest && this.comp == cellularModemLogSettings.comp && this.psLog == cellularModemLogSettings.psLog && this.psLogLevel == cellularModemLogSettings.psLogLevel && this.psPcm == cellularModemLogSettings.psPcm && this.ipCap == cellularModemLogSettings.ipCap && this.ipLen == cellularModemLogSettings.ipLen && this.saveDump == cellularModemLogSettings.saveDump && this.etb == cellularModemLogSettings.etb && this.phyDest == cellularModemLogSettings.phyDest && this.phyLog == cellularModemLogSettings.phyLog && this.phyLogLevel == cellularModemLogSettings.phyLogLevel && this.phyPcm == cellularModemLogSettings.phyPcm;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.mode))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.dest))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.comp))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.psLog))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.psLogLevel))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.psPcm))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.ipCap))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.ipLen))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.saveDump))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.etb))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.phyDest))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.phyLog))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.phyLogLevel))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.phyPcm))));
    }

    public final String toString() {
        return "{.mode = " + CellularLogMode.toString(this.mode) + ", .dest = " + LogDestination.toString(this.dest) + ", .comp = " + CompressionAlgorithm.toString(this.comp) + ", .psLog = " + this.psLog + ", .psLogLevel = " + this.psLogLevel + ", .psPcm = " + this.psPcm + ", .ipCap = " + this.ipCap + ", .ipLen = " + this.ipLen + ", .saveDump = " + this.saveDump + ", .etb = " + this.etb + ", .phyDest = " + PhyLogDestination.toString(this.phyDest) + ", .phyLog = " + this.phyLog + ", .phyLogLevel = " + this.phyLogLevel + ", .phyPcm = " + this.phyPcm + "}";
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(56L), 0L);
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.mode = hwBlob.getInt32(0 + j);
        this.dest = hwBlob.getInt32(4 + j);
        this.comp = hwBlob.getInt32(8 + j);
        this.psLog = hwBlob.getInt32(12 + j);
        this.psLogLevel = hwBlob.getInt32(16 + j);
        this.psPcm = hwBlob.getInt32(20 + j);
        this.ipCap = hwBlob.getInt32(24 + j);
        this.ipLen = hwBlob.getInt32(28 + j);
        this.saveDump = hwBlob.getInt32(32 + j);
        this.etb = hwBlob.getInt32(36 + j);
        this.phyDest = hwBlob.getInt32(40 + j);
        this.phyLog = hwBlob.getInt32(44 + j);
        this.phyLogLevel = hwBlob.getInt32(48 + j);
        this.phyPcm = hwBlob.getInt32(j + 52);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(56);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.mode);
        hwBlob.putInt32(4 + j, this.dest);
        hwBlob.putInt32(8 + j, this.comp);
        hwBlob.putInt32(12 + j, this.psLog);
        hwBlob.putInt32(16 + j, this.psLogLevel);
        hwBlob.putInt32(20 + j, this.psPcm);
        hwBlob.putInt32(24 + j, this.ipCap);
        hwBlob.putInt32(28 + j, this.ipLen);
        hwBlob.putInt32(32 + j, this.saveDump);
        hwBlob.putInt32(36 + j, this.etb);
        hwBlob.putInt32(40 + j, this.phyDest);
        hwBlob.putInt32(44 + j, this.phyLog);
        hwBlob.putInt32(48 + j, this.phyLogLevel);
        hwBlob.putInt32(j + 52, this.phyPcm);
    }
}
