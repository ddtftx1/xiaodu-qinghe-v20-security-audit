package com.sprd.validationtools.itemstest.audio;

import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.TextView;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.io.File;
import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class MicTestForMmx extends BaseActivity implements MediaPlayer.OnCompletionListener {
    private static final int STEP_PLAY_RECORD = 2;
    private static final int STEP_PLAY_RECORD_DONE = 3;
    private static final int STEP_RECORD = 1;
    private static final String TAG = "MicTestForMmx";
    private File file;
    private AudioManager mAudioManager;
    private MediaRecorder mMediaRecorder;
    private File mRecAudioFile;
    private File mRecAudioPath;
    private TextView mMicVolume = null;
    private String strTempFile = "record_";
    private MediaPlayer mMediaPlayer = null;
    private double db = 0.0d;
    private Timer timer = null;
    private Handler myHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.audio.MicTestForMmx.1
        @Override // android.os.Handler
        public void handleMessage(Message message) throws IllegalStateException, IOException {
            Log.d(MicTestForMmx.TAG, "msg>>>>" + message);
            int i = message.what;
            if (i == 1) {
                MicTestForMmx.this.startRecord();
                Message messageObtain = Message.obtain();
                messageObtain.what = 2;
                MicTestForMmx.this.myHandler.sendMessageDelayed(messageObtain, 3000L);
            } else if (i == 2) {
                MicTestForMmx.this.mMicVolume.setText(MicTestForMmx.this.getResources().getString(R.string.mic_test_playing_mmx));
                MicTestForMmx.this.cancelTimer();
                MicTestForMmx.this.playRecord();
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 3;
                MicTestForMmx.this.myHandler.sendMessageDelayed(messageObtain2, 2000L);
            } else if (i == 3) {
                MicTestForMmx.this.mMicVolume.setText(MicTestForMmx.this.getResources().getString(R.string.mic_test_audio_size_mmx, ((int) MicTestForMmx.this.db) + ""));
                if (((int) MicTestForMmx.this.db) >= 29) {
                    MicTestForMmx.this.setPassBtnEnabled(true);
                }
                MicTestForMmx.this.setFailBtnEnabled(true);
            }
            super.handleMessage(message);
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mic_test_mmx);
        getWindow().setFlags(128, 128);
        TextView textView = (TextView) findViewById(R.id.mic_test);
        this.mMicVolume = textView;
        textView.setText(getResources().getString(R.string.mic_test_record_mmx));
        this.mAudioManager = (AudioManager) getSystemService("audio");
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
        setFailBtnEnabled(false);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        File file = new File("/sdcard/CitRecord/");
        this.file = file;
        file.mkdir();
        if (!this.mAudioManager.isVolumeFixed()) {
            AudioManager audioManager = this.mAudioManager;
            audioManager.setStreamVolume(3, audioManager.getStreamMaxVolume(3), 0);
        }
        AudioManager audioManager2 = this.mAudioManager;
        if (audioManager2 != null) {
            audioManager2.setMode(0);
            this.mAudioManager.setSpeakerphoneOn(true);
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        this.myHandler.sendMessageDelayed(messageObtain, 500L);
    }

    @Override // android.app.Activity
    public void onPause() throws IllegalStateException {
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
        super.onPause();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.mMediaPlayer.release();
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
            MicTestForMmx.this.runOnUiThread(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.MicTestForMmx.TimerCountTask.1
                @Override // java.lang.Runnable
                public void run() throws IllegalStateException {
                    MicTestForMmx.this.updateMicStatus();
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
