package com.sprd.validationtools;

import android.os.SystemProperties;
import android.util.Log;

/* loaded from: classes.dex */
public class TelephonyManagerSprd {
    private static String CDMA_FLAG = "C";
    private static String LTE_FLAG_LF = "LF";
    private static String LTE_FLAG_TD = "TD";
    private static String LTE_FLAG_TL = "TL";
    public static final String MODEM_TYPE = "ro.vendor.radio.modemtype";
    public static final int MODEM_TYPE_GSM = 0;
    public static final int MODEM_TYPE_LTE = 3;
    public static final int MODEM_TYPE_NR = 4;
    public static final int MODEM_TYPE_TDSCDMA = 1;
    public static final int MODEM_TYPE_WCDMA = 2;
    private static String MODE_CSFB = "TL_LF_TD_W_G,G";
    private static String MODE_FDD_CSFB = "TL_LF_W_G,G";
    private static String MODE_LW = "TL_LF_TD_W_G,W_G";
    private static String MODE_LWG_LWG = "TL_LF_W_G,TL_LF_W_G";
    private static String MODE_LWG_WG = "TL_LF_W_G,W_G";
    private static String MODE_LW_LW = "TL_LF_TD_W_G,TL_LF_TD_W_G";
    private static String MODE_SVLTE = "svlte";
    private static String MODE_TDD_CSFB = "TL_TD_G,G";
    private static String MODE_WG = "W_G,G";
    private static String MODE_WG_WG = "W_G,W_G";
    private static String NR_FLAG = "NR";
    private static String PROP_SSDA_MODE = "persist.vendor.radio.modem.config";
    private static final String TAG = "TelephonyManagerSprd";
    private static String WCDMA_FLAG = "W";
    private static String[] MODE_SUPPORT_WCDMA = {"TL_LF_W_G,W_G", "TL_LF_W_G,TL_LF_W_G"};
    private static String[] MODE_SUPPORT_LTE = {"TL", "TD", "LF"};
    private static String[] MODE_SUPPORT_NR = {"NR"};

    public enum RadioCapbility {
        NONE,
        TDD_SVLTE,
        FDD_CSFB,
        TDD_CSFB,
        CSFB,
        LW,
        WG,
        LWLW
    }

    public static int getModemType() {
        String str = SystemProperties.get(MODEM_TYPE, "");
        Log.d(TAG, "getModemType: modemType=" + str);
        if ("t".equals(str)) {
            return 1;
        }
        if ("w".equals(str)) {
            return 2;
        }
        if ("tl".equals(str) || "lf".equals(str) || "l".equals(str)) {
            return 3;
        }
        return "nr".equals(str) ? 4 : 0;
    }

    public static RadioCapbility getRadioCapbility() {
        String str = SystemProperties.get(PROP_SSDA_MODE);
        Log.d(TAG, "getRadioCapbility: ssdaMode=" + str);
        if (str.equals(MODE_SVLTE)) {
            return RadioCapbility.TDD_SVLTE;
        }
        if (str.equals(MODE_TDD_CSFB)) {
            return RadioCapbility.TDD_CSFB;
        }
        if (str.equals(MODE_FDD_CSFB)) {
            return RadioCapbility.FDD_CSFB;
        }
        if (str.equals(MODE_CSFB)) {
            return RadioCapbility.CSFB;
        }
        if (str.contains(MODE_LW)) {
            return RadioCapbility.CSFB;
        }
        if (str.equals(MODE_WG) || str.equals(MODE_WG_WG)) {
            return RadioCapbility.WG;
        }
        if (str.equals(MODE_LW_LW)) {
            return RadioCapbility.LWLW;
        }
        return RadioCapbility.NONE;
    }

    public static boolean IsSupportWCDMA() {
        String str = SystemProperties.get(PROP_SSDA_MODE);
        Log.d(TAG, "IsSupportWCDMA: ssdaMode=" + str);
        boolean z = false;
        for (String str2 : MODE_SUPPORT_WCDMA) {
            Log.d(TAG, "IsSupportWCDMA: support=" + str2);
            if (str2.equals(str)) {
                return true;
            }
        }
        if (str != null && str.contains(WCDMA_FLAG)) {
            z = true;
        }
        Log.d(TAG, "IsSupportWCDMA: support=" + z);
        return z;
    }

    public static boolean IsSupportCDMA() {
        String str = SystemProperties.get(PROP_SSDA_MODE);
        Log.d(TAG, "IsSupportCDMA: ssdaMode=" + str);
        boolean z = str != null && str.contains(CDMA_FLAG);
        Log.d(TAG, "IsSupportCDMA: support=" + z);
        return z;
    }

    public static boolean IsSupportLTE() {
        String str = SystemProperties.get(PROP_SSDA_MODE);
        Log.d(TAG, "IsSupportLTE: ssdaMode=" + str);
        for (String str2 : MODE_SUPPORT_LTE) {
            Log.d(TAG, "IsSupportLTE: support=" + str2);
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean IsSupportNR() {
        String str = SystemProperties.get(PROP_SSDA_MODE);
        Log.d(TAG, "IsSupportNR: ssdaMode=" + str);
        for (String str2 : MODE_SUPPORT_NR) {
            Log.d(TAG, "IsSupportNR: support=" + str2);
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }
}
