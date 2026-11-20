package com.sprd.validationtools.difference.fragment;

import android.app.Activity;
import android.app.Fragment;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.R;
import com.sprd.validationtools.ValidationToolsMainActivity;
import com.sprd.validationtools.difference.station.IStationCheck;
import com.sprd.validationtools.modules.TestItem;
import com.sprd.validationtools.modules.UnitTestItemList;
import com.sprd.validationtools.sqlite.EngSqlite;
import com.sprd.validationtools.testinfo.TestInfoQRCode;
import com.sprd.validationtools.utils.BtTestUtil;
import com.sprd.validationtools.utils.ReflectUtils;
import com.sprd.validationtools.utils.SocketUtils;
import com.sprd.validationtools.utils.WifiTestUtil;
import com.sprd.validationtools.utils.ZXingUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes.dex */
public class TestInfoFragmentSprd extends Fragment {
    private static final boolean SUPPORT_QRCODE = true;
    private static final String TAG = "TestInfoFragmentSprd";
    private Button backBT;
    private TextView mBLTtxt;
    private TextView mBLTtxtInfo;
    private TextView mCHECKtxt;
    private TextView mCHECKtxtInfo;
    private Activity mContext;
    private TextView mIMEItxt;
    private TextView mIMEItxtInfo;
    private TextView mMEIDtextInfo;
    private TextView mMEIDtxt;
    private TextView mSNtxt;
    private TextView mSNtxtInfo;
    private TextView mTesttxt;
    private TextView mTesttxtInfo;
    private TextView mWIFItxt;
    private TextView mWIFItxtInfo;
    private ImageView mQRCodeImageView = null;
    private final int GET_SN = 0;
    private final int GET_IMEI = 1;
    private final int GET_WIFI = 3;
    private final int GET_PCHECK = 4;
    private final int GET_TESTR = 5;
    private final int GET_MEID = 6;
    private boolean mIsTested = false;
    Handler mTestInfoHandler = null;
    Handler mUiHandler = new UiHandler();
    private boolean mShowBTOff = false;
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.sprd.validationtools.difference.fragment.TestInfoFragmentSprd.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.d(TestInfoFragmentSprd.TAG, "onReceive---------getAction=" + intent.getAction());
            String action = intent.getAction();
            action.hashCode();
            if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 0);
                String address = BluetoothAdapter.getDefaultAdapter().getAddress();
                Log.d(TestInfoFragmentSprd.TAG, "onReceive localAddress=" + address + ",mShowBTOff=" + TestInfoFragmentSprd.this.mShowBTOff);
                if (!TestInfoFragmentSprd.this.mShowBTOff || intExtra == 12) {
                    TestInfoFragmentSprd.this.mBLTtxtInfo.setText(address);
                } else {
                    TestInfoFragmentSprd.this.mBLTtxtInfo.setText("BT off!");
                }
            }
        }
    };
    private BtTestUtil mBtTestUtil = null;
    private WifiTestUtil mWifiTestUtil = null;
    private WifiManager mWifiManager = null;

    @Override // android.app.Fragment
    public void onAttach(Context context) {
        this.mContext = (Activity) context;
        super.onAttach(context);
    }

    private IntentFilter makeFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        return intentFilter;
    }

    class UiHandler extends Handler {
        UiHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                Log.d(TestInfoFragmentSprd.TAG, "UiHandler" + ((String) message.obj));
                TestInfoFragmentSprd.this.mSNtxtInfo.setText((String) message.obj);
                return;
            }
            if (i == 1) {
                Log.d(TestInfoFragmentSprd.TAG, "UiHandler" + ((String) message.obj));
                TestInfoFragmentSprd.this.mIMEItxtInfo.setText((String) message.obj);
                return;
            }
            if (i == 4) {
                Log.d(TestInfoFragmentSprd.TAG, "UiHandler" + ((String) message.obj));
                TestInfoFragmentSprd.this.mCHECKtxtInfo.setText((String) message.obj);
            } else if (i == 5) {
                Log.d(TestInfoFragmentSprd.TAG, "UiHandler" + ((String) message.obj));
                TestInfoFragmentSprd.this.mTesttxtInfo.setText((String) message.obj);
            } else {
                if (i != 6) {
                    return;
                }
                Log.d(TestInfoFragmentSprd.TAG, "UiHandler" + ((String) message.obj));
                TestInfoFragmentSprd.this.mMEIDtextInfo.setText((String) message.obj);
            }
        }
    }

    class TestInfoHandler extends Handler {
        public TestInfoHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String string;
            TelephonyManager telephonyManager;
            int i = message.what;
            if (i == 0) {
                TestInfoFragmentSprd.this.mUiHandler.sendMessage(TestInfoFragmentSprd.this.mUiHandler.obtainMessage(message.what, 0, 0, PhaseCheckParse.getInstance().getSn()));
                return;
            }
            if (i == 1) {
                TelephonyManager telephonyManager2 = (TelephonyManager) TestInfoFragmentSprd.this.mContext.getSystemService("phone");
                int phoneCount = telephonyManager2.getPhoneCount();
                Log.d(TestInfoFragmentSprd.TAG, "GET_IMEI===phoneCnt: " + phoneCount);
                StringBuffer stringBuffer = new StringBuffer("");
                int i2 = 0;
                while (i2 < phoneCount) {
                    stringBuffer.append("imei");
                    int i3 = i2 + 1;
                    stringBuffer.append(String.valueOf(i3));
                    stringBuffer.append(":");
                    if (TestInfoFragmentSprd.this.mContext.getSystemService("phone") != null) {
                        stringBuffer.append(telephonyManager2.getDeviceId(i2));
                    }
                    if (i2 < phoneCount - 1) {
                        stringBuffer.append("\n");
                    }
                    i2 = i3;
                }
                TestInfoFragmentSprd.this.mUiHandler.sendMessage(TestInfoFragmentSprd.this.mUiHandler.obtainMessage(message.what, 0, 0, stringBuffer.toString()));
                return;
            }
            if (i == 4) {
                TestInfoFragmentSprd.this.mUiHandler.sendMessage(TestInfoFragmentSprd.this.mUiHandler.obtainMessage(message.what, 0, 0, PhaseCheckParse.getInstance().getPhaseCheck()));
                return;
            }
            if (i != 5) {
                if (i == 6 && (telephonyManager = (TelephonyManager) TestInfoFragmentSprd.this.mContext.getSystemService("phone")) != null) {
                    Log.d(TestInfoFragmentSprd.TAG, "GET_MEID===phoneCnt: " + telephonyManager.getPhoneCount());
                    StringBuffer stringBuffer2 = new StringBuffer("");
                    stringBuffer2.append("meid1").append(":").append(telephonyManager.getMeid(0));
                    TestInfoFragmentSprd.this.mUiHandler.sendMessage(TestInfoFragmentSprd.this.mUiHandler.obtainMessage(message.what, 0, 0, stringBuffer2.toString()));
                    return;
                }
                return;
            }
            EngSqlite engSqlite = EngSqlite.getInstance(TestInfoFragmentSprd.this.mContext);
            int iQuerySystemFailCount = engSqlite.querySystemFailCount();
            int iQuerySystemNotTestCount = engSqlite.querySystemNotTestCount();
            Log.d(TestInfoFragmentSprd.TAG, "failCount: " + iQuerySystemFailCount + "notTestCount: " + iQuerySystemNotTestCount);
            StringBuilder sb = new StringBuilder("");
            if (iQuerySystemFailCount > 0) {
                ArrayList<TestItem> testItemList = UnitTestItemList.getInstance(TestInfoFragmentSprd.this.mContext).getTestItemList();
                for (int i4 = 0; i4 < testItemList.size(); i4++) {
                    if (engSqlite.getTestListItemStatus(testItemList.get(i4).getTestClassName()) == 0) {
                        sb.append((i4 + 1) + "  " + testItemList.get(i4).getTestName() + "  Failed\n");
                    }
                }
                string = sb.toString();
            } else {
                string = iQuerySystemNotTestCount > 0 ? "Not Test" : "All Pass";
            }
            TestInfoFragmentSprd.this.mUiHandler.sendMessage(TestInfoFragmentSprd.this.mUiHandler.obtainMessage(message.what, 0, 0, string));
        }
    }

    private boolean checkStationTested() {
        PhaseCheckParse phaseCheckParse = PhaseCheckParse.getInstance();
        String stationResult = phaseCheckParse.getStationResult(IStationCheck.STATION_MMI_F);
        String stationResult2 = phaseCheckParse.getStationResult(IStationCheck.STATION_MMI1);
        String stationResult3 = phaseCheckParse.getStationResult(IStationCheck.STATION_MMI2);
        return stationResult.equals("PASS") || stationResult.equals(SocketUtils.FAIL) || stationResult2.equals("PASS") || stationResult2.equals(SocketUtils.FAIL) || stationResult3.equals("PASS") || stationResult3.equals(SocketUtils.FAIL);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.test_info, viewGroup, false);
    }

    private void init(View view) {
        this.mSNtxt = (TextView) view.findViewById(R.id.testinfo_sn);
        this.mSNtxtInfo = (TextView) view.findViewById(R.id.test_info_sn_dec);
        this.mIMEItxt = (TextView) view.findViewById(R.id.testinfo_imei);
        this.mIMEItxtInfo = (TextView) view.findViewById(R.id.test_info_imei_dec);
        this.mMEIDtxt = (TextView) view.findViewById(R.id.testinfo_meid);
        this.mMEIDtextInfo = (TextView) view.findViewById(R.id.test_info_meid_dec);
        this.mBLTtxt = (TextView) view.findViewById(R.id.testinfo_blt);
        this.mBLTtxtInfo = (TextView) view.findViewById(R.id.test_info_blt_dec);
        this.mWIFItxt = (TextView) view.findViewById(R.id.testinfo_wifi);
        this.mWIFItxtInfo = (TextView) view.findViewById(R.id.test_info_wifi_dec);
        this.mCHECKtxt = (TextView) view.findViewById(R.id.testinfo_phase);
        this.mCHECKtxtInfo = (TextView) view.findViewById(R.id.test_info_phase_dec);
        this.mTesttxt = (TextView) view.findViewById(R.id.testinfo_test);
        this.mTesttxtInfo = (TextView) view.findViewById(R.id.test_info_test_dec);
        this.mQRCodeImageView = (ImageView) view.findViewById(R.id.testinfo_qrcode);
        Intent intent = this.mContext.getIntent();
        if (intent != null) {
            this.mIsTested = intent.getBooleanExtra(ValidationToolsMainActivity.IS_SYSTEM_TESTED, false);
        }
        setTxtInfo();
        this.mMEIDtxt.setVisibility(8);
        this.mMEIDtextInfo.setVisibility(8);
    }

    private void setTxtInfo() {
        this.mTestInfoHandler.sendEmptyMessage(0);
        this.mTestInfoHandler.sendEmptyMessage(1);
        this.mTestInfoHandler.sendEmptyMessage(6);
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        String address = defaultAdapter.getAddress();
        Log.d(TAG, "setTxtInfo localAddress=" + address + ",mShowBTOff=" + this.mShowBTOff);
        if (this.mShowBTOff && defaultAdapter.getState() != 12) {
            this.mBLTtxtInfo.setText("BT off!");
        } else {
            this.mBLTtxtInfo.setText(address);
        }
        new AsyncTask<Void, Void, String>() { // from class: com.sprd.validationtools.difference.fragment.TestInfoFragmentSprd.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public String doInBackground(Void... voidArr) {
                WifiManager wifiManager = (WifiManager) TestInfoFragmentSprd.this.mContext.getSystemService("wifi");
                String macAddress = new WifiTestUtil(wifiManager).getMacAddress(TestInfoFragmentSprd.this.mContext);
                if (TextUtils.isEmpty(macAddress)) {
                    WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                    macAddress = connectionInfo == null ? "Wlan off!" : connectionInfo.getMacAddress();
                    Log.d(TestInfoFragmentSprd.TAG, "getMacAddress=" + macAddress);
                }
                return macAddress;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(String str) {
                Log.d(TestInfoFragmentSprd.TAG, "macAddress=" + str);
                if (TestInfoFragmentSprd.this.mWIFItxtInfo != null) {
                    TestInfoFragmentSprd.this.mWIFItxtInfo.setText(str);
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        this.mTestInfoHandler.sendEmptyMessage(4);
        this.mTestInfoHandler.sendEmptyMessage(5);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws ReflectUtils.ReflectException {
        super.onViewCreated(view, bundle);
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        this.mTestInfoHandler = new TestInfoHandler(handlerThread.getLooper());
        init(view);
        if (this.mShowBTOff) {
            this.mContext.registerReceiver(this.mReceiver, makeFilter());
        }
        Log.d(TAG, "onCreate SUPPORT_QRCODE=true");
        new AsyncTask<Void, Void, Bitmap>() { // from class: com.sprd.validationtools.difference.fragment.TestInfoFragmentSprd.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Bitmap doInBackground(Void... voidArr) throws JSONException, Resources.NotFoundException {
                String testInfoQRCode = new TestInfoQRCode().getTestInfoQRCode(TestInfoFragmentSprd.this.mContext);
                int dimensionPixelSize = TestInfoFragmentSprd.this.mContext.getResources().getDimensionPixelSize(R.dimen.qrcode_bitmap_width);
                int dimensionPixelSize2 = TestInfoFragmentSprd.this.mContext.getResources().getDimensionPixelSize(R.dimen.qrcode_bitmap_height);
                Log.d(TestInfoFragmentSprd.TAG, "onCreate width=" + dimensionPixelSize + ",height=" + dimensionPixelSize2);
                return ZXingUtils.createQRImage(testInfoQRCode, dimensionPixelSize, dimensionPixelSize2);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                super.onPostExecute((AnonymousClass3) bitmap);
                if (TestInfoFragmentSprd.this.mQRCodeImageView != null) {
                    TestInfoFragmentSprd.this.mQRCodeImageView.setImageBitmap(bitmap);
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        this.mWifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        this.mBtTestUtil = new BtTestUtil() { // from class: com.sprd.validationtools.difference.fragment.TestInfoFragmentSprd.4
            @Override // com.sprd.validationtools.utils.BtTestUtil
            public void btDeviceListAdd(BluetoothDevice bluetoothDevice) {
            }

            @Override // com.sprd.validationtools.utils.BtTestUtil
            public void btDiscoveryFinished() {
            }

            @Override // com.sprd.validationtools.utils.BtTestUtil
            public void btStateChange(int i) {
                if (i != 12) {
                    return;
                }
                String address = BluetoothAdapter.getDefaultAdapter().getAddress();
                Log.d(TestInfoFragmentSprd.TAG, "btStateChange localAddress=" + address + ",mShowBTOff=" + TestInfoFragmentSprd.this.mShowBTOff);
                TestInfoFragmentSprd.this.mBLTtxtInfo.setText(address);
            }
        };
        this.mWifiTestUtil = new WifiTestUtil(this.mWifiManager) { // from class: com.sprd.validationtools.difference.fragment.TestInfoFragmentSprd.5
            @Override // com.sprd.validationtools.utils.WifiTestUtil
            public void wifiDeviceListChange(List<ScanResult> list) {
            }

            @Override // com.sprd.validationtools.utils.WifiTestUtil
            public void wifiStateChange(int i) {
                Log.d(TestInfoFragmentSprd.TAG, "wifiStateChange newState=" + i);
                if (i != 3) {
                    return;
                }
                String macAddress = getMacAddress(TestInfoFragmentSprd.this.mContext);
                if (TextUtils.isEmpty(macAddress)) {
                    WifiInfo connectionInfo = TestInfoFragmentSprd.this.mWifiManager.getConnectionInfo();
                    macAddress = connectionInfo == null ? "Wlan off!" : connectionInfo.getMacAddress();
                }
                Log.d(TestInfoFragmentSprd.TAG, "macAddress=" + macAddress);
                if (TestInfoFragmentSprd.this.mWIFItxtInfo != null) {
                    TestInfoFragmentSprd.this.mWIFItxtInfo.setText(macAddress);
                }
            }
        };
        BtTestUtil btTestUtil = this.mBtTestUtil;
        if (btTestUtil != null) {
            btTestUtil.startTest(this.mContext);
        }
        WifiTestUtil wifiTestUtil = this.mWifiTestUtil;
        if (wifiTestUtil != null) {
            wifiTestUtil.startTest(this.mContext);
        }
        Button button = (Button) view.findViewById(R.id.back_bt);
        this.backBT = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.difference.fragment.TestInfoFragmentSprd.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                TestInfoFragmentSprd.this.mContext.finish();
            }
        });
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        BroadcastReceiver broadcastReceiver;
        if (this.mTestInfoHandler != null) {
            Log.d(TAG, "HandlerThread has quit");
            this.mTestInfoHandler.getLooper().quit();
        }
        if (this.mShowBTOff && (broadcastReceiver = this.mReceiver) != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
        }
        BtTestUtil btTestUtil = this.mBtTestUtil;
        if (btTestUtil != null) {
            btTestUtil.stopTest();
        }
        WifiTestUtil wifiTestUtil = this.mWifiTestUtil;
        if (wifiTestUtil != null) {
            wifiTestUtil.stopTest();
        }
        super.onDestroyView();
    }
}
