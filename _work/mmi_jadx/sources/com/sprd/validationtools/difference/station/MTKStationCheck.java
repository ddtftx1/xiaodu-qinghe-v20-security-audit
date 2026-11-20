package com.sprd.validationtools.difference.station;

import android.provider.Settings;
import android.util.Log;
import com.sprd.validationtools.App;
import com.sprd.validationtools.ValidationToolsMainActivity;
import com.sprd.validationtools.nvram.NvramAgentHelper;

/* loaded from: classes.dex */
public class MTKStationCheck implements IStationCheck {
    private static final int DUALCAMER_INDEX = 47;
    private static final int STATION_MMI1_INDEX = 56;
    private static final int STATION_MMI2_INDEX = 48;
    private static final int STATION_MMI_F_INDEX = 53;
    private String barcodeData;

    @Override // com.sprd.validationtools.difference.station.IStationCheck
    public boolean isCheckStationOK(boolean z) {
        int i;
        String nvramBuffByIndex;
        String string = Settings.Global.getString(App.instance.getContentResolver(), "init_station");
        Log.d(IStationCheck.TAG, "isCheckStationOK:" + string);
        if (ValidationToolsMainActivity.test_station.equals(IStationCheck.STATION_MAT)) {
            i = 54;
            ValidationToolsMainActivity.CHECK_STATION = IStationCheck.CHECK_STATION_CURRENT1;
        } else if (ValidationToolsMainActivity.test_station.equals(IStationCheck.STATION_MMI1)) {
            i = 45;
            ValidationToolsMainActivity.CHECK_STATION = IStationCheck.CHECK_STATION_CURRENT2;
        } else if (ValidationToolsMainActivity.test_station.equals(IStationCheck.STATION_MMI2)) {
            i = 46;
            ValidationToolsMainActivity.CHECK_STATION = "AGING";
        } else {
            i = 0;
        }
        if (string != null && string.equals("true")) {
            String string2 = Settings.Global.getString(App.instance.getContentResolver(), "test_stationArr");
            nvramBuffByIndex = (string2 == null || string2.length() < 63) ? "" : String.valueOf(string2.charAt(i));
        } else {
            nvramBuffByIndex = NvramAgentHelper.getNvramBuffByIndex(i);
        }
        Log.i(IStationCheck.TAG, "isCheckStationOK------result-------" + nvramBuffByIndex + "   CHECK_STATION>>" + ValidationToolsMainActivity.CHECK_STATION);
        if ("50".equals(nvramBuffByIndex) || "P".equals(nvramBuffByIndex)) {
            return true;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0250  */
    @Override // com.sprd.validationtools.difference.station.IStationCheck
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void initNVStation(java.lang.String r19) throws java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 715
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.difference.station.MTKStationCheck.initNVStation(java.lang.String):void");
    }

    public void writeBarCodeToProductNv2() {
        Log.d(IStationCheck.TAG, " witeBarCodeToProuctNv  exceute!!!");
        Log.d(IStationCheck.TAG, " witeBarCodeToProuctNv  barcodeData>>" + this.barcodeData);
        byte[] bytes = this.barcodeData.getBytes();
        if (bytes.length >= 63) {
            bytes[47] = "50".equals(NvramAgentHelper.getNvramBuffByIndex(47)) ? (byte) 80 : (byte) 70;
        }
        for (int iWirteDataToNvramBuff = -1; iWirteDataToNvramBuff != 0; iWirteDataToNvramBuff = NvramAgentHelper.wirteDataToNvramBuff(bytes)) {
        }
    }
}
