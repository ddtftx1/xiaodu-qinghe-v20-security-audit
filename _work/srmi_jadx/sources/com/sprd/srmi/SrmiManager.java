package com.sprd.srmi;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.sprd.srmi.ISrmiService;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class SrmiManager extends Service {
    private static final boolean DBG = true;
    private static final String SRMI_SERVICE = "srmi";
    private static final String TAG = "[Srmi] " + SrmiManager.class.getSimpleName();
    private MyService mSrmiService = null;
    private ArrayList<ISrmiCallback> mCallbacks = new ArrayList<>();

    private native void native_register_srmj_msg_callback(SrmiCallback srmiCallback);

    /* JADX INFO: Access modifiers changed from: private */
    public native int native_srmj_create(String str, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public native void native_srmj_destroy(String str, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public native String native_srmj_msg_get_str(String str, int i, short s, short s2);

    /* JADX INFO: Access modifiers changed from: private */
    public native String native_srmj_msg_get_tlv(String str, int i, short s, short s2);

    /* JADX INFO: Access modifiers changed from: private */
    public native short native_srmj_msg_get_u16(String str, int i, short s, short s2);

    /* JADX INFO: Access modifiers changed from: private */
    public native int native_srmj_msg_get_u32(String str, int i, short s, short s2);

    /* JADX INFO: Access modifiers changed from: private */
    public native byte native_srmj_msg_get_u8(String str, int i, short s, short s2);

    /* JADX INFO: Access modifiers changed from: private */
    public native int native_srmj_msg_put_str(String str, int i, short s, short s2, String str2);

    /* JADX INFO: Access modifiers changed from: private */
    public native int native_srmj_msg_put_tlv(String str, int i, short s, short s2, String str2);

    /* JADX INFO: Access modifiers changed from: private */
    public native int native_srmj_msg_put_u16(String str, int i, short s, short s2, short s3);

    /* JADX INFO: Access modifiers changed from: private */
    public native int native_srmj_msg_put_u32(String str, int i, short s, short s2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public native int native_srmj_msg_put_u8(String str, int i, short s, short s2, byte b);

    /* JADX INFO: Access modifiers changed from: private */
    public native short native_srmj_msg_recv(String str, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public native void native_srmj_msg_rx_free(String str, int i, short s);

    /* JADX INFO: Access modifiers changed from: private */
    public native int native_srmj_msg_send(String str, int i, short s);

    /* JADX INFO: Access modifiers changed from: private */
    public native int native_srmj_msg_tx_create(String str, int i, short s);

    /* JADX INFO: Access modifiers changed from: private */
    public native void native_srmj_msg_tx_free(String str, int i, short s);

    static {
        System.loadLibrary("srmi_jni");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mSrmiService = new MyService(this);
        init();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mSrmiService;
    }

    public void onSrmiCallback(String name, int srmiCommType, int msgId) {
        Log.i(TAG, "Received native srmi callback, name[" + name + "], commType[" + srmiCommType + "], msgId[" + msgId + "].");
        try {
            Iterator<ISrmiCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                ISrmiCallback callback = it.next();
                callback.onMsgReceived(name, srmiCommType, msgId);
            }
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to notify the srmi msg received.");
        }
    }

    private void init() {
        if (ServiceManager.getService(SRMI_SERVICE) == null) {
            ServiceManager.addService(SRMI_SERVICE, this.mSrmiService);
            Log.d(TAG, "add [srmi service] successfully");
            native_register_srmj_msg_callback(new SrmiCallback(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerCallback(ISrmiCallback callback) {
        if (callback != null) {
            this.mCallbacks.add(callback);
            Log.d(TAG, "Success to register the srmi callback.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterCallback(ISrmiCallback callback) {
        if (callback != null) {
            this.mCallbacks.remove(callback);
        }
    }

    private class MyService extends ISrmiService.Stub {
        private SrmiManager mMgr;

        public MyService(SrmiManager mgr) {
            this.mMgr = mgr;
        }

        @Override // com.sprd.srmi.ISrmiService
        public void registerCallback(ISrmiCallback callback) {
            this.mMgr.registerCallback(callback);
        }

        @Override // com.sprd.srmi.ISrmiService
        public void unregisterCallback(ISrmiCallback callback) {
            this.mMgr.unregisterCallback(callback);
        }

        @Override // com.sprd.srmi.ISrmiService
        public int create(String name, int srmiCommType) {
            Log.d(SrmiManager.TAG, "[create] name = " + name + ", srmiCommType = " + srmiCommType);
            return this.mMgr.native_srmj_create(name, srmiCommType);
        }

        @Override // com.sprd.srmi.ISrmiService
        public void destroy(String name, int srmiCommType) {
            Log.d(SrmiManager.TAG, "[destroy] name = " + name + ", srmiCommType = " + srmiCommType);
            this.mMgr.native_srmj_destroy(name, srmiCommType);
        }

        @Override // com.sprd.srmi.ISrmiService
        public int allocTxMessage(String name, int srmiCommType, int msgId) {
            Log.d(SrmiManager.TAG, "[allocTxMessage] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId);
            return this.mMgr.native_srmj_msg_tx_create(name, srmiCommType, (short) msgId);
        }

        @Override // com.sprd.srmi.ISrmiService
        public void freeTxMessage(String name, int srmiCommType, int msgId) {
            Log.d(SrmiManager.TAG, "[freeTxMessage] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId);
            this.mMgr.native_srmj_msg_tx_free(name, srmiCommType, (short) msgId);
        }

        @Override // com.sprd.srmi.ISrmiService
        public void freeRxMessage(String name, int srmiCommType, int msgId) {
            Log.d(SrmiManager.TAG, "[freeRxMessage] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId);
            this.mMgr.native_srmj_msg_rx_free(name, srmiCommType, (short) msgId);
        }

        @Override // com.sprd.srmi.ISrmiService
        public int sendMessage(String name, int srmiCommType, int msgId) {
            Log.d(SrmiManager.TAG, "[sendMessage] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId);
            return this.mMgr.native_srmj_msg_send(name, srmiCommType, (short) msgId);
        }

        @Override // com.sprd.srmi.ISrmiService
        public int recvMessage(String name, int srmiCommType) {
            Log.d(SrmiManager.TAG, "[recvMessage] name = " + name + ", srmiCommType = " + srmiCommType);
            return this.mMgr.native_srmj_msg_recv(name, srmiCommType);
        }

        @Override // com.sprd.srmi.ISrmiService
        public int putByteExtra(String name, int srmiCommType, int msgId, int attr, byte value) {
            Log.d(SrmiManager.TAG, "[putByteExtra] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId + ", attr = " + attr + ", value = " + ((int) value));
            return this.mMgr.native_srmj_msg_put_u8(name, srmiCommType, (short) msgId, (short) attr, value);
        }

        @Override // com.sprd.srmi.ISrmiService
        public int putShortExtra(String name, int srmiCommType, int msgId, int attr, int value) {
            Log.d(SrmiManager.TAG, "[putShortExtra] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId + ", attr = " + attr + ", value = " + value);
            return this.mMgr.native_srmj_msg_put_u16(name, srmiCommType, (short) msgId, (short) attr, (short) value);
        }

        @Override // com.sprd.srmi.ISrmiService
        public int putIntExtra(String name, int srmiCommType, int msgId, int attr, int value) {
            Log.d(SrmiManager.TAG, "[putIntExtra] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId + ", attr = " + attr + ", value = " + value);
            return this.mMgr.native_srmj_msg_put_u32(name, srmiCommType, (short) msgId, (short) attr, value);
        }

        @Override // com.sprd.srmi.ISrmiService
        public int putStringExtra(String name, int srmiCommType, int msgId, int attr, String value) {
            Log.d(SrmiManager.TAG, "[putStringExtra] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId + ", attr = " + attr + ", value = " + value);
            return this.mMgr.native_srmj_msg_put_str(name, srmiCommType, (short) msgId, (short) attr, value);
        }

        @Override // com.sprd.srmi.ISrmiService
        public int putTLV(String name, int srmiCommType, int msgId, int attr, String value) {
            Log.d(SrmiManager.TAG, "[putTLV] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId + ", attr = " + attr + ", value = " + value);
            return this.mMgr.native_srmj_msg_put_tlv(name, srmiCommType, (short) msgId, (short) attr, value);
        }

        @Override // com.sprd.srmi.ISrmiService
        public byte getByteExtra(String name, int srmiCommType, int msgId, int attr) {
            Log.d(SrmiManager.TAG, "[getByteExtra] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId + ", attr = " + attr);
            return this.mMgr.native_srmj_msg_get_u8(name, srmiCommType, (short) msgId, (short) attr);
        }

        @Override // com.sprd.srmi.ISrmiService
        public int getShortExtra(String name, int srmiCommType, int msgId, int attr) {
            Log.d(SrmiManager.TAG, "[getShortExtra] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId + ", attr = " + attr);
            return this.mMgr.native_srmj_msg_get_u16(name, srmiCommType, (short) msgId, (short) attr);
        }

        @Override // com.sprd.srmi.ISrmiService
        public int getIntExtra(String name, int srmiCommType, int msgId, int attr) {
            Log.d(SrmiManager.TAG, "[getIntExtra] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId + ", attr = " + attr);
            return this.mMgr.native_srmj_msg_get_u32(name, srmiCommType, (short) msgId, (short) attr);
        }

        @Override // com.sprd.srmi.ISrmiService
        public String getStringExtra(String name, int srmiCommType, int msgId, int attr) {
            Log.d(SrmiManager.TAG, "[getStringExtra] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId + ", attr = " + attr);
            String ret = this.mMgr.native_srmj_msg_get_str(name, srmiCommType, (short) msgId, (short) attr);
            String str = SrmiManager.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("[getStringExtra] return String = ");
            sb.append(ret);
            Log.d(str, sb.toString());
            return ret;
        }

        @Override // com.sprd.srmi.ISrmiService
        public String getTLV(String name, int srmiCommType, int msgId, int attr) {
            Log.d(SrmiManager.TAG, "[getTLV] name = " + name + ", srmiCommType = " + srmiCommType + ", msgId = " + msgId + ", attr = " + attr);
            String ret = this.mMgr.native_srmj_msg_get_tlv(name, srmiCommType, (short) msgId, (short) attr);
            String str = SrmiManager.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("[getTLV] return TLV = ");
            sb.append(ret);
            Log.d(str, sb.toString());
            return ret;
        }
    }

    public static class SrmiCallback {
        private SrmiManager mMgr;

        public SrmiCallback(SrmiManager manager) {
            this.mMgr = manager;
        }

        public void onSrmiCallback(String name, int srmiCommType, int msgId) {
            this.mMgr.onSrmiCallback(name, srmiCommType, msgId);
        }
    }
}
