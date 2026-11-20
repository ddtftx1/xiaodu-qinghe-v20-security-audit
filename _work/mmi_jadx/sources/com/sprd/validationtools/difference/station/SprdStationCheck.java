package com.sprd.validationtools.difference.station;

import android.util.Log;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.ValidationToolsMainActivity;

/* loaded from: classes.dex */
public class SprdStationCheck implements IStationCheck {
    @Override // com.sprd.validationtools.difference.station.IStationCheck
    public void initNVStation(String str) {
    }

    @Override // com.sprd.validationtools.difference.station.IStationCheck
    public boolean isCheckStationOK(boolean z) {
        String stationResult;
        PhaseCheckParse phaseCheckParse = PhaseCheckParse.getInstance();
        if (ValidationToolsMainActivity.test_station.equals(IStationCheck.STATION_MMI_F)) {
            stationResult = phaseCheckParse.getStationResult(IStationCheck.CHECK_STATION_FT);
            ValidationToolsMainActivity.CHECK_STATION = IStationCheck.CHECK_STATION_FT;
        } else if (ValidationToolsMainActivity.test_station.equals(IStationCheck.STATION_MMI1)) {
            stationResult = phaseCheckParse.getStationResult(IStationCheck.STATION_SMTCHECK);
            ValidationToolsMainActivity.CHECK_STATION = IStationCheck.STATION_SMTCHECK;
        } else if (ValidationToolsMainActivity.test_station.equals(IStationCheck.STATION_MMI2)) {
            stationResult = phaseCheckParse.getStationResult("AGING");
            ValidationToolsMainActivity.CHECK_STATION = "AGING";
        } else {
            stationResult = "";
        }
        Log.i("huangli", "------result-------" + stationResult);
        if (stationResult.equals("PASS")) {
            return true;
        }
        return z;
    }
}
