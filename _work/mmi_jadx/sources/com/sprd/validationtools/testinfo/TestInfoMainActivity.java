package com.sprd.validationtools.testinfo;

import android.R;
import android.app.Activity;
import android.os.Bundle;
import android.view.Window;
import com.sprd.validationtools.Constant;
import com.sprd.validationtools.difference.fragment.TestInfoFragmentMTK;
import com.sprd.validationtools.difference.fragment.TestInfoFragmentSprd;

/* loaded from: classes.dex */
public class TestInfoMainActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Constant.currentPlatform.equals(Constant.SPREADTRUM)) {
            getFragmentManager().beginTransaction().add(R.id.content, new TestInfoFragmentSprd()).commitNowAllowingStateLoss();
        } else {
            getFragmentManager().beginTransaction().add(R.id.content, new TestInfoFragmentMTK()).commitNowAllowingStateLoss();
        }
        Window window = getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.addFlags(128);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        finish();
        super.onBackPressed();
    }
}
