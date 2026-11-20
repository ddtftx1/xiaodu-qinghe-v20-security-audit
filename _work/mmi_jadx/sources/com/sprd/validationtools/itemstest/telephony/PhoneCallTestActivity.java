package com.sprd.validationtools.itemstest.telephony;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class PhoneCallTestActivity extends BaseActivity {
    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.phone_call_layout);
        getWindow().addFlags(524288);
        initRsultBtn(findViewById(R.id.result_btn));
        Intent intent = new Intent("android.intent.action.CALL_PRIVILEGED", Uri.parse("tel:112"));
        intent.setFlags(268435456);
        intent.putExtra("factory_mode", true);
        startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
