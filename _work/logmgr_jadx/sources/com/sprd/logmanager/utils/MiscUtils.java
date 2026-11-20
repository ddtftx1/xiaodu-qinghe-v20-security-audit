package com.sprd.logmanager.utils;

import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
public class MiscUtils {
    public static String MISC_SOCKET_NAME = "miscserver";

    public static void setProp(String str, String str2) throws InterruptedException, IOException {
        SocketUtils socketUtils = new SocketUtils(MISC_SOCKET_NAME);
        Log.i("MiscUtils", "use miscserver to setProp:" + str + "to value: " + str2 + ",result : " + socketUtils.sendCmdAndRecResult("setProp " + str + " " + str2));
        socketUtils.closeSocket();
    }

    public static String getSdState() throws InterruptedException, IOException {
        SocketUtils socketUtils = new SocketUtils(MISC_SOCKET_NAME);
        String strSendCmdAndRecResult = socketUtils.sendCmdAndRecResult("getSdState");
        Log.i("MiscUtils", "use miscserver to getSdState result : " + strSendCmdAndRecResult);
        socketUtils.closeSocket();
        return strSendCmdAndRecResult;
    }

    public static String getSdPath() throws InterruptedException, IOException {
        SocketUtils socketUtils = new SocketUtils(MISC_SOCKET_NAME);
        String strSendCmdAndRecResult = socketUtils.sendCmdAndRecResult("getSdPath");
        Log.i("MiscUtils", "use miscserver to getSdPath result : " + strSendCmdAndRecResult);
        socketUtils.closeSocket();
        return strSendCmdAndRecResult;
    }

    public static String sendAt(String str, String str2) throws InterruptedException, IOException {
        SocketUtils socketUtils = new SocketUtils(MISC_SOCKET_NAME);
        String strSendCmdAndRecResult = socketUtils.sendCmdAndRecResult("sendAt " + getPhoneIdByChannelName(str2) + " " + str);
        StringBuilder sb = new StringBuilder();
        sb.append("use miscserver to sendAt result : ");
        sb.append(strSendCmdAndRecResult);
        Log.i("MiscUtils", sb.toString());
        socketUtils.closeSocket();
        return strSendCmdAndRecResult;
    }

    private static int getPhoneIdByChannelName(String str) {
        return (!str.contains("atchannel0") && str.contains("atchannel1")) ? 1 : 0;
    }
}
