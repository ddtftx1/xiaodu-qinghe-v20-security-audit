package com.sprd.validationtools.itemstest.audio;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Vibrator;
import android.util.Log;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.StorageUtil;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class MelodyTest extends BaseActivity {
    private static final String DEFAULT_AUDIO = "Orion.ogg";
    private static final long[] PATTERN = {5000, 10000, 5000, 10000};
    private static final boolean PLAY_LOOP = true;
    private static final String SPECIFIC_RINGTONE_NAME = "mixtone.wav";
    private static final String SPECIFIC_RINGTONE_NAME_LAVA = "humanvoice.m4a";
    private static final String TAG = "MelodyTest";
    private File mFile;
    private int backupMode = 0;
    MediaPlayer mPlayer = null;
    private Vibrator mVibrator = null;
    private AudioManager mAudioManager = null;
    private String mFilePath = null;
    private MediaPlayer.OnPreparedListener mOnPreparedListener = new MediaPlayer.OnPreparedListener() { // from class: com.sprd.validationtools.itemstest.audio.MelodyTest.1
        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) throws IllegalStateException {
            if (mediaPlayer != null) {
                mediaPlayer.setLooping(true);
                mediaPlayer.start();
                int streamMaxVolume = MelodyTest.this.mAudioManager.getStreamMaxVolume(3);
                Log.d(MelodyTest.TAG, "mOnPreparedListener volumeMusic = " + streamMaxVolume);
                MelodyTest.this.mAudioManager.setStreamVolume(3, streamMaxVolume, 0);
                return;
            }
            Log.w(MelodyTest.TAG, "mOnPreparedListener prepare issue!");
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        this.mAudioManager = audioManager;
        audioManager.setSpeakerphoneOn(true);
        setContentView(R.layout.melody_test);
        this.mVibrator = (Vibrator) getSystemService("vibrator");
        initRsultBtn(findViewById(R.id.result_btn));
        laterDisplayRsultBtn(findViewById(R.id.result_btn), 5000);
        setPassBtnEnabled(true);
    }

    private void doPlay() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        if (this.mPlayer == null) {
            return;
        }
        int streamMaxVolume = this.mAudioManager.getStreamMaxVolume(3);
        Log.d(TAG, "volumeMusic = " + streamMaxVolume);
        this.mAudioManager.setStreamVolume(3, streamMaxVolume, 0);
        try {
            this.mPlayer.reset();
            this.mPlayer.setDataSource(this, Uri.parse("android.resource://com.sprd.validationtools/2131361793"));
            this.mPlayer.prepare();
            this.mPlayer.setOnPreparedListener(this.mOnPreparedListener);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
        } catch (IllegalStateException e3) {
            e3.printStackTrace();
        }
        this.mVibrator.vibrate(PATTERN, 0);
    }

    @Override // android.app.Activity
    protected void onResume() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        super.onResume();
        this.backupMode = ((AudioManager) getSystemService("audio")).getMode();
        if (this.mPlayer == null) {
            this.mPlayer = new MediaPlayer();
        }
        doPlay();
    }

    @Override // android.app.Activity
    protected void onPause() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.stop();
        this.mPlayer.release();
        this.mPlayer = null;
        Vibrator vibrator = this.mVibrator;
        if (vibrator != null) {
            vibrator.cancel();
        }
        ((AudioManager) getSystemService("audio")).setMode(this.backupMode);
        super.onPause();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    private String saveMediaFileToSdcard() throws Throwable {
        String str = StorageUtil.getInternalStoragePath() + "/mmi/" + SPECIFIC_RINGTONE_NAME_LAVA;
        saveToRawResourceSDCard(this, R.raw.mixtone, "storage/emulated/0/mmi/mixtone.wav");
        return "storage/emulated/0/mmi/mixtone.wav";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [int] */
    /* JADX WARN: Type inference failed for: r5v9 */
    public void saveToRawResourceSDCard(Context context, int i, String str) throws Throwable {
        File file = new File(str);
        ?? r5 = 0;
        r5 = 0;
        r5 = 0;
        r5 = 0;
        r5 = 0;
        r5 = 0;
        r5 = 0;
        try {
            try {
                try {
                    if (!file.getParentFile().exists()) {
                        file.getParentFile().mkdirs();
                    }
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                    context = context.getResources().openRawResource(i);
                    try {
                        i = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[10];
                            ?? byteArrayOutputStream = new ByteArrayOutputStream();
                            while (true) {
                                try {
                                    r5 = context.read(bArr);
                                    if (r5 == -1) {
                                        break;
                                    } else {
                                        byteArrayOutputStream.write(bArr, 0, r5);
                                    }
                                } catch (IOException e) {
                                    e = e;
                                    r5 = byteArrayOutputStream;
                                    e.printStackTrace();
                                    if (r5 != 0) {
                                        r5.close();
                                    }
                                    if (context != 0) {
                                        context.close();
                                    }
                                    if (i != 0) {
                                        i.flush();
                                        i.close();
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    r5 = byteArrayOutputStream;
                                    if (r5 != 0) {
                                        try {
                                            r5.close();
                                        } catch (IOException e2) {
                                            e2.printStackTrace();
                                            throw th;
                                        }
                                    }
                                    if (context != 0) {
                                        context.close();
                                    }
                                    if (i != 0) {
                                        i.flush();
                                        i.close();
                                    }
                                    throw th;
                                }
                            }
                            i.write(byteArrayOutputStream.toByteArray());
                            byteArrayOutputStream.close();
                            if (context != 0) {
                                context.close();
                            }
                            i.flush();
                            i.close();
                        } catch (IOException e3) {
                            e = e3;
                        }
                    } catch (IOException e4) {
                        e = e4;
                        i = 0;
                    } catch (Throwable th2) {
                        th = th2;
                        i = 0;
                    }
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            } catch (IOException e6) {
                e = e6;
                context = 0;
                i = 0;
            } catch (Throwable th3) {
                th = th3;
                context = 0;
                i = 0;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
