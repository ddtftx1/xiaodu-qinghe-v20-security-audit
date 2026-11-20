package vendor.sprd.hardware.log;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import kotlin.text.Typography;
import vendor.sprd.hardware.log.ILogCallback;

/* loaded from: classes.dex */
public interface ILogControl extends IInterface {
    public static final String DESCRIPTOR = "vendor$sprd$hardware$log$ILogControl".replace(Typography.dollar, '.');
    public static final String HASH = "d8e927123b55bf1687da72fe76dc6f4e8324be14";
    public static final int VERSION = 1;

    public static class Default implements ILogControl {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // vendor.sprd.hardware.log.ILogControl
        public String getInterfaceHash() {
            return "";
        }

        @Override // vendor.sprd.hardware.log.ILogControl
        public int getInterfaceVersion() {
            return 0;
        }

        @Override // vendor.sprd.hardware.log.ILogControl
        public String sendCmd(String str, String str2) throws RemoteException {
            return null;
        }

        @Override // vendor.sprd.hardware.log.ILogControl
        public void setCallback(ILogCallback iLogCallback) throws RemoteException {
        }
    }

    String getInterfaceHash() throws RemoteException;

    int getInterfaceVersion() throws RemoteException;

    String sendCmd(String str, String str2) throws RemoteException;

    void setCallback(ILogCallback iLogCallback) throws RemoteException;

    public static abstract class Stub extends Binder implements ILogControl {
        static final int TRANSACTION_getInterfaceHash = 16777214;
        static final int TRANSACTION_getInterfaceVersion = 16777215;
        static final int TRANSACTION_sendCmd = 1;
        static final int TRANSACTION_setCallback = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            markVintfStability();
            attachInterface(this, DESCRIPTOR);
        }

        public static ILogControl asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ILogControl)) {
                return (ILogControl) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String str = DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            switch (i) {
                case TRANSACTION_getInterfaceHash /* 16777214 */:
                    parcel2.writeNoException();
                    parcel2.writeString(getInterfaceHash());
                    break;
                case 16777215:
                    parcel2.writeNoException();
                    parcel2.writeInt(getInterfaceVersion());
                    break;
                case 1598968902:
                    parcel2.writeString(str);
                    break;
                default:
                    if (i == 1) {
                        String strSendCmd = sendCmd(parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeString(strSendCmd);
                        break;
                    } else if (i == 2) {
                        setCallback(ILogCallback.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        break;
                    } else {
                        break;
                    }
            }
            return true;
        }

        private static class Proxy implements ILogControl {
            private IBinder mRemote;
            private int mCachedVersion = -1;
            private String mCachedHash = "-1";

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return DESCRIPTOR;
            }

            @Override // vendor.sprd.hardware.log.ILogControl
            public String sendCmd(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method sendCmd is unimplemented.");
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // vendor.sprd.hardware.log.ILogControl
            public void setCallback(ILogCallback iLogCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iLogCallback);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method setCallback is unimplemented.");
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // vendor.sprd.hardware.log.ILogControl
            public int getInterfaceVersion() throws RemoteException {
                if (this.mCachedVersion == -1) {
                    Parcel parcelObtain = Parcel.obtain();
                    Parcel parcelObtain2 = Parcel.obtain();
                    try {
                        parcelObtain.writeInterfaceToken(DESCRIPTOR);
                        this.mRemote.transact(16777215, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        this.mCachedVersion = parcelObtain2.readInt();
                    } finally {
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                }
                return this.mCachedVersion;
            }

            @Override // vendor.sprd.hardware.log.ILogControl
            public synchronized String getInterfaceHash() throws RemoteException {
                if ("-1".equals(this.mCachedHash)) {
                    Parcel parcelObtain = Parcel.obtain();
                    Parcel parcelObtain2 = Parcel.obtain();
                    try {
                        parcelObtain.writeInterfaceToken(DESCRIPTOR);
                        this.mRemote.transact(Stub.TRANSACTION_getInterfaceHash, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        this.mCachedHash = parcelObtain2.readString();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } catch (Throwable th) {
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                }
                return this.mCachedHash;
            }
        }
    }
}
