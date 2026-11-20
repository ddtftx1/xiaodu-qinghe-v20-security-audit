package com.sprd.validationtools;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public class AudioStationUpdateActivity extends Activity {
    private static final String ACTION_SAVE_AUDIOTESTRSULT = "com.sprocomm.AudioUpdateStation";
    private static final String SAVE_PHASECHECK_STATION_NAME = "AUDIO";
    private static final String SAVE_TEST_MSG = "msg";
    private static final String SAVE_TEST_RESULT_FAIL = "AUDIO FAIL";
    private static final String SAVE_TEST_RESULT_PASS = "AUDIO PASS";
    private static final String TAG = "audio";
    private String stationResult = " ";

    static class SavePhasecheckAsyncTask extends AsyncTask<String, Void, Void> {
        private String station = "";
        private String result = "";

        SavePhasecheckAsyncTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(String... strArr) {
            if (strArr == null || strArr.length < 2) {
                return null;
            }
            this.station = strArr[0];
            this.result = strArr[1];
            Log.d(AudioStationUpdateActivity.TAG, "doInBackground station = " + this.station + ",result=" + this.result);
            if ("0".equals(this.result)) {
                PhaseCheckParse.getInstance().writeStationTested(this.station);
                PhaseCheckParse.getInstance().writeStationPass(this.station);
                return null;
            }
            if (!"1".equals(this.result)) {
                return null;
            }
            PhaseCheckParse.getInstance().writeStationTested(this.station);
            PhaseCheckParse.getInstance().writeStationFail(this.station);
            return null;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int stationIndex = Const.getStationIndex(SAVE_PHASECHECK_STATION_NAME);
        if (stationIndex == -1) {
            return;
        }
        String stringExtra = getIntent().getStringExtra("msg");
        if (stringExtra != null) {
            if (SAVE_TEST_RESULT_PASS.equals(stringExtra)) {
                this.stationResult = "0";
            } else if (SAVE_TEST_RESULT_FAIL.equals(stringExtra)) {
                this.stationResult = "1";
            } else {
                this.stationResult = "1";
            }
            Log.d(TAG, "onReceive index = " + stationIndex + ",stationResult=" + this.stationResult);
            new SavePhasecheckAsyncTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, SAVE_PHASECHECK_STATION_NAME, this.stationResult);
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }
}
