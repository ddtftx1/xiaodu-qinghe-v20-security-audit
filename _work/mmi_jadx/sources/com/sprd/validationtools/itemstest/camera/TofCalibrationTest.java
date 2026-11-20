package com.sprd.validationtools.itemstest.camera;

import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.R;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class TofCalibrationTest extends BaseActivity {
    private static final String TAG = "TofCalibrationTest";
    private static final String mCrossTakCalibrationFile = "/mnt/vendor/vl53l0_xtak_calibration.file";
    private static final String mOffsetCalibrationFile = "/mnt/vendor/vl53l0_offset_calibration.file";
    private TextView mSpadsCalibrationTV = null;
    private TextView mRefCalibrationTV = null;
    private TextView mOffsetCalibrationTV = null;
    private TextView mCrossTalkCalibrationTV = null;
    private TextView mOffsetCalibrationJudgeTV = null;
    private TextView mCrossTalkCalibrationJudgeTV = null;
    private Button mOffsetStartBtn = null;
    private Button mCrossTalkStartBtn = null;
    private Handler mHandler = new Handler();
    private String mSpadsResult = null;
    private String mRefResult = null;
    private String mOffsetResult = null;
    private String mCrossTalkResult = null;
    private boolean mIsOffsetTestPass = false;
    private boolean mIsCrossTalkTestPass = false;
    private boolean mHasOffsetTested = false;
    private boolean mHasXTalkTested = false;
    private PhaseCheckParse mPhaseCheckParse = null;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d(TAG, "onCreate");
        setContentView(R.layout.activity_tof_test);
        this.mSpadsCalibrationTV = (TextView) findViewById(R.id.spads_calibration_tv);
        this.mRefCalibrationTV = (TextView) findViewById(R.id.ref_calibration_tv);
        this.mOffsetCalibrationTV = (TextView) findViewById(R.id.offset_calibration_tv);
        this.mCrossTalkCalibrationTV = (TextView) findViewById(R.id.cross_talk_calibration_tv);
        this.mOffsetCalibrationJudgeTV = (TextView) findViewById(R.id.offset_calibration_judge_tv);
        this.mCrossTalkCalibrationJudgeTV = (TextView) findViewById(R.id.cross_talk_calibration_judge_tv);
        this.mOffsetStartBtn = (Button) findViewById(R.id.offset_start_btn);
        this.mCrossTalkStartBtn = (Button) findViewById(R.id.cross_talk_start_btn);
        this.mOffsetStartBtn.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.camera.TofCalibrationTest.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Toast.makeText(TofCalibrationTest.this, "Offset Calibration is Testing, Please Wait!", 0).show();
                TofCalibrationTest.this.executeOffsetCalibration();
            }
        });
        this.mCrossTalkStartBtn.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.camera.TofCalibrationTest.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Toast.makeText(TofCalibrationTest.this, "Cross-talk Calibration is Testing, Please Wait!", 0).show();
                TofCalibrationTest.this.executeCrossTalkCalibration();
            }
        });
        this.mOffsetCalibrationJudgeTV.setText("Not Test");
        this.mCrossTalkCalibrationJudgeTV.setText("Not Test");
        this.mPhaseCheckParse = PhaseCheckParse.getInstance();
    }

    public void executeOffsetCalibration() {
        Log.d(TAG, "executeOffsetCalibration run");
        this.mHasOffsetTested = true;
        new Thread(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.TofCalibrationTest.3
            @Override // java.lang.Runnable
            public void run() {
                Log.d(TofCalibrationTest.TAG, "executeOffsetCalibration thread run ");
                if (TofCalibrationTest.this.mPhaseCheckParse.executeOffsetCalibration() == 1) {
                    Log.d(TofCalibrationTest.TAG, "executeOffsetCalibration success!");
                } else {
                    Log.d(TofCalibrationTest.TAG, "executeOffsetCalibration failsed!");
                }
            }
        }).start();
        this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.TofCalibrationTest.4
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                Log.d(TofCalibrationTest.TAG, "executeCrossTalkCalibration run");
                TofCalibrationTest.this.setOffsetCalibrationParams(TofCalibrationTest.mOffsetCalibrationFile);
                TofCalibrationTest.this.mSpadsCalibrationTV.setText(TofCalibrationTest.this.getString(R.string.spads_calibration_title) + TofCalibrationTest.this.mSpadsResult);
                TofCalibrationTest.this.mRefCalibrationTV.setText(TofCalibrationTest.this.getString(R.string.ref_calibration_title) + TofCalibrationTest.this.mRefResult);
                TofCalibrationTest.this.mOffsetCalibrationTV.setText(TofCalibrationTest.this.getString(R.string.offset_calibration_title) + TofCalibrationTest.this.mOffsetResult);
                TofCalibrationTest tofCalibrationTest = TofCalibrationTest.this;
                tofCalibrationTest.mIsOffsetTestPass = tofCalibrationTest.judgeOffsetCalibrationPass();
                if (TofCalibrationTest.this.mIsOffsetTestPass) {
                    TofCalibrationTest.this.mOffsetCalibrationJudgeTV.setText("Pass");
                    TofCalibrationTest.this.mOffsetCalibrationJudgeTV.setTextColor(-16711936);
                } else {
                    TofCalibrationTest.this.mOffsetCalibrationJudgeTV.setText("Fail");
                    TofCalibrationTest.this.mOffsetCalibrationJudgeTV.setTextColor(SupportMenu.CATEGORY_MASK);
                }
                if (TofCalibrationTest.this.mHasOffsetTested && TofCalibrationTest.this.mHasXTalkTested) {
                    TofCalibrationTest.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.TofCalibrationTest.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (TofCalibrationTest.this.mIsOffsetTestPass && TofCalibrationTest.this.mIsCrossTalkTestPass) {
                                TofCalibrationTest.this.judgeTofTestPass();
                            } else {
                                TofCalibrationTest.this.judgeTofTestFail();
                            }
                        }
                    }, 3000L);
                }
            }
        }, 3000L);
    }

    public void executeCrossTalkCalibration() {
        Log.d(TAG, "executeCrossTalkCalibration");
        this.mHasXTalkTested = true;
        new Thread(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.TofCalibrationTest.5
            @Override // java.lang.Runnable
            public void run() {
                Log.d(TofCalibrationTest.TAG, "executeCrossTalkCalibration thread run");
                if (TofCalibrationTest.this.mPhaseCheckParse.executeXtalkCalibration() == 1) {
                    Log.d(TofCalibrationTest.TAG, "execute_xtalk_calibration success!");
                } else {
                    Log.d(TofCalibrationTest.TAG, "execute_xtalk_calibration failsed!");
                }
            }
        }).start();
        this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.TofCalibrationTest.6
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                Log.d(TofCalibrationTest.TAG, "executeCrossTalkCalibration run");
                TofCalibrationTest.this.setCrossTalkCalibrationParams(TofCalibrationTest.mCrossTakCalibrationFile);
                TofCalibrationTest.this.mCrossTalkCalibrationTV.setText(TofCalibrationTest.this.getString(R.string.cross_talk_calibration_title) + TofCalibrationTest.this.mCrossTalkResult);
                TofCalibrationTest tofCalibrationTest = TofCalibrationTest.this;
                tofCalibrationTest.mIsCrossTalkTestPass = tofCalibrationTest.judgeCrossTalkCalibrationPass();
                if (TofCalibrationTest.this.mIsCrossTalkTestPass) {
                    TofCalibrationTest.this.mCrossTalkCalibrationJudgeTV.setText("Pass");
                    TofCalibrationTest.this.mCrossTalkCalibrationJudgeTV.setTextColor(-16711936);
                } else {
                    TofCalibrationTest.this.mCrossTalkCalibrationJudgeTV.setText("Fail");
                    TofCalibrationTest.this.mCrossTalkCalibrationJudgeTV.setTextColor(SupportMenu.CATEGORY_MASK);
                }
                if (TofCalibrationTest.this.mHasOffsetTested && TofCalibrationTest.this.mHasXTalkTested) {
                    TofCalibrationTest.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.TofCalibrationTest.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (TofCalibrationTest.this.mIsOffsetTestPass && TofCalibrationTest.this.mIsCrossTalkTestPass) {
                                TofCalibrationTest.this.judgeTofTestPass();
                            } else {
                                TofCalibrationTest.this.judgeTofTestFail();
                            }
                        }
                    }, 3000L);
                }
            }
        }, 3000L);
    }

    public void judgeTofTestPass() {
        Log.d(TAG, "executeTofTestPass");
        Toast.makeText(this, "Tof Tested Pass!", 0).show();
    }

    public void judgeTofTestFail() {
        Log.d(TAG, "judgeTofTestFail");
        Toast.makeText(this, "Tof Tested Failed!", 0).show();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    public void setOffsetCalibrationParams(String str) throws Throwable {
        Log.d(TAG, "setOffsetCalibrationParams");
        String file = readFile(str);
        if (file == null) {
            Toast.makeText(this, "Read Offset Calibration Information Failed!", 0).show();
            return;
        }
        String[] strArrSplit = file.split("\n");
        this.mOffsetResult = strArrSplit[0];
        this.mRefResult = strArrSplit[1] + "\t" + strArrSplit[2];
        this.mSpadsResult = strArrSplit[3];
    }

    public boolean judgeOffsetCalibrationPass() throws NumberFormatException {
        Log.d(TAG, "judgeOffsetCalibrationPass");
        String str = this.mOffsetResult;
        if (str == null) {
            return false;
        }
        int i = Integer.parseInt(str);
        Log.d(TAG, "offsetValue=:" + i);
        return i >= -20000 && i <= 60000;
    }

    public void setCrossTalkCalibrationParams(String str) throws Throwable {
        Log.d(TAG, "setCrossTalkCalibrationParams");
        String file = readFile(str);
        Log.d(TAG, "paramValue=:" + file);
        if (file == null) {
            Toast.makeText(this, "Read CrossTalk Calibration Information Failed!", 0).show();
        } else {
            this.mCrossTalkResult = file.split("\n")[0];
        }
    }

    public boolean judgeCrossTalkCalibrationPass() {
        int i;
        Log.d(TAG, "judgeCrossTalkCalibrationPass");
        String str = this.mCrossTalkResult;
        return str != null && (i = (int) ((((double) Integer.parseInt(str)) / 65536.0d) * 1000.0d)) >= 0 && i <= 700;
    }

    public String readFile(String str) throws Throwable {
        String str2;
        FileReader fileReader;
        Log.d(TAG, "readFile");
        char[] cArr = new char[1024];
        FileReader fileReader2 = null;
        try {
            try {
                try {
                    fileReader = new FileReader(str);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
                str2 = null;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        try {
            try {
                str2 = new String(cArr, 0, fileReader.read(cArr, 0, 1024));
            } catch (Exception e3) {
                e = e3;
                str2 = null;
            }
            try {
                Log.d(TAG, "result is: " + str2);
                fileReader.close();
            } catch (Exception e4) {
                e = e4;
                fileReader2 = fileReader;
                e.printStackTrace();
                if (fileReader2 != null) {
                    fileReader2.close();
                }
                return str2;
            }
            return str2;
        } catch (Throwable th2) {
            th = th2;
            fileReader2 = fileReader;
            if (fileReader2 != null) {
                try {
                    fileReader2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }
}
