package com.sprd.validationtools.itemstest.audio;

import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.util.Locale;

/* loaded from: classes.dex */
public class SpeakerTestForMmx extends BaseActivity implements TextToSpeech.OnInitListener {
    private static final String TAG = "SpeakerTestForMmx";
    private AudioManager mAudioManager;
    private TextToSpeech textToSpeech;
    private Button oneBT = null;
    private Button twoBT = null;
    private Button threeBT = null;
    private Button fourBT = null;
    private Button fiveBT = null;
    private Button sixBT = null;
    private Button sevenBT = null;
    private Button eightBT = null;
    private Button nineBT = null;
    private int randonOne = 0;
    private int randonTwo = 0;
    private boolean checkTestOk = false;
    private int clickCount = 0;
    private boolean isSuccess = true;
    private boolean isInited = false;
    private boolean isResumed = false;
    private boolean isClick = false;
    private int timeCount = 0;
    public Handler mHandler = new Handler();
    private Runnable mRimer = new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.1
        @Override // java.lang.Runnable
        public void run() {
            SpeakerTestForMmx.this.runOnUiThread(new Runnable() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.1.1
                @Override // java.lang.Runnable
                public void run() {
                    if (SpeakerTestForMmx.this.timeCount == 20 || SpeakerTestForMmx.this.isClick) {
                        SpeakerTestForMmx.this.stopSpeech();
                    } else {
                        SpeakerTestForMmx.this.playText();
                    }
                }
            });
            SpeakerTestForMmx.access$008(SpeakerTestForMmx.this);
            SpeakerTestForMmx.this.mHandler.postDelayed(SpeakerTestForMmx.this.mRimer, 1000L);
        }
    };
    public Handler timeHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 111 && SpeakerTestForMmx.this.isInited && SpeakerTestForMmx.this.isResumed) {
                SpeakerTestForMmx.this.mHandler.postDelayed(SpeakerTestForMmx.this.mRimer, 100L);
            }
        }
    };

    static /* synthetic */ int access$008(SpeakerTestForMmx speakerTestForMmx) {
        int i = speakerTestForMmx.timeCount;
        speakerTestForMmx.timeCount = i + 1;
        return i;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.speaker_test_mmx);
        getWindow().setFlags(128, 128);
        Button button = (Button) findViewById(R.id.oneButton);
        this.oneBT = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SpeakerTestForMmx.this.updateView(view, 1);
            }
        });
        this.isInited = false;
        this.isResumed = false;
        this.twoBT = (Button) findViewById(R.id.twoButton);
        this.threeBT = (Button) findViewById(R.id.threeButton);
        this.fourBT = (Button) findViewById(R.id.fourButton);
        this.fiveBT = (Button) findViewById(R.id.fiveButton);
        this.sixBT = (Button) findViewById(R.id.sixButton);
        this.sevenBT = (Button) findViewById(R.id.sevenButton);
        this.eightBT = (Button) findViewById(R.id.eightButton);
        this.nineBT = (Button) findViewById(R.id.nineButton);
        this.twoBT.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SpeakerTestForMmx.this.updateView(view, 2);
            }
        });
        this.threeBT.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SpeakerTestForMmx.this.updateView(view, 3);
            }
        });
        this.fourBT.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SpeakerTestForMmx.this.updateView(view, 4);
            }
        });
        this.fiveBT.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SpeakerTestForMmx.this.updateView(view, 5);
            }
        });
        this.sixBT.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SpeakerTestForMmx.this.updateView(view, 6);
            }
        });
        this.sevenBT.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SpeakerTestForMmx.this.updateView(view, 7);
            }
        });
        this.eightBT.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SpeakerTestForMmx.this.updateView(view, 8);
            }
        });
        this.nineBT.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.audio.SpeakerTestForMmx.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SpeakerTestForMmx.this.updateView(view, 9);
            }
        });
        TextToSpeech textToSpeech = new TextToSpeech(this, this);
        this.textToSpeech = textToSpeech;
        textToSpeech.setPitch(1.0f);
        this.textToSpeech.setSpeechRate(0.5f);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateView(View view, int i) {
        this.isClick = true;
        if (this.randonOne == i || this.randonTwo == i) {
            this.checkTestOk = true;
            this.clickCount++;
        } else {
            this.checkTestOk = false;
            this.oneBT.setEnabled(false);
            this.twoBT.setEnabled(false);
            this.threeBT.setEnabled(false);
            this.fourBT.setEnabled(false);
            this.fiveBT.setEnabled(false);
            this.sixBT.setEnabled(false);
            this.sevenBT.setEnabled(false);
            this.eightBT.setEnabled(false);
            this.nineBT.setEnabled(false);
        }
        ((Button) view).setEnabled(false);
        if (this.clickCount == 2 && this.checkTestOk) {
            setPassBtnEnabled(true);
        }
    }

    @Override // android.speech.tts.TextToSpeech.OnInitListener
    public void onInit(int i) {
        Log.d(TAG, "onInit: status=" + i);
        if (i == 0) {
            int language = this.textToSpeech.setLanguage(Locale.ENGLISH);
            if (language == -1 || language == -2) {
                Toast.makeText(this, "no support this data", 0).show();
                this.isSuccess = false;
            } else {
                this.isInited = true;
                Message messageObtain = Message.obtain();
                messageObtain.what = 111;
                this.timeHandler.sendMessage(messageObtain);
            }
            TextToSpeech textToSpeech = this.textToSpeech;
            if (textToSpeech != null) {
                textToSpeech.setPitch(1.0f);
                this.textToSpeech.setSpeechRate(0.5f);
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        this.mAudioManager = audioManager;
        if (audioManager != null) {
            audioManager.setMode(0);
            this.mAudioManager.setSpeakerphoneOn(true);
        }
        double d = 8;
        this.randonOne = ((int) (Math.random() * d)) + 1;
        this.randonTwo = ((int) (Math.random() * d)) + 1;
        while (this.randonOne == this.randonTwo) {
            this.randonTwo = ((int) (Math.random() * d)) + 1;
        }
        Log.d(TAG, "randonOne=" + this.randonOne + "   randonTwo=" + this.randonTwo);
        this.isResumed = true;
        Message messageObtain = Message.obtain();
        messageObtain.what = 111;
        this.timeHandler.sendMessage(messageObtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playText() {
        TextToSpeech textToSpeech;
        Log.d(TAG, "playText: isSuccess=" + this.isSuccess);
        if (!this.isSuccess || (textToSpeech = this.textToSpeech) == null || textToSpeech.isSpeaking()) {
            return;
        }
        Log.d(TAG, "playText: textToSpeech.isSpeaking()");
        this.textToSpeech.speak(this.randonOne + "   " + this.randonTwo, 0, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopSpeech() {
        TextToSpeech textToSpeech = this.textToSpeech;
        if (textToSpeech != null) {
            textToSpeech.stop();
            this.textToSpeech.shutdown();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.mHandler.removeCallbacks(this.mRimer);
        stopSpeech();
        AudioManager audioManager = this.mAudioManager;
        if (audioManager != null) {
            audioManager.setMode(0);
            this.mAudioManager.setSpeakerphoneOn(false);
        }
        super.onPause();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
