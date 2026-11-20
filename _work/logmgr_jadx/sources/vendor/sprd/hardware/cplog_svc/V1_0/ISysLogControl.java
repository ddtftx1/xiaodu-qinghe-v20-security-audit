package vendor.sprd.hardware.cplog_svc.V1_0;

import android.os.HidlSupport;
import android.os.HwBinder;
import android.os.HwParcel;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public interface ISysLogControl extends IHwInterface {

    @FunctionalInterface
    public interface getAudioDspLogSettingsCallback {
        void onValues(int i, AudioDspLogSettings audioDspLogSettings);
    }

    @FunctionalInterface
    public interface getCellularLogSettingsCallback {
        void onValues(int i, CellularModemLogSettings cellularModemLogSettings);
    }

    @FunctionalInterface
    public interface getConnectivityLogSettingsCallback {
        void onValues(int i, ConnectivityLogSettings connectivityLogSettings);
    }

    @FunctionalInterface
    public interface getPmLogSettingsCallback {
        void onValues(int i, PmSensorHubLogSettings pmSensorHubLogSettings);
    }

    @FunctionalInterface
    public interface getSensorHubLogSettingsCallback {
        void onValues(int i, PmSensorHubLogSettings pmSensorHubLogSettings);
    }

    @FunctionalInterface
    public interface getSubsystemAutoRebootCallback {
        void onValues(int i, int i2);
    }

    @FunctionalInterface
    public interface getSubsystemPresenceCallback {
        void onValues(int i, SubsystemPresence subsystemPresence);
    }

    @FunctionalInterface
    public interface getSubsystemStorageParamCallback {
        void onValues(int i, LogStorageSettings logStorageSettings);
    }

    @FunctionalInterface
    public interface getVideoDspLogSettingsCallback {
        void onValues(int i, VideoDspLogSettings videoDspLogSettings);
    }

    int assertSubsystem(int i) throws RemoteException;

    int clear() throws RemoteException;

    void getAudioDspLogSettings(getAudioDspLogSettingsCallback getaudiodsplogsettingscallback) throws RemoteException;

    void getCellularLogSettings(getCellularLogSettingsCallback getcellularlogsettingscallback) throws RemoteException;

    void getConnectivityLogSettings(getConnectivityLogSettingsCallback getconnectivitylogsettingscallback) throws RemoteException;

    void getPmLogSettings(getPmLogSettingsCallback getpmlogsettingscallback) throws RemoteException;

    void getSensorHubLogSettings(getSensorHubLogSettingsCallback getsensorhublogsettingscallback) throws RemoteException;

    void getSubsystemAutoReboot(int i, getSubsystemAutoRebootCallback getsubsystemautorebootcallback) throws RemoteException;

    void getSubsystemPresence(getSubsystemPresenceCallback getsubsystempresencecallback) throws RemoteException;

    void getSubsystemStorageParam(int i, getSubsystemStorageParamCallback getsubsystemstorageparamcallback) throws RemoteException;

    void getVideoDspLogSettings(getVideoDspLogSettingsCallback getvideodsplogsettingscallback) throws RemoteException;

    ArrayList<String> interfaceChain() throws RemoteException;

    int restoreDefaultSettings() throws RemoteException;

    int saveCellularModemSleepLog() throws RemoteException;

    int saveWifiBtMemoryDump() throws RemoteException;

    int setAudioDspLogSettings(AudioDspLogSettings audioDspLogSettings) throws RemoteException;

    int setCellularLogSettings(CellularModemLogSettings cellularModemLogSettings) throws RemoteException;

    int setCellularModemIqMode(int i) throws RemoteException;

    int setConnectivityLogSettings(ConnectivityLogSettings connectivityLogSettings, int i) throws RemoteException;

    int setLogParentPath(String str) throws RemoteException;

    int setPmLogSettings(PmSensorHubLogSettings pmSensorHubLogSettings) throws RemoteException;

    int setPreferredStorageMedia(int i) throws RemoteException;

    int setSensorHubLogSettings(PmSensorHubLogSettings pmSensorHubLogSettings) throws RemoteException;

    int setSubsystemAutoReboot(int i, int i2) throws RemoteException;

    int setSubsystemStorageParam(int i, LogStorageSettings logStorageSettings) throws RemoteException;

    int setVideoDspLogSettings(VideoDspLogSettings videoDspLogSettings) throws RemoteException;

    static ISysLogControl asInterface(IHwBinder iHwBinder) {
        if (iHwBinder == null) {
            return null;
        }
        IHwInterface iHwInterfaceQueryLocalInterface = iHwBinder.queryLocalInterface("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
        if (iHwInterfaceQueryLocalInterface != null && (iHwInterfaceQueryLocalInterface instanceof ISysLogControl)) {
            return (ISysLogControl) iHwInterfaceQueryLocalInterface;
        }
        Proxy proxy = new Proxy(iHwBinder);
        try {
            Iterator<String> it = proxy.interfaceChain().iterator();
            while (it.hasNext()) {
                if (it.next().equals("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl")) {
                    return proxy;
                }
            }
        } catch (RemoteException unused) {
        }
        return null;
    }

    @Deprecated
    static ISysLogControl getService(String str) throws RemoteException {
        return asInterface(HwBinder.getService("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl", str));
    }

    @Deprecated
    static ISysLogControl getService() throws RemoteException {
        return getService("default");
    }

    public static final class Proxy implements ISysLogControl {
        private IHwBinder mRemote;

        public Proxy(IHwBinder iHwBinder) {
            Objects.requireNonNull(iHwBinder);
            this.mRemote = iHwBinder;
        }

        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException unused) {
                return "[class or subclass of vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl]@Proxy";
            }
        }

        public final boolean equals(Object obj) {
            return HidlSupport.interfacesEqual(this, obj);
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public void getSubsystemPresence(getSubsystemPresenceCallback getsubsystempresencecallback) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(2, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                int int32 = hwParcel2.readInt32();
                SubsystemPresence subsystemPresence = new SubsystemPresence();
                subsystemPresence.readFromParcel(hwParcel2);
                getsubsystempresencecallback.onValues(int32, subsystemPresence);
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public void getCellularLogSettings(getCellularLogSettingsCallback getcellularlogsettingscallback) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(7, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                int int32 = hwParcel2.readInt32();
                CellularModemLogSettings cellularModemLogSettings = new CellularModemLogSettings();
                cellularModemLogSettings.readFromParcel(hwParcel2);
                getcellularlogsettingscallback.onValues(int32, cellularModemLogSettings);
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int setCellularLogSettings(CellularModemLogSettings cellularModemLogSettings) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            cellularModemLogSettings.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(8, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public void getConnectivityLogSettings(getConnectivityLogSettingsCallback getconnectivitylogsettingscallback) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(9, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                int int32 = hwParcel2.readInt32();
                ConnectivityLogSettings connectivityLogSettings = new ConnectivityLogSettings();
                connectivityLogSettings.readFromParcel(hwParcel2);
                getconnectivitylogsettingscallback.onValues(int32, connectivityLogSettings);
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int setConnectivityLogSettings(ConnectivityLogSettings connectivityLogSettings, int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            connectivityLogSettings.writeToParcel(hwParcel);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(10, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public void getAudioDspLogSettings(getAudioDspLogSettingsCallback getaudiodsplogsettingscallback) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(11, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                int int32 = hwParcel2.readInt32();
                AudioDspLogSettings audioDspLogSettings = new AudioDspLogSettings();
                audioDspLogSettings.readFromParcel(hwParcel2);
                getaudiodsplogsettingscallback.onValues(int32, audioDspLogSettings);
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int setAudioDspLogSettings(AudioDspLogSettings audioDspLogSettings) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            audioDspLogSettings.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(12, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public void getVideoDspLogSettings(getVideoDspLogSettingsCallback getvideodsplogsettingscallback) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(13, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                int int32 = hwParcel2.readInt32();
                VideoDspLogSettings videoDspLogSettings = new VideoDspLogSettings();
                videoDspLogSettings.readFromParcel(hwParcel2);
                getvideodsplogsettingscallback.onValues(int32, videoDspLogSettings);
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int setVideoDspLogSettings(VideoDspLogSettings videoDspLogSettings) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            videoDspLogSettings.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(14, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public void getPmLogSettings(getPmLogSettingsCallback getpmlogsettingscallback) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(15, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                int int32 = hwParcel2.readInt32();
                PmSensorHubLogSettings pmSensorHubLogSettings = new PmSensorHubLogSettings();
                pmSensorHubLogSettings.readFromParcel(hwParcel2);
                getpmlogsettingscallback.onValues(int32, pmSensorHubLogSettings);
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int setPmLogSettings(PmSensorHubLogSettings pmSensorHubLogSettings) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            pmSensorHubLogSettings.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(16, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public void getSensorHubLogSettings(getSensorHubLogSettingsCallback getsensorhublogsettingscallback) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(17, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                int int32 = hwParcel2.readInt32();
                PmSensorHubLogSettings pmSensorHubLogSettings = new PmSensorHubLogSettings();
                pmSensorHubLogSettings.readFromParcel(hwParcel2);
                getsensorhublogsettingscallback.onValues(int32, pmSensorHubLogSettings);
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int setSensorHubLogSettings(PmSensorHubLogSettings pmSensorHubLogSettings) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            pmSensorHubLogSettings.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(18, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public void getSubsystemAutoReboot(int i, getSubsystemAutoRebootCallback getsubsystemautorebootcallback) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(19, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                getsubsystemautorebootcallback.onValues(hwParcel2.readInt32(), hwParcel2.readInt32());
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int setSubsystemAutoReboot(int i, int i2) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(20, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public void getSubsystemStorageParam(int i, getSubsystemStorageParamCallback getsubsystemstorageparamcallback) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(21, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                int int32 = hwParcel2.readInt32();
                LogStorageSettings logStorageSettings = new LogStorageSettings();
                logStorageSettings.readFromParcel(hwParcel2);
                getsubsystemstorageparamcallback.onValues(int32, logStorageSettings);
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int setSubsystemStorageParam(int i, LogStorageSettings logStorageSettings) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            hwParcel.writeInt32(i);
            logStorageSettings.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(22, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int saveCellularModemSleepLog() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(23, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int setCellularModemIqMode(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(25, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int setPreferredStorageMedia(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(31, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int assertSubsystem(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(32, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int saveWifiBtMemoryDump() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(33, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int clear() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(36, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int restoreDefaultSettings() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(37, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public int setLogParentPath(String str) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("vendor.sprd.hardware.cplog_svc@1.0::ISysLogControl");
            hwParcel.writeString(str);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(38, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readInt32();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.sprd.hardware.cplog_svc.V1_0.ISysLogControl
        public ArrayList<String> interfaceChain() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("android.hidl.base@1.0::IBase");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(256067662, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readStringVector();
            } finally {
                hwParcel2.release();
            }
        }

        public String interfaceDescriptor() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken("android.hidl.base@1.0::IBase");
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(256136003, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readString();
            } finally {
                hwParcel2.release();
            }
        }
    }
}
