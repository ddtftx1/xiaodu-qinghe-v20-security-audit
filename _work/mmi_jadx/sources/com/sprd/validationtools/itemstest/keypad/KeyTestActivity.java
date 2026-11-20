package com.sprd.validationtools.itemstest.keypad;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.util.Log;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.widget.ImageButton;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.SocketUtils;

/* loaded from: classes.dex */
public class KeyTestActivity extends BaseActivity {
    private static final int FINGER_KEY = 87;
    private static final int POWER_KEY = 128;
    private static final String TAG = "KeyTestActivity";
    private static final int VDO_KEY = 32;
    private static final int VUP_KEY = 8;
    private Context mContext;
    private ImageButton mFingerButton;
    private ImageButton mPowerButton;
    private ImageButton mVolumeDownButton;
    private ImageButton mVolumeUpButton;
    private int keyPressedFlag = 0;
    private int keySupportFlag = 0;
    public Handler mHandler = new Handler();
    public boolean shouldBack = false;
    private Vibrator mVibrator = null;
    private BroadcastReceiver PowerPressReceiver = new BroadcastReceiver() { // from class: com.sprd.validationtools.itemstest.keypad.KeyTestActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.i("lixinyao", "power press");
            KeyTestActivity.this.mPowerButton.setPressed(true);
            KeyTestActivity.access$176(KeyTestActivity.this, 128);
            if (KeyTestActivity.this.keySupportFlag == KeyTestActivity.this.keyPressedFlag) {
                KeyTestActivity.this.storeRusult(true);
                Toast.makeText(KeyTestActivity.this, R.string.text_pass, 0).show();
                KeyTestActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.keypad.KeyTestActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        KeyTestActivity.this.finish();
                    }
                }, 1000L);
            }
        }
    };

    static /* synthetic */ int access$176(KeyTestActivity keyTestActivity, int i) {
        int i2 = i | keyTestActivity.keyPressedFlag;
        keyTestActivity.keyPressedFlag = i2;
        return i2;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mContext = getApplicationContext();
        getWindow().addFlags(128);
        setContentView(R.layout.key_test);
        setTitle(R.string.key_test);
        this.mVolumeUpButton = (ImageButton) findViewById(R.id.volume_up_button);
        this.mVolumeDownButton = (ImageButton) findViewById(R.id.volume_down_button);
        this.mPowerButton = (ImageButton) findViewById(R.id.power_button);
        this.mVibrator = (Vibrator) getSystemService("vibrator");
        this.keySupportFlag = 168;
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        registerReceiver(this.PowerPressReceiver, new IntentFilter("POWER_PRESS"));
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
    }

    public boolean checkDeviceHasNavigationBar(Context context) {
        boolean zDeviceHasKey = KeyCharacterMap.deviceHasKey(4);
        Log.d(TAG, "hasBackKey=:" + zDeviceHasKey);
        return zDeviceHasKey;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Log.d(TAG, "onKeyDown keyCode=" + i);
        if (24 == i) {
            this.mVolumeUpButton.setPressed(true);
            this.keyPressedFlag |= 8;
        } else if (25 == i) {
            this.mVolumeDownButton.setPressed(true);
            this.keyPressedFlag |= 32;
        } else if (26 == i) {
            this.mPowerButton.setPressed(true);
            this.keyPressedFlag |= 128;
        } else if (i == 0 || 290 == i || 281 == i || 280 == i || 141 == i || 131 == i || 21 == i || 22 == i || 19 == i || 20 == i) {
            this.mFingerButton.setPressed(true);
            this.keyPressedFlag |= FINGER_KEY;
        }
        Log.d(TAG, "onKeyDown keyPressedFlag=" + this.keyPressedFlag + "  keySupportFlag==" + this.keySupportFlag);
        if (this.keySupportFlag == this.keyPressedFlag) {
            storeRusult(true);
            Toast.makeText(this, R.string.text_pass, 0).show();
            this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.keypad.KeyTestActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    KeyTestActivity.this.finish();
                }
            }, 1000L);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return super.onKeyUp(i, keyEvent);
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        Vibrator vibrator = this.mVibrator;
        if (vibrator != null) {
            vibrator.cancel();
        }
        super.onDestroy();
        unregisterReceiver(this.PowerPressReceiver);
    }

    private boolean isSupport() {
        return ((FingerprintManager) this.mContext.getSystemService(FingerprintManager.class)).isHardwareDetected();
    }

    private void fingerLostDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.fingerprint_tips);
        builder.setMessage(R.string.fingerprint_test);
        builder.setPositiveButton(SocketUtils.OK, new DialogInterface.OnClickListener() { // from class: com.sprd.validationtools.itemstest.keypad.KeyTestActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.show();
    }
}
