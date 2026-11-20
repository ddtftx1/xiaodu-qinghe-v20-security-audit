package com.hmd.miscdatawriter;

import android.os.Build;
import android.os.Bundle;
import android.os.SystemProperties;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.text.TextUtils;
import android.util.Log;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.R;
import java.util.Arrays;

/* loaded from: classes.dex */
public class CountryCodeSettings extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    private static final String KEY_COUNTRYCODE = "country_code";
    private static final String KEY_WALLPAPERID = "wallpaper_id";
    private static final int MISCDATA_SKUID_OFFSET = 10112;
    private static final int MISCDATA_SKUID_SZ = 18;
    private static final int MISCDATA_WALLPP_OFFSET = 10130;
    private static final int MISCDATA_WALLPP_SZ = 5;
    private String mCountryCode;
    private String[] mCountryCodeArray;
    private ListPreference mCountryCodePref;
    private PhaseCheckParse mPhaseCheckParse;
    private String mWallpaperId;
    private String[] mWallpaperIdArray;
    private ListPreference mWallpaperIdPref;

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("save_flag");
        String stringExtra2 = getIntent().getStringExtra("save_flag1");
        Log.d("skuid", "Build.IS_DEBUGGABLE " + Build.IS_DEBUGGABLE + " saveFlag " + stringExtra + " saveFlag1 " + stringExtra2);
        if (stringExtra != null) {
            Log.d("skuid", "SaveFlag is not null");
            PhaseCheckParse.getInstance().writeMiscdataOffsetByteArray(9252, stringExtra.getBytes());
            finish();
            super.onCreate(null);
            return;
        }
        if (stringExtra2 != null) {
            Log.d("cpu", "SaveFlag is not null cpuid");
            PhaseCheckParse.getInstance().writeMiscdataOffsetByteArray(11216, stringExtra2.getBytes());
            finish();
            super.onCreate(null);
            return;
        }
        addPreferencesFromResource(R.xml.pref_skuid);
        if (!Build.IS_DEBUGGABLE) {
            finish();
        }
        this.mPhaseCheckParse = PhaseCheckParse.getInstance();
        this.mCountryCodePref = (ListPreference) findPreference(KEY_COUNTRYCODE);
        this.mWallpaperIdPref = (ListPreference) findPreference(KEY_WALLPAPERID);
        this.mCountryCode = SystemProperties.get("persist.sys.countrycode", "");
        this.mWallpaperId = SystemProperties.get("persist.sys.wallpapered", "");
        Log.d("skuid", "skuid countryCode " + this.mCountryCode + " wallpaper_id " + this.mWallpaperId);
        this.mCountryCodeArray = getResources().getStringArray(R.array.skuid_entries);
        this.mCountryCodePref.setValueIndex(getIndexFromValues());
        this.mCountryCodePref.setSummary(this.mCountryCode);
        this.mCountryCodePref.setOnPreferenceChangeListener(this);
        this.mWallpaperIdArray = getResources().getStringArray(R.array.wallpaperid_entries);
        this.mWallpaperIdPref.setValueIndex(getWallpaperIndexFromValues());
        this.mWallpaperIdPref.setSummary(this.mWallpaperId);
        this.mWallpaperIdPref.setOnPreferenceChangeListener(this);
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (TextUtils.equals(KEY_COUNTRYCODE, preference.getKey())) {
            int iFindIndexOfValue = this.mCountryCodePref.findIndexOfValue((String) obj);
            String str = "~~" + this.mCountryCodeArray[iFindIndexOfValue];
            if (!TextUtils.isEmpty(this.mCountryCodeArray[iFindIndexOfValue]) && this.mCountryCodeArray[iFindIndexOfValue].length() < 6) {
                Log.d("skuid", "append space char");
                str = str + " ";
            }
            Log.d("skuid", "real skuid " + str);
            this.mPhaseCheckParse.writeMiscdataOffsetByteArray(MISCDATA_SKUID_OFFSET, str.getBytes());
            this.mCountryCodePref.setSummary(this.mCountryCodeArray[iFindIndexOfValue]);
            return true;
        }
        if (!TextUtils.equals(KEY_WALLPAPERID, preference.getKey())) {
            return false;
        }
        int iFindIndexOfValue2 = this.mWallpaperIdPref.findIndexOfValue((String) obj);
        String str2 = "~~" + this.mWallpaperIdArray[iFindIndexOfValue2];
        Log.d("skuid", "real wallpaperid " + str2);
        this.mPhaseCheckParse.writeMiscdataOffsetByteArray(MISCDATA_WALLPP_OFFSET, str2.getBytes());
        this.mWallpaperIdPref.setSummary(this.mWallpaperIdArray[iFindIndexOfValue2]);
        return true;
    }

    private int getIndexFromValues() {
        int iIndexOf = Arrays.asList(this.mCountryCodeArray).indexOf(this.mCountryCode);
        Log.d("skuid", "skuid index " + iIndexOf);
        if (iIndexOf < 0) {
            return 0;
        }
        return iIndexOf;
    }

    private int getWallpaperIndexFromValues() {
        int iIndexOf = Arrays.asList(this.mWallpaperIdArray).indexOf(this.mWallpaperId);
        Log.d("skuid", "wallpaper_id index " + iIndexOf);
        if (iIndexOf < 0) {
            return 0;
        }
        return iIndexOf;
    }
}
