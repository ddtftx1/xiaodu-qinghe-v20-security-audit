package com.sprd.validationtools.instructions;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class KeyBoxTest extends Activity {
    private static final int GET_KEY_BOX_FAILED = 0;
    private static final int GET_KEY_BOX_SUCCESS = 1;
    private static final String TAG = "KeyBoxTest";
    private TextView keybox_test_result;
    private int mKeyBoxValue = -1;
    private PhaseCheckParse mPhaseCheckParse = null;
    private Handler mHandler = new Handler() { // from class: com.sprd.validationtools.instructions.KeyBoxTest.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                KeyBoxTest.this.keybox_test_result.setText("KeyBox Id has not been written!");
                Toast.makeText(KeyBoxTest.this, "failed", 0).show();
                KeyBoxTest.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.instructions.KeyBoxTest.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        KeyBoxTest.this.finish();
                    }
                }, 2000L);
            } else {
                if (i == 1) {
                    KeyBoxTest.this.keybox_test_result.setText("KeyBox Id has been written!");
                    Toast.makeText(KeyBoxTest.this, "success", 0).show();
                    KeyBoxTest.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.instructions.KeyBoxTest.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            KeyBoxTest.this.finish();
                        }
                    }, 2000L);
                    return;
                }
                Log.d(KeyBoxTest.TAG, "**Error**");
            }
        }
    };
    private Runnable mGetKeyBoxValueRunnable = new Runnable() { // from class: com.sprd.validationtools.instructions.KeyBoxTest.2
        @Override // java.lang.Runnable
        public void run() {
            new Thread(new Runnable() { // from class: com.sprd.validationtools.instructions.KeyBoxTest.2.1
                @Override // java.lang.Runnable
                public void run() {
                    KeyBoxTest.this.mKeyBoxValue = KeyBoxTest.this.mPhaseCheckParse.getKeyboxFlag();
                    Log.d(KeyBoxTest.TAG, "**mKeyBoxValue:**" + KeyBoxTest.this.mKeyBoxValue);
                    if (KeyBoxTest.this.mKeyBoxValue == 1) {
                        KeyBoxTest.this.mHandler.sendEmptyMessage(1);
                    } else {
                        KeyBoxTest.this.mHandler.sendEmptyMessage(0);
                    }
                }
            }).start();
        }
    };
    private Runnable mTimeOutRunnable = new Runnable() { // from class: com.sprd.validationtools.instructions.KeyBoxTest.3
        @Override // java.lang.Runnable
        public void run() {
            KeyBoxTest.this.mHandler.sendEmptyMessage(0);
        }
    };

    private int getKeyBoxFlag() {
        int keyboxFlag = this.mPhaseCheckParse.getKeyboxFlag();
        Log.d(TAG, "**getKeyboxFlag:**" + keyboxFlag);
        return keyboxFlag;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setTitle(R.string.keybox_test);
        setContentView(R.layout.keybox_test);
        getWindow().addFlags(524288);
        this.keybox_test_result = (TextView) findViewById(R.id.keybox_test_result);
        this.mPhaseCheckParse = PhaseCheckParse.getInstance();
        this.mHandler.postDelayed(this.mTimeOutRunnable, 5000L);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mHandler.postDelayed(this.mGetKeyBoxValueRunnable, 1000L);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.mHandler.removeCallbacks(this.mGetKeyBoxValueRunnable);
        this.mHandler.removeCallbacks(this.mTimeOutRunnable);
        super.onDestroy();
    }
}
