package com.sprd.validationtools.itemstest.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.io.File;
import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class HeadsetTestForMmx extends BaseActivity implements MediaPlayer.OnCompletionListener {
    private static final int HEADSET_PLUG_IN = 1;
    private static final int STEP_INSERT_HEADSET = 1;
    private static final int STEP_NONE = 0;
    private static final int STEP_PLAY_RECORD = 4;
    private static final int STEP_PLAY_RECORD_DONE = 5;
    private static final int STEP_PRESS_HEADSET_KEY = 2;
    private static final int STEP_RECORD = 3;
    private static final String TAG = "HeadsetTestForMmx";
    private static final float ratio = 0.6f;
    private File file;
    AudioManager mAudioManager;
    private MediaRecorder mMediaRecorder;
    private File mRecAudioFile;
    private File mRecAudioPath;
    private TextView mHeadsetNotice = null;
    private TextView mInsertHeadset = null;
    private TextView mHeadsetMicVolume = null;
    private int mValueHeadSetPlug = 1;
    private boolean isRollbackStarted = false;
    private String strTempFile = "record_";
    private MediaPlayer mMediaPlayer = null;
    private double db = 0.0d;
    private Timer timer = null;
    private Handler myHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.audio.HeadsetTestForMmx.1
        @Override // android.os.Handler
        public void handleMessage(Message message) throws IllegalStateException, IOException {
            Log.d(HeadsetTestForMmx.TAG, "msg>>>>" + message);
            int i = message.what;
            if (i == 3) {
                HeadsetTestForMmx.this.startRecord();
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                HeadsetTestForMmx.this.myHandler.sendMessageDelayed(messageObtain, 3000L);
            } else if (i == 4) {
                HeadsetTestForMmx.this.step(4);
                HeadsetTestForMmx.this.cancelTimer();
                HeadsetTestForMmx.this.playRecord();
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 5;
                HeadsetTestForMmx.this.myHandler.sendMessageDelayed(messageObtain2, 2000L);
            } else if (i == 5) {
                HeadsetTestForMmx.this.step(5);
            }
            super.handleMessage(message);
        }
    };
    private BroadcastReceiver earphonePluginReceiver = new BroadcastReceiver() { // from class: com.sprd.validationtools.itemstest.audio.HeadsetTestForMmx.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null) {
                return;
            }
            Log.i(HeadsetTestForMmx.TAG, "earphonePluginReceiver action : " + intent.getAction());
            if (intent.getAction().equalsIgnoreCase("android.intent.action.HEADSET_PLUG")) {
                HeadsetTestForMmx.this.mValueHeadSetPlug = intent.getIntExtra("state", -1) == 1 ? 0 : 1;
                if (HeadsetTestForMmx.this.mValueHeadSetPlug == 0) {
                    HeadsetTestForMmx.this.step(1);
                } else if (HeadsetTestForMmx.this.mValueHeadSetPlug == 1) {
                    HeadsetTestForMmx.this.step(0);
                    HeadsetTestForMmx.this.isRollbackStarted = false;
                }
            }
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.headset_test_mmx);
        getWindow().setFlags(128, 128);
        this.mHeadsetNotice = (TextView) findViewById(R.id.notice_headset);
        this.mInsertHeadset = (TextView) findViewById(R.id.inseart_headset);
        TextView textView = (TextView) findViewById(R.id.mic_headset);
        this.mHeadsetMicVolume = textView;
        textView.setVisibility(8);
        this.mAudioManager = (AudioManager) getSystemService("audio");
        if (isHeadSetIn()) {
            step(1);
        } else {
            step(0);
        }
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void step(int i) {
        if (i == 0) {
            this.mHeadsetNotice.setTextColor(-16711936);
            this.mInsertHeadset.setTextColor(SupportMenu.CATEGORY_MASK);
            return;
        }
        if (i == 1) {
            this.mHeadsetNotice.setTextColor(-16711936);
            this.mInsertHeadset.setTextColor(InputDeviceCompat.SOURCE_ANY);
            return;
        }
        if (i == 3) {
            this.mHeadsetNotice.setText(getResources().getString(R.string.please_test_record_mmx));
            this.mHeadsetNotice.setTextColor(-16711936);
            this.mInsertHeadset.setTextColor(InputDeviceCompat.SOURCE_ANY);
        } else {
            if (i == 4) {
                this.mHeadsetNotice.setText(getResources().getString(R.string.please_test_playing_mmx));
                this.mHeadsetNotice.setTextColor(InputDeviceCompat.SOURCE_ANY);
                this.mInsertHeadset.setTextColor(InputDeviceCompat.SOURCE_ANY);
                setPassBtnEnabled(true);
                return;
            }
            if (i != 5) {
                return;
            }
            this.mHeadsetMicVolume.setVisibility(0);
            this.mHeadsetMicVolume.setText(getResources().getString(R.string.please_test_audio_size_mmx, ((int) this.db) + ""));
            this.mHeadsetNotice.setTextColor(-16711936);
            this.mInsertHeadset.setTextColor(InputDeviceCompat.SOURCE_ANY);
            setPassBtnEnabled(true);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        File file = new File("/sdcard/CitRecord/");
        this.file = file;
        file.mkdir();
        IntentFilter intentFilter = new IntentFilter();
        if (!this.mAudioManager.isVolumeFixed()) {
            AudioManager audioManager = this.mAudioManager;
            audioManager.setStreamVolume(3, audioManager.getStreamMaxVolume(3), 0);
        }
        AudioManager audioManager2 = this.mAudioManager;
        if (audioManager2 != null) {
            audioManager2.setMode(0);
            this.mAudioManager.setSpeakerphoneOn(true);
        }
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        registerReceiver(this.earphonePluginReceiver, intentFilter);
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.mMediaPlayer.release();
    }

    @Override // android.app.Activity
    protected void onPause() throws IllegalStateException {
        cancelTimer();
        AudioManager audioManager = this.mAudioManager;
        if (audioManager != null) {
            audioManager.setMode(0);
            this.mAudioManager.setSpeakerphoneOn(false);
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        try {
            MediaRecorder mediaRecorder = this.mMediaRecorder;
            if (mediaRecorder != null) {
                mediaRecorder.stop();
                this.mMediaRecorder.reset();
                this.mMediaRecorder.release();
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
        delete(this.file);
        unregisterReceiver(this.earphonePluginReceiver);
        this.isRollbackStarted = false;
        super.onPause();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 79) {
            Log.d(TAG, "KEYCODE_HEADSETHOOK");
            if (!this.isRollbackStarted) {
                step(3);
                Message messageObtain = Message.obtain();
                messageObtain.what = 3;
                this.myHandler.sendMessageDelayed(messageObtain, 100L);
                this.isRollbackStarted = true;
            }
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 79) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    private boolean isHeadSetIn() {
        return this.mValueHeadSetPlug == 0;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRecord() throws IllegalStateException, IOException {
        if (this.mMediaRecorder == null) {
            this.mMediaRecorder = new MediaRecorder();
        }
        try {
            this.mRecAudioFile = File.createTempFile(this.strTempFile, ".amr", this.file);
            Log.e(TAG, "mRecAudioFile=" + this.mRecAudioFile);
            this.mMediaRecorder.setAudioSource(1);
            this.mMediaRecorder.setOutputFormat(0);
            this.mMediaRecorder.setAudioEncoder(1);
            this.mMediaRecorder.setOutputFile(this.mRecAudioFile.getPath());
            this.mMediaRecorder.prepare();
            this.mMediaRecorder.start();
            startTimer();
        } catch (IOException | IllegalStateException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMicStatus() throws IllegalStateException {
        MediaRecorder mediaRecorder = this.mMediaRecorder;
        if (mediaRecorder != null) {
            int maxAmplitude = mediaRecorder.getMaxAmplitude();
            Log.d(TAG, "mMediaRecorder.getMaxAmplitude()>>>" + maxAmplitude);
            double d = maxAmplitude / 1;
            Log.d(TAG, "ratio = " + d);
            if (d > 1.0d) {
                this.db = Math.log10(d) * 20.0d;
            }
            Log.d(TAG, "计算分贝值 = " + this.db + "dB");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playRecord() throws IllegalStateException {
        MediaRecorder mediaRecorder = this.mMediaRecorder;
        if (mediaRecorder == null) {
            return;
        }
        mediaRecorder.stop();
        this.mMediaRecorder.reset();
        this.mMediaRecorder.release();
        this.mMediaRecorder = null;
        try {
            MediaPlayer mediaPlayerCreate = MediaPlayer.create(getApplicationContext(), Uri.parse(this.mRecAudioFile.getPath()));
            this.mMediaPlayer = mediaPlayerCreate;
            mediaPlayerCreate.setLooping(false);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mMediaPlayer.start();
        this.mMediaPlayer.setOnCompletionListener(this);
    }

    private void delete(File file) {
        Log.i(TAG, "delete file:" + file);
        if (file.isFile()) {
            file.delete();
            return;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                file.delete();
                return;
            }
            for (File file2 : fileArrListFiles) {
                delete(file2);
            }
            file.delete();
        }
    }

    private class TimerCountTask extends TimerTask {
        private TimerCountTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            HeadsetTestForMmx.this.runOnUiThread(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.HeadsetTestForMmx.TimerCountTask.1
                @Override // java.lang.Runnable
                public void run() throws IllegalStateException {
                    HeadsetTestForMmx.this.updateMicStatus();
                }
            });
        }
    }

    private void startTimer() {
        Timer timer = new Timer();
        this.timer = timer;
        timer.scheduleAtFixedRate(new TimerCountTask(), 0L, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelTimer() {
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
            this.timer = null;
        }
    }
}
