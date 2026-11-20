package com.sprd.validationtools.itemstest.backlight;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.util.Timer;

/* loaded from: classes.dex */
public class BackLightTest extends BaseActivity {
    private static final int[] COLOR_ARRAY = {-1, ViewCompat.MEASURED_STATE_MASK};
    private static final int MAX_BRIGHTNESS = 255;
    private static final String TAG = "BackLightTest";
    private static final boolean TEST_SCREEN_LIGHT = true;
    private static final int TIMES = 5;
    TextView mContent;
    private Runnable mRunnable;
    Timer mTimer;
    PowerManager mPowerManager = null;
    private boolean isShowNavigationBar = false;
    private int mIndex = 0;
    private int mCount = 0;
    private Handler mUiHandler = new Handler();

    static /* synthetic */ int access$108(BackLightTest backLightTest) {
        int i = backLightTest.mCount;
        backLightTest.mCount = i + 1;
        return i;
    }

    private void setScreenLight(Activity activity, int i) {
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.screenBrightness = Float.valueOf(i).floatValue() * 0.003921569f;
        activity.getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScreenLight() {
        try {
            this.mContent.setBackgroundColor(-1);
            setScreenLight(this, 255 >> this.mCount);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        setContentView(R.layout.background_layout);
        this.mContent = (TextView) findViewById(R.id.lcd_content);
        setTitle(R.string.backlight_test);
        this.mPowerManager = (PowerManager) getSystemService("power");
        this.mRunnable = new Runnable() { // from class: com.sprd.validationtools.itemstest.backlight.BackLightTest.1
            @Override // java.lang.Runnable
            public void run() {
                BackLightTest.this.startScreenLight();
                BackLightTest.access$108(BackLightTest.this);
                BackLightTest.this.setBackground();
            }
        };
        setBackground();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBackground() {
        if (this.mCount > 5) {
            setScreenLight(this, 127);
            initRsultBtn(findViewById(R.id.result_btn));
            displayRsultBtn(findViewById(R.id.result_btn));
            setPassBtnEnabled(true);
            return;
        }
        this.mUiHandler.postDelayed(this.mRunnable, 1000L);
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        this.mUiHandler.removeCallbacks(this.mRunnable);
        super.onDestroy();
    }
}
