package com.sprd.validationtools.itemstest.ai;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class AITest extends BaseActivity {
    private static final String AI_IP_PROPERTY = "persist.vendor.npu.version";
    private static final int AI_TEST_FAIL = 4;
    private static final int AI_TEST_FINISH = 2;
    private static final int AI_TEST_RUNNING = 1;
    private static final int AI_TEST_SUCCESS = 3;
    private static final String TAG = "AITest";
    private TextView mStateTextView = null;
    private PhaseCheckParse mPhaseCheckParse = null;
    private boolean mTestSuccess = false;
    private int AiIpValue = 0;
    private Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.ai.AITest.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                postDelayed(AITest.this.mRunnable, 20000L);
                Log.d(AITest.TAG, "AI_TEST_RUNNING...");
                AITest.this.mStateTextView.setText("Running......");
            } else {
                if (i != 2) {
                    return;
                }
                int i2 = message.arg1;
                Log.d(AITest.TAG, "val=:" + i2);
                AITest.this.mStateTextView.setText("Finished!");
                if (i2 == 3) {
                    AITest.this.mStateTextView.setTextColor(-16711936);
                    Toast.makeText(AITest.this, "Success!", 0).show();
                    AITest.this.mHandler.removeCallbacks(AITest.this.mRunnable);
                } else if (i2 == 4) {
                    AITest.this.mStateTextView.setTextColor(SupportMenu.CATEGORY_MASK);
                    Toast.makeText(AITest.this, "Failed!", 0).show();
                }
            }
        }
    };
    private Runnable mRunnable = new Runnable() { // from class: com.sprd.validationtools.itemstest.ai.AITest.2
        @Override // java.lang.Runnable
        public void run() {
            AITest.this.storeRusult(false);
            Toast.makeText(AITest.this, "Timeout!", 0).show();
            AITest.this.finish();
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d(TAG, "onCreate");
        setContentView(R.layout.activity_ai_test);
        this.mStateTextView = (TextView) findViewById(R.id.state_textview);
        initRsultBtn(findViewById(R.id.result_btn));
        this.AiIpValue = Integer.parseInt(SystemProperties.get(AI_IP_PROPERTY, "0"));
        Log.d(TAG, "AiIpValue=:" + this.AiIpValue);
        this.mPhaseCheckParse = PhaseCheckParse.getInstance();
    }

    @Override // android.app.Activity
    protected void onResume() {
        Log.d(TAG, "onResume");
        this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.ai.AITest.3
            @Override // java.lang.Runnable
            public void run() {
                AITest.this.startAiTest();
            }
        }, 50L);
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mHandler.removeCallbacks(this.mRunnable);
    }

    protected void startAiTest() {
        new Thread(new Runnable() { // from class: com.sprd.validationtools.itemstest.ai.AITest.4
            @Override // java.lang.Runnable
            public void run() {
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                AITest.this.mHandler.sendMessageDelayed(messageObtain, 0L);
                int iExecuteAICmd = AITest.this.executeAICmd();
                Log.d(AITest.TAG, "result=:" + iExecuteAICmd);
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 2;
                if (iExecuteAICmd == 1) {
                    messageObtain2.arg1 = 3;
                    AITest.this.mTestSuccess = true;
                } else {
                    messageObtain2.arg1 = 4;
                    AITest.this.mTestSuccess = false;
                }
                AITest.this.mHandler.sendMessageDelayed(messageObtain2, 1000L);
            }
        }).start();
    }

    protected int executeAICmd() {
        return this.mPhaseCheckParse.executeAITest(this.AiIpValue);
    }
}
