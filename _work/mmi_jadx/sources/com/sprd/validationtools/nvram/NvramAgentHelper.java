package com.sprd.validationtools.nvram;

import android.util.Log;
import java.util.ArrayList;
import vendor.mediatek.hardware.nvram.V1_0.INvram;

/* loaded from: classes.dex */
public class NvramAgentHelper {
    public static int MODEM_BARCODE_LENGTH = 256;
    private static final int STATION_AGING_INDEX = 46;
    private static final int STATION_DUALCAMER_INDEX = 47;
    private static final int STATION_MMI1_INDEX = 56;
    private static final int STATION_MMI2_INDEX = 48;
    private static final int STATION_MMI_F_INDEX = 53;

    public static String getNvramBuff() {
        Log.e("nvram", "getNvramBuff-start");
        try {
            String fileByName = INvram.getService().readFileByName("/vendor/nvdata/APCFG/APRDEB/PRODUCT_INFO", MODEM_BARCODE_LENGTH);
            Log.e("nvram", "buffString-PRODUCT_INFO:" + fileByName);
            return fileByName;
        } catch (Exception e) {
            Log.e("nvram", "Exception-readNvram:" + e);
            e.printStackTrace();
            return null;
        }
    }

    public static String getNvramBuffByIndex(int i) {
        String nvramBuff = getNvramBuff();
        Log.e("nvram", "index:" + i + "getNvramBuffByIndex buffString:" + nvramBuff);
        String strSubstring = "00";
        if (nvramBuff == null) {
            return "00";
        }
        if (i + 2 <= nvramBuff.length()) {
            int i2 = i * 2;
            strSubstring = nvramBuff.substring(i2, i2 + 2);
        }
        Log.e("nvram", "index:" + i + "getNvramBuffByIndex:" + strSubstring);
        return strSubstring;
    }

    public static byte[] getNvramBuffAllData() {
        String nvramBuff = getNvramBuff();
        if (nvramBuff == null) {
            return null;
        }
        byte[] bArrString2ByteArray = string2ByteArray(nvramBuff.substring(0, nvramBuff.length() - 1));
        Log.e("nvram", "getNvramBuffAllData: buffArr>>" + new String(bArrString2ByteArray));
        return bArrString2ByteArray;
    }

    public static int wirteNvramBuffByIndex(int i, byte b) {
        byte bWriteFileByNamevec = -1;
        try {
            String nvramBuff = getNvramBuff();
            if (nvramBuff == null) {
                return -1;
            }
            byte[] bArrString2ByteArray = string2ByteArray(nvramBuff.substring(0, nvramBuff.length() - 1));
            bArrString2ByteArray[i] = b;
            ArrayList<Byte> arrayList = new ArrayList<>();
            for (int i2 = 0; i2 < bArrString2ByteArray.length; i2++) {
                arrayList.add(i2, new Byte(bArrString2ByteArray[i2]));
            }
            bWriteFileByNamevec = INvram.getService().writeFileByNamevec("/vendor/nvdata/APCFG/APRDEB/PRODUCT_INFO", bArrString2ByteArray.length, arrayList);
            Log.i("nvram", "write station result , flag = " + ((int) bWriteFileByNamevec));
            return bWriteFileByNamevec;
        } catch (Exception e) {
            Log.e("nvram", "wirteNvramBuffByIndex Exception-readNvram:" + e);
            e.printStackTrace();
            return bWriteFileByNamevec;
        }
    }

    public static int wirteDataToNvramBuff(byte[] bArr) {
        Log.i("nvram", "wirteDataToNvramBuff buff:" + new String(bArr));
        try {
            Log.d("nvram", "buff.length" + bArr.length);
            int length = bArr.length;
            int i = MODEM_BARCODE_LENGTH;
            if (length >= i) {
                bArr[i - 1] = 0;
            }
            ArrayList<Byte> arrayList = new ArrayList<>();
            for (int i2 = 0; i2 < bArr.length; i2++) {
                arrayList.add(i2, new Byte(bArr[i2]));
            }
            byte bWriteFileByNamevec = INvram.getService().writeFileByNamevec("/vendor/nvdata/APCFG/APRDEB/PRODUCT_INFO", bArr.length, arrayList);
            Log.i("nvram", "wirteDataToNvramBuff WriteNvram-flag:" + ((int) bWriteFileByNamevec));
            return bWriteFileByNamevec;
        } catch (Exception e) {
            Log.e("nvram", "wirteDataToNvramBuff Exception-readNvram:" + e);
            e.printStackTrace();
            return -1;
        }
    }

    public static int wirteDataToNvramBuff(byte[] bArr, boolean z) {
        String nvramBuff;
        Log.i("nvram", "wirteDataToNvramBuff buff:" + new String(bArr));
        if (bArr == null || (nvramBuff = getNvramBuff()) == null) {
            return -1;
        }
        byte[] bArrString2ByteArray = string2ByteArray(nvramBuff.substring(0, nvramBuff.length() - 1));
        Log.e("nvram", "nvData>>" + new String(bArrString2ByteArray));
        ArrayList<Byte> arrayList = new ArrayList<>();
        for (int i = 0; i < bArr.length; i++) {
            if (z) {
                arrayList.add(i, new Byte(bArr[i]));
            } else if (i == STATION_MMI_F_INDEX) {
                arrayList.add(i, Byte.valueOf(bArrString2ByteArray[STATION_MMI_F_INDEX]));
            } else if (i == STATION_MMI1_INDEX) {
                arrayList.add(i, Byte.valueOf(bArrString2ByteArray[STATION_MMI1_INDEX]));
            } else if (i == STATION_MMI2_INDEX) {
                arrayList.add(i, Byte.valueOf(bArrString2ByteArray[STATION_MMI2_INDEX]));
            } else if (i == 47) {
                arrayList.add(i, Byte.valueOf(bArrString2ByteArray[47]));
            } else {
                arrayList.add(i, new Byte(bArr[i]));
            }
        }
        arrayList.add(bArr.length, (byte) 0);
        Log.i("nvram", "wirteDataToNvramBuff list.size():" + arrayList.size());
        try {
            byte bWriteFileByNamevec = INvram.getService().writeFileByNamevec("/vendor/nvdata/APCFG/APRDEB/PRODUCT_INFO", arrayList.size(), arrayList);
            Log.i("nvram", "wirteDataToNvramBuff WriteNvram-flag:" + ((int) bWriteFileByNamevec));
            return bWriteFileByNamevec;
        } catch (Exception e) {
            Log.e("nvram", "wirteDataToNvramBuff Exception-readNvram:" + e);
            e.printStackTrace();
            return -1;
        }
    }

    public static String readSn() {
        StringBuffer stringBuffer = new StringBuffer();
        String nvramBuff = getNvramBuff();
        if (nvramBuff == null) {
            return " ";
        }
        byte[] bArrString2ByteArray = string2ByteArray(nvramBuff.substring(0, nvramBuff.length() - 1));
        for (int i = 0; i < bArrString2ByteArray.length && bArrString2ByteArray[i] != 32; i++) {
            stringBuffer.append((char) bArrString2ByteArray[i]);
        }
        return stringBuffer.toString();
    }

    public static String readSnFromNvRam() {
        StringBuffer stringBuffer = new StringBuffer();
        String nvramBuff = getNvramBuff();
        if (nvramBuff == null) {
            return " ";
        }
        byte[] bArrString2ByteArraySN2 = string2ByteArraySN2(nvramBuff.substring(0, nvramBuff.length() - 1));
        for (int i = 0; i < bArrString2ByteArraySN2.length; i++) {
            Log.d("huangli", "buffArr[i]>>>" + ((int) bArrString2ByteArraySN2[i]));
            if (bArrString2ByteArraySN2[i] == 0) {
                break;
            }
            stringBuffer.append((char) bArrString2ByteArraySN2[i]);
        }
        Log.d("huangli", "buffer.toString()>>>" + stringBuffer.toString());
        return stringBuffer.toString() + "";
    }

    public static byte[] string2ByteArray(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((toByte(str.charAt(i)) << 4) | toByte(str.charAt(i + 1)));
        }
        return bArr;
    }

    public static byte[] string2ByteArraySN2(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        Log.e("nvram", "length = " + length);
        for (int i = 232; i < 296; i += 2) {
            bArr[(i - 232) / 2] = (byte) ((toByte(str.charAt(i)) << 4) | toByte(str.charAt(i + 1)));
        }
        return bArr;
    }

    private static int toByte(char c) {
        if (c >= STATION_MMI2_INDEX && c <= '9') {
            return c - STATION_MMI2_INDEX;
        }
        char c2 = 'A';
        if (c < 'A' || c > 'F') {
            c2 = 'a';
            if (c < 'a' || c > 'f') {
                throw new RuntimeException("Invalid hex char '" + c + "'");
            }
        }
        return (c - c2) + 10;
    }
}
