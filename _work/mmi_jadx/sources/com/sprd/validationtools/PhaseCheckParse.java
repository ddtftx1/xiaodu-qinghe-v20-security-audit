package com.sprd.validationtools;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.util.Log;
import com.sprd.validationtools.utils.ByteUtils;
import com.sprd.validationtools.utils.SocketUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.regex.Pattern;
import kotlin.UByte;

/* loaded from: classes.dex */
public class PhaseCheckParse {
    private static final int BUF_SIZE = 4096;
    private static String SOCKET_NAME = "phasecheck_srv";
    private static String TAG = "PhaseCheckParse";
    private static final int TYPE_CHECK_KEYBOX = 68;
    private static final int TYPE_CHECK_WIDEVINEKEY = 69;
    private static final int TYPE_EXECUTE_AI_TEST = 29;
    private static final int TYPE_EXECUTE_OFFSET_CALIBRATION = 23;
    private static final int TYPE_EXECUTE_XTALK_CALIBRATION = 24;
    private static final int TYPE_GET_PHASECHECK = 5;
    private static final int TYPE_GET_SN1 = 0;
    private static final int TYPE_GET_SN2 = 1;
    private static final int TYPE_READ_OFFSET = 18;
    private static final int TYPE_WRITE_CHARGE_SWITCH = 6;
    private static final int TYPE_WRITE_OFFSET = 17;
    private static final int TYPE_WRITE_STATION_FAIL = 4;
    private static final int TYPE_WRITE_STATION_PASS = 3;
    private static final int TYPE_WRITE_STATION_TESTED = 2;
    private static PhaseCheckParse mPhaseCheckParse;
    private AdaptBinder binder = new AdaptBinder();

    private String StationTested(char c, char c2) {
        return (c == '0' && c2 == '0') ? "PASS" : (c == '0' && c2 == '1') ? SocketUtils.FAIL : "UnTested";
    }

    public static PhaseCheckParse getInstance() {
        if (mPhaseCheckParse == null) {
            mPhaseCheckParse = new PhaseCheckParse();
        }
        return mPhaseCheckParse;
    }

    private PhaseCheckParse() {
        Log.d(TAG, "Get The service connect!");
    }

    private boolean hasDigit(String str) {
        return Pattern.compile(".*\\d+.*").matcher(str).matches();
    }

    private int getStationTest(String str) {
        Log.d(TAG, "getStationTest: " + str);
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            int i = 0;
            this.binder.transact(5, parcel, parcel2, 0);
            Log.d(TAG, "transact SUCESS!!");
            int i2 = parcel2.readInt();
            int i3 = parcel2.readInt();
            String string = parcel2.readString();
            Log.d(TAG, "stationName = " + string);
            String[] strArrSplit = string.split(Pattern.quote("|"));
            Log.d(TAG, "strTestSign = " + ByteUtils.intToBinary32(i2, 32) + " strItem = " + ByteUtils.intToBinary32(i3, 32));
            while (true) {
                if (i >= strArrSplit.length) {
                    i = -1;
                    break;
                }
                Log.d(TAG, "str =  " + strArrSplit[i]);
                if (str.equalsIgnoreCase(strArrSplit[i])) {
                    break;
                }
                i++;
            }
            parcel.recycle();
            parcel2.recycle();
            Log.d(TAG, "getStationTest return " + i);
            return i;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int getKeyboxFlag() {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            if (Const.IS_SUPPORT_WIDEVINE_KEY) {
                this.binder.transact(TYPE_CHECK_WIDEVINEKEY, parcel, parcel2, 0);
            } else {
                this.binder.transact(TYPE_CHECK_KEYBOX, parcel, parcel2, 0);
            }
            int i = parcel2.readInt();
            Log.d(TAG, "get keybox SUCESS, retValue=:" + i);
            parcel.recycle();
            return i;
        } catch (Exception e) {
            Log.e(TAG, "Exception " + e.getMessage());
            return 0;
        }
    }

    public String getSn() {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            this.binder.transact(0, parcel, parcel2, 0);
            Log.e(TAG, "transact end");
            String string = parcel2.readString();
            for (int i = 0; i < 5 && !hasDigit(string); i++) {
                this.binder.transact(0, parcel, parcel2, 0);
                string = parcel2.readString();
            }
            this.binder.transact(1, parcel, parcel2, 0);
            String string2 = parcel2.readString();
            for (int i2 = 0; i2 < 5 && !hasDigit(string2); i2++) {
                this.binder.transact(1, parcel, parcel2, 0);
                string2 = parcel2.readString();
            }
            if (!string.isEmpty() && string.length() > 24 && !string2.isEmpty() && string2.length() > 0 && string.length() > string2.length() && string.contains(string2)) {
                string = string.substring(0, string.length() - string2.length());
                Log.e(TAG, "sn1 contains sn2 ,SN1 = " + string + "\n SN2=" + string2);
            }
            String str = "SN1:" + string + "\nSN2:" + string2;
            Log.e(TAG, "SN1 = " + string + " SN2=" + string2);
            parcel.recycle();
            parcel2.recycle();
            return str;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception :" + e);
            e.printStackTrace();
            return "get SN fail:" + e.getMessage();
        }
    }

    public String getSnByIndex(int i) {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            Log.d(TAG, "getSnByIndex type_sn=" + i);
            this.binder.transact(i, parcel, parcel2, 0);
            String string = parcel2.readString();
            Log.d(TAG, "SN" + i + " = " + string);
            parcel.recycle();
            parcel2.recycle();
            return string;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception :" + e);
            e.printStackTrace();
            return "get SN fail:" + e.getMessage();
        }
    }

    public boolean writeStationTested(int i) {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            parcel.writeInt(i);
            this.binder.transact(2, parcel, parcel2, 0);
            parcel.recycle();
            parcel2.recycle();
            return true;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception " + e.getMessage());
            return false;
        }
    }

    public boolean writeStationTested(String str) {
        int stationTest = getStationTest(str);
        Log.d(TAG, "stat = " + stationTest);
        if (stationTest == -1) {
            return false;
        }
        return writeStationTested(stationTest);
    }

    public boolean writeStationPass(int i) {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            parcel.writeInt(i);
            this.binder.transact(3, parcel, parcel2, 0);
            parcel.recycle();
            parcel2.recycle();
            return true;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception " + e.getMessage());
            return false;
        }
    }

    public boolean writeStationPass(String str) {
        int stationTest = getStationTest(str);
        Log.d(TAG, "stat = " + stationTest);
        if (stationTest == -1) {
            return false;
        }
        return writeStationPass(stationTest);
    }

    public boolean writeChargeSwitch(int i) {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            parcel.writeInt(i);
            this.binder.transact(6, parcel, parcel2, 0);
            parcel.recycle();
            parcel2.recycle();
            return true;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception ", e);
            e.printStackTrace();
            return false;
        }
    }

    public int executeOffsetCalibration() {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            this.binder.transact(23, parcel, parcel2, 0);
            int i = parcel2.readInt();
            Log.d(TAG, "executeOffsetCalibration data = " + i + " SUCESS!!");
            parcel.recycle();
            parcel2.recycle();
            return i;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception ", e);
            e.printStackTrace();
            return 0;
        }
    }

    public int executeXtalkCalibration() {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            this.binder.transact(24, parcel, parcel2, 0);
            int i = parcel2.readInt();
            Log.d(TAG, "executeOffsetCalibration data = " + i + " SUCESS!!");
            parcel.recycle();
            parcel2.recycle();
            return i;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception ", e);
            e.printStackTrace();
            return 0;
        }
    }

    public int executeAITest(int i) {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            parcel.writeInt(i);
            this.binder.transact(TYPE_EXECUTE_AI_TEST, parcel, parcel2, 0);
            int i2 = parcel2.readInt();
            Log.d(TAG, "executeAITest data=:" + i2 + " SUCESS!!");
            parcel.recycle();
            parcel2.recycle();
            return i2;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception ", e);
            e.printStackTrace();
            return 0;
        }
    }

    public boolean writeStationFail(int i) {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            parcel.writeInt(i);
            this.binder.transact(4, parcel, parcel2, 0);
            parcel.recycle();
            parcel2.recycle();
            return true;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    public boolean writeStationFail(String str) {
        int stationTest = getStationTest(str);
        Log.d(TAG, "stat = " + stationTest);
        if (stationTest == -1) {
            return false;
        }
        return writeStationFail(stationTest);
    }

    public byte[] readMiscdataOffsetByteArray(int i, int i2) {
        if (i2 <= 0) {
            Log.w(TAG, "Wrong count");
            return null;
        }
        byte[] bArr = new byte[i2];
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            parcel.writeInt(i);
            parcel.writeInt(i2);
            this.binder.transact(18, parcel, parcel2, 0);
            parcel2.readInt();
            parcel2.readByteArray(bArr);
            parcel.recycle();
            parcel2.recycle();
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception " + e.getMessage());
            e.printStackTrace();
        }
        return bArr;
    }

    public boolean writeMiscdataOffsetByteArray(int i, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            Log.w(TAG, "Wrong value");
            return false;
        }
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            parcel.writeInt(i);
            parcel.writeByteArray(bArr, 0, bArr.length);
            this.binder.transact(17, parcel, parcel2, 0);
            parcel.recycle();
            parcel2.recycle();
            return true;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    public String getPhaseCheck() {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            this.binder.transact(5, parcel, parcel2, 0);
            Log.e(TAG, "transact SUCESS!!");
            int i = parcel2.readInt();
            int i2 = parcel2.readInt();
            String strTrim = parcel2.readString().trim();
            Log.d(TAG, "stationName = " + strTrim);
            String[] strArrSplit = strTrim.split(Pattern.quote("|"));
            String strIntToBinary32 = ByteUtils.intToBinary32(i, 32);
            String strIntToBinary322 = ByteUtils.intToBinary32(i2, 32);
            char[] charArray = strIntToBinary32.toCharArray();
            char[] charArray2 = strIntToBinary322.toCharArray();
            StringBuffer stringBuffer = new StringBuffer();
            Log.e(TAG, "strTestSign = " + strIntToBinary32 + " strItem = " + strIntToBinary322);
            for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                stringBuffer.append(strArrSplit[i3] + ":" + StationTested(charArray[(charArray.length - i3) - 1], charArray2[(charArray2.length - i3) - 1]));
                if (i3 < strArrSplit.length - 1) {
                    stringBuffer.append("\n");
                }
            }
            String string = stringBuffer.toString();
            parcel.recycle();
            parcel2.recycle();
            return string;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "huasong Exception " + e.getMessage());
            return "get phasecheck fail:" + e.getMessage();
        }
    }

    public boolean getPhaseCheckStationTested(int i) {
        try {
            Log.e(TAG, "getPhaseCheckStationTested station=" + i);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i < 0) {
            return false;
        }
        Parcel parcel = new Parcel();
        Parcel parcel2 = new Parcel();
        this.binder.transact(5, parcel, parcel2, 0);
        int i2 = parcel2.readInt();
        int i3 = parcel2.readInt();
        String strTrim = parcel2.readString().trim();
        String[] strArrSplit = strTrim.split(Pattern.quote("|"));
        String strIntToBinary32 = ByteUtils.intToBinary32(i2, 32);
        String strIntToBinary322 = ByteUtils.intToBinary32(i3, 32);
        char[] charArray = strIntToBinary32.toCharArray();
        Log.d(TAG, "getPhaseCheckStationTested strTestSign = " + strIntToBinary32 + " strItem = " + strIntToBinary322);
        Log.d(TAG, "getPhaseCheckStationTested str.length=" + strArrSplit.length);
        Log.d(TAG, "getPhaseCheckStationTested stationName = " + strTrim);
        if (i >= strArrSplit.length) {
            parcel.recycle();
            parcel2.recycle();
            return false;
        }
        int length = (charArray.length - i) - 1;
        Log.d(TAG, "getPhaseCheckStationPass stationIndex = " + length);
        Log.d(TAG, "getPhaseCheckStationPass charSign[stationIndex] = " + charArray[length]);
        if (charArray[length] == '0') {
            Log.d(TAG, "getPhaseCheckStationTested station tested!");
            parcel.recycle();
            parcel2.recycle();
            return true;
        }
        parcel.recycle();
        parcel2.recycle();
        return false;
    }

    public boolean getPhaseCheckStationPass(int i) {
        try {
            Log.e(TAG, "getPhaseCheckStationPass station=" + i);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i < 0) {
            return false;
        }
        Parcel parcel = new Parcel();
        Parcel parcel2 = new Parcel();
        this.binder.transact(5, parcel, parcel2, 0);
        int i2 = parcel2.readInt();
        int i3 = parcel2.readInt();
        String strTrim = parcel2.readString().trim();
        String[] strArrSplit = strTrim.split(Pattern.quote("|"));
        String strIntToBinary32 = ByteUtils.intToBinary32(i2, 32);
        String strIntToBinary322 = ByteUtils.intToBinary32(i3, 32);
        char[] charArray = strIntToBinary32.toCharArray();
        char[] charArray2 = strIntToBinary322.toCharArray();
        Log.d(TAG, "getPhaseCheckStationPass strTestSign = " + strIntToBinary32 + " strItem = " + strIntToBinary322);
        Log.d(TAG, "getPhaseCheckStationPass str.length=" + strArrSplit.length);
        Log.d(TAG, "getPhaseCheckStationPass stationName = " + strTrim);
        if (i >= charArray.length) {
            parcel.recycle();
            parcel2.recycle();
            return false;
        }
        int length = (charArray.length - i) - 1;
        int length2 = (charArray2.length - i) - 1;
        Log.d(TAG, "getPhaseCheckStationPass stationIndex = " + length);
        Log.d(TAG, "getPhaseCheckStationPass charItemIndex = " + length2);
        Log.d(TAG, "getPhaseCheckStationPass charSign[stationIndex] = " + charArray[length]);
        Log.d(TAG, "getPhaseCheckStationPass charItem[stationIndex] = " + charArray2[length2]);
        if (charArray[length] == '0' && charArray2[length2] == '0') {
            Log.d(TAG, "getPhaseCheckStationPass station pass!");
            parcel.recycle();
            parcel2.recycle();
            return true;
        }
        parcel.recycle();
        parcel2.recycle();
        return false;
    }

    public boolean isStationTest(String str) {
        int stationTest = getStationTest(str);
        Log.e(TAG, "isStationTest station = " + stationTest);
        if (stationTest == -1) {
            return false;
        }
        boolean phaseCheckStationTested = getPhaseCheckStationTested(stationTest);
        Log.e(TAG, "isStationTest result = " + phaseCheckStationTested);
        return phaseCheckStationTested;
    }

    public boolean isStationPass(String str) {
        int stationTest = getStationTest(str);
        Log.e(TAG, "isStationPass station = " + stationTest);
        if (stationTest == -1) {
            return false;
        }
        boolean phaseCheckStationPass = getPhaseCheckStationPass(stationTest);
        Log.e(TAG, "isStationPass result = " + phaseCheckStationPass);
        return phaseCheckStationPass;
    }

    public boolean writeLedlightSwitch(int i, int i2) {
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            Log.e(TAG, "writeLedlightSwitch light code = " + i + ",value=" + i2);
            logLedLight(i);
            parcel.writeInt(i2);
            this.binder.transact(i, parcel, parcel2, 0);
            parcel.recycle();
            parcel2.recycle();
            return true;
        } catch (UnsupportedEncodingException | IndexOutOfBoundsException | NullPointerException e) {
            Log.e(TAG, "Exception ", e);
            return false;
        }
    }

    private void logLedLight(int i) {
        if (i == 7) {
            Log.d(TAG, "Red light!");
            return;
        }
        if (i == 8) {
            Log.d(TAG, "Blue light!");
        } else if (i == 9) {
            Log.d(TAG, "Green light!");
        } else {
            Log.d(TAG, "Unknow light!");
        }
    }

    public String getStationResult(String str) {
        String strStationTested = "";
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            this.binder.transact(5, parcel, parcel2, 0);
            Log.e(TAG, "transact SUCESS!!");
            int i = parcel2.readInt();
            int i2 = parcel2.readInt();
            String[] strArrSplit = parcel2.readString().split(Pattern.quote("|"));
            String strIntToBinary32 = ByteUtils.intToBinary32(i, 32);
            String strIntToBinary322 = ByteUtils.intToBinary32(i2, 32);
            String str2 = get16BitStr(strIntToBinary32);
            String str3 = get16BitStr(strIntToBinary322);
            char[] charArray = str2.toCharArray();
            char[] charArray2 = str3.toCharArray();
            Log.e(TAG, "strTestSign = " + str2 + " strItem = " + str3);
            for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                if (str.equals(strArrSplit[i3])) {
                    strStationTested = StationTested(charArray[(charArray.length - i3) - 1], charArray2[(charArray2.length - i3) - 1]);
                    Log.e("getStationResult", "charSign ==: " + charArray[(charArray.length - i3) - 1] + " charItem ==:" + charArray2[(charArray2.length - i3) - 1]);
                }
            }
            parcel.recycle();
            parcel2.recycle();
        } catch (Exception e) {
            Log.e(TAG, "getStationResult Exception " + e.getMessage());
        }
        return strStationTested;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getStation() {
        String string = null;
        Object[] objArr = 0;
        try {
            Parcel parcel = new Parcel();
            Parcel parcel2 = new Parcel();
            this.binder.transact(5, parcel, parcel2, 0);
            Log.e(TAG, "transact SUCESS!!");
            parcel2.readInt();
            parcel2.readInt();
            string = parcel2.readString();
            parcel.recycle();
            parcel2.recycle();
        } catch (Exception e) {
            Log.e(TAG, "Exception " + e.getMessage());
        }
        Log.e(TAG, "stationName======" + string);
        return string;
    }

    private String get16BitStr(String str) {
        while (str.length() < 16) {
            str = "0" + str;
        }
        return str;
    }

    static class AdaptParcel {
        int code;
        byte[] data;
        int dataSize;
        int replySize;

        AdaptParcel() {
        }
    }

    class AdaptBinder {
        private AdaptParcel mAdpt;
        private InputStream mInputStream;
        private OutputStream mOutputStream;
        private LocalSocket socket = new LocalSocket();
        private LocalSocketAddress socketAddr = new LocalSocketAddress(PhaseCheckParse.SOCKET_NAME, LocalSocketAddress.Namespace.ABSTRACT);

        public AdaptBinder() {
            AdaptParcel adaptParcel = new AdaptParcel();
            this.mAdpt = adaptParcel;
            adaptParcel.data = new byte[4096];
            this.mAdpt.code = 0;
            this.mAdpt.dataSize = 0;
            this.mAdpt.replySize = 0;
        }

        private void int2byte(byte[] bArr, int i, int i2) {
            bArr[i + 3] = (byte) ((i2 >> 24) & 255);
            bArr[i + 2] = (byte) ((i2 >> 16) & 255);
            bArr[i + 1] = (byte) ((i2 >> 8) & 255);
            bArr[i] = (byte) (i2 & 255);
        }

        public int byte2Int(byte[] bArr, int i) {
            return (bArr[i] & UByte.MAX_VALUE) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16) | ((bArr[i + 3] & UByte.MAX_VALUE) << 24);
        }

        public synchronized void sendCmdAndRecResult(AdaptParcel adaptParcel) {
            Log.d(PhaseCheckParse.TAG, "send cmd: ");
            byte[] bArr = new byte[4096];
            int2byte(bArr, 0, adaptParcel.code);
            int2byte(bArr, 4, adaptParcel.dataSize);
            int2byte(bArr, 8, adaptParcel.replySize);
            System.arraycopy(adaptParcel.data, 0, bArr, 12, adaptParcel.dataSize + adaptParcel.replySize);
            Log.d(PhaseCheckParse.TAG, "code = " + adaptParcel.code);
            Log.d(PhaseCheckParse.TAG, "dataSize = " + adaptParcel.dataSize);
            Log.d(PhaseCheckParse.TAG, "replySize = " + adaptParcel.replySize);
            try {
                try {
                    LocalSocket localSocket = new LocalSocket();
                    this.socket = localSocket;
                    if (!localSocket.isConnected()) {
                        Log.d(PhaseCheckParse.TAG, "isConnected...");
                        this.socket.connect(this.socketAddr);
                    }
                    Log.d(PhaseCheckParse.TAG, "mSocketClient connect is " + this.socket.isConnected());
                    OutputStream outputStream = this.socket.getOutputStream();
                    this.mOutputStream = outputStream;
                    if (outputStream != null) {
                        Log.d(PhaseCheckParse.TAG, "write...");
                        this.mOutputStream.write(bArr);
                        this.mOutputStream.flush();
                        Log.d(PhaseCheckParse.TAG, "write succ...");
                    }
                    this.mInputStream = this.socket.getInputStream();
                    Log.d(PhaseCheckParse.TAG, "read ....");
                    Log.d(PhaseCheckParse.TAG, "count = " + this.mInputStream.read(bArr, 0, 4096) + "");
                    adaptParcel.code = byte2Int(bArr, 0);
                    adaptParcel.dataSize = byte2Int(bArr, 4);
                    adaptParcel.replySize = byte2Int(bArr, 8);
                    Log.d(PhaseCheckParse.TAG, "code = " + adaptParcel.code);
                    Log.d(PhaseCheckParse.TAG, "dataSize = " + adaptParcel.dataSize);
                    Log.d(PhaseCheckParse.TAG, "replySize = " + adaptParcel.replySize);
                    System.arraycopy(bArr, 12, adaptParcel.data, 0, adaptParcel.dataSize + adaptParcel.replySize);
                    try {
                        OutputStream outputStream2 = this.mOutputStream;
                        if (outputStream2 != null) {
                            outputStream2.close();
                        }
                        InputStream inputStream = this.mInputStream;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        LocalSocket localSocket2 = this.socket;
                        if (localSocket2 != null) {
                            if (localSocket2.isConnected()) {
                                this.socket.close();
                                this.socket = null;
                            } else {
                                this.socket = null;
                            }
                        }
                    } catch (IOException e) {
                        Log.d(PhaseCheckParse.TAG, "catch exception is " + e);
                    }
                } catch (IOException e2) {
                    Log.e(PhaseCheckParse.TAG, "Failed get output stream: " + e2.toString());
                    e2.printStackTrace();
                    try {
                        OutputStream outputStream3 = this.mOutputStream;
                        if (outputStream3 != null) {
                            outputStream3.close();
                        }
                        InputStream inputStream2 = this.mInputStream;
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        LocalSocket localSocket3 = this.socket;
                        if (localSocket3 != null) {
                            if (localSocket3.isConnected()) {
                                this.socket.close();
                                this.socket = null;
                            } else {
                                this.socket = null;
                            }
                        }
                    } catch (IOException e3) {
                        Log.d(PhaseCheckParse.TAG, "catch exception is " + e3);
                    }
                }
            } catch (Throwable th) {
                try {
                    OutputStream outputStream4 = this.mOutputStream;
                    if (outputStream4 != null) {
                        outputStream4.close();
                    }
                    InputStream inputStream3 = this.mInputStream;
                    if (inputStream3 != null) {
                        inputStream3.close();
                    }
                    LocalSocket localSocket4 = this.socket;
                    if (localSocket4 != null) {
                        if (localSocket4.isConnected()) {
                            this.socket.close();
                            this.socket = null;
                        } else {
                            this.socket = null;
                        }
                    }
                    throw th;
                } catch (IOException e4) {
                    Log.d(PhaseCheckParse.TAG, "catch exception is " + e4);
                }
            }
        }

        private synchronized void convertParcel(AdaptParcel adaptParcel, int i, Parcel parcel, Parcel parcel2) {
            parcel.setDataPosition(0);
            parcel2.setDataPosition(0);
            parcel.writeByteArrayInternal(adaptParcel.data, 0, adaptParcel.dataSize);
            parcel2.writeByteArrayInternal(adaptParcel.data, adaptParcel.dataSize, adaptParcel.replySize);
            Log.e(PhaseCheckParse.TAG, "convertParcel: dataSize = " + parcel.dataSize() + ", replySize = " + parcel2.dataSize());
            parcel.setDataPosition(0);
            parcel2.setDataPosition(0);
        }

        private synchronized void convertAdaptParcel(int i, Parcel parcel, Parcel parcel2) {
            AdaptParcel adaptParcel = this.mAdpt;
            if (adaptParcel == null) {
                Log.e(PhaseCheckParse.TAG, "convertAdaptParcel2: mAdpt == null!");
                return;
            }
            adaptParcel.code = i;
            parcel.setDataPosition(0);
            parcel2.setDataPosition(0);
            byte[] bArr = new byte[parcel.dataSize()];
            parcel.readByteArray(bArr);
            for (int i2 = 0; i2 < parcel.dataSize(); i2++) {
                this.mAdpt.data[i2] = bArr[i2];
            }
            byte[] bArr2 = new byte[parcel2.dataSize()];
            parcel2.readByteArray(bArr2);
            for (int i3 = 0; i3 < parcel2.dataSize(); i3++) {
                this.mAdpt.data[parcel.dataSize() + i3] = bArr2[i3];
            }
            this.mAdpt.dataSize = parcel.dataSize();
            this.mAdpt.replySize = parcel2.dataSize();
            Log.e(PhaseCheckParse.TAG, "convertAdaptParcel2: dataSize = " + parcel.dataSize() + ", replySize = " + parcel2.dataSize());
            parcel.setDataPosition(0);
            parcel2.setDataPosition(0);
        }

        public synchronized void transact(int i, Parcel parcel, Parcel parcel2, int i2) throws IndexOutOfBoundsException, UnsupportedEncodingException, NullPointerException {
            Log.e(PhaseCheckParse.TAG, "transact start....");
            convertAdaptParcel(i, parcel, parcel2);
            sendCmdAndRecResult(this.mAdpt);
            convertParcel(this.mAdpt, i, parcel, parcel2);
            Log.e(PhaseCheckParse.TAG, "transact end....");
        }
    }

    static class Parcel {
        private byte[] mData;
        private int mDataSize;
        private int mPos;

        private Parcel() {
            this.mData = new byte[4096];
            this.mPos = 0;
            this.mDataSize = 0;
        }

        public void writeByteArray(byte[] bArr, int i, int i2) {
            if (i2 == 0) {
                return;
            }
            writeInt(i2);
            writeByteArrayInternal(bArr, i, i2);
        }

        public void writeByteArrayInternal(byte[] bArr, int i, int i2) {
            if (i2 == 0) {
                return;
            }
            System.arraycopy(bArr, i, this.mData, this.mPos, i2);
            this.mPos += i2;
            this.mDataSize += i2;
        }

        public void readByteArray(byte[] bArr) {
            System.arraycopy(this.mData, this.mPos, bArr, 0, bArr.length);
            this.mPos += bArr.length;
        }

        public byte readByte() {
            byte[] bArr = this.mData;
            int i = this.mPos;
            byte b = bArr[i];
            this.mPos = i + 1;
            return b;
        }

        public void writeByte(byte b) {
            Log.d(PhaseCheckParse.TAG, "ningbiao writeByte b=" + ((int) b));
            byte[] bArr = this.mData;
            int i = this.mPos;
            bArr[i] = b;
            this.mPos = i + 1;
            this.mDataSize++;
        }

        public int dataSize() {
            return this.mDataSize;
        }

        public void writeInt(int i) {
            Log.d(PhaseCheckParse.TAG, "ningbiao writeInt i=" + i);
            byte[] bArr = this.mData;
            int i2 = this.mPos;
            bArr[i2 + 3] = (byte) ((i >> 24) & 255);
            bArr[i2 + 2] = (byte) ((i >> 16) & 255);
            bArr[i2 + 1] = (byte) ((i >> 8) & 255);
            bArr[i2] = (byte) (i & 255);
            this.mPos = i2 + 4;
            this.mDataSize += 4;
        }

        public int readInt() {
            byte[] bArr = this.mData;
            int i = this.mPos;
            int i2 = bArr[i] & UByte.MAX_VALUE;
            int i3 = bArr[i + 1] & UByte.MAX_VALUE;
            int i4 = bArr[i + 2] & UByte.MAX_VALUE;
            int i5 = bArr[i + 3] & UByte.MAX_VALUE;
            this.mPos = i + 4;
            return (i3 << 8) | i2 | (i4 << 16) | (i5 << 24);
        }

        public void setDataPosition(int i) {
            this.mPos = i;
        }

        public String readString() throws IndexOutOfBoundsException, UnsupportedEncodingException, NullPointerException {
            int i = readInt();
            Log.d(PhaseCheckParse.TAG, "readString num = " + i);
            byte[] bArr = new byte[i];
            readByteArray(bArr);
            return new String(bArr, 0, i, "utf-8").trim();
        }

        public void recycle() {
            reset();
        }

        public void reset() {
            this.mPos = 0;
            this.mDataSize = 0;
        }

        public void LogArray() {
            Log.e(PhaseCheckParse.TAG, "array length = " + this.mData.length);
            for (int i = 0; i < this.mData.length && i <= 19; i++) {
                Log.e(PhaseCheckParse.TAG, "Parcel LogArray : (" + i + ") = " + ((int) this.mData[i]));
            }
        }
    }
}
