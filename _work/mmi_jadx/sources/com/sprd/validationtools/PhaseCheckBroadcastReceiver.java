package com.sprd.validationtools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;

/* loaded from: classes.dex */
public class PhaseCheckBroadcastReceiver extends BroadcastReceiver {
    private static final String ACTION_SAVE_PHASECHECK = "com.sprd.validationtools.SAVE_PHASECHECK";
    private static final String SAVE_PHASECHECK_RESULT = "station_result";
    private static final String SAVE_PHASECHECK_STATION_NAME = "station_name";
    private static final String TAG = "PhaseCheckBroadcastReceiver";

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
            Log.d(PhaseCheckBroadcastReceiver.TAG, "doInBackground station = " + this.station + ",result=" + this.result);
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

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.d(TAG, "onReceive action = " + action);
        if (action != null && action.equals(ACTION_SAVE_PHASECHECK)) {
            String stringExtra = intent.getStringExtra(SAVE_PHASECHECK_STATION_NAME);
            String stringExtra2 = intent.getStringExtra(SAVE_PHASECHECK_RESULT);
            Log.d(TAG, "onReceive stationName = " + stringExtra + ",stationResult=" + stringExtra2);
            new SavePhasecheckAsyncTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, stringExtra, stringExtra2);
        }
    }
}
