package com.sprd.validationtools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;

/* loaded from: classes.dex */
public class AudioBroadcastReceiver extends BroadcastReceiver {
    private static final String TAG = "AudioBroadcastReceiver";
    public static Handler agingTestHandler;
    private String audioStation = "AUDIO";
    private String cameraStation = "CAMERA";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.d(TAG, "AudioBroadcastReceiver onReceive");
        String string = intent.getAction().toString();
        String stringExtra = intent.getStringExtra(NotificationCompat.CATEGORY_MESSAGE);
        Toast.makeText(context, "AudioBroadcastReceiver onReceive msgStr " + stringExtra, 1000).show();
        if (string == null || !string.equals("com.sprocomm.AudioBroadcast")) {
            return;
        }
        Message message = new Message();
        message.what = 119;
        message.obj = "" + stringExtra;
        PhaseCheckParse phaseCheckParse = PhaseCheckParse.getInstance();
        if (stringExtra != null && stringExtra.equals("AUDIO PASS")) {
            Log.i("audio", "Const.getStationIndex(audioStation) parse.getStation():" + phaseCheckParse.getStation());
            int stationIndex = Const.getStationIndex(this.audioStation);
            Log.i("audio", "Const.getStationIndex(audioStation):" + this.audioStation + ",index:" + stationIndex);
            if (stationIndex != -1) {
                Log.i("audio", "parse.writeStationPass(index):" + stationIndex);
                phaseCheckParse.writeStationTested(stationIndex);
                phaseCheckParse.writeStationPass(stationIndex);
            } else {
                Log.i("audio", "--getStationIndex : -1 ---");
            }
        } else if (stringExtra != null && stringExtra.equals("AUDIO FAIL")) {
            Log.i("audio", "Const.getStationIndex(audioStation) parse.getStation():" + phaseCheckParse.getStation());
            int stationIndex2 = Const.getStationIndex(this.audioStation);
            Log.i("audio", "Const.getStationIndex(audioStation):" + this.audioStation + ",index:" + stationIndex2);
            if (stationIndex2 != -1) {
                Log.i("audio", "parse.writeStationFail(index):" + stationIndex2);
                phaseCheckParse.writeStationTested(stationIndex2);
                phaseCheckParse.writeStationFail(stationIndex2);
            } else {
                Log.i("audio", "--getStationIndex : -1 ---");
            }
        }
        synchronized (AudioBroadcastReceiver.class) {
            Handler handler = agingTestHandler;
            if (handler != null) {
                handler.sendMessage(message);
            }
        }
    }
}
