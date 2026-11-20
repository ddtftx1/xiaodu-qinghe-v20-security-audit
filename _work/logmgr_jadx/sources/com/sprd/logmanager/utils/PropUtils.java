package com.sprd.logmanager.utils;

import android.os.Build;
import android.os.SystemProperties;
import com.sprd.logmanager.logcontrol.APLogControl;
import java.io.IOException;

/* loaded from: classes.dex */
public class PropUtils {
    public static void setProp(String str, String str2) throws InterruptedException, IOException {
        if ((str.contains(".vendor") || str.contains("vendor.")) ? false : true) {
            APLogControl.getInstance().setPropThroughHidl(str, str2);
        } else {
            MiscUtils.setProp(str, str2);
        }
    }

    public static String getProp(String str) {
        if (!(Build.VERSION.SDK_INT >= 28 ? (str.contains(".vendor") || str.contains("vendor.")) ? false : true : false)) {
            return SystemProperties.get(str);
        }
        String propThroughHidl = APLogControl.getInstance().getPropThroughHidl(str);
        if (propThroughHidl != null && propThroughHidl.trim().equals("")) {
            propThroughHidl = null;
        }
        return propThroughHidl != null ? propThroughHidl.trim() : propThroughHidl;
    }

    public static boolean getBoolean(String str, boolean z) {
        String prop = getProp(str);
        if (prop == null) {
            return z;
        }
        String strTrim = prop.trim();
        if (strTrim.length() == 1) {
            if (!strTrim.equals("0") && !strTrim.equals("n")) {
                if (!strTrim.equals("1") && !strTrim.equals("y")) {
                    return z;
                }
                return true;
            }
            return false;
        }
        if (strTrim.length() <= 1) {
            return z;
        }
        if (!strTrim.equals("no") && !strTrim.equals("false") && !strTrim.equals("off")) {
            if (!strTrim.equals("yes") && !strTrim.equals("true") && !strTrim.equals("on")) {
                return z;
            }
            return true;
        }
        return false;
    }

    public static String getString(String str, String str2) {
        String prop = getProp(str);
        if (prop == null) {
            return str2;
        }
        String strTrim = prop.trim();
        return strTrim.length() >= 1 ? strTrim : str2;
    }
}
