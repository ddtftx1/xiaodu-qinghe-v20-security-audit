package com.sprd.validationtools;

import android.content.Context;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class Tpinfo extends BaseActivity {
    private static final String redfile = "/proc/sprocomm_tpInfo";
    private static final String redfileMtk = "/proc/Sprocomm_TpInfo";
    private Button backBT;
    TextView tx;
    TextView tx1;
    private PowerManager.WakeLock wakeLock = null;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IOException {
        super.onCreate(bundle);
        setContentView(R.layout.mtpinfo_layout);
        getWindow().setFlags(128, 128);
        this.tx = (TextView) findViewById(R.id.tp_version);
        this.tx1 = (TextView) findViewById(R.id.tp_factory_v);
        this.tx.setText("TP version :" + getTPinfomation());
        this.tx1.setText("TP silk :Undefined");
        this.tx1.setVisibility(8);
        Button button = (Button) findViewById(R.id.back_bt);
        this.backBT = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.Tpinfo.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Tpinfo.this.finish();
            }
        });
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        acquireWakeLock(this);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        releaseWakeLock();
    }

    public void acquireWakeLock(Context context) {
        if (this.wakeLock == null) {
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wakeup");
            this.wakeLock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.acquire();
        }
    }

    public void releaseWakeLock() {
        PowerManager.WakeLock wakeLock = this.wakeLock;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        this.wakeLock.release();
        this.wakeLock = null;
    }

    private String getTPinfomation() throws IOException {
        File file;
        String line = "";
        try {
            if (Constant.currentPlatform.equals(Constant.SPREADTRUM)) {
                file = new File(redfile);
            } else {
                file = new File(redfileMtk);
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            line = bufferedReader.readLine();
            bufferedReader.close();
            return line;
        } catch (FileNotFoundException e) {
            Log.e(this.TAG, "FileNotFoundException");
            showToastShort("/proc/sprocomm_tpInfo file not found!");
            e.printStackTrace();
            return line;
        } catch (IOException e2) {
            Log.e(this.TAG, "IOException");
            showToastShort("/proc/sprocomm_tpInfo  read IOException!");
            e2.printStackTrace();
            return line;
        }
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onBackPressed() {
        finish();
    }
}
