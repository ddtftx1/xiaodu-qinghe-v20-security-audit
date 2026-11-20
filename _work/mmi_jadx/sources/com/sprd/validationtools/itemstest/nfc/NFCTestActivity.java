package com.sprd.validationtools.itemstest.nfc;

import android.app.PendingIntent;
import android.content.Intent;
import android.nfc.NfcAdapter;
import android.nfc.NfcManager;
import android.nfc.Tag;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class NFCTestActivity extends BaseActivity {
    public static final int ACTION_TIME_OUT = 0;
    private static final String TAG = "NFCTestActivity";
    private static final int TIME_OUT = 20000;
    TextView mContent;
    public Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.nfc.NFCTestActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                Log.d(NFCTestActivity.TAG, "time out");
                NFCTestActivity.this.storeRusult(false);
                NFCTestActivity.this.finish();
            }
            super.handleMessage(message);
        }
    };
    private NfcAdapter mNfcAdapter;
    private PendingIntent mPendingIntent;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.nfc_layout);
        this.mContent = (TextView) findViewById(R.id.nfc_info);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        this.mNfcAdapter = ((NfcManager) getSystemService("nfc")).getDefaultAdapter();
        this.mPendingIntent = PendingIntent.getActivity(this, 0, new Intent(this, getClass()).addFlags(536870912), 0);
        Log.d(TAG, "onCreate");
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        Log.d(TAG, "action: " + intent.getAction());
        Tag tag = (Tag) intent.getParcelableExtra("android.nfc.extra.TAG");
        if (tag != null) {
            this.mContent.setText(tag.toString());
            Log.d(TAG, "tag:" + tag.toString());
            Toast.makeText(this, R.string.text_pass, 0).show();
            storeRusult(true);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessageDelayed(0, 20000L);
        this.mNfcAdapter.enableForegroundDispatch(this, this.mPendingIntent, null, null);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mHandler.removeMessages(0);
        this.mNfcAdapter.disableForegroundDispatch(this);
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
