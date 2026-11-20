package com.sprd.validationtools.difference.fragment;

import android.app.Activity;
import android.app.Fragment;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.sprd.validationtools.Const;
import com.sprd.validationtools.Constant;
import com.sprd.validationtools.R;
import com.sprd.validationtools.ValidationToolsMainActivity;
import com.sprd.validationtools.nvram.NvramAgentHelper;

/* loaded from: classes.dex */
public class TestInfoFragmentMTK extends Fragment {
    private static final String TAG = "TestInfoFragmentMTK";
    private TextView mBLTtxt;
    private TextView mBLTtxtInfo;
    private TextView mCHECKtxt;
    private TextView mCHECKtxtInfo;
    private Activity mContent;
    private TextView mIMEItxt;
    private TextView mIMEItxtInfo;
    private TextView mSNtxt;
    private TextView mSNtxtInfo;
    private TextView mWIFItxt;
    private TextView mWIFItxtInfo;
    private boolean mIsTested = false;
    private String sn = "";
    String test_stationArr = "";

    @Override // android.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.mContent = (Activity) context;
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.test_info_layout, viewGroup, false);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        init(view);
    }

    private void init(View view) {
        this.mSNtxt = (TextView) view.findViewById(R.id.testinfo_sn);
        this.mSNtxtInfo = (TextView) view.findViewById(R.id.test_info_sn_dec);
        this.mIMEItxt = (TextView) view.findViewById(R.id.testinfo_imei);
        this.mIMEItxtInfo = (TextView) view.findViewById(R.id.test_info_imei_dec);
        this.mBLTtxt = (TextView) view.findViewById(R.id.testinfo_blt);
        this.mBLTtxtInfo = (TextView) view.findViewById(R.id.test_info_blt_dec);
        this.mWIFItxt = (TextView) view.findViewById(R.id.testinfo_wifi);
        this.mWIFItxtInfo = (TextView) view.findViewById(R.id.test_info_wifi_dec);
        this.mCHECKtxt = (TextView) view.findViewById(R.id.testinfo_phase);
        this.mCHECKtxtInfo = (TextView) view.findViewById(R.id.test_info_phase_dec);
        this.mContent.setTitle("qmmi:" + Settings.Global.getString(this.mContent.getContentResolver(), "test_station"));
        Intent intent = this.mContent.getIntent();
        if (intent != null) {
            this.mIsTested = intent.getBooleanExtra(ValidationToolsMainActivity.IS_SYSTEM_TESTED, false);
        }
        setTxtInfo();
        setBrightness(255);
    }

    private void setBrightness(int i) {
        WindowManager.LayoutParams attributes = this.mContent.getWindow().getAttributes();
        attributes.screenBrightness = Float.valueOf(i).floatValue() * 0.003921569f;
        this.mContent.getWindow().setAttributes(attributes);
    }

    private void setTxtInfo() {
        this.mSNtxtInfo.setText(getSn());
        this.mIMEItxtInfo.setText(getIMEI());
        String address = BluetoothAdapter.getDefaultAdapter().getAddress();
        Log.d("huangli", "localAddress>>" + address);
        if (TextUtils.isEmpty(address)) {
            this.mBLTtxtInfo.setText("Unavailable");
        } else {
            this.mBLTtxtInfo.setText(address);
        }
        String[] factoryMacAddresses = ((WifiManager) this.mContent.getSystemService("wifi")).getFactoryMacAddresses();
        String str = null;
        if (factoryMacAddresses != null && factoryMacAddresses.length > 0) {
            str = factoryMacAddresses[0];
        }
        if (TextUtils.isEmpty(str)) {
            this.mWIFItxtInfo.setText("wifi Unavailable");
        } else {
            this.mWIFItxtInfo.setText(str);
        }
        String checkStation = getCheckStation();
        Log.d(TAG, "  test_stationArr3>>>" + checkStation);
        if (checkStation != null) {
            this.mCHECKtxtInfo.setText(checkStation);
        }
    }

    private String getPsn() {
        return Build.getSerial();
    }

    private String getSn() {
        return "SN1:" + NvramAgentHelper.readSn() + "\nSN2:" + NvramAgentHelper.readSnFromNvRam();
    }

    private String getIMEI() {
        String str;
        int phoneCount = ((TelephonyManager) this.mContent.getSystemService("phone")).getPhoneCount();
        Log.d(TAG, "GET_IMEI===phoneCnt: " + phoneCount);
        if (phoneCount == 1) {
            return "IMEI:" + (this.mContent.getSystemService("phone") != null ? "" + ((TelephonyManager) this.mContent.getSystemService("phone")).getImei() : "");
        }
        int i = 0;
        while (i < phoneCount) {
            int i2 = i + 1;
            String str2 = ((str + "imei") + String.valueOf(i2)) + ":";
            if (this.mContent.getSystemService("phone") != null) {
                str2 = str2 + ((TelephonyManager) this.mContent.getSystemService("phone")).getDeviceId(i);
            }
            str = str2 + "\n";
            i = i2;
        }
        return str;
    }

    private String getCheckStation() {
        StringBuilder sb = new StringBuilder();
        this.test_stationArr = Settings.Global.getString(this.mContent.getContentResolver(), "test_stationArr");
        Log.d(TAG, "  test_stationArr2>>>" + this.test_stationArr);
        String str = this.test_stationArr;
        if (str != null && str.length() >= 63) {
            sb.append(getResources().getString(R.string.write_sn) + ": ");
            if ("P".equals(this.test_stationArr.charAt(51) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(51) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.bt_staion_test) + ":");
            if ("1".equals(this.test_stationArr.charAt(60) + "") && "0".equals(this.test_stationArr.charAt(61) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("0".equals(this.test_stationArr.charAt(60) + "") && "1".equals(this.test_stationArr.charAt(61) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.ft_staion_test) + ":");
            if ("P".equals(this.test_stationArr.charAt(62) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(62) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.current1_staion_test) + ":");
            if ("P".equals(this.test_stationArr.charAt(54) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(54) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.ata_test) + ": ");
            if ("P".equals(this.test_stationArr.charAt(52) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(52) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.mmi_mta) + ": ");
            if ("P".equals(this.test_stationArr.charAt(53) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(53) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.smt_check) + ": ");
            if ("P".equals(this.test_stationArr.charAt(55) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(55) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.current2_staion_test) + ": ");
            if ("P".equals(this.test_stationArr.charAt(45) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(45) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.mmi1) + ": ");
            if ("P".equals(this.test_stationArr.charAt(56) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(56) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.ate_wireless) + ": ");
            if ("P".equals(this.test_stationArr.charAt(59) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(59) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.aging_test) + ": ");
            if ("P".equals(this.test_stationArr.charAt(46) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(46) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.mmi2) + ": ");
            if ("P".equals(this.test_stationArr.charAt(48) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(48) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            if (Constant.JAVA_FEATURE_HAVE_DURALCAEMRA) {
                sb.append(getResources().getString(R.string.dualcamera) + ": ");
                if ("P".equals(this.test_stationArr.charAt(47) + "")) {
                    sb.append(Const.PASS_RESULT + "\n");
                } else if ("F".equals(this.test_stationArr.charAt(47) + "")) {
                    sb.append(Const.FAIL_RESULT + "\n");
                } else {
                    sb.append(Const.DEFAULT_RESULT + "\n");
                }
            }
            sb.append(getResources().getString(R.string.write_imei) + ": ");
            if ("P".equals(this.test_stationArr.charAt(57) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(57) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            sb.append(getResources().getString(R.string.write_chekimei) + ": ");
            if ("P".equals(this.test_stationArr.charAt(58) + "")) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if ("F".equals(this.test_stationArr.charAt(58) + "")) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
            return sb.toString();
        }
        byte[] nvramBuffAllData = NvramAgentHelper.getNvramBuffAllData();
        if (nvramBuffAllData == null) {
            return " ";
        }
        sb.append(getResources().getString(R.string.write_sn) + ": ");
        if (nvramBuffAllData[51] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[51] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.bt_staion_test) + ":");
        if (nvramBuffAllData[60] == 49 && nvramBuffAllData[61] == 48) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[60] == 48 && nvramBuffAllData[61] == 49) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.ft_staion_test) + ":");
        if (nvramBuffAllData[62] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[62] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.current1_staion_test) + ":");
        if (nvramBuffAllData[54] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[54] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.ata_test) + ": ");
        if (nvramBuffAllData[52] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[52] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.mmi_mta) + ": ");
        if (nvramBuffAllData[53] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[53] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.smt_check) + ": ");
        if (nvramBuffAllData[55] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[55] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.current2_staion_test) + ": ");
        if (nvramBuffAllData[45] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[45] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.mmi1) + ": ");
        if (nvramBuffAllData[56] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[56] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.ate_wireless) + ": ");
        if (nvramBuffAllData[59] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[59] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.aging_test) + ": ");
        if (nvramBuffAllData[46] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[46] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.mmi2) + ": ");
        if (nvramBuffAllData[48] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[48] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        if (Constant.JAVA_FEATURE_HAVE_DURALCAEMRA) {
            sb.append(getResources().getString(R.string.dualcamera) + ": ");
            if (nvramBuffAllData[47] == 80) {
                sb.append(Const.PASS_RESULT + "\n");
            } else if (nvramBuffAllData[47] == 70) {
                sb.append(Const.FAIL_RESULT + "\n");
            } else {
                sb.append(Const.DEFAULT_RESULT + "\n");
            }
        }
        sb.append(getResources().getString(R.string.write_imei) + ": ");
        if (nvramBuffAllData[57] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[57] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        sb.append(getResources().getString(R.string.write_chekimei) + ": ");
        if (nvramBuffAllData[58] == 80) {
            sb.append(Const.PASS_RESULT + "\n");
        } else if (nvramBuffAllData[58] == 70) {
            sb.append(Const.FAIL_RESULT + "\n");
        } else {
            sb.append(Const.DEFAULT_RESULT + "\n");
        }
        return sb.toString();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }
}
