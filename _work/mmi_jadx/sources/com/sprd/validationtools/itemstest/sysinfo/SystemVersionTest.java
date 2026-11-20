package com.sprd.validationtools.itemstest.sysinfo;

import android.bluetooth.BluetoothAdapter;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.widget.TextView;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.Constant;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.R;
import com.sprd.validationtools.nvram.NvramAgentHelper;
import com.sprd.validationtools.utils.FileUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class SystemVersionTest extends BaseActivity {
    private static final String PROD_VERSION_FILE = "/proc/version";
    private static final String TAG = "SystemVersionTest";
    private static final String camerainfopath = "/proc/Sprocomm_CamInfo";
    private static final String cpuinfoPath = "/proc/Sprocomm_CpuInfo";
    private static final String flashinfoPath = "/proc/Sprocomm_MemInfo";
    private static final String fpinfoPath = "/proc/Sprocomm_FPsensorInfo";
    private static final String lcdinfoPath = "/proc/Sprocomm_LcdInfo";
    private static final String tpinfoPath = "/proc/Sprocomm_TpInfo";
    TextView androidVersion;
    TextView linuxVersion;
    TextView platformBT;
    TextView platformCAMERA;
    TextView platformCpu;
    TextView platformFp;
    TextView platformIMEI;
    TextView platformLCD;
    TextView platformMCP;
    TextView platformPA;
    TextView platformPn;
    TextView platformSn;
    TextView platformTP;
    TextView platformVersion;
    TextView platformWifi;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IOException {
        super.onCreate(bundle);
        setContentView(R.layout.version);
        setTitle(R.string.version_test);
        getWindow().setFlags(128, 128);
        TextView textView = (TextView) findViewById(R.id.android_version);
        this.androidVersion = textView;
        textView.setText(getString(R.string.android_version) + "\n" + Build.VERSION.RELEASE + "\n");
        TextView textView2 = (TextView) findViewById(R.id.linux_version);
        this.linuxVersion = textView2;
        textView2.setText(getString(R.string.linux_version, new Object[]{getPropVersion()}));
        TextView textView3 = (TextView) findViewById(R.id.build_numer);
        this.platformVersion = textView3;
        textView3.setText(getString(R.string.build_number, new Object[]{Build.DISPLAY}));
        TextView textView4 = (TextView) findViewById(R.id.platform_sn);
        this.platformSn = textView4;
        textView4.setText(getSn());
        TextView textView5 = (TextView) findViewById(R.id.platform_pn);
        this.platformPn = textView5;
        textView5.setVisibility(8);
        if (Constant.MEDIATEK.equals(Constant.currentPlatform)) {
            TextView textView6 = (TextView) findViewById(R.id.platform_imei);
            this.platformIMEI = textView6;
            textView6.setText(getIMEI());
            TextView textView7 = (TextView) findViewById(R.id.platform_wifi_address);
            this.platformWifi = textView7;
            textView7.setText(getString(R.string.wifi_address, new Object[]{getWifiAddress()}));
            TextView textView8 = (TextView) findViewById(R.id.platform_bt_address);
            this.platformBT = textView8;
            textView8.setText(getString(R.string.bt_address, new Object[]{getBTAddress()}));
            TextView textView9 = (TextView) findViewById(R.id.platform_tp_info);
            this.platformTP = textView9;
            textView9.setText(getTP());
            TextView textView10 = (TextView) findViewById(R.id.platform_lcd_info);
            this.platformLCD = textView10;
            textView10.setText(getLCD());
            this.platformCAMERA = (TextView) findViewById(R.id.platform_camera_info);
            String[] cameraInfo = getCameraInfo();
            this.platformCAMERA.setText(cameraInfo[0] + "\n" + cameraInfo[1]);
            TextView textView11 = (TextView) findViewById(R.id.platform_momery_info);
            this.platformMCP = textView11;
            textView11.setText(getMemory());
            TextView textView12 = (TextView) findViewById(R.id.platform_fp_info);
            this.platformFp = textView12;
            textView12.setText(getFinger());
            this.platformFp.setVisibility(8);
            TextView textView13 = (TextView) findViewById(R.id.platform_pa_info);
            this.platformPA = textView13;
            textView13.setText(R.string.pa_info_text);
        }
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(true);
    }

    private String getSn() {
        String str = Constant.currentPlatform;
        str.hashCode();
        if (str.equals(Constant.MEDIATEK)) {
            return getMTKSn();
        }
        return !str.equals(Constant.SPREADTRUM) ? "" : getSprdSn();
    }

    private String getPropVersion() {
        return FileUtils.readFile(PROD_VERSION_FILE);
    }

    private String getSprdSn() {
        return PhaseCheckParse.getInstance().getSn();
    }

    private String getMTKSn() {
        return "SN1:" + NvramAgentHelper.readSn() + "\nSN2:" + NvramAgentHelper.readSnFromNvRam();
    }

    private String getMemory() {
        return String.format("memory: %s", getInfoByPath(flashinfoPath));
    }

    private String getLCD() {
        return String.format("lcd: %s", getInfoByPath(lcdinfoPath));
    }

    private String getFinger() {
        return String.format("finger: %s", getInfoByPath(fpinfoPath));
    }

    private String getTP() {
        return String.format("tp: %s", getInfoByPath(tpinfoPath));
    }

    private String getFormattedKernelVersion() throws IOException {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(PROD_VERSION_FILE), 256);
            try {
                String line = bufferedReader.readLine();
                bufferedReader.close();
                Matcher matcher = Pattern.compile("\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)").matcher(line);
                if (!matcher.matches()) {
                    Log.e(TAG, "Regex did not match on /proc/version: " + line);
                    return "Unavailable";
                }
                if (matcher.groupCount() < 4) {
                    Log.e(TAG, "Regex match on /proc/version only returned " + matcher.groupCount() + " groups");
                    return "Unavailable";
                }
                return matcher.group(1) + "\n" + matcher.group(2) + " " + matcher.group(3) + "\n" + matcher.group(4);
            } catch (Throwable th) {
                bufferedReader.close();
                throw th;
            }
        } catch (IOException e) {
            Log.e(TAG, "IO Exception when getting kernel version for Device Info screen", e);
            return "Unavailable";
        }
    }

    private String getWifiAddress() {
        String[] factoryMacAddresses = ((WifiManager) getSystemService("wifi")).getFactoryMacAddresses();
        String str = (factoryMacAddresses == null || factoryMacAddresses.length <= 0) ? null : factoryMacAddresses[0];
        TextUtils.isEmpty(str);
        return str;
    }

    private String getBTAddress() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        return defaultAdapter.getState() != 12 ? "00:00:00:00:00:00" : defaultAdapter.getAddress();
    }

    private String getIMEI() {
        String str;
        int phoneCount = ((TelephonyManager) getSystemService("phone")).getPhoneCount();
        if (phoneCount == 1) {
            return "IMEI:" + (getSystemService("phone") != null ? "" + ((TelephonyManager) getSystemService("phone")).getImei() : "");
        }
        int i = 0;
        while (i < phoneCount) {
            int i2 = i + 1;
            String str2 = ((str + "imei") + String.valueOf(i2)) + ":";
            if (getSystemService("phone") != null) {
                str2 = str2 + ((TelephonyManager) getSystemService("phone")).getDeviceId(i);
            }
            str = str2 + "\n";
            i = i2;
        }
        return str;
    }

    private String getInfoByPath(String str) throws IOException {
        String line = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(str)));
            line = bufferedReader.readLine();
            bufferedReader.close();
            return line;
        } catch (FileNotFoundException e) {
            Log.e(TAG, "FileNotFoundException");
            e.printStackTrace();
            return line;
        } catch (IOException e2) {
            Log.e(TAG, "IOException");
            e2.printStackTrace();
            return line;
        }
    }

    private String[] getCameraInfo() throws IOException {
        String[] strArr = {"", "", ""};
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(camerainfopath)));
            strArr[0] = bufferedReader.readLine();
            Log.i(TAG, "Rear Camera info: " + strArr[0]);
            strArr[1] = bufferedReader.readLine();
            Log.i(TAG, "Front Camera info: " + strArr[1]);
            strArr[2] = bufferedReader.readLine();
            Log.i(TAG, "Second Camera info: " + strArr[2]);
            bufferedReader.close();
        } catch (FileNotFoundException e) {
            Log.e(TAG, "FileNotFoundException");
            e.printStackTrace();
        } catch (IOException e2) {
            Log.e(TAG, "IOException");
            e2.printStackTrace();
        }
        return strArr;
    }
}
