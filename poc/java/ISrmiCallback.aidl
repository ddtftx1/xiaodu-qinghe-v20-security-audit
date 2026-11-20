package com.sprd.srmi;

interface ISrmiCallback {
    void onMsgReceived(String name, int srmiCommType, int msgId);
}
