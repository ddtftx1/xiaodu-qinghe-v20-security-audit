package com.sprd.logmanager.utils;

import android.os.Build;
import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
public class ShellUtils {
    static boolean useHidl;

    static {
        useHidl = Build.VERSION.SDK_INT >= 27;
    }

    public static synchronized String runCommand(String str) {
        String strSendCmdAndRecResult;
        Log.d("ShellUtils", "run cmd:" + str);
        String str2 = "cmd_skt ";
        if (useHidl) {
            str2 = "ylog_cli_cmd";
            str = "cmd_skt " + str;
        }
        strSendCmdAndRecResult = null;
        if (enableCmdservice(true)) {
            strSendCmdAndRecResult = new SocketUtils(str2).sendCmdAndRecResult(str);
        } else {
            Log.e("ShellUtils", "cmd_services is not run");
        }
        enableCmdservice(false);
        return strSendCmdAndRecResult;
    }

    public static boolean enableCmdservice(boolean z) throws InterruptedException, IOException {
        String str;
        String str2;
        if (z) {
            str = "enable";
            str2 = "running";
        } else {
            str = "disable";
            str2 = "stopped";
        }
        Log.i("ShellUtils", "enableCmdservice :" + z);
        PropUtils.setProp("persist.sys.cmdservice.enable", str);
        int i = 20;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return false;
            }
            String string = PropUtils.getString("init.svc.cmd_services", "error");
            Log.d("ShellUtils", "isCmdserviceOpen result = " + string + ",prop is " + PropUtils.getString("persist.sys.cmdservice.enable", "error"));
            if (string.equals(str2)) {
                return true;
            }
            PropUtils.setProp("persist.sys.cmdservice.enable", str);
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            i = i2;
        }
    }
}
