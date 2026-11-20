package com.sprd.validationtools.modules;

import android.content.Context;
import com.sprd.validationtools.itemstest.audio.HeadSetTest;
import com.sprd.validationtools.itemstest.audio.MelodyTest;
import com.sprd.validationtools.itemstest.audio.PhoneLoopBackTest;
import com.sprd.validationtools.itemstest.backlight.BackLightTest;
import com.sprd.validationtools.itemstest.bt.BluetoothTestActivity;
import com.sprd.validationtools.itemstest.camera.CameraTestActivity;
import com.sprd.validationtools.itemstest.camera.FrontCameraTestActivity;
import com.sprd.validationtools.itemstest.camera.SecondaryCameraTestActivity;
import com.sprd.validationtools.itemstest.charger.ChargerTestMtk;
import com.sprd.validationtools.itemstest.charger.TypecChargerTest;
import com.sprd.validationtools.itemstest.gps.GpsTestActivity;
import com.sprd.validationtools.itemstest.keypad.KeyTestActivity;
import com.sprd.validationtools.itemstest.lcd.ScreenColorTest;
import com.sprd.validationtools.itemstest.otg.OTGTest;
import com.sprd.validationtools.itemstest.sensor.ASensorCalibrationActivity;
import com.sprd.validationtools.itemstest.sensor.CompassTestActivity;
import com.sprd.validationtools.itemstest.sensor.GsensorTestActivity;
import com.sprd.validationtools.itemstest.sensor.PsensorTestActivity;
import com.sprd.validationtools.itemstest.storage.SDCardTest;
import com.sprd.validationtools.itemstest.sysinfo.SystemVersionTest;
import com.sprd.validationtools.itemstest.telephony.SIMCardTestActivity;
import com.sprd.validationtools.itemstest.tp.AutoTouchPointTest;
import com.sprd.validationtools.itemstest.tp.MutiTouchTest;
import com.sprd.validationtools.itemstest.wifi.WifiTestActivity;

/* loaded from: classes.dex */
public class UnitTestItemList extends TestItemList {
    private static final String TAG = "UnitTestItemList";
    private static final String[] FILTER_CLASS_NAMES = {SystemVersionTest.class.getName(), BackLightTest.class.getName(), ScreenColorTest.class.getName(), AutoTouchPointTest.class.getName(), MutiTouchTest.class.getName(), MelodyTest.class.getName(), PhoneLoopBackTest.class.getName(), ASensorCalibrationActivity.class.getName(), GsensorTestActivity.class.getName(), CompassTestActivity.class.getName(), PsensorTestActivity.class.getName(), FrontCameraTestActivity.class.getName(), CameraTestActivity.class.getName(), SecondaryCameraTestActivity.class.getName(), KeyTestActivity.class.getName(), ChargerTestMtk.class.getName(), TypecChargerTest.class.getName(), HeadSetTest.class.getName(), BluetoothTestActivity.class.getName(), WifiTestActivity.class.getName(), GpsTestActivity.class.getName(), SDCardTest.class.getName(), SIMCardTestActivity.class.getName(), OTGTest.class.getName()};
    private static UnitTestItemList mTestItemListInstance = null;

    public static TestItemList getInstance(Context context) {
        if (mTestItemListInstance == null) {
            mTestItemListInstance = new UnitTestItemList(context);
        }
        return mTestItemListInstance;
    }

    private UnitTestItemList(Context context) {
        super(context);
    }

    @Override // com.sprd.validationtools.modules.TestItemList
    public String[] getfilterClassName() {
        return FILTER_CLASS_NAMES;
    }
}
