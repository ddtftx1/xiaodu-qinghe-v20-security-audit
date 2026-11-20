package com.sprd.validationtools.itemstest.audio;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.RadioButton;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.Const;
import com.sprd.validationtools.R;
import com.sprd.validationtools.nonpublic.AudioManagerProxy;
import com.sprd.validationtools.nonpublic.AudioSystemProxy;
import com.sprd.validationtools.utils.IATUtils;
import com.sprd.validationtools.utils.ValidationToolsUtils;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class PhoneLoopBackTest extends BaseActivity {
    private static final int LOOPBACK_MIC3_RECEIVER = 3;
    private static final int LOOPBACK_NONE = 0;
    private static final int LOOPBACK_PASS = 4;
    private static final int LOOPBACK_RECEIVER = 2;
    private static final int LOOPBACK_SPEAKER = 1;
    private static final String TAG = "PhoneLoopBackTest";
    public byte[] mPLBTestFlag = new byte[1];
    public Handler mUihandler = new Handler();
    private RadioButton mRadioSpeaker = null;
    private RadioButton mRadioReceiver = null;
    private RadioButton mRadio3Receiver = null;
    private int mCurLoopback = 0;
    private AudioManagerProxy mAudioManagerProxy = null;
    private Object mLock = new Object();
    private boolean mAudioWhaleHalFlag = false;
    private boolean mPendingPaused = false;
    private boolean mRadioOpenSuccess = false;
    private boolean mIsRefMicSupport = Const.isRefMicSupport();
    private boolean mSavedSoundEffect = false;
    private boolean mSavedLockSound = false;
    private boolean mAux3DeviceSupport = false;
    private Handler mPhoneLoopBackHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 2) {
                PhoneLoopBackTest.this.switchLoopback(2);
                if (PhoneLoopBackTest.this.mAux3DeviceSupport) {
                    PhoneLoopBackTest.this.mPhoneLoopBackHandler.sendEmptyMessageDelayed(3, 3000L);
                    return;
                } else {
                    PhoneLoopBackTest.this.mPhoneLoopBackHandler.sendEmptyMessageDelayed(4, 3000L);
                    return;
                }
            }
            if (i == 3) {
                PhoneLoopBackTest.this.switchLoopback(3);
                PhoneLoopBackTest.this.mPhoneLoopBackHandler.sendEmptyMessageDelayed(4, 3000L);
            } else {
                if (i != 4) {
                    return;
                }
                PhoneLoopBackTest phoneLoopBackTest = PhoneLoopBackTest.this;
                phoneLoopBackTest.rollbackMmiAudio(phoneLoopBackTest.mCurLoopback);
                PhoneLoopBackTest.this.storeRusult(true);
                PhoneLoopBackTest.this.finish();
            }
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        getWindow().addFlags(524288);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.micphone_test);
        setTitle(R.string.phone_loopback_test);
        this.mAudioManagerProxy = new AudioManagerProxy(getApplicationContext());
        this.mRadioSpeaker = (RadioButton) findViewById(R.id.radio_speaker);
        this.mRadioReceiver = (RadioButton) findViewById(R.id.radio_earpiece);
        this.mRadio3Receiver = (RadioButton) findViewById(R.id.radio3_earpiece);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        this.mRadioSpeaker.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneLoopBackTest.this.switchLoopback(1);
            }
        });
        this.mRadioReceiver.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneLoopBackTest.this.switchLoopback(2);
            }
        });
        this.mRadio3Receiver.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneLoopBackTest.this.switchLoopback(3);
            }
        });
        Log.d(TAG, "onCreate mAuxDeviceSupport=" + (AudioSystemProxy.DEVICE_STATE_AVAILABLE == AudioSystemProxy.getDeviceConnectionState(AudioSystemProxy.DEVICE_IN_BACK_MIC, "")));
        String parameters = this.mAudioManagerProxy.getParameters("SubMic2");
        Log.d(TAG, "getParameters result=" + parameters);
        boolean z = parameters != null && parameters.contains("SubMic2=1");
        Log.d(TAG, "onCreate mAux3DeviceSupport=" + z);
        this.mAudioWhaleHalFlag = ValidationToolsUtils.isSupportAGDSP(getApplicationContext());
        Log.d(TAG, "onCreate mAudioWhaleHalFlag=" + this.mAudioWhaleHalFlag);
        this.mRadio3Receiver.setVisibility((this.mIsRefMicSupport && z) ? 0 : 8);
        this.mSavedSoundEffect = ValidationToolsUtils.setSoundEffect(this, false);
        this.mSavedLockSound = ValidationToolsUtils.setLockSound(this, false);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mPendingPaused = false;
        startMmiAudio(this.mCurLoopback);
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.mRadioOpenSuccess) {
            rollbackMmiAudio(this.mCurLoopback);
        }
        this.mPendingPaused = true;
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest$9] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest$8] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest$7] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest$6] */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest$5] */
    public void switchLoopback(int i) {
        Log.i(TAG, "=== create thread to execute PhoneLoopBackTest switch command! ===");
        this.mRadioReceiver.setEnabled(false);
        this.mRadio3Receiver.setEnabled(false);
        this.mRadioSpeaker.setEnabled(false);
        if (!this.mAudioWhaleHalFlag) {
            if (i == 2) {
                new Thread() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.5
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        Log.d("hqw", "switch:receiver1");
                        String strSendAtCmd = IATUtils.sendAtCmd("AT+SSAM=0");
                        PhoneLoopBackTest.this.setInMac(2);
                        if (strSendAtCmd.contains(IATUtils.AT_OK)) {
                            PhoneLoopBackTest.this.mUihandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.5.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    PhoneLoopBackTest.this.mRadioSpeaker.setEnabled(true);
                                    PhoneLoopBackTest.this.mCurLoopback = 2;
                                    PhoneLoopBackTest.this.mRadioReceiver.setChecked(true);
                                    PhoneLoopBackTest.this.mRadioOpenSuccess = true;
                                    if (PhoneLoopBackTest.this.mPendingPaused) {
                                        PhoneLoopBackTest.this.rollbackMmiAudio(PhoneLoopBackTest.this.mCurLoopback);
                                    } else {
                                        Toast.makeText(PhoneLoopBackTest.this, R.string.receiver_loopback_success, 0).show();
                                    }
                                    PhoneLoopBackTest.this.setPassBtnEnabled(true);
                                }
                            });
                        } else {
                            PhoneLoopBackTest.this.mUihandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.5.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (PhoneLoopBackTest.this.mPendingPaused) {
                                        return;
                                    }
                                    Toast.makeText(PhoneLoopBackTest.this, R.string.receiver_loopback_fail, 0).show();
                                }
                            });
                        }
                    }
                }.start();
                return;
            } else {
                new Thread() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.6
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        Log.d("hqw", "switch:else");
                        String strSendAtCmd = IATUtils.sendAtCmd("AT+SSAM=1");
                        PhoneLoopBackTest.this.setInMac(1);
                        if (strSendAtCmd.contains(IATUtils.AT_OK)) {
                            PhoneLoopBackTest.this.mUihandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.6.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    PhoneLoopBackTest.this.mRadioReceiver.setEnabled(true);
                                    PhoneLoopBackTest.this.mCurLoopback = 1;
                                    PhoneLoopBackTest.this.mRadioSpeaker.setChecked(true);
                                    PhoneLoopBackTest.this.mRadioOpenSuccess = true;
                                    if (PhoneLoopBackTest.this.mPendingPaused) {
                                        PhoneLoopBackTest.this.rollbackMmiAudio(PhoneLoopBackTest.this.mCurLoopback);
                                    } else {
                                        Toast.makeText(PhoneLoopBackTest.this, R.string.speaker_loopback_success, 0).show();
                                    }
                                    PhoneLoopBackTest.this.setPassBtnEnabled(true);
                                }
                            });
                        } else {
                            PhoneLoopBackTest.this.mUihandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.6.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (PhoneLoopBackTest.this.mPendingPaused) {
                                        return;
                                    }
                                    Toast.makeText(PhoneLoopBackTest.this, R.string.speaker_loopback_fail, 0).show();
                                }
                            });
                        }
                    }
                }.start();
                return;
            }
        }
        if (i == 2) {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.7
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                    Log.d("hqw", "switch:receiver2");
                    Log.d(PhoneLoopBackTest.TAG, "audio whale loopback, LOOPBACK_RECEIVER");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsp_loop=0");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("mmitest=on");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("test_out_stream_route=0x1");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("test_in_stream_route=0x80000080");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsploop_type=1");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsp_loop=1");
                    PhoneLoopBackTest.this.mRadioOpenSuccess = true;
                    PhoneLoopBackTest.this.mUihandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PhoneLoopBackTest.this.mRadioSpeaker.setEnabled(true);
                            PhoneLoopBackTest.this.mRadio3Receiver.setEnabled(true);
                            PhoneLoopBackTest.this.mCurLoopback = 2;
                            PhoneLoopBackTest.this.mRadioReceiver.setChecked(true);
                            if (!PhoneLoopBackTest.this.mPendingPaused) {
                                Toast.makeText(PhoneLoopBackTest.this, R.string.receiver_loopback_success, 0).show();
                            }
                            PhoneLoopBackTest.this.setPassBtnEnabled(true);
                        }
                    });
                }
            }.start();
        } else if (i == 3) {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.8
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                    Log.d(PhoneLoopBackTest.TAG, "audio whale loopback, LOOPBACK_MIC3_RECEIVER");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsp_loop=0");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("test_out_stream_route=0x2");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("test_in_stream_route=0x90000000");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsploop_type=1");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsp_loop=1");
                    PhoneLoopBackTest.this.mRadioOpenSuccess = true;
                    PhoneLoopBackTest.this.mUihandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PhoneLoopBackTest.this.mRadioSpeaker.setEnabled(true);
                            PhoneLoopBackTest.this.mRadioReceiver.setEnabled(true);
                            PhoneLoopBackTest.this.mCurLoopback = 3;
                            PhoneLoopBackTest.this.mRadio3Receiver.setChecked(true);
                            if (!PhoneLoopBackTest.this.mPendingPaused) {
                                Toast.makeText(PhoneLoopBackTest.this, R.string.receiver3_loopback_success, 0).show();
                            }
                            PhoneLoopBackTest.this.setPassBtnEnabled(true);
                        }
                    });
                }
            }.start();
        } else {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.9
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                    Log.d("hqw", "switch:else2");
                    Log.d(PhoneLoopBackTest.TAG, "audio whale loopback, LOOPBACK_SPEAKER");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsp_loop=0");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("test_out_stream_route=0x2");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("test_in_stream_route=0x80000004");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsploop_type=1");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsp_loop=1");
                    PhoneLoopBackTest.this.mRadioOpenSuccess = true;
                    PhoneLoopBackTest.this.mUihandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PhoneLoopBackTest.this.mRadioReceiver.setEnabled(true);
                            PhoneLoopBackTest.this.mRadio3Receiver.setEnabled(true);
                            PhoneLoopBackTest.this.mCurLoopback = 1;
                            PhoneLoopBackTest.this.mRadioSpeaker.setChecked(true);
                            if (!PhoneLoopBackTest.this.mPendingPaused) {
                                Toast.makeText(PhoneLoopBackTest.this, R.string.speaker_loopback_success, 0).show();
                            }
                            PhoneLoopBackTest.this.setPassBtnEnabled(true);
                        }
                    });
                }
            }.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setInMac(int i) {
        String strSendAtCmd;
        if (i == 1) {
            Log.d("hqw", "setInMac:SPEAKER");
            strSendAtCmd = IATUtils.sendAtCmd("AT+SPVLOOP=4,,,,,,2,1");
        } else {
            Log.d("hqw", "setInMac:else");
            strSendAtCmd = IATUtils.sendAtCmd("AT+SPVLOOP=4,,,,,,1,1");
        }
        return strSendAtCmd != null && strSendAtCmd.length() >= 0 && IATUtils.AT_OK.contains(strSendAtCmd);
    }

    /* JADX WARN: Type inference failed for: r2v7, types: [com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest$11] */
    /* JADX WARN: Type inference failed for: r2v8, types: [com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest$10] */
    private void startMmiAudio(int i) {
        Log.d("hqw", "startMmiAudio");
        Log.i(TAG, "=== create thread to execute PhoneLoopBackTest start command! ===");
        this.mRadioReceiver.setEnabled(false);
        this.mRadio3Receiver.setEnabled(false);
        this.mRadioSpeaker.setEnabled(false);
        if (!this.mAudioWhaleHalFlag) {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.10
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        sleep(1500L);
                    } catch (Exception unused) {
                    }
                    String strSendAtCmd = IATUtils.sendAtCmd("AT+SPVLOOP=1,0,8,2,3,0");
                    PhoneLoopBackTest.this.setInMac(1);
                    if (strSendAtCmd.contains(IATUtils.AT_OK)) {
                        PhoneLoopBackTest.this.mUihandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.10.1
                            @Override // java.lang.Runnable
                            public void run() {
                                PhoneLoopBackTest.this.mRadioReceiver.setEnabled(true);
                                PhoneLoopBackTest.this.mCurLoopback = 1;
                                PhoneLoopBackTest.this.mRadioSpeaker.setChecked(true);
                                PhoneLoopBackTest.this.mRadioOpenSuccess = true;
                                if (PhoneLoopBackTest.this.mPendingPaused) {
                                    PhoneLoopBackTest.this.rollbackMmiAudio(PhoneLoopBackTest.this.mCurLoopback);
                                } else {
                                    Toast.makeText(PhoneLoopBackTest.this, R.string.speaker_loopback_open, 0).show();
                                }
                            }
                        });
                    } else {
                        PhoneLoopBackTest.this.mUihandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.10.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!PhoneLoopBackTest.this.mPendingPaused) {
                                    Toast.makeText(PhoneLoopBackTest.this, R.string.speaker_loopback_open_fail, 0).show();
                                }
                                PhoneLoopBackTest.this.setPassBtnEnabled(true);
                            }
                        });
                    }
                }
            }.start();
        } else {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.11
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                    Log.d("hqw", "startMmiAudio:else");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsp_loop=0");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("test_out_stream_route=0x2");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("test_in_stream_route=0x80000004");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsploop_type=1");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsp_loop=1");
                    PhoneLoopBackTest.this.mRadioOpenSuccess = true;
                    PhoneLoopBackTest.this.mUihandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PhoneLoopBackTest.this.mRadioReceiver.setEnabled(true);
                            PhoneLoopBackTest.this.mRadio3Receiver.setEnabled(true);
                            PhoneLoopBackTest.this.mCurLoopback = 1;
                            PhoneLoopBackTest.this.mRadioSpeaker.setChecked(true);
                            if (PhoneLoopBackTest.this.mPendingPaused) {
                                return;
                            }
                            Toast.makeText(PhoneLoopBackTest.this, R.string.speaker_loopback_open, 0).show();
                        }
                    });
                }
            }.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest$14] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest$13] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest$12] */
    public void rollbackMmiAudio(int i) {
        Log.i(TAG, "=== create thread to execute PhoneLoopBackTest stop command! loopbackType =" + i);
        if (this.mAudioWhaleHalFlag) {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.14
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("dsp_loop=0");
                    PhoneLoopBackTest.this.mAudioManagerProxy.setParameters("mmitest=off");
                }
            }.start();
        } else if (i == 2) {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.12
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Log.d("hqw", "rollbackMmiAudio:RECEIVER");
                    Log.d(PhoneLoopBackTest.TAG, IATUtils.sendAtCmd("AT+SPVLOOP=0,0,8,2,3,0"));
                }
            }.start();
        } else {
            new Thread() { // from class: com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest.13
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Log.d("hqw", "rollbackMmiAudio:else");
                    Log.d(PhoneLoopBackTest.TAG, IATUtils.sendAtCmd("AT+SPVLOOP=0,1,8,2,3,0"));
                }
            }.start();
        }
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        ValidationToolsUtils.setSoundEffect(this, this.mSavedSoundEffect);
        ValidationToolsUtils.setLockSound(this, this.mSavedLockSound);
        super.onDestroy();
    }
}
