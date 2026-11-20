package com.sprd.validationtools.difference.station;

/* loaded from: classes.dex */
public interface IStationCheck {
    public static final String CHECK_STATION_CURRENT1 = "CURRENT1";
    public static final String CHECK_STATION_CURRENT2 = "CURRENT2";
    public static final String CHECK_STATION_FT = "FT";
    public static final String STATION_AGING = "AGING";
    public static final String STATION_MAT = "MTA";
    public static final String STATION_MMI1 = "MMI1";
    public static final String STATION_MMI2 = "MMI2";
    public static final String STATION_MMI_F = "MMIF";
    public static final String STATION_SMTCHECK = "SMTCHECK";
    public static final String TAG = "IStationCheck";

    void initNVStation(String str);

    boolean isCheckStationOK(boolean z);
}
