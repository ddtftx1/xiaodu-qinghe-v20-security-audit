package com.sprd.validationtools.itemstest.sysinfo;

import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.TextView;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import com.sprd.validationtools.TelephonyManagerSprd;
import com.sprd.validationtools.utils.IATUtils;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class RFCALITest extends BaseActivity {
    private static final int ADCBYTES = 56;
    private static final String ADC_PATH = "/mnt/vendor/productinfo/adc.bin";
    private static final String TAG = "RFCALITest";
    private TextView txtViewlabel01;
    private String str = "loading...";
    private Handler mUiHandler = new Handler();
    private DataInputStream mInputStream = null;
    byte[] buffer = new byte[ADCBYTES];

    static /* synthetic */ String access$084(RFCALITest rFCALITest, Object obj) {
        String str = rFCALITest.str + obj;
        rFCALITest.str = str;
        return str;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.rf_cali_test);
        setTitle(R.string.rf_cali_test);
        TextView textView = (TextView) findViewById(R.id.rfc_id);
        this.txtViewlabel01 = textView;
        textView.setTextSize(18.0f);
        this.txtViewlabel01.setText(this.str);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(true);
        initial();
    }

    private void initial() {
        new Thread(new Runnable() { // from class: com.sprd.validationtools.itemstest.sysinfo.RFCALITest.1
            @Override // java.lang.Runnable
            public void run() {
                int modemType = TelephonyManagerSprd.getModemType();
                Log.d(RFCALITest.TAG, "initial modemType=" + modemType);
                if (modemType == 1 || TelephonyManagerSprd.getRadioCapbility() == TelephonyManagerSprd.RadioCapbility.TDD_CSFB || TelephonyManagerSprd.getRadioCapbility() == TelephonyManagerSprd.RadioCapbility.CSFB) {
                    RFCALITest.this.str = "GSM/TD ";
                } else {
                    RFCALITest.this.str = "GSM ";
                }
                Log.d(RFCALITest.TAG, "initial str=" + RFCALITest.this.str);
                RFCALITest.access$084(RFCALITest.this, IATUtils.sendATCmd("AT+SGMR=0,0,3,0", "atchannel0"));
                if (modemType == 2 || TelephonyManagerSprd.getRadioCapbility() == TelephonyManagerSprd.RadioCapbility.FDD_CSFB || TelephonyManagerSprd.getRadioCapbility() == TelephonyManagerSprd.RadioCapbility.CSFB || TelephonyManagerSprd.getRadioCapbility() == TelephonyManagerSprd.RadioCapbility.LWLW || TelephonyManagerSprd.IsSupportWCDMA()) {
                    RFCALITest.access$084(RFCALITest.this, "WCDMA ");
                    RFCALITest.access$084(RFCALITest.this, IATUtils.sendATCmd("AT+SGMR=0,0,3,1", "atchannel0"));
                } else if (modemType == 3 && TelephonyManagerSprd.getRadioCapbility() == TelephonyManagerSprd.RadioCapbility.WG) {
                    RFCALITest.access$084(RFCALITest.this, "WCDMA ");
                    RFCALITest.access$084(RFCALITest.this, IATUtils.sendATCmd("AT+SGMR=0,0,3,1", "atchannel0"));
                }
                if ((modemType == 3 || TelephonyManagerSprd.IsSupportLTE()) && TelephonyManagerSprd.getRadioCapbility() != TelephonyManagerSprd.RadioCapbility.WG) {
                    RFCALITest.access$084(RFCALITest.this, "LTE ");
                    String strSendAtCmd = IATUtils.sendAtCmd("AT+SGMR=1,0,3,3,1");
                    if (!IATUtils.AT_FAIL.equalsIgnoreCase(strSendAtCmd)) {
                        RFCALITest.access$084(RFCALITest.this, strSendAtCmd);
                    } else {
                        RFCALITest.access$084(RFCALITest.this, IATUtils.sendATCmd("AT+SGMR=1,0,3,3", "atchannel0"));
                    }
                }
                if (TelephonyManagerSprd.IsSupportCDMA()) {
                    RFCALITest.access$084(RFCALITest.this, "CDMA2000 ");
                    RFCALITest.access$084(RFCALITest.this, IATUtils.sendATCmd("AT+SGMR=0,0,3,2", "atchannel0"));
                }
                if (TelephonyManagerSprd.IsSupportNR()) {
                    RFCALITest.access$084(RFCALITest.this, "NR ");
                    RFCALITest.access$084(RFCALITest.this, IATUtils.sendATCmd("AT+SGMR=1,0,3,4", "atchannel0"));
                }
                RFCALITest.this.mUiHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.sysinfo.RFCALITest.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RFCALITest.this.txtViewlabel01.setText(RFCALITest.this.str);
                    }
                });
            }
        }).start();
    }

    public boolean readFile() throws IOException {
        try {
            File file = new File(ADC_PATH);
            if (!file.exists()) {
                Log.d(TAG, "adcFile do not exists");
                return false;
            }
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            this.mInputStream = dataInputStream;
            int i = dataInputStream.read(this.buffer, 0, ADCBYTES);
            byte[] bArr = this.buffer;
            if (bArr != null && bArr.length > 0 && i >= 0) {
                Log.d(TAG, "count = " + i + " size = " + this.buffer.length);
                byte[] bArr2 = this.buffer;
                int length = bArr2.length - 4;
                int i2 = bArr2[length] | (-4);
                Log.d(TAG, "adcBit = " + length + " buffer[" + length + "] = 0x" + Integer.toHexString(this.buffer[length]) + " adcResult = 0x" + Integer.toHexString(i2));
                return i2 == -1;
            }
            Log.d(TAG, "buffer == null or buffer.length <= 0");
            return false;
        } catch (Exception e) {
            Log.d(TAG, "Failed get outputStream: " + e);
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        try {
            DataInputStream dataInputStream = this.mInputStream;
            if (dataInputStream != null) {
                dataInputStream.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        super.onDestroy();
    }
}
