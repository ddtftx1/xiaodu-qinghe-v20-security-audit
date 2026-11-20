package com.sprd.validationtools.itemstest.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioSystem;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.Const;
import com.sprd.validationtools.Constant;
import com.sprd.validationtools.R;
import com.sprd.validationtools.nonpublic.AudioManagerProxy;
import com.sprd.validationtools.utils.FileUtils;
import com.sprd.validationtools.utils.IATUtils;
import com.sprd.validationtools.utils.ValidationToolsUtils;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class HeadSetTest extends BaseActivity {
    private static final String HEADSET_NAME_PATH = "/sys/class/switch/h2w/name";
    private static final String HEADSET_UEVENT_MATCH = "DEVPATH=/devices/virtual/switch/h2w";
    private static final int STEP_INSERT_HEADSET = 1;
    private static final int STEP_LOOPBACK = 3;
    private static final int STEP_NONE = 0;
    private static final int STEP_PRESS_HEADSET_KEY = 2;
    private static final String TAG = "HeadSetTest";
    private static final int mNormalColor = -65536;
    private static final int mPassColor = -16711936;
    public Handler mHandler = new Handler();
    private boolean isRollbackStarted = false;
    private TextView mInsertHeadsetNotice = null;
    private TextView mPressHeadsetKey = null;
    private TextView mLoopbackTest = null;
    private Button mEarKey = null;
    private boolean mIsThirdPartHeadset = false;
    private AudioManagerProxy mAudioManagerProxy = null;
    private boolean mAudioWhaleHalFlag = false;
    private boolean mIsPausing = false;
    private BroadcastReceiver earphonePluginReceiver = new BroadcastReceiver() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null) {
                return;
            }
            Log.d(HeadSetTest.TAG, "earphonePluginReceiver action : " + intent.getAction());
            if (intent.getAction().equalsIgnoreCase("android.intent.action.HEADSET_PLUG")) {
                int intExtra = intent.getIntExtra("state", 0);
                Log.d(HeadSetTest.TAG, "state = " + intExtra);
                int intExtra2 = intent.getIntExtra("microphone", 0);
                Log.d(HeadSetTest.TAG, "microphone = " + intExtra2);
                HeadSetTest.this.mIsThirdPartHeadset = intExtra2 == 0;
                if (intExtra > 0) {
                    HeadSetTest.this.step(1);
                } else if (intExtra == 0) {
                    HeadSetTest.this.step(0);
                    HeadSetTest.this.rollbackMmiAudio();
                    HeadSetTest.this.isRollbackStarted = false;
                    HeadSetTest.this.setPassBtnEnabled(false);
                }
            }
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.headset_test);
        this.mAudioWhaleHalFlag = ValidationToolsUtils.isSupportAGDSP(getApplicationContext());
        Log.d(TAG, "onCreate mAudioWhaleHalFlag=" + this.mAudioWhaleHalFlag);
        this.mAudioManagerProxy = new AudioManagerProxy(getApplicationContext());
        this.mInsertHeadsetNotice = (TextView) findViewById(R.id.tx_insert_headset);
        this.mPressHeadsetKey = (TextView) findViewById(R.id.tx_press_earkey);
        this.mLoopbackTest = (TextView) findViewById(R.id.tx_start_phoneloop);
        Button button = (Button) findViewById(R.id.btn_earkey);
        this.mEarKey = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.d(HeadSetTest.TAG, "onClick isRollbackStarted=" + HeadSetTest.this.isRollbackStarted);
                if (HeadSetTest.this.isRollbackStarted) {
                    return;
                }
                HeadSetTest.this.step(2);
                HeadSetTest.this.startMmiAudio();
                HeadSetTest.this.isRollbackStarted = true;
                HeadSetTest.this.setPassBtnEnabled(true);
            }
        });
        step(0);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void step(int i) {
        if (i == 0) {
            this.mInsertHeadsetNotice.setTextColor(-65536);
            this.mPressHeadsetKey.setTextColor(-65536);
            this.mLoopbackTest.setTextColor(-65536);
            this.mEarKey.setEnabled(false);
            return;
        }
        if (i == 1) {
            this.mInsertHeadsetNotice.setTextColor(mPassColor);
            this.mPressHeadsetKey.setTextColor(-65536);
            this.mLoopbackTest.setTextColor(-65536);
            this.mEarKey.setEnabled(true);
            return;
        }
        if (i == 2) {
            this.mInsertHeadsetNotice.setTextColor(mPassColor);
            this.mPressHeadsetKey.setTextColor(mPassColor);
            this.mLoopbackTest.setTextColor(-65536);
            this.mEarKey.setEnabled(false);
            return;
        }
        if (i != 3) {
            return;
        }
        this.mInsertHeadsetNotice.setTextColor(mPassColor);
        this.mPressHeadsetKey.setTextColor(mPassColor);
        this.mLoopbackTest.setTextColor(mPassColor);
        this.mEarKey.setEnabled(false);
        setPassBtnEnabled(true);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mIsPausing = false;
        Log.d(TAG, "onResume isRollbackStarted=" + this.isRollbackStarted);
        if (this.isRollbackStarted) {
            step(2);
            startMmiAudio();
            this.isRollbackStarted = false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        registerReceiver(this.earphonePluginReceiver, intentFilter);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mIsPausing = true;
        rollbackMmiAudio();
        this.isRollbackStarted = false;
        unregisterReceiver(this.earphonePluginReceiver);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 79) {
            Log.d(TAG, "onKeyDown isRollbackStarted=" + this.isRollbackStarted);
            Log.d(TAG, "onKeyDown isRollbackStarted=" + isDestroyed() + ",isFinishing()=" + isFinishing() + this.mIsPausing);
            if (isDestroyed() || isFinishing() || this.mIsPausing) {
                return super.onKeyDown(i, keyEvent);
            }
            if (!this.isRollbackStarted) {
                step(2);
                startMmiAudio();
                this.isRollbackStarted = true;
                this.mEarKey.setPressed(true);
            }
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 79) {
            this.mEarKey.setPressed(false);
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    private boolean isHeadsetExists() {
        return FileUtils.getIntFromFile(Const.HEADSET_STATE_PATH) > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.sprd.validationtools.itemstest.audio.HeadSetTest$4] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.sprd.validationtools.itemstest.audio.HeadSetTest$3] */
    public void startMmiAudio() {
        if (Constant.currentPlatform.equals(Constant.MEDIATEK)) {
            startMmiAudioMtk();
            return;
        }
        Log.d(TAG, "startMmiAudio");
        if (!this.mAudioWhaleHalFlag) {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.3
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    String strSendATCmd;
                    Log.d(HeadSetTest.TAG, "mIsThirdPartHeadset = " + HeadSetTest.this.mIsThirdPartHeadset);
                    if (HeadSetTest.this.mIsThirdPartHeadset) {
                        strSendATCmd = IATUtils.sendATCmd("AT+SPVLOOP=1,4,8,2,3,0", "atchannel0");
                    } else {
                        strSendATCmd = IATUtils.sendATCmd("AT+SPVLOOP=1,2,8,2,3,0", "atchannel0");
                    }
                    if (!strSendATCmd.contains(IATUtils.AT_OK)) {
                        HeadSetTest.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                HeadSetTest.this.step(2);
                                Toast.makeText(HeadSetTest.this, "PhoneLoopBack Init Fail!", 0).show();
                            }
                        });
                    } else {
                        HeadSetTest.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.3.2
                            @Override // java.lang.Runnable
                            public void run() {
                                HeadSetTest.this.step(3);
                            }
                        });
                    }
                }
            }.start();
        } else {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.4
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                    if (HeadSetTest.this.mIsThirdPartHeadset) {
                        HeadSetTest.this.mAudioManagerProxy.setParameters("test_out_stream_route=0x8");
                        HeadSetTest.this.mAudioManagerProxy.setParameters("test_in_stream_route=0x80000004");
                    } else {
                        HeadSetTest.this.mAudioManagerProxy.setParameters("test_out_stream_route=0x4");
                        HeadSetTest.this.mAudioManagerProxy.setParameters("test_in_stream_route=0x80000010");
                    }
                    HeadSetTest.this.mAudioManagerProxy.setParameters("dsp_delay=2000");
                    HeadSetTest.this.mAudioManagerProxy.setParameters("dsploop_type=1");
                    HeadSetTest.this.mAudioManagerProxy.setParameters("dsp_loop=1");
                    HeadSetTest.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            HeadSetTest.this.step(3);
                        }
                    });
                }
            }.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.sprd.validationtools.itemstest.audio.HeadSetTest$6] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.sprd.validationtools.itemstest.audio.HeadSetTest$5] */
    public void rollbackMmiAudio() {
        if (Constant.currentPlatform.equals(Constant.MEDIATEK)) {
            rollbackMmiAudioMtk();
            return;
        }
        Log.d(TAG, "rollbackMmiAudio");
        if (!this.mAudioWhaleHalFlag) {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.5
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Log.d(HeadSetTest.TAG, IATUtils.sendATCmd("AT+SPVLOOP=0,2,8,2,3,0", "atchannel0"));
                }
            }.start();
        } else {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.6
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                    HeadSetTest.this.mAudioManagerProxy.setParameters("dsp_loop=0");
                }
            }.start();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.sprd.validationtools.itemstest.audio.HeadSetTest$7] */
    private void startMmiAudioMtk() {
        Log.d(TAG, "=== startMmiAudio() ===");
        new Thread() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.7
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                AudioSystem.setParameters("SET_LOOPBACK_TYPE=0");
                AudioSystem.setParameters("SET_LOOPBACK_TYPE=22,2");
                HeadSetTest.this.mHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        HeadSetTest.this.step(3);
                    }
                });
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.sprd.validationtools.itemstest.audio.HeadSetTest$8] */
    private void rollbackMmiAudioMtk() {
        Log.d(TAG, "=== rollbackMmiAudio() ===");
        new Thread() { // from class: com.sprd.validationtools.itemstest.audio.HeadSetTest.8
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                AudioSystem.setParameters("SET_LOOPBACK_TYPE=0");
            }
        }.start();
    }

    public static boolean isSupport(Context context) throws Throwable {
        if (!Const.isAutoTestMode()) {
            return true;
        }
        int intFromFile = FileUtils.getIntFromFile(Const.HEADSET_STATE_PATH);
        Log.d(TAG, "HeadSet=" + intFromFile);
        return intFromFile > 0;
    }
}
