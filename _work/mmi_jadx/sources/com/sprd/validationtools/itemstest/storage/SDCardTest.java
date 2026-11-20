package com.sprd.validationtools.itemstest.storage;

import android.app.ActionBar;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.StorageUtil;

/* loaded from: classes.dex */
public class SDCardTest extends BaseActivity {
    private static final String PHONE_STORAGE_PATH = "/data/data/com.sprd.validationtools/";
    private static final String SPRD_SD_TESTFILE = "sprdtest.txt";
    private HandlerThread mBackgroundThread;
    TextView mContent;
    TextView mContent2;
    private Handler mWorkHandler;
    private String TAG = "SDCardTest";
    byte[] mounted = new byte[2];
    byte[] result = new byte[2];
    private byte[] mSDCardTestFlag = new byte[1];
    private Handler mHandler = new Handler();
    private Runnable mRunnable = new Runnable() { // from class: com.sprd.validationtools.itemstest.storage.SDCardTest.1
        @Override // java.lang.Runnable
        public void run() {
            boolean z = false;
            Log.d(SDCardTest.this.TAG, "=== display SDCard test info! === mounted[0] = " + ((int) SDCardTest.this.mounted[0]) + " result[0] = " + ((int) SDCardTest.this.result[0]) + " mounted[1] = " + ((int) SDCardTest.this.mounted[1]) + " result[1] = " + ((int) SDCardTest.this.result[1]));
            boolean z2 = SDCardTest.this.mounted[0] == 0 && SDCardTest.this.result[0] == 0;
            if (SDCardTest.this.mounted[1] == 0 && SDCardTest.this.result[1] == 0) {
                z = true;
            }
            SDCardTest.this.checkResultText(z2, z);
            if (!z2 || !z) {
                SDCardTest.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.storage.SDCardTest.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(SDCardTest.this, R.string.text_fail, 0).show();
                        SDCardTest.this.storeRusult(false);
                        SDCardTest.this.finish();
                    }
                }, 1000L);
            } else {
                SDCardTest.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.storage.SDCardTest.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(SDCardTest.this, R.string.text_pass, 0).show();
                        SDCardTest.this.storeRusult(true);
                        SDCardTest.this.finish();
                    }
                }, 1000L);
            }
        }
    };
    Runnable vtThread = new Runnable() { // from class: com.sprd.validationtools.itemstest.storage.SDCardTest.2
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            SDCardTest.this.checkPhonStorageResult();
            SDCardTest.this.checkSdcardRessult();
            SDCardTest.this.mHandler.post(SDCardTest.this.mRunnable);
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setLayoutParams(new ActionBar.LayoutParams(-2, -2));
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        TextView textView = new TextView(this);
        this.mContent = textView;
        textView.setTextSize(35.0f);
        linearLayout.addView(this.mContent);
        TextView textView2 = new TextView(this);
        this.mContent2 = textView2;
        textView2.setTextSize(35.0f);
        linearLayout.addView(this.mContent2);
        setContentView(linearLayout);
        setTitle(R.string.sdcard_test);
        this.mContent.setText(getResources().getText(R.string.sdcard2_test));
        this.mContent2.setText(getResources().getText(R.string.sdcard1_test));
        startBackgroundThread();
        this.mWorkHandler.post(this.vtThread);
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        stopBackgroundThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkResultText(boolean z, boolean z2) {
        Log.d(this.TAG, "checkResultText successExSdcard=" + z + ",successInSdcard=" + z2);
        if (z) {
            this.mContent.setText(getResources().getText(R.string.sdcard2_test_result_success));
        } else {
            this.mContent.setText(getResources().getText(R.string.sdcard2_test_result_fail));
        }
        if (z2) {
            this.mContent2.setText(getResources().getText(R.string.sdcard_test_result_success));
        } else {
            this.mContent2.setText(getResources().getText(R.string.sdcard_test_result_fail));
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        checkSDCard();
        if (this.mounted[0] == 1) {
            this.mContent.setText(getResources().getText(R.string.no_sdcard2));
        }
        if (this.mounted[1] == 1) {
            this.mContent2.setText(getResources().getText(R.string.no_sdcard));
        }
        Log.i("SDCardTest", "=== create thread to execute SDCard test command! ===");
    }

    private void checkSDCard() {
        if (!StorageUtil.getExternalStoragePathState(getApplicationContext()).equals("mounted")) {
            this.mounted[0] = 1;
        } else {
            this.mounted[0] = 0;
        }
        this.mounted[1] = 0;
    }

    private void startBackgroundThread() {
        HandlerThread handlerThread = new HandlerThread("SdcardBackground");
        this.mBackgroundThread = handlerThread;
        handlerThread.start();
        this.mWorkHandler = new Handler(this.mBackgroundThread.getLooper());
    }

    private void stopBackgroundThread() {
        try {
            this.mBackgroundThread.quitSafely();
            this.mBackgroundThread.join();
            this.mBackgroundThread = null;
            this.mHandler = null;
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00bf A[Catch: IOException -> 0x00bb, TRY_LEAVE, TryCatch #8 {IOException -> 0x00bb, blocks: (B:48:0x00b7, B:52:0x00bf), top: B:59:0x00b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void checkPhonStorageResult() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.storage.SDCardTest.checkPhonStorageResult():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d4 A[Catch: IOException -> 0x00d0, TRY_LEAVE, TryCatch #5 {IOException -> 0x00d0, blocks: (B:49:0x00cc, B:53:0x00d4), top: B:59:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void checkSdcardRessult() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 225
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.storage.SDCardTest.checkSdcardRessult():void");
    }
}
