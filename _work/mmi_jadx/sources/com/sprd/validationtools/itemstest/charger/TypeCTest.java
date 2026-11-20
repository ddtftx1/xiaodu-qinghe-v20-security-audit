package com.sprd.validationtools.itemstest.charger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.TextView;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class TypeCTest extends BaseActivity {
    private static final String TAG = "TypeCTest";
    private TextView typeCinfo;
    private boolean isTypeC_0 = false;
    private boolean isTypeC_1 = false;
    private String mTypeCNode = "/sys/devices/platform/soc/soc:aon/64200000.spi/spi_master/spi4/spi4.0/64200000.spi:pmic@0:typec@380/typec_cc_polarity_role";
    public Handler mHandler = new Handler();
    private BroadcastReceiver HALLPressReceiver = new BroadcastReceiver() { // from class: com.sprd.validationtools.itemstest.charger.TypeCTest.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws IOException {
            if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                int intExtra = intent.getIntExtra("plugged", 0);
                Log.d("huangli", "plugType>>>" + intExtra);
                if (intExtra == 0) {
                    TypeCTest.this.typeCinfo.setText("type c status :type c have been removed!");
                    return;
                }
                if (intExtra == 1 || intExtra == 2 || intExtra == 4) {
                    TypeCTest typeCTest = TypeCTest.this;
                    String infoByPath = typeCTest.getInfoByPath(typeCTest.mTypeCNode);
                    if (infoByPath.contains("cc_2")) {
                        TypeCTest.this.isTypeC_0 = true;
                    } else if (infoByPath.contains("cc_1")) {
                        TypeCTest.this.isTypeC_1 = true;
                    }
                    TypeCTest.this.typeCinfo.setText("type c status :" + infoByPath);
                    if (TypeCTest.this.isTypeC_0 && TypeCTest.this.isTypeC_1) {
                        TypeCTest.this.setPassBtnEnabled(true);
                    }
                    if (TypeCTest.this.isTypeC_0 && TypeCTest.this.isTypeC_1) {
                        TypeCTest.this.storeRusult(true);
                        TypeCTest.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.charger.TypeCTest.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TypeCTest.this.finish();
                            }
                        }, 1000L);
                    }
                }
            }
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        setContentView(R.layout.hall_test);
        setTitle(R.string.typec_test);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        TextView textView = (TextView) findViewById(R.id.hall_tip);
        this.typeCinfo = textView;
        textView.setText("请将设备正反插入USB充电线");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        registerReceiver(this.HALLPressReceiver, intentFilter);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.HALLPressReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getInfoByPath(String str) throws IOException {
        Log.d(TAG, "path:" + str);
        String str2 = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(str)));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                str2 = str2 + "\n" + line;
            }
            bufferedReader.close();
        } catch (FileNotFoundException e) {
            Log.e(TAG, "FileNotFoundException");
            e.printStackTrace();
        } catch (IOException e2) {
            Log.e(TAG, "IOException");
            e2.printStackTrace();
        }
        return str2;
    }
}
