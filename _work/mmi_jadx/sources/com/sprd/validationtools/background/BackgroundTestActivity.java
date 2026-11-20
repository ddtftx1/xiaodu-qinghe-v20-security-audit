package com.sprd.validationtools.background;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.Const;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class BackgroundTestActivity extends BaseActivity {
    private static final String TAG = "BackgroundTestActivity";

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.background_test);
        ((TextView) findViewById(R.id.bg_test_result)).setText(getIntent().getStringExtra(Const.INTENT_BACKGROUND_TEST_RESULT));
        ((Button) findViewById(R.id.btn_retest)).setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.background.BackgroundTestActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BackgroundTestActivity.this.setBackgroundTestResult(true);
                BackgroundTestActivity.this.finish();
            }
        });
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onBackPressed() {
        finish();
    }
}
