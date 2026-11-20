// 从 com.sprd.srmi.ISrmiService 反编译还原
package com.sprd.srmi;

import com.sprd.srmi.ISrmiCallback;

interface ISrmiService {
    void registerCallback(ISrmiCallback callback);
    void unregisterCallback(ISrmiCallback callback);
    int create(String name, int srmiCommType);
    void destroy(String name, int srmiCommType);
    int allocTxMessage(String name, int srmiCommType, int msgId);
    void freeTxMessage(String name, int srmiCommType, int msgId);
    void freeRxMessage(String name, int srmiCommType, int msgId);
    int sendMessage(String name, int srmiCommType, int msgId);
    int recvMessage(String name, int srmiCommType);
    int putByteExtra(String name, int srmiCommType, int msgId, int attr, byte value);
    int putShortExtra(String name, int srmiCommType, int msgId, int attr, int value);
    int putIntExtra(String name, int srmiCommType, int msgId, int attr, int value);
    int putStringExtra(String name, int srmiCommType, int msgId, int attr, String value);
    byte getByteExtra(String name, int srmiCommType, int msgId, int attr);
    int getShortExtra(String name, int srmiCommType, int msgId, int attr);
    int getIntExtra(String name, int srmiCommType, int msgId, int attr);
    String getStringExtra(String name, int srmiCommType, int msgId, int attr);
    String getTLV(String name, int srmiCommType, int msgId, int attr);
    int putTLV(String name, int srmiCommType, int msgId, int attr, String value);
}
