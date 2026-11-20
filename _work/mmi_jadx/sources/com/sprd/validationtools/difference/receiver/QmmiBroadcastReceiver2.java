package com.sprd.validationtools.difference.receiver;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.util.Log;
import com.sprd.validationtools.nvram.NvramAgentHelper;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class QmmiBroadcastReceiver2 extends BroadcastReceiver {
    public static final int MSG_READ_BAR_CODE = 32770;
    public static final int MSG_WIRTE_BAR_CODE = 32769;
    private static final String TAG = "QmmiBroadcastReceiver2";
    private Context mContext;
    private boolean mtestresult = false;
    private int testindex = 0;
    private String barcodeString = " ";
    private int writeSyncNVSuccess = -1;
    private String station = "";
    private String host = "";
    private String barcode = "";
    private boolean mIgnore = false;
    private boolean isStart = false;
    private boolean isOnlyWriteBarcode = false;
    private String cmdOrder = " ";
    private Handler mResponseHander = new Handler() { // from class: com.sprd.validationtools.difference.receiver.QmmiBroadcastReceiver2.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Log.d(QmmiBroadcastReceiver2.TAG, "msg.what===" + message.what);
            switch (message.what) {
                case 32769:
                    if (((AsyncResult) message.obj).exception == null) {
                        Log.d(QmmiBroadcastReceiver2.TAG, "WRITE ok !");
                        break;
                    } else {
                        Log.e(QmmiBroadcastReceiver2.TAG, "WRITE ERROR !");
                        break;
                    }
                case 32770:
                    AsyncResult asyncResult = (AsyncResult) message.obj;
                    if (asyncResult.exception == null) {
                        String[] strArr = (String[]) asyncResult.result;
                        if (strArr.length > 0 && strArr[0] != null) {
                            String str = ((String[]) asyncResult.result)[0];
                            Log.e(QmmiBroadcastReceiver2.TAG, "READ BARCODE IS " + str);
                            QmmiBroadcastReceiver2.this.barcodeString = str.substring(str.indexOf("\"") + 1, str.lastIndexOf("\""));
                            QmmiBroadcastReceiver2.this.barcodeString = Pattern.compile("[^a-zA-Z0-9]").matcher(QmmiBroadcastReceiver2.this.barcodeString).replaceAll(" ");
                            Log.d(QmmiBroadcastReceiver2.TAG, "MSG_READ_BAR_CODE barcodeString>>" + QmmiBroadcastReceiver2.this.barcodeString);
                            if (!QmmiBroadcastReceiver2.this.isStart) {
                                QmmiBroadcastReceiver2.this.witeBarCodeToModem();
                                break;
                            }
                        }
                    }
                    break;
            }
        }
    };

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.i(TAG, "QmmiBroadcastReceiver2 onReceive action: " + action);
        this.mContext = context;
        this.isStart = false;
        this.isOnlyWriteBarcode = false;
        this.cmdOrder = " ";
        this.barcode = "";
        this.station = "";
        this.mIgnore = false;
        if (action != null && action.equals("com.qualcomm.qti.qmmicustom.QMMI_ACTION_START_FLAGS2")) {
            this.barcode = intent.getStringExtra("barcode");
            this.station = intent.getStringExtra("station");
            this.mIgnore = intent.getBooleanExtra("ignore", false);
            Log.i(TAG, "QmmiBroadcastReceiver2 onReceive barcode: " + this.barcode + " station: " + this.station + " mIgnore: " + this.mIgnore);
            intentTarget(this.station, this.barcode, this.mIgnore);
        }
        if (action == null || !action.equals("com.qualcomm.qti.qmmicustom.DEVICEINFO_ACTION_START_FLAGS2")) {
            return;
        }
        this.barcode = intent.getStringExtra("barcode");
        Log.i(TAG, "QmmiBroadcastReceiver2 onReceive DEVICEINFO_ACTION_START_FLAGS2 barcode: " + this.barcode);
        intentTargetDEVICEINFO(this.barcode);
    }

    public void readBarCodefromModem() {
        Log.d(TAG, " readBarCodefromModem cmd exceute!!!");
        new String[]{"AT+EGMR=0,5", "+EGMR"};
    }

    public void intentTargetDEVICEINFO(String str) {
        Log.i(TAG, "QmmiBroadcastReceiver2 intentTargetDEVICEINFO ");
        Settings.System.putString(this.mContext.getContentResolver(), "MMI_BARCODE", str);
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setFlags(268435456);
        intent.setComponent(new ComponentName("com.qualcomm.qti.qmmicustom", "com.qualcomm.qti.qmmicustom.MainDeviceInfo"));
        intent.putExtra("barcode", str);
        try {
            this.mContext.startActivity(intent);
        } catch (Exception e) {
            Log.e(TAG, "intentTargetDEVICEINFO failed: " + e);
        }
    }

    public void intentTarget(String str, String str2, boolean z) {
        Log.i(TAG, "QmmiBroadcastReceiver2 intentTarget ");
        Settings.System.putString(this.mContext.getContentResolver(), "MMI_BARCODE", str2);
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setFlags(268435456);
        intent.setComponent(new ComponentName("com.qualcomm.qti.qmmicustom", "com.qualcomm.qti.qmmicustom.QmmiMainActivity"));
        intent.putExtra("station", str);
        intent.putExtra("barcode", str2);
        intent.putExtra("ignore", z);
        try {
            this.mContext.startActivity(intent);
        } catch (Exception e) {
            Log.e(TAG, "intentTarget failed: " + e);
        }
    }

    public void witeBarCodeToModem2() {
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
        String[] strArr = new String[2];
        String str = "AT+EGMR=1,5,\"" + strSubstring + "\"";
    }

    public void witeBarCodeToModem() {
        Log.e(TAG, " witeBarCodeToModem cmd exceute!!!");
        byte[] bytes = this.barcodeString.getBytes();
        if (bytes == null) {
            return;
        }
        bytes[this.testindex] = this.mtestresult ? (byte) 80 : (byte) 70;
        String str = new String(bytes);
        Log.i(TAG, "-- barcode===" + str);
        String strReplaceAll = Pattern.compile("[^a-zA-Z0-9]").matcher(str).replaceAll(" ");
        String[] strArr = new String[2];
        String str2 = "AT+EGMR=1,5,\"" + strReplaceAll + "\"";
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
