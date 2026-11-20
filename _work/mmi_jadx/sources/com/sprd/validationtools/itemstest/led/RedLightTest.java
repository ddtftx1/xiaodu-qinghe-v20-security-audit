package com.sprd.validationtools.itemstest.led;

import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class RedLightTest extends BaseActivity {
    private static final String TAG = "RedLightTest";
    private TextView mContent;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.background_layout);
        this.mContent = (TextView) findViewById(R.id.lcd_content);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        setBackground();
        boolean zWriteLedlightSwitch = PhaseCheckParse.getInstance().writeLedlightSwitch(7, 1);
        Log.d(TAG, "startTestWork BlueLightTest res=" + zWriteLedlightSwitch);
        if (zWriteLedlightSwitch) {
            setPassBtnEnabled(true);
        }
    }

    private void setBackground() {
        this.mContent.setBackgroundColor(SupportMenu.CATEGORY_MASK);
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        PhaseCheckParse.getInstance().writeLedlightSwitch(7, 0);
        super.onDestroy();
    }
}
