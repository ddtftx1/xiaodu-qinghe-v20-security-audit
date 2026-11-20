package com.sprd.validationtools.testinfo;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemProperties;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.modules.TestItem;
import com.sprd.validationtools.modules.UnitTestItemList;
import com.sprd.validationtools.sqlite.EngSqlite;
import com.sprd.validationtools.utils.FileUtils;
import com.sprd.validationtools.utils.ValidationToolsUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class TestInfoQRCode {
    private static final String CAMERA_SENSOR = "/sys/devices/virtual/misc/sprd_sensor/camera_sensor_name";
    private static final String GSENSOR = "sys/module/sprd_phinfo/parameters/SPRD_GsensorInfo";
    private static final String LCD_ID_NEW = "/sys/class/display/panel0/name";
    private static final String LCD_ID_OLD = "/sys/devices/platform/soc/soc:ap-ahb/20800000.dispc/lcd_name";
    private static final String LSENSOR = "sys/module/sprd_phinfo/parameters/SPRD_LsensorInfo";
    private static final String SENSOR_VERSION = "/sys/class/sprd_sensorhub/sensor_hub/sensor_info";
    private static final boolean SUPPORT_MATERIAL_INFO = false;
    private static final String TAG = "TestInfoQRCode";
    private static final String TEXT_FAIL = "FAIL";
    private static final String TEXT_PASS = "PASS";
    private static final String TP_CHIP_ID = "/sys/touchscreen/chip_id";
    private static final String TP_FIRMWARE_VERSION = "/sys/touchscreen/firmware_version";
    private SharedPreferences mPrefs;
    private ArrayList<TestItem> mTestItemsArray = new ArrayList<>();

    public String getTestInfoQRCode(Context context) throws JSONException {
        String str;
        try {
            PhaseCheckParse phaseCheckParse = PhaseCheckParse.getInstance();
            EngSqlite engSqlite = EngSqlite.getInstance(context);
            this.mTestItemsArray.clear();
            this.mTestItemsArray = engSqlite.queryData(UnitTestItemList.getInstance(context).getTestItemList());
            this.mPrefs = PreferenceManager.getDefaultSharedPreferences(context);
            JSONObject jSONObject = new JSONObject();
            int i = 0;
            String snByIndex = phaseCheckParse.getSnByIndex(0);
            String snByIndex2 = phaseCheckParse.getSnByIndex(1);
            String imei = ValidationToolsUtils.getImei(context, 0);
            String imei2 = ValidationToolsUtils.getImei(context, 1);
            int iQueryFailCount = engSqlite.queryFailCount();
            String str2 = TEXT_PASS;
            String str3 = "FAIL";
            String str4 = (iQueryFailCount == 0 && engSqlite.queryNotTestCount() == 0) ? TEXT_PASS : "FAIL";
            JSONArray jSONArray = new JSONArray();
            Iterator<TestItem> it = this.mTestItemsArray.iterator();
            boolean z = false;
            String str5 = "";
            Object obj = str5;
            Object obj2 = obj;
            while (it.hasNext()) {
                TestItem next = it.next();
                Iterator<TestItem> it2 = it;
                JSONObject jSONObject2 = new JSONObject();
                String str6 = str2;
                String str7 = str3;
                if (next.getTestResult() == 2) {
                    str = "UnTest";
                } else {
                    str = next.getTestResult() == 1 ? str6 : str7;
                }
                String str8 = str5;
                Log.d(TAG, "testItem result = " + str);
                jSONObject2.put(next.getTestName(), str);
                jSONArray.put(jSONObject2);
                Log.d(TAG, "getTestname = " + next.getTestName() + "\n");
                i++;
                if (next.getTestResult() == 1 || z) {
                    str5 = str8;
                } else {
                    Log.d(TAG, "getTestname test code = " + i + "\n");
                    String testClassName = next.getTestClassName();
                    String testName = next.getTestName();
                    str5 = BaseActivity.STATION_MMIT_VALUE + i;
                    Log.d(TAG, "getTestname test mErrCode = " + str5 + ",mErrType=" + testClassName + ",mErrMsg=" + testName);
                    obj = testClassName;
                    obj2 = testName;
                    z = true;
                }
                it = it2;
                str2 = str6;
                str3 = str7;
            }
            Log.d(TAG, "sn1 = " + snByIndex + ",sn2=" + snByIndex2);
            Log.d(TAG, "imei1 = " + imei + ",imei2 = " + imei2);
            Log.d(TAG, "mElapsedTime = ,mTestResult=" + str4);
            jSONObject.put("SN1", snByIndex);
            jSONObject.put("SN2", snByIndex2);
            jSONObject.put("IMEI1", imei);
            jSONObject.put("IMEI2", imei2);
            jSONObject.put("TestResult", str4);
            jSONObject.put("ErrCode", str5);
            jSONObject.put("ErrType", obj);
            jSONObject.put("ErrMsg", obj2);
            jSONObject.put("TestDetail", jSONArray);
            Log.d(TAG, "getTestInfoQRCode:\n" + jSONObject.toString());
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private String getLcdID() {
        String str = LCD_ID_OLD;
        if (!FileUtils.fileIsExists(LCD_ID_OLD)) {
            str = LCD_ID_NEW;
        }
        return FileUtils.readFile(str);
    }

    private String getCameraID() {
        String file = FileUtils.readFile(CAMERA_SENSOR);
        return TextUtils.isEmpty(file) ? SystemProperties.get("vendor.cam.sensor.info") : file;
    }

    private String getLsensorID() {
        return FileUtils.readFile(LSENSOR);
    }

    private String getGsensorID() {
        return FileUtils.readFile(GSENSOR);
    }

    private String getTpID() {
        return FileUtils.readFile(TP_CHIP_ID);
    }

    private String getTpVersion() {
        return FileUtils.readFile(TP_FIRMWARE_VERSION);
    }
}
