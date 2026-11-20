package com.sprd.logmanager.utils;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.sprd.logmanager.logcontrol.APLogControl;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import java.io.File;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public class CommonUtils {
    public static boolean isGSIVersion() {
        String str = Build.DEVICE;
        boolean zContains = str.contains("generic");
        Log.d("CommonUtils", "ro.product.device= " + str);
        return zContains;
    }

    public static boolean isUserBuild() {
        return Build.TYPE.equalsIgnoreCase("user");
    }

    public static String getCurrentTimeString() {
        return new SimpleDateFormat("yyyyMMddHHmmss").format(Long.valueOf(System.currentTimeMillis()));
    }

    public static void changeLogPath() {
        String currentTimeString = getCurrentTimeString();
        Log.d("CommonUtils", "fileName " + currentTimeString);
        if (TextUtils.isEmpty(currentTimeString)) {
            return;
        }
        Log.d("CommonUtils", "apRet " + APLogControl.getInstance().rebootMYlog(getLogPath(currentTimeString)) + " cpRet " + CPLogControlThroughHidl.getInstance().setLogParentPath(currentTimeString));
    }

    public static void changeLogPath(String str) {
        boolean zRebootMYlog;
        String[] strArr = {"ap", "modem", "poweron", "sensorhub", "connectivity", "audio"};
        String currentTimeString = getCurrentTimeString();
        Log.d("CommonUtils", "fileName " + currentTimeString);
        if (TextUtils.isEmpty(currentTimeString)) {
            return;
        }
        String logPath = getLogPath(currentTimeString);
        if (TextUtils.isEmpty(str)) {
            zRebootMYlog = APLogControl.getInstance().rebootYlog(logPath);
        } else {
            zRebootMYlog = APLogControl.getInstance().rebootMYlog(logPath);
        }
        Log.d("CommonUtils", "apRet " + zRebootMYlog + " cpRet " + CPLogControlThroughHidl.getInstance().setLogParentPath(currentTimeString));
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(currentTimeString);
        String logPath2 = getLogPath(sb.toString());
        if (newFolder(logPath2)) {
            for (int i = 0; i < 6; i++) {
                String str2 = logPath.replaceAll(currentTimeString, "") + strArr[i];
                try {
                    String strRunCommand = ShellUtils.runCommand(String.format("mv %s %s", str2, logPath2));
                    if (strRunCommand != null && strRunCommand.contains(" bad ")) {
                        String strRunCommand2 = ShellUtils.runCommand(String.format("rsync -a %s %s", str2 + "/*", logPath2 + "/" + strArr[i]));
                        if (strRunCommand2 == null || strRunCommand2.contains(" bad ")) {
                            Log.d("CommonUtils", "mv fail for " + str2);
                        } else {
                            ShellUtils.runCommand("rm -rf " + str2);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static String getLogPath(String str) {
        String strReplaceAll;
        String logSavePath = APLogControl.getInstance().getLogSavePath();
        if (TextUtils.isEmpty(logSavePath)) {
            return "";
        }
        String[] strArrSplit = logSavePath.split("/");
        if (strArrSplit.length > 1 && !"ylog".equals(strArrSplit[strArrSplit.length - 1])) {
            strReplaceAll = logSavePath.replaceAll(strArrSplit[strArrSplit.length - 1] + "/", str);
        } else {
            strReplaceAll = logSavePath + str;
        }
        Log.d("CommonUtils", "getLogPath: logSavePath " + strReplaceAll);
        return strReplaceAll;
    }

    public static void resetLogPath() {
        Log.d("CommonUtils", "apRet " + APLogControl.getInstance().rebootMYlog(getLogPath("")) + " cpRet " + CPLogControlThroughHidl.getInstance().setLogParentPath(""));
    }

    private static boolean newFolder(String str) {
        try {
            if (new File(str).isDirectory()) {
                Log.d("CommonUtils", "the directory is exists!");
                return true;
            }
            ShellUtils.runCommand("mkdir -m 0777 " + str);
            Log.d("CommonUtils", "create directory success");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
