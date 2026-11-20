package com.sprd.validationtools;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.StatusBarManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.sprd.validationtools.difference.station.IStationCheck;
import com.sprd.validationtools.difference.station.StationFactory;
import com.sprd.validationtools.itemstest.ListItemTestActivity;
import com.sprd.validationtools.testinfo.TestInfoMainActivity;
import java.util.Locale;

/* loaded from: classes.dex */
public class ValidationToolsMainActivity extends Activity implements AdapterView.OnItemClickListener {
    private static final int ADB_DEBUGGING = 6;
    public static String CHECK_STATION = "BBAT";
    private static final String CHECK_STATION_FT = "FT";
    private static final String CHECK_STATION_MMI_F = "MMIF";
    private static final int FULL_TEST = 0;
    public static final String IS_SYSTEM_TESTED = "is_system_tested";
    private static final int RESET = 5;
    private static final String STATION_AGING = "AGING";
    private static final String STATION_BBAT = "BBAT";
    private static final String STATION_MAT = "MTA";
    private static final String STATION_MMI1 = "MMI1";
    private static final String STATION_MMI2 = "MMI2";
    private static final String STATION_MMI_F = "MMIF";
    private static final String STATION_SMTCHECK = "SMTCHECK";
    private static final String TAG = "ValidationToolsMainActivity";
    private static final int TEST_INFO = 3;
    private static final int TOUCH_TEST = 2;
    private static final int TP_INFO = 4;
    private static final int UNIT_TEST = 1;
    private static Context mContext = null;
    private static final int sWidgetsToDisable = 19333120;
    public static String test_station = "MMI1";
    private Button backBT;
    private String[] mListItemString;
    private ListView mListView;
    private SharedPreferences mPrefs;
    private int mUserId;
    private IStationCheck stationCheck;
    private boolean mIgnore = false;
    private boolean mIsTested = false;
    private ArrayAdapter<String> mArrayAdapter = null;
    private String barcodeData = " ";

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Log.d(TAG, "oncreate start!");
        super.onCreate(bundle);
        Log.d(TAG, "App version = 1.0_20230626");
        setContentView(R.layout.activity_validation_tools_main);
        this.mListItemString = new String[]{getString(R.string.full_test), getString(R.string.item_test), getString(R.string.touch_test), getString(R.string.test_info), getString(R.string.tp_version_tile)};
        this.mListView = (ListView) findViewById(R.id.ValidationToolsList);
        this.mArrayAdapter = new ArrayAdapter<>(this, R.layout.simple_list_item, this.mListItemString);
        Button button = (Button) findViewById(R.id.back_bt);
        this.backBT = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.ValidationToolsMainActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ValidationToolsMainActivity.this.finish();
            }
        });
        this.mListView.setAdapter((ListAdapter) this.mArrayAdapter);
        this.mListView.setOnItemClickListener(this);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.mPrefs = defaultSharedPreferences;
        this.mIsTested = defaultSharedPreferences.getBoolean(IS_SYSTEM_TESTED, false);
        this.mUserId = UserHandle.myUserId();
        Window window = getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.addFlags(128);
        mContext = this;
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("station");
        test_station = stringExtra;
        if (stringExtra == null) {
            test_station = IStationCheck.STATION_MMI_F;
        }
        Log.i("station", "-------- oncreate--------" + test_station);
        Const.setStation(test_station);
        this.mIgnore = intent.getBooleanExtra("ignore", false);
        if (intent != null) {
            String stringExtra2 = intent.getStringExtra("mmi_language");
            if (stringExtra2 != null && stringExtra2.length() > 0) {
                setLanguage(stringExtra2);
            } else if (stringExtra2 == null) {
                setLanguage("en");
            }
        }
        Log.d(TAG, "barcodeData>>>" + this.barcodeData);
        Log.i(TAG, "intentbarcode:" + intent.getStringExtra("barcode"));
        IStationCheck iStationCheckCreateStationCheck = StationFactory.createStationCheck();
        this.stationCheck = iStationCheckCreateStationCheck;
        iStationCheckCreateStationCheck.initNVStation(this.barcodeData);
    }

    @Override // android.app.Activity
    public void onPause() {
        if (this.mUserId == 0) {
            saveTestInfo();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        enableStatusExpland(true);
        SystemProperties.set("persist.sys.mmitest", "false");
        super.onDestroy();
        Process.killProcess(Process.myPid());
    }

    public void saveTestInfo() {
        SharedPreferences.Editor editorEdit = this.mPrefs.edit();
        editorEdit.putBoolean(IS_SYSTEM_TESTED, this.mIsTested);
        editorEdit.apply();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        enableStatusExpland(false);
        SystemProperties.set("persist.sys.mmitest", "true");
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        if (this.mUserId != 0) {
            Toast.makeText(getApplicationContext(), R.string.multi_user_hint, 1).show();
        }
        if (Const.isFastDoubleClick(1500L)) {
            Log.d(TAG, "position:" + i + "fastdouble click");
            return;
        }
        Log.d(TAG, "position:" + i + ",id=" + j);
        if (this.mArrayAdapter != null) {
            switch (i) {
                case 0:
                    if (!this.stationCheck.isCheckStationOK(this.mIgnore)) {
                        Toast.makeText(this, getString(R.string.station_not_pass, new Object[]{CHECK_STATION}), 1).show();
                        break;
                    } else {
                        this.mIsTested = true;
                        Intent intent = new Intent(this, (Class<?>) AutoTestActivity.class);
                        intent.putExtra(IS_SYSTEM_TESTED, this.mIsTested);
                        startActivity(intent);
                        break;
                    }
                case 1:
                    startActivity(new Intent(this, (Class<?>) ListItemTestActivity.class));
                    break;
                case 2:
                    Intent intent2 = new Intent(this, (Class<?>) AutoTouchTest.class);
                    intent2.putExtra(IS_SYSTEM_TESTED, this.mIsTested);
                    startActivity(intent2);
                    break;
                case 3:
                    Intent intent3 = new Intent(this, (Class<?>) TestInfoMainActivity.class);
                    intent3.putExtra(IS_SYSTEM_TESTED, this.mIsTested);
                    startActivity(intent3);
                    break;
                case 4:
                    Intent intent4 = new Intent(this, (Class<?>) Tpinfo.class);
                    intent4.putExtra(IS_SYSTEM_TESTED, this.mIsTested);
                    startActivity(intent4);
                    break;
                case 5:
                    new AlertDialog.Builder(this).setTitle(R.string.reset).setMessage(R.string.factory_reset_message).setNegativeButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.sprd.validationtools.ValidationToolsMainActivity.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            Intent intent5 = new Intent("android.intent.action.FACTORY_RESET");
                            intent5.setPackage("android");
                            intent5.addFlags(268435456);
                            intent5.putExtra("android.intent.extra.REASON", "MasterClearConfirm");
                            intent5.putExtra("android.intent.extra.WIPE_EXTERNAL_STORAGE", false);
                            ValidationToolsMainActivity.this.sendBroadcast(intent5);
                        }
                    }).setPositiveButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                    break;
                case 6:
                    if (Constant.currentPlatform.equals(Constant.MEDIATEK)) {
                        new AlertDialog.Builder(this).setTitle(R.string.adb_debugging_enable).setMessage(R.string.adb_debugging_enable_confirm_notice).setNegativeButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.sprd.validationtools.ValidationToolsMainActivity.3
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                                Settings.Global.putInt(ValidationToolsMainActivity.this.getContentResolver(), "adb_enabled", 1);
                                Settings.Global.putInt(ValidationToolsMainActivity.this.getContentResolver(), "mmi_test", 1);
                            }
                        }).setPositiveButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        break;
                    } else {
                        SystemProperties.set("persist.sys.local.update.support", "1");
                        Settings.Global.putInt(getContentResolver(), "development_settings_enabled", 1);
                        Settings.Global.putInt(getContentResolver(), "adb_enabled", 1);
                        Settings.Global.putInt(getContentResolver(), "mmi_test", 1);
                        break;
                    }
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        finish();
    }

    public static void setLanguage(String str) {
        Context context = mContext;
        if (context == null) {
            return;
        }
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        if (str.equals("zh")) {
            configuration.locale = new Locale("zh", "CN");
        }
        if (str.equals("en")) {
            configuration.locale = new Locale("en", "");
        }
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        mContext.getSharedPreferences("spro", 0).edit().putString("auto_language", str).commit();
    }

    public void enableStatusExpland(boolean z) {
        StatusBarManager statusBarManager = (StatusBarManager) getSystemService("statusbar");
        if (z) {
            statusBarManager.disable(0);
        } else {
            statusBarManager.disable(sWidgetsToDisable);
        }
    }
}
