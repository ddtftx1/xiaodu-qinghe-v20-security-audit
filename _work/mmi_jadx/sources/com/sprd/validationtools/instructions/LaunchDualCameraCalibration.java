package com.sprd.validationtools.instructions;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.sprd.validationtools.PhaseCheckParse;

/* loaded from: classes.dex */
public class LaunchDualCameraCalibration extends Activity {
    public static final String ACTION_CAMERA_CALI_VERUFY = "com.sprd.cameracalibration.START_CAMERACALIBRATION";
    public static final String EXTRA_GET_PHASECHECK = "phasecheck_result";
    private static final String TAG = "LaunchDualCameraCalibration";

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        try {
            String phaseCheck = PhaseCheckParse.getInstance().getPhaseCheck();
            Intent intent = new Intent(ACTION_CAMERA_CALI_VERUFY);
            intent.setFlags(268435456);
            intent.putExtra(EXTRA_GET_PHASECHECK, phaseCheck);
            intent.addFlags(268435456);
            startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Log.d(TAG, "ActivityNotFoundException=    ACTION_CAMERA_CALI_VERUFY");
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        finish();
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
