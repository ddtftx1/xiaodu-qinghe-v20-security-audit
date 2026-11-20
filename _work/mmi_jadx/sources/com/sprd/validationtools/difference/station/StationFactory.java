package com.sprd.validationtools.difference.station;

import com.sprd.validationtools.Constant;

/* loaded from: classes.dex */
public class StationFactory {
    public static IStationCheck createStationCheck() {
        String str = Constant.currentPlatform;
        str.hashCode();
        switch (str) {
            case "qualcomm":
                return new QualcommStationCheck();
            case "mediatek":
                return new MTKStationCheck();
            case "spreadtrum":
                return new SprdStationCheck();
            default:
                return null;
        }
    }
}
