package com.sprd.validationtools.utils;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class IATUtils {
    public static String AT_CONNECT = "CONNECT";
    public static String AT_FAIL = "AT FAILED";
    public static String AT_NOT_SUPPORT = "ERROR: 4";
    public static String AT_OK = "OK";
    private static String AT_SOCKET_NAME = "miscserver";
    private static String HIDL_SOCKET_NAME = "hidl_common_socket";
    private static final String TAG = "IATUtils";
    public static int mPhoneCount;

    public static String sendAt(final String str, final String str2) {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(1);
        try {
            String str3 = (String) executorServiceNewFixedThreadPool.submit(new Callable() { // from class: com.sprd.validationtools.utils.IATUtils$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return IATUtils.sendATCmd(str, str2);
                }
            }).get(2000L, TimeUnit.MILLISECONDS);
            executorServiceNewFixedThreadPool.shutdown();
            return str3 != null ? str3 : AT_FAIL;
        } catch (TimeoutException e) {
            Log.d(TAG, "modem at timeout", e);
            return AT_FAIL;
        } catch (Exception e2) {
            Log.d(TAG, "modem at exception", e2);
            return AT_FAIL;
        }
    }

    private static String getChannelBySim(int i) {
        return "atchannel" + i;
    }

    private static int getPhoneIdByChannelName(String str) {
        return (!str.contains("atchannel0") && str.contains("atchannel1")) ? 1 : 0;
    }

    private static String getAtCmd(String str, int i) {
        return String.format("%s sendAt %d %s", AT_SOCKET_NAME, Integer.valueOf(i), str);
    }

    private static String getAtCmdAidl(String str, int i) {
        return String.format("sendAt %d %s", Integer.valueOf(i), str);
    }

    public static synchronized String sendATCmd(String str, int i) {
        String strSendCmdByAidl = SocketUtils.sendCmdByAidl(AT_SOCKET_NAME, getAtCmdAidl(str, i));
        if (strSendCmdByAidl != null) {
            return strSendCmdByAidl;
        }
        return SocketUtils.sendCmd(HIDL_SOCKET_NAME, getAtCmd(str, i));
    }

    public static synchronized String sendATCmd(String str, String str2) {
        return sendATCmd(str, getPhoneIdByChannelName(str2));
    }

    public static String sendAtCmd(String str) {
        String strSendATCmd = sendATCmd(str, "atchannel0");
        if (strSendATCmd == null || !strSendATCmd.contains(SocketUtils.OK)) {
            strSendATCmd = AT_FAIL;
        }
        Log.d(TAG, "result = " + strSendATCmd);
        return strSendATCmd;
    }
}
