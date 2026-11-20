package com.sprd.validationtools;

import android.app.Activity;
import android.content.Context;
import android.database.SQLException;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.sprd.validationtools.sqlite.EngSqlite;
import com.sprd.validationtools.utils.ReflectUtils;

/* loaded from: classes.dex */
public class BaseActivity extends Activity {
    public static final int MISCDATA_USERSETION_OFFSET_AGING = 786476;
    public static final int MISCDATA_USERSETION_OFFSET_BASE = 786432;
    public static final int MISCDATA_USERSETION_OFFSET_RING_TUNE = 786506;
    public static final String STATION_AGING_VALUE = "AGING";
    public static final String STATION_MMIT_VALUE = "MMI";
    public static final boolean SUPPORT_WRITE_ITEM_STATION = false;
    public static final boolean SUPPORT_WRITE_STATION = true;
    private EngSqlite mEngSqlite;
    public final String TAG = getClass().getSimpleName();
    private String mTestname = null;
    private String mTestClassName = null;
    private Handler mHandler = new Handler();
    private boolean mTestResult = false;

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mTestname = getIntent().getStringExtra(Const.INTENT_PARA_TEST_NAME);
        this.mTestClassName = getIntent().getStringExtra(Const.INTENT_PARA_TEST_CLASSNAME);
        this.mEngSqlite = EngSqlite.getInstance(this);
        getWindow().addFlags(128);
        getWindow().addFlags(Integer.MIN_VALUE);
        setBrightness(255);
    }

    public void showToastShort(String str) {
        Toast.makeText(this, str, 0).show();
    }

    public void hideNavigationBar() {
        View decorView = getWindow().getDecorView();
        if (Build.VERSION.SDK_INT > 11 && Build.VERSION.SDK_INT < 19) {
            decorView.setSystemUiVisibility(8);
        } else if (Build.VERSION.SDK_INT >= 19) {
            decorView.setSystemUiVisibility(32577030);
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 3;
            getWindow().setAttributes(attributes);
        }
    }

    private void setBrightness(int i) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.screenBrightness = i * 0.003921569f;
        getWindow().setAttributes(attributes);
    }

    protected boolean setSoundEffect(boolean z) {
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        if (z) {
            audioManager.loadSoundEffects();
        } else {
            audioManager.unloadSoundEffects();
        }
        boolean z2 = Settings.System.getInt(getContentResolver(), "sound_effects_enabled", 0) == 1;
        Settings.System.putInt(getContentResolver(), "sound_effects_enabled", z ? 1 : 0);
        return z2;
    }

    protected boolean setLockSound(boolean z) {
        boolean z2 = Settings.System.getInt(getContentResolver(), "lockscreen_sounds_enabled", 0) == 1;
        Settings.System.putInt(getContentResolver(), "lockscreen_sounds_enabled", z ? 1 : 0);
        return z2;
    }

    protected boolean setAutoBrightness(boolean z) {
        boolean z2 = Settings.System.getInt(getContentResolver(), "screen_brightness_mode", 0) == 1;
        Settings.System.putInt(getContentResolver(), "screen_brightness_mode", z ? 1 : 0);
        return z2;
    }

    public int getHeight(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public int getRealHeight(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealMetrics(displayMetrics);
        } else {
            defaultDisplay.getMetrics(displayMetrics);
        }
        return displayMetrics.heightPixels;
    }

    public void displayRsultBtn(View view) {
        view.setVisibility(0);
    }

    public void unDisplayRsultBtn(View view) {
        view.setVisibility(8);
    }

    public void laterDisplayRsultBtn(final View view, int i) {
        view.setVisibility(4);
        this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.BaseActivity.1
            @Override // java.lang.Runnable
            public void run() {
                view.setVisibility(0);
            }
        }, i);
    }

    public void setPassBtnEnabled(boolean z) {
        Button button = (Button) findViewById(R.id.result_btn).findViewById(R.id.positiveButton);
        button.setText(R.string.text_pass);
        button.setBackgroundColor(-16711936);
        if (z) {
            if (button.isEnabled()) {
                return;
            }
            button.setEnabled(true);
            button.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            return;
        }
        if (button.isEnabled()) {
            button.setEnabled(false);
            button.setBackgroundColor(-1);
            button.setTextColor(-7829368);
        }
    }

    public void setFailBtnEnabled(boolean z) {
        Button button = (Button) findViewById(R.id.result_btn).findViewById(R.id.negativeButton);
        button.setText(R.string.text_fail);
        button.setBackgroundColor(SupportMenu.CATEGORY_MASK);
        if (z) {
            if (button.isEnabled()) {
                return;
            }
            button.setEnabled(true);
            button.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            return;
        }
        if (button.isEnabled()) {
            button.setEnabled(false);
            button.setBackgroundColor(-1);
            button.setTextColor(-7829368);
        }
    }

    public void initRsultBtn(View view) {
        Button button = (Button) view.findViewById(R.id.positiveButton);
        button.setText(R.string.text_pass);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.BaseActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) throws SQLException {
                BaseActivity.this.storeRusult(true);
                BaseActivity.this.finish();
            }
        });
        Button button2 = (Button) view.findViewById(R.id.negativeButton);
        button2.setText(R.string.text_fail);
        button2.setBackgroundColor(SupportMenu.CATEGORY_MASK);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.BaseActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) throws SQLException {
                BaseActivity.this.storeRusult(false);
                BaseActivity.this.finish();
            }
        });
    }

    public void storeRusult(boolean z) throws SQLException {
        Log.d(this.TAG, "storeResult classname:" + getClass().getName());
        Log.d(this.TAG, "storeResult mTestClassName:" + this.mTestClassName);
        if (TextUtils.isEmpty(this.mTestClassName)) {
            this.mTestClassName = getClass().getName();
        }
        this.mEngSqlite.updateDB(this.mTestClassName, z ? 1 : 0);
        this.mTestResult = z;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void finish() {
        setResult(0, getIntent());
        super.finish();
    }

    public void setBackgroundTestResult(boolean z) {
        this.mTestResult = z;
    }

    public void enterCameraMode() throws ReflectUtils.ReflectException {
        Log.d(this.TAG, "set mode camera");
        ReflectUtils reflectUtilsReflect = ReflectUtils.reflect("com.mediatek.pq.PictureQuality");
        reflectUtilsReflect.method("setMode", Integer.valueOf(((Integer) reflectUtilsReflect.field("MODE_CAMERA").get()).intValue()));
    }

    public void exitCameraMode() throws ReflectUtils.ReflectException {
        Log.d(this.TAG, "set mode normal");
        ReflectUtils reflectUtilsReflect = ReflectUtils.reflect("com.mediatek.pq.PictureQuality");
        reflectUtilsReflect.method("setMode", Integer.valueOf(((Integer) reflectUtilsReflect.field("MODE_NORMAL").get()).intValue()));
    }
}
