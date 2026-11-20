package com.sprd.validationtools.difference.receiver;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncResult;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.util.Log;
import com.sprd.validationtools.difference.station.IStationCheck;
import com.sprd.validationtools.nvram.NvramAgentHelper;
import com.sprd.validationtools.utils.ReflectUtils;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class QmmiBroadcastReceiver extends BroadcastReceiver {
    public static final int MSG_READ_BAR_CODE = 32770;
    public static final int MSG_WIRTE_BAR_CODE = 32769;
    private static final String TAG = "QmmiBroadcastReceiver";
    private Context mContext;
    private Object mPhone = null;
    private boolean mtestresult = false;
    private int testindex = 0;
    private String barcodeString = " ";
    private int writeSyncNVSuccess = -1;
    private String station = "";
    private String host = "";
    private boolean mIgnore = false;
    private boolean isStart = false;
    private boolean isStartDeviceInfo = false;
    private boolean isOnlyWriteBarcode = false;
    private String cmdOrder = " ";
    private Handler mResponseHander = new Handler() { // from class: com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Log.d(QmmiBroadcastReceiver.TAG, "msg.what===" + message.what);
            switch (message.what) {
                case 32769:
                    if (((AsyncResult) message.obj).exception == null) {
                        Log.d(QmmiBroadcastReceiver.TAG, "WRITE ok !");
                        break;
                    } else {
                        Log.e(QmmiBroadcastReceiver.TAG, "WRITE ERROR !");
                        break;
                    }
                case 32770:
                    AsyncResult asyncResult = (AsyncResult) message.obj;
                    if (asyncResult.exception == null) {
                        String[] strArr = (String[]) asyncResult.result;
                        if (strArr.length > 0 && strArr[0] != null) {
                            String str = ((String[]) asyncResult.result)[0];
                            Log.e(QmmiBroadcastReceiver.TAG, "READ BARCODE IS " + str);
                            QmmiBroadcastReceiver.this.barcodeString = str.substring(str.indexOf("\"") + 1, str.lastIndexOf("\""));
                            QmmiBroadcastReceiver.this.barcodeString = Pattern.compile("[^a-zA-Z0-9]").matcher(QmmiBroadcastReceiver.this.barcodeString).replaceAll(" ");
                            Log.d(QmmiBroadcastReceiver.TAG, "MSG_READ_BAR_CODE barcodeString>>" + QmmiBroadcastReceiver.this.barcodeString);
                            if (!QmmiBroadcastReceiver.this.isStart) {
                                if (QmmiBroadcastReceiver.this.isStartDeviceInfo) {
                                    QmmiBroadcastReceiver qmmiBroadcastReceiver = QmmiBroadcastReceiver.this;
                                    qmmiBroadcastReceiver.intentTargetDeviceInfo(qmmiBroadcastReceiver.barcodeString);
                                    break;
                                }
                            } else {
                                QmmiBroadcastReceiver qmmiBroadcastReceiver2 = QmmiBroadcastReceiver.this;
                                qmmiBroadcastReceiver2.intentTarget(qmmiBroadcastReceiver2.barcodeString);
                                break;
                            }
                        }
                    }
                    break;
            }
        }
    };

    public void witeBarCodeToProuctNv2() {
        Log.d(TAG, " witeBarCodeToProuctNv2  exceute!!!");
        Log.d(TAG, "onReceive witeBarCodeToProuctNv2  cmdOrder>>" + this.cmdOrder);
        byte[] bytes = this.cmdOrder.getBytes();
        if (bytes.length >= 63) {
            for (int iWirteDataToNvramBuff = -1; iWirteDataToNvramBuff != 0; iWirteDataToNvramBuff = NvramAgentHelper.wirteDataToNvramBuff(bytes)) {
            }
        }
        Log.d(TAG, "onReceive witeBarCodeToProuctNv2  end");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) throws ReflectUtils.ReflectException {
        String action = intent.getAction();
        Log.i(TAG, "Qmmi onReceive action: " + action);
        this.mContext = context;
        this.isStart = false;
        this.isOnlyWriteBarcode = false;
        this.isStartDeviceInfo = false;
        this.cmdOrder = " ";
        if (action != null && action.equals("com.qualcomm.qti.qmmicustom.QMMI_ACTION_START_FLAGS")) {
            String stringExtra = intent.getStringExtra("host");
            this.host = stringExtra;
            if (stringExtra != null && !stringExtra.equals("")) {
                this.isStart = true;
            }
            Settings.Global.putString(context.getContentResolver(), "init_station", "false");
        } else if (action != null && action.equals("com.qualcomm.qti.qmmicustom.ACTION_CUST_WRITE_FLAGS")) {
            this.isOnlyWriteBarcode = true;
            this.cmdOrder = intent.getStringExtra("barcode");
        } else if (action != null && action.equals("com.qualcomm.qti.qmmicustom.DEVICEINFO_ACTION_START_FLAGS")) {
            this.isStartDeviceInfo = true;
        }
        ActivityManager.getCurrentUser();
        if (ActivityManager.getCurrentUser() == 0) {
            try {
                this.mPhone = ReflectUtils.reflect("com.android.internal.telephony.PhoneFactory").method("getDefaultPhone").get();
            } catch (Exception unused) {
                Log.d(TAG, "cannot support mutl user to test mmi test!");
                return;
            }
        } else {
            Log.d(TAG, "!UserHandle.USER_OWNER");
        }
        if (this.isOnlyWriteBarcode) {
            if (this.cmdOrder.length() >= 63) {
                Settings.Global.putString(context.getContentResolver(), "test_stationArr", this.cmdOrder);
                Settings.Global.putString(context.getContentResolver(), "init_station", "true");
            }
            witeBarCodeToModem2();
            Log.i(TAG, "Qmmi onReceive witeBarCodeToModem barcodeString: " + this.barcodeString);
            witeBarCodeToProuctNv2();
            return;
        }
        Log.i(TAG, "Qmmi onReceive station: " + this.host);
        if (this.host == null) {
            this.host = "";
        }
        if (this.host.equals("1926")) {
            this.station = IStationCheck.STATION_MAT;
        } else if (this.host.equals("1923")) {
            this.station = IStationCheck.STATION_MMI1;
        } else if (this.host.equals("1929")) {
            this.station = IStationCheck.STATION_MMI2;
        } else if (this.host.equals("21719")) {
            this.mIgnore = true;
        }
        Bundle extras = intent.getExtras();
        this.mtestresult = extras.getBoolean("testResult");
        this.testindex = extras.getInt("testflagIndex");
        Log.d(TAG, "mtestresult>>>" + this.mtestresult + "  testindex>>" + this.testindex);
        if (this.mPhone != null) {
            readBarCodefromModem();
        }
    }

    public void readBarCodefromModem() throws ReflectUtils.ReflectException {
        Log.d(TAG, " readBarCodefromModem cmd exceute!!!");
        ReflectUtils.reflect(this.mPhone).method("invokeOemRilRequestStrings", new String[]{"AT+EGMR=0,5", "+EGMR"}, this.mResponseHander.obtainMessage(32770));
    }

    public void intentTarget(String str) {
        Settings.System.putString(this.mContext.getContentResolver(), "MMI_BARCODE", str);
        Intent intent = new Intent("com.qualcomm.qti.qmmicustom.QMMI_ACTION_START_FLAGS2");
        intent.putExtra("station", this.station);
        intent.putExtra("barcode", str);
        intent.putExtra("ignore", this.mIgnore);
        intent.addFlags(268435456);
        intent.setPackage("com.qualcomm.qti.qmmicustom");
        this.mContext.sendBroadcast(intent);
        Log.i("caolei", "START -- end");
    }

    public void intentTargetDeviceInfo(String str) {
        Settings.System.putString(this.mContext.getContentResolver(), "MMI_BARCODE", str);
        Intent intent = new Intent("com.qualcomm.qti.qmmicustom.DEVICEINFO_ACTION_START_FLAGS2");
        intent.putExtra("barcode", str);
        intent.addFlags(268435456);
        intent.setPackage("com.qualcomm.qti.qmmicustom");
        this.mContext.sendBroadcast(intent);
        Log.i("caolei", "START -- end");
    }

    public void witeBarCodeToModem2() throws ReflectUtils.ReflectException {
        String strSubstring;
        Log.e(TAG, " witeBarCodeToModem2 cmd exceute!!!");
        Log.d(TAG, " witeBarCodeToModem2 cmdOrder>>>" + this.cmdOrder);
        this.cmdOrder = Pattern.compile("[^a-zA-Z0-9]").matcher(this.cmdOrder).replaceAll(" ");
        Log.d(TAG, " witeBarCodeToModem2 NvramAgentHelper.MODEM_BARCODE_LENGTH>>>" + NvramAgentHelper.MODEM_BARCODE_LENGTH);
        if (this.cmdOrder.length() >= NvramAgentHelper.MODEM_BARCODE_LENGTH) {
            strSubstring = this.cmdOrder.substring(0, NvramAgentHelper.MODEM_BARCODE_LENGTH - 1);
        } else {
            strSubstring = this.cmdOrder;
        }
        Log.d(TAG, " witeBarCodeToModem2 cmdOrder>>>" + this.cmdOrder + "|end");
        Log.d(TAG, " witeBarCodeToModem2 cmdOrder>>>" + strSubstring + "|end");
        ReflectUtils.reflect(this.mPhone).method("invokeOemRilRequestStrings", new String[]{"AT+EGMR=1,5,\"" + strSubstring + "\"", "+EGMR"}, this.mResponseHander.obtainMessage(32769));
    }

    public void witeBarCodeToModem() throws ReflectUtils.ReflectException {
        Log.e(TAG, " witeBarCodeToModem cmd exceute!!!");
        byte[] bytes = this.barcodeString.getBytes();
        if (bytes == null || bytes.length == 0) {
            return;
        }
        bytes[this.testindex] = this.mtestresult ? (byte) 80 : (byte) 70;
        String str = new String(bytes);
        Log.i(TAG, "-- barcode===" + str);
        String strReplaceAll = Pattern.compile("[^a-zA-Z0-9]").matcher(str).replaceAll(" ");
        ReflectUtils.reflect(this.mPhone).method("invokeOemRilRequestStrings", new String[]{"AT+EGMR=1,5,\"" + strReplaceAll + "\"", "+EGMR"}, this.mResponseHander.obtainMessage(32769));
        if (strReplaceAll != null) {
            Log.d(TAG, " witeBarCodeToProuctNv  exceute!!!");
            byte[] bytes2 = strReplaceAll.getBytes();
            while (this.writeSyncNVSuccess != 0) {
                Log.d(TAG, " witeBarCodeToProuctNv  writeSyncNVSuccess===" + this.writeSyncNVSuccess);
                this.writeSyncNVSuccess = NvramAgentHelper.wirteDataToNvramBuff(bytes2, true);
            }
        }
    }
}
