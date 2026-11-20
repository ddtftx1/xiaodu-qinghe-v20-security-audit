package com.sprd.validationtools.utils;

import android.net.LocalSocketAddress;
import android.os.AsyncTask;

/* loaded from: classes.dex */
public class WcndUtils {
    private static final String CMD_FLUSHLOG = "wcn at+flushwcnlog\u0000";
    private static final String CMD_FLUSHLOG_SLOGMODEM = "SAVE_LAST_LOG WCN";
    private static final String SOCKET_NAME = "wcnd";
    private static final String SOCKET_NAME_SLOGMODEM = "slogmodem";
    private static final String TAG = "WcndUtils";

    public static synchronized String sendWcndCmdFlushLog() {
        return SocketUtils.sendCmdAndRecResult(SOCKET_NAME, LocalSocketAddress.Namespace.ABSTRACT, CMD_FLUSHLOG, 3);
    }

    public static synchronized String sendSlogModemCmdFlushLog() {
        return SocketUtils.sendCmdAndRecResult(SOCKET_NAME_SLOGMODEM, LocalSocketAddress.Namespace.ABSTRACT, CMD_FLUSHLOG_SLOGMODEM, 3);
    }

    public static final void dumpCPLog() {
        new AsyncTask<Void, Void, Void>() { // from class: com.sprd.validationtools.utils.WcndUtils.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                WcndUtils.sendWcndCmdFlushLog();
                WcndUtils.sendSlogModemCmdFlushLog();
                return null;
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
    }
}
