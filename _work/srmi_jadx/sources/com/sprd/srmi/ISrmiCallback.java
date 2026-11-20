package com.sprd.srmi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ISrmiCallback extends IInterface {
    public static final String DESCRIPTOR = "com.sprd.srmi.ISrmiCallback";

    void onMsgReceived(String str, int i, int i2) throws RemoteException;

    public static class Default implements ISrmiCallback {
        @Override // com.sprd.srmi.ISrmiCallback
        public void onMsgReceived(String name, int srmiCommType, int msgId) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements ISrmiCallback {
        static final int TRANSACTION_onMsgReceived = 1;

        public Stub() {
            attachInterface(this, ISrmiCallback.DESCRIPTOR);
        }

        public static ISrmiCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(ISrmiCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof ISrmiCallback)) {
                return (ISrmiCallback) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1598968902:
                    reply.writeString(ISrmiCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case TRANSACTION_onMsgReceived /* 1 */:
                            data.enforceInterface(ISrmiCallback.DESCRIPTOR);
                            String _arg0 = data.readString();
                            int _arg1 = data.readInt();
                            int _arg2 = data.readInt();
                            onMsgReceived(_arg0, _arg1, _arg2);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements ISrmiCallback {
            public static ISrmiCallback sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ISrmiCallback.DESCRIPTOR;
            }

            @Override // com.sprd.srmi.ISrmiCallback
            public void onMsgReceived(String name, int srmiCommType, int msgId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiCallback.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_onMsgReceived, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onMsgReceived(name, srmiCommType, msgId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ISrmiCallback impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static ISrmiCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
