package com.sprd.srmi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.sprd.srmi.ISrmiCallback;

/* loaded from: classes.dex */
public interface ISrmiService extends IInterface {
    public static final String DESCRIPTOR = "com.sprd.srmi.ISrmiService";

    int allocTxMessage(String str, int i, int i2) throws RemoteException;

    int create(String str, int i) throws RemoteException;

    void destroy(String str, int i) throws RemoteException;

    void freeRxMessage(String str, int i, int i2) throws RemoteException;

    void freeTxMessage(String str, int i, int i2) throws RemoteException;

    byte getByteExtra(String str, int i, int i2, int i3) throws RemoteException;

    int getIntExtra(String str, int i, int i2, int i3) throws RemoteException;

    int getShortExtra(String str, int i, int i2, int i3) throws RemoteException;

    String getStringExtra(String str, int i, int i2, int i3) throws RemoteException;

    String getTLV(String str, int i, int i2, int i3) throws RemoteException;

    int putByteExtra(String str, int i, int i2, int i3, byte b) throws RemoteException;

    int putIntExtra(String str, int i, int i2, int i3, int i4) throws RemoteException;

    int putShortExtra(String str, int i, int i2, int i3, int i4) throws RemoteException;

    int putStringExtra(String str, int i, int i2, int i3, String str2) throws RemoteException;

    int putTLV(String str, int i, int i2, int i3, String str2) throws RemoteException;

    int recvMessage(String str, int i) throws RemoteException;

    void registerCallback(ISrmiCallback iSrmiCallback) throws RemoteException;

    int sendMessage(String str, int i, int i2) throws RemoteException;

    void unregisterCallback(ISrmiCallback iSrmiCallback) throws RemoteException;

    public static class Default implements ISrmiService {
        @Override // com.sprd.srmi.ISrmiService
        public void registerCallback(ISrmiCallback callback) throws RemoteException {
        }

        @Override // com.sprd.srmi.ISrmiService
        public void unregisterCallback(ISrmiCallback callback) throws RemoteException {
        }

        @Override // com.sprd.srmi.ISrmiService
        public int create(String name, int srmiCommType) throws RemoteException {
            return 0;
        }

        @Override // com.sprd.srmi.ISrmiService
        public void destroy(String name, int srmiCommType) throws RemoteException {
        }

        @Override // com.sprd.srmi.ISrmiService
        public int allocTxMessage(String name, int srmiCommType, int msgId) throws RemoteException {
            return 0;
        }

        @Override // com.sprd.srmi.ISrmiService
        public void freeTxMessage(String name, int srmiCommType, int msgId) throws RemoteException {
        }

        @Override // com.sprd.srmi.ISrmiService
        public void freeRxMessage(String name, int srmiCommType, int msgId) throws RemoteException {
        }

        @Override // com.sprd.srmi.ISrmiService
        public int sendMessage(String name, int srmiCommType, int msgId) throws RemoteException {
            return 0;
        }

        @Override // com.sprd.srmi.ISrmiService
        public int recvMessage(String name, int srmiCommType) throws RemoteException {
            return 0;
        }

        @Override // com.sprd.srmi.ISrmiService
        public int putByteExtra(String name, int srmiCommType, int msgId, int attr, byte value) throws RemoteException {
            return 0;
        }

        @Override // com.sprd.srmi.ISrmiService
        public int putShortExtra(String name, int srmiCommType, int msgId, int attr, int value) throws RemoteException {
            return 0;
        }

        @Override // com.sprd.srmi.ISrmiService
        public int putIntExtra(String name, int srmiCommType, int msgId, int attr, int value) throws RemoteException {
            return 0;
        }

        @Override // com.sprd.srmi.ISrmiService
        public int putStringExtra(String name, int srmiCommType, int msgId, int attr, String value) throws RemoteException {
            return 0;
        }

        @Override // com.sprd.srmi.ISrmiService
        public byte getByteExtra(String name, int srmiCommType, int msgId, int attr) throws RemoteException {
            return (byte) 0;
        }

        @Override // com.sprd.srmi.ISrmiService
        public int getShortExtra(String name, int srmiCommType, int msgId, int attr) throws RemoteException {
            return 0;
        }

        @Override // com.sprd.srmi.ISrmiService
        public int getIntExtra(String name, int srmiCommType, int msgId, int attr) throws RemoteException {
            return 0;
        }

        @Override // com.sprd.srmi.ISrmiService
        public String getStringExtra(String name, int srmiCommType, int msgId, int attr) throws RemoteException {
            return null;
        }

        @Override // com.sprd.srmi.ISrmiService
        public String getTLV(String name, int srmiCommType, int msgId, int attr) throws RemoteException {
            return null;
        }

        @Override // com.sprd.srmi.ISrmiService
        public int putTLV(String name, int srmiCommType, int msgId, int attr, String value) throws RemoteException {
            return 0;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements ISrmiService {
        static final int TRANSACTION_allocTxMessage = 5;
        static final int TRANSACTION_create = 3;
        static final int TRANSACTION_destroy = 4;
        static final int TRANSACTION_freeRxMessage = 7;
        static final int TRANSACTION_freeTxMessage = 6;
        static final int TRANSACTION_getByteExtra = 14;
        static final int TRANSACTION_getIntExtra = 16;
        static final int TRANSACTION_getShortExtra = 15;
        static final int TRANSACTION_getStringExtra = 17;
        static final int TRANSACTION_getTLV = 18;
        static final int TRANSACTION_putByteExtra = 10;
        static final int TRANSACTION_putIntExtra = 12;
        static final int TRANSACTION_putShortExtra = 11;
        static final int TRANSACTION_putStringExtra = 13;
        static final int TRANSACTION_putTLV = 19;
        static final int TRANSACTION_recvMessage = 9;
        static final int TRANSACTION_registerCallback = 1;
        static final int TRANSACTION_sendMessage = 8;
        static final int TRANSACTION_unregisterCallback = 2;

        public Stub() {
            attachInterface(this, ISrmiService.DESCRIPTOR);
        }

        public static ISrmiService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(ISrmiService.DESCRIPTOR);
            if (iin != null && (iin instanceof ISrmiService)) {
                return (ISrmiService) iin;
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
                    reply.writeString(ISrmiService.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case TRANSACTION_registerCallback /* 1 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            ISrmiCallback _arg0 = ISrmiCallback.Stub.asInterface(data.readStrongBinder());
                            registerCallback(_arg0);
                            reply.writeNoException();
                            return true;
                        case TRANSACTION_unregisterCallback /* 2 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            ISrmiCallback _arg02 = ISrmiCallback.Stub.asInterface(data.readStrongBinder());
                            unregisterCallback(_arg02);
                            reply.writeNoException();
                            return true;
                        case TRANSACTION_create /* 3 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg03 = data.readString();
                            int _arg1 = data.readInt();
                            int _result = create(_arg03, _arg1);
                            reply.writeNoException();
                            reply.writeInt(_result);
                            return true;
                        case TRANSACTION_destroy /* 4 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg04 = data.readString();
                            int _arg12 = data.readInt();
                            destroy(_arg04, _arg12);
                            reply.writeNoException();
                            return true;
                        case TRANSACTION_allocTxMessage /* 5 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg05 = data.readString();
                            int _arg13 = data.readInt();
                            int _arg2 = data.readInt();
                            int _result2 = allocTxMessage(_arg05, _arg13, _arg2);
                            reply.writeNoException();
                            reply.writeInt(_result2);
                            return true;
                        case TRANSACTION_freeTxMessage /* 6 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg06 = data.readString();
                            int _arg14 = data.readInt();
                            int _arg22 = data.readInt();
                            freeTxMessage(_arg06, _arg14, _arg22);
                            reply.writeNoException();
                            return true;
                        case TRANSACTION_freeRxMessage /* 7 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg07 = data.readString();
                            int _arg15 = data.readInt();
                            int _arg23 = data.readInt();
                            freeRxMessage(_arg07, _arg15, _arg23);
                            reply.writeNoException();
                            return true;
                        case TRANSACTION_sendMessage /* 8 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg08 = data.readString();
                            int _arg16 = data.readInt();
                            int _arg24 = data.readInt();
                            int _result3 = sendMessage(_arg08, _arg16, _arg24);
                            reply.writeNoException();
                            reply.writeInt(_result3);
                            return true;
                        case TRANSACTION_recvMessage /* 9 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg09 = data.readString();
                            int _arg17 = data.readInt();
                            int _result4 = recvMessage(_arg09, _arg17);
                            reply.writeNoException();
                            reply.writeInt(_result4);
                            return true;
                        case TRANSACTION_putByteExtra /* 10 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg010 = data.readString();
                            int _arg18 = data.readInt();
                            int _arg25 = data.readInt();
                            int _arg3 = data.readInt();
                            byte _arg4 = data.readByte();
                            int _result5 = putByteExtra(_arg010, _arg18, _arg25, _arg3, _arg4);
                            reply.writeNoException();
                            reply.writeInt(_result5);
                            return true;
                        case TRANSACTION_putShortExtra /* 11 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg011 = data.readString();
                            int _arg19 = data.readInt();
                            int _arg26 = data.readInt();
                            int _arg32 = data.readInt();
                            int _arg42 = data.readInt();
                            int _result6 = putShortExtra(_arg011, _arg19, _arg26, _arg32, _arg42);
                            reply.writeNoException();
                            reply.writeInt(_result6);
                            return true;
                        case TRANSACTION_putIntExtra /* 12 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg012 = data.readString();
                            int _arg110 = data.readInt();
                            int _arg27 = data.readInt();
                            int _arg33 = data.readInt();
                            int _arg43 = data.readInt();
                            int _result7 = putIntExtra(_arg012, _arg110, _arg27, _arg33, _arg43);
                            reply.writeNoException();
                            reply.writeInt(_result7);
                            return true;
                        case TRANSACTION_putStringExtra /* 13 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg013 = data.readString();
                            int _arg111 = data.readInt();
                            int _arg28 = data.readInt();
                            int _arg34 = data.readInt();
                            String _arg44 = data.readString();
                            int _result8 = putStringExtra(_arg013, _arg111, _arg28, _arg34, _arg44);
                            reply.writeNoException();
                            reply.writeInt(_result8);
                            return true;
                        case TRANSACTION_getByteExtra /* 14 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg014 = data.readString();
                            int _arg112 = data.readInt();
                            int _arg29 = data.readInt();
                            int _arg35 = data.readInt();
                            byte _result9 = getByteExtra(_arg014, _arg112, _arg29, _arg35);
                            reply.writeNoException();
                            reply.writeByte(_result9);
                            return true;
                        case TRANSACTION_getShortExtra /* 15 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg015 = data.readString();
                            int _arg113 = data.readInt();
                            int _arg210 = data.readInt();
                            int _arg36 = data.readInt();
                            int _result10 = getShortExtra(_arg015, _arg113, _arg210, _arg36);
                            reply.writeNoException();
                            reply.writeInt(_result10);
                            return true;
                        case TRANSACTION_getIntExtra /* 16 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg016 = data.readString();
                            int _arg114 = data.readInt();
                            int _arg211 = data.readInt();
                            int _arg37 = data.readInt();
                            int _result11 = getIntExtra(_arg016, _arg114, _arg211, _arg37);
                            reply.writeNoException();
                            reply.writeInt(_result11);
                            return true;
                        case TRANSACTION_getStringExtra /* 17 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg017 = data.readString();
                            int _arg115 = data.readInt();
                            int _arg212 = data.readInt();
                            int _arg38 = data.readInt();
                            String _result12 = getStringExtra(_arg017, _arg115, _arg212, _arg38);
                            reply.writeNoException();
                            reply.writeString(_result12);
                            return true;
                        case TRANSACTION_getTLV /* 18 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg018 = data.readString();
                            int _arg116 = data.readInt();
                            int _arg213 = data.readInt();
                            int _arg39 = data.readInt();
                            String _result13 = getTLV(_arg018, _arg116, _arg213, _arg39);
                            reply.writeNoException();
                            reply.writeString(_result13);
                            return true;
                        case TRANSACTION_putTLV /* 19 */:
                            data.enforceInterface(ISrmiService.DESCRIPTOR);
                            String _arg019 = data.readString();
                            int _arg117 = data.readInt();
                            int _arg214 = data.readInt();
                            int _arg310 = data.readInt();
                            String _arg45 = data.readString();
                            int _result14 = putTLV(_arg019, _arg117, _arg214, _arg310, _arg45);
                            reply.writeNoException();
                            reply.writeInt(_result14);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements ISrmiService {
            public static ISrmiService sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ISrmiService.DESCRIPTOR;
            }

            @Override // com.sprd.srmi.ISrmiService
            public void registerCallback(ISrmiCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_registerCallback, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCallback(callback);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public void unregisterCallback(ISrmiCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_unregisterCallback, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCallback(callback);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public int create(String name, int srmiCommType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_create, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().create(name, srmiCommType);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public void destroy(String name, int srmiCommType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_destroy, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().destroy(name, srmiCommType);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public int allocTxMessage(String name, int srmiCommType, int msgId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_allocTxMessage, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().allocTxMessage(name, srmiCommType, msgId);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public void freeTxMessage(String name, int srmiCommType, int msgId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_freeTxMessage, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().freeTxMessage(name, srmiCommType, msgId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public void freeRxMessage(String name, int srmiCommType, int msgId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_freeRxMessage, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().freeRxMessage(name, srmiCommType, msgId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public int sendMessage(String name, int srmiCommType, int msgId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_sendMessage, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().sendMessage(name, srmiCommType, msgId);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public int recvMessage(String name, int srmiCommType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_recvMessage, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().recvMessage(name, srmiCommType);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public int putByteExtra(String name, int srmiCommType, int msgId, int attr, byte value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    _data.writeInt(attr);
                    _data.writeByte(value);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_putByteExtra, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().putByteExtra(name, srmiCommType, msgId, attr, value);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public int putShortExtra(String name, int srmiCommType, int msgId, int attr, int value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    _data.writeInt(attr);
                    _data.writeInt(value);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_putShortExtra, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().putShortExtra(name, srmiCommType, msgId, attr, value);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public int putIntExtra(String name, int srmiCommType, int msgId, int attr, int value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    _data.writeInt(attr);
                    _data.writeInt(value);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_putIntExtra, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().putIntExtra(name, srmiCommType, msgId, attr, value);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public int putStringExtra(String name, int srmiCommType, int msgId, int attr, String value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    _data.writeInt(attr);
                    _data.writeString(value);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_putStringExtra, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().putStringExtra(name, srmiCommType, msgId, attr, value);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public byte getByteExtra(String name, int srmiCommType, int msgId, int attr) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    _data.writeInt(attr);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_getByteExtra, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getByteExtra(name, srmiCommType, msgId, attr);
                    }
                    _reply.readException();
                    byte _result = _reply.readByte();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public int getShortExtra(String name, int srmiCommType, int msgId, int attr) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    _data.writeInt(attr);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_getShortExtra, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getShortExtra(name, srmiCommType, msgId, attr);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public int getIntExtra(String name, int srmiCommType, int msgId, int attr) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    _data.writeInt(attr);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_getIntExtra, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getIntExtra(name, srmiCommType, msgId, attr);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public String getStringExtra(String name, int srmiCommType, int msgId, int attr) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    _data.writeInt(attr);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_getStringExtra, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getStringExtra(name, srmiCommType, msgId, attr);
                    }
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public String getTLV(String name, int srmiCommType, int msgId, int attr) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    _data.writeInt(attr);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_getTLV, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getTLV(name, srmiCommType, msgId, attr);
                    }
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sprd.srmi.ISrmiService
            public int putTLV(String name, int srmiCommType, int msgId, int attr, String value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISrmiService.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(srmiCommType);
                    _data.writeInt(msgId);
                    _data.writeInt(attr);
                    _data.writeString(value);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_putTLV, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().putTLV(name, srmiCommType, msgId, attr, value);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ISrmiService impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static ISrmiService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
