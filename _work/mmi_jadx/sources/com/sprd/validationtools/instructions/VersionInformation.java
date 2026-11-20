package com.sprd.validationtools.instructions;

import android.os.Bundle;
import android.os.SystemProperties;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import androidx.core.os.EnvironmentCompat;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class VersionInformation extends PreferenceActivity {
    private static final String CDMA_BASEBAND_PROPERTY = "gsm.version.baseband";
    private static final String CUSTOM_BUILD_VERSION_PROPERTY = "ro.vendor.mediatek.version.release";
    private static final String TAG = "VersionInformation";

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.layout.version_info);
        Preference preferenceFindPreference = findPreference("model_number");
        Preference preferenceFindPreference2 = findPreference("android_version");
        Preference preferenceFindPreference3 = findPreference("baseband_version");
        Preference preferenceFindPreference4 = findPreference("build_date");
        Preference preferenceFindPreference5 = findPreference("build_number");
        Preference preferenceFindPreference6 = findPreference("custom_build_version");
        preferenceFindPreference.setSummary(SystemProperties.get("ro.product.model", EnvironmentCompat.MEDIA_UNKNOWN));
        preferenceFindPreference2.setSummary("11");
        preferenceFindPreference3.setSummary(SystemProperties.get(CDMA_BASEBAND_PROPERTY, EnvironmentCompat.MEDIA_UNKNOWN));
        preferenceFindPreference4.setSummary(SystemProperties.get("ro.build.date", EnvironmentCompat.MEDIA_UNKNOWN));
        preferenceFindPreference5.setSummary(SystemProperties.get("ro.build.display.id", EnvironmentCompat.MEDIA_UNKNOWN));
        preferenceFindPreference6.setSummary("20A_W21.03.4.ums512_1h10");
    }

    public static String fliterString(String str) {
        return str != null ? str.replaceAll("MOCORDROIDR_Trunk_", "").replaceAll(".sharkl5Pro", "").replaceAll(".sharkl5", "").replaceAll("_marlin3_lite", "").replaceAll("MARLIN3_", "") : str;
    }
}
