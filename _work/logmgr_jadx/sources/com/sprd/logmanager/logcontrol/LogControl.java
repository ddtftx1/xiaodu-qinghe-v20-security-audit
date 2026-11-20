package com.sprd.logmanager.logcontrol;

import android.content.Context;
import com.sprd.logmanager.utils.SocketUtils;

/* loaded from: classes.dex */
public abstract class LogControl {
    protected Context mContext;
    protected SocketUtils mSocketUtils;

    public LogControl(String str) {
        this.mSocketUtils = new SocketUtils(str);
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public synchronized String sendCmd(String str) {
        String strSendCmdAndRecResult;
        strSendCmdAndRecResult = this.mSocketUtils.sendCmdAndRecResult(str);
        if (strSendCmdAndRecResult == null) {
            strSendCmdAndRecResult = "";
        }
        return strSendCmdAndRecResult;
    }
}
