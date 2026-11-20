package com.sprd.logmanager.logui;

import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import com.sprd.logmanager.R;
import com.sprd.logmanager.utils.MiscUtils;
import com.sprd.logmanager.utils.PropUtils;
import java.io.IOException;

/* loaded from: classes.dex */
public class ModemLogSceneActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    private static String TAG = "ModemLogSceneActivity";
    private CheckBoxPreference mDefaultCheckBox;
    private CheckBoxPreference mSpecialDebugCheckBox1;
    private CheckBoxPreference mSpecialDebugCheckBox2;
    private CheckBoxPreference mSpecialDebugCheckBox3_1;
    private CheckBoxPreference mSpecialDebugCheckBox3_2;
    private CheckBoxPreference mSpecialDebugCheckBox3_3;
    private CheckBoxPreference mSpecialDebugCheckBox4_1;
    private CheckBoxPreference mSpecialDebugCheckBox4_2;
    private CheckBoxPreference mSpecialDebugCheckBox4_3;
    private CheckBoxPreference mSpecialDebugCheckBox5_1;
    private CheckBoxPreference mSpecialDebugCheckBox5_2;
    private CheckBoxPreference mSpecialDebugCheckBox5_3;
    private CheckBoxPreference mSpecialDebugCheckBox5_4;
    private CheckBoxPreference mSpecialDebugCheckBox5_5;
    private CheckBoxPreference mSpecialDebugCheckBox5_6;
    private CheckBoxPreference mSpecialDebugCheckBox6;
    private CheckBoxPreference mSpecialDebugCheckBox7_1;
    private CheckBoxPreference mSpecialDebugCheckBox7_2;
    private CheckBoxPreference mSpecialDebugCheckBox7_3;
    private CheckBoxPreference mSpecialDebugCheckBox8;
    private CheckBoxPreference mSpecialUserCheckBox1;
    private byte[] mModulePS = new byte[47];
    private byte[] mModuleDSP = new byte[14];
    private byte[] mSap = new byte[93];
    private int[] mModulePsIds = {19, 2, 59, 16, 18, 39, 42, 37, 44, 36, 43, 40, 38, 41, 26, 8, 13, 14, 15, 9, 57, 11, 12, 10, 20, 21, 33, 34, 32, 31, 29, 27, 30, 24, 58, 70, 66, 64, 63, 62, 65, 67, 60, 61, 68, 69, 1};
    private int[] mModuleSapIds = {66, 251, 4, 77, 45, 9, 67, 72, 0, 0, 40, 41, 49, 52, 42, 111, 68, 122, 80, 0, 0, 185, 0, 0, 0, 0, 64, 103, 0, 190, 0, 5, 112, 1, 7, 6, 43, 199, 48, 53, 54, 47, 120, 114, 157, 108, 81, 50, 3, 189, 159, 158, 78, 109, 51, 200, 8, 113, 56, 92, 55, 250, 160, 161, 163, 0, 110, 0, 170, 169, 0, 0, 0, 0, 191, 181, 166, 253, 164, 0, 0, 177, 168, 172, 173, 174, 175, 176, 179, 180, 183, 0, 0};

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        return true;
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.pref_modem_log_scene);
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference("checkbox_default");
        this.mDefaultCheckBox = checkBoxPreference;
        checkBoxPreference.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference2 = (CheckBoxPreference) findPreference("checkbox_special_user1");
        this.mSpecialUserCheckBox1 = checkBoxPreference2;
        checkBoxPreference2.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference3 = (CheckBoxPreference) findPreference("checkbox_special_debug1");
        this.mSpecialDebugCheckBox1 = checkBoxPreference3;
        checkBoxPreference3.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference4 = (CheckBoxPreference) findPreference("checkbox_special_debug2");
        this.mSpecialDebugCheckBox2 = checkBoxPreference4;
        checkBoxPreference4.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference5 = (CheckBoxPreference) findPreference("checkbox_special_debug3_1");
        this.mSpecialDebugCheckBox3_1 = checkBoxPreference5;
        checkBoxPreference5.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference6 = (CheckBoxPreference) findPreference("checkbox_special_debug3_2");
        this.mSpecialDebugCheckBox3_2 = checkBoxPreference6;
        checkBoxPreference6.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference7 = (CheckBoxPreference) findPreference("checkbox_special_debug3_3");
        this.mSpecialDebugCheckBox3_3 = checkBoxPreference7;
        checkBoxPreference7.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference8 = (CheckBoxPreference) findPreference("checkbox_special_debug4_1");
        this.mSpecialDebugCheckBox4_1 = checkBoxPreference8;
        checkBoxPreference8.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference9 = (CheckBoxPreference) findPreference("checkbox_special_debug4_2");
        this.mSpecialDebugCheckBox4_2 = checkBoxPreference9;
        checkBoxPreference9.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference10 = (CheckBoxPreference) findPreference("checkbox_special_debug4_3");
        this.mSpecialDebugCheckBox4_3 = checkBoxPreference10;
        checkBoxPreference10.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference11 = (CheckBoxPreference) findPreference("checkbox_special_debug5_1");
        this.mSpecialDebugCheckBox5_1 = checkBoxPreference11;
        checkBoxPreference11.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference12 = (CheckBoxPreference) findPreference("checkbox_special_debug5_2");
        this.mSpecialDebugCheckBox5_2 = checkBoxPreference12;
        checkBoxPreference12.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference13 = (CheckBoxPreference) findPreference("checkbox_special_debug5_3");
        this.mSpecialDebugCheckBox5_3 = checkBoxPreference13;
        checkBoxPreference13.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference14 = (CheckBoxPreference) findPreference("checkbox_special_debug5_4");
        this.mSpecialDebugCheckBox5_4 = checkBoxPreference14;
        checkBoxPreference14.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference15 = (CheckBoxPreference) findPreference("checkbox_special_debug5_5");
        this.mSpecialDebugCheckBox5_5 = checkBoxPreference15;
        checkBoxPreference15.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference16 = (CheckBoxPreference) findPreference("checkbox_special_debug5_6");
        this.mSpecialDebugCheckBox5_6 = checkBoxPreference16;
        checkBoxPreference16.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference17 = (CheckBoxPreference) findPreference("checkbox_special_debug6");
        this.mSpecialDebugCheckBox6 = checkBoxPreference17;
        checkBoxPreference17.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference18 = (CheckBoxPreference) findPreference("checkbox_special_debug7_1");
        this.mSpecialDebugCheckBox7_1 = checkBoxPreference18;
        checkBoxPreference18.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference19 = (CheckBoxPreference) findPreference("checkbox_special_debug7_2");
        this.mSpecialDebugCheckBox7_2 = checkBoxPreference19;
        checkBoxPreference19.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference20 = (CheckBoxPreference) findPreference("checkbox_special_debug7_3");
        this.mSpecialDebugCheckBox7_3 = checkBoxPreference20;
        checkBoxPreference20.setOnPreferenceChangeListener(this);
        CheckBoxPreference checkBoxPreference21 = (CheckBoxPreference) findPreference("checkbox_special_debug8");
        this.mSpecialDebugCheckBox8 = checkBoxPreference21;
        checkBoxPreference21.setOnPreferenceChangeListener(this);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.modem_log_scene_menu, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws InterruptedException, IOException {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.commit) {
            doCommit();
        } else if (itemId == R.id.select_all) {
            setSelectAll(true);
        } else if (itemId == R.id.unselect_all) {
            setSelectAll(false);
        } else {
            Log.v(TAG, "No item match!");
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void doCommit() throws InterruptedException, IOException {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3 = null;
        if (this.mDefaultCheckBox.isChecked()) {
            bArr3 = new byte[]{15, 15, 15, 15, 15, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 8, 15, 15, 7, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 15, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 6, 6, 6, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15, 7, 15, 15, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 15};
            mergeLogLevel(bArr3, bArr, bArr2);
        } else {
            bArr = null;
            bArr2 = null;
        }
        if (this.mSpecialUserCheckBox1.isChecked()) {
            bArr3 = new byte[]{3, 3, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 3, 8, 7, 7, 7, 3, 3, 3, 7, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3};
            bArr2 = new byte[]{15, 15, 0, 15, 15, 0, 15, 15, 7, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 15, 0, 7, 0, 15, 6, 15, 6, 6, 6, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 1, 6, 6, 6, 6, 6, 3, 3, 3, 3, 3, 7, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox1.isChecked()) {
            bArr3 = new byte[]{7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 8, 7, 7, 3, 3, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 1, 1, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 15, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 0, 15, 0, 2, 6, 15, 6, 6, 6, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 15};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox2.isChecked()) {
            bArr3 = new byte[]{15, 15, 15, 15, 1, 7, 7, 7, 7, 7, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 3, 8, 3, 3, 3, 3, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 0, 7, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 0, 0, 0, 0, 0, 0, 0, 7, 0, 2, 6, 15, 6, 6, 6, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox3_1.isChecked()) {
            bArr3 = new byte[]{3, 3, 3, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 8, 7, 7, 3, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0};
            bArr = new byte[]{1, 3, 3, 1, 1, 1, 7, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 0, 15, 7, 0, 0, 6, 15, 6, 6, 6, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 0, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15, 7, 15, 15, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox3_2.isChecked()) {
            bArr3 = new byte[]{3, 3, 3, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 8, 7, 7, 3, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 1, 1, 1, 7, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 0, 15, 7, 0, 0, 6, 15, 6, 6, 6, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 0, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15, 7, 15, 15, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox3_3.isChecked()) {
            bArr3 = new byte[]{3, 3, 3, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 8, 7, 7, 3, 3, 3, 7, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 1, 1, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 0, 15, 7, 0, 0, 6, 7, 6, 6, 6, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 0, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15, 7, 15, 15, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox4_1.isChecked()) {
            bArr3 = new byte[]{7, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7, 15, 15, 15, 0, 15, 15, 15, 15, 15, 7, 8, 3, 3, 7, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 7, 14, 14, 14, 0, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 0, 0, 7, 0, 15, 6, 15, 6, 6, 0, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox4_2.isChecked()) {
            bArr3 = new byte[]{7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7, 15, 15, 15, 0, 15, 15, 15, 15, 15, 3, 8, 3, 3, 3, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 15, 14, 14, 14, 0, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 0, 15, 7, 0, 15, 6, 15, 6, 6, 0, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox4_3.isChecked()) {
            bArr3 = new byte[]{7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 3, 15, 15, 15, 0, 15, 15, 15, 15, 15, 3, 8, 3, 3, 3, 3, 3, 3, 7, 7, 7, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 7, 14, 14, 14, 0, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 0, 15, 7, 0, 15, 6, 15, 6, 6, 0, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox5_1.isChecked()) {
            bArr3 = new byte[]{7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 15, 0, 0, 15, 15, 15, 15, 15, 15, 8, 3, 3, 7, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 7, 0, 14, 0, 0, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 0, 0, 7, 0, 0, 0, 15, 6, 0, 0, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 0, 15, 0, 0, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox5_2.isChecked()) {
            bArr3 = new byte[]{1, 1, 1, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 15, 0, 0, 15, 15, 15, 15, 15, 15, 8, 3, 3, 7, 3, 3, 3, 7, 7, 7, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 15};
            bArr = new byte[]{1, 3, 3, 3, 1, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 14, 0, 0, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 15, 6, 0, 0, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 0, 15, 0, 0, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 3, 7, 7, 7, 7, 15, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox5_3.isChecked()) {
            bArr3 = new byte[]{1, 1, 1, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 15, 0, 0, 15, 15, 15, 15, 15, 15, 8, 3, 3, 7, 3, 3, 3, 7, 7, 7, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 15};
            bArr = new byte[]{1, 3, 3, 1, 3, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 14, 0, 0, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 15, 6, 0, 0, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 0, 15, 0, 0, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 3, 7, 7, 7, 7, 15, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox5_4.isChecked()) {
            bArr3 = new byte[]{1, 1, 1, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 15, 0, 0, 15, 15, 15, 15, 15, 15, 8, 3, 3, 7, 3, 3, 3, 7, 7, 7, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 14, 0, 0, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 15, 6, 0, 0, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 0, 15, 0, 0, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 3, 7, 7, 7, 7, 15, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox5_5.isChecked()) {
            bArr3 = new byte[]{1, 1, 1, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 15, 0, 0, 15, 15, 15, 15, 15, 3, 8, 3, 3, 7, 3, 3, 3, 7, 7, 7, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 14, 0, 0, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 15, 6, 0, 0, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 0, 15, 0, 0, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 3, 7, 7, 7, 7, 7, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox5_6.isChecked()) {
            bArr3 = new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 15, 0, 0, 15, 15, 15, 15, 15, 15, 8, 3, 3, 7, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 0, 14, 0, 0, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 15, 6, 0, 0, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 0, 15, 0, 0, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox6.isChecked()) {
            bArr3 = new byte[]{7, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 3, 15, 15, 15, 0, 15, 15, 15, 15, 15, 3, 8, 3, 3, 3, 3, 3, 7, 3, 7, 7, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 15};
            bArr = new byte[]{1, 3, 3, 7, 7, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 3, 3, 14, 14, 14, 0, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 0, 0, 3, 0, 15, 6, 15, 6, 6, 0, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox7_1.isChecked()) {
            bArr3 = new byte[]{7, 7, 3, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 7, 0, 15, 15, 0, 15, 15, 15, 15, 15, 7, 8, 3, 3, 3, 3, 3, 7, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 3, 1, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 7, 0, 14, 14, 0, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 0, 7, 0, 15, 0, 7, 6, 6, 0, 7, 7, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 0, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox7_2.isChecked()) {
            bArr3 = new byte[]{7, 3, 3, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 7, 0, 15, 15, 0, 15, 15, 15, 15, 15, 15, 8, 3, 3, 7, 3, 3, 7, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 3, 1, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 15, 0, 14, 14, 0, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 0, 0, 7, 0, 15, 0, 7, 6, 6, 0, 7, 7, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 0, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox7_3.isChecked()) {
            bArr3 = new byte[]{7, 3, 3, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 7, 7, 0, 15, 0, 15, 15, 15, 15, 15, 15, 7, 8, 3, 3, 7, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 15, 15, 15, 7, 15, 0, 14, 0, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 0, 0, 7, 0, 15, 0, 15, 6, 0, 6, 15, 15, 0, 15, 0, 0, 0, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 0, 15, 0, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (this.mSpecialDebugCheckBox8.isChecked()) {
            bArr3 = new byte[]{7, 7, 7, 3, 1, 7, 7, 7, 7, 7, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 7, 8, 3, 3, 3, 3, 3, 3, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 15};
            bArr = new byte[]{1, 3, 3, 3, 3, 1, 3, 1, 1, 3, 1, 1, 1, 1};
            bArr2 = new byte[]{15, 15, 15, 15, 15, 0, 15, 0, 7, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 7, 0, 2, 6, 15, 6, 6, 6, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 15, 15, 15, 6, 15, 15, 15, 15, 1, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 7};
            mergeLogLevel(bArr3, bArr, bArr2);
        }
        if (bArr3 != null && bArr != null && bArr2 != null) {
            sendATCmd();
        } else {
            Toast.makeText(this, "Please select one scene at least!", 0).show();
        }
    }

    private void sendATCmd() throws InterruptedException, IOException {
        String strSendAt;
        String strSendAt2 = MiscUtils.sendAt("AT+ARMLOG=1", "atchannel0");
        if (strSendAt2 == null || !strSendAt2.contains("OK")) {
            Toast.makeText(this, "Set Fail!", 0).show();
            return;
        }
        String strSendAt3 = MiscUtils.sendAt("AT+SPDSPOP=2", "atchannel0");
        if (strSendAt3 == null || !strSendAt3.contains("OK")) {
            Toast.makeText(this, "Set Fail!", 0).show();
            return;
        }
        String strSendAt4 = MiscUtils.sendAt("AT+SPDSPLOG=2,2,\"030101030201030301030401030501030601030701030801030901030A01030B01030C01030D01030E01\"", "atchannel0");
        if (strSendAt4 == null || !strSendAt4.contains("OK")) {
            Toast.makeText(this, "Set Fail!", 0).show();
            return;
        }
        StringBuilder sb = new StringBuilder("AT+ARMLOGCFG=\"");
        for (int i = 0; i < this.mSap.length; i++) {
            if (this.mModuleSapIds[i] != 0) {
                sb.append("01");
                sb.append(String.format("%02X", Integer.valueOf(this.mModuleSapIds[i])));
                sb.append(String.format("%2s", Integer.toHexString(this.mSap[i])).replace(' ', '0'));
            }
        }
        for (int i2 = 0; i2 < this.mModulePS.length; i2++) {
            sb.append("02");
            sb.append(String.format("%02X", Integer.valueOf(this.mModulePsIds[i2])));
            sb.append(String.format("%2s", Integer.toHexString(this.mModulePS[i2])).replace(' ', '0'));
        }
        int i3 = 0;
        while (i3 < this.mModuleDSP.length) {
            sb.append("03");
            int i4 = i3 + 1;
            sb.append(String.format("%02X", Integer.valueOf(i4)));
            sb.append(String.format("%2s", Integer.toHexString(this.mModuleDSP[i3])).replace(' ', '0'));
            i3 = i4;
        }
        sb.append("\"");
        String strSendAt5 = MiscUtils.sendAt(sb.toString(), "atchannel0");
        if (strSendAt5 == null || !strSendAt5.contains("OK")) {
            Toast.makeText(this, "Set Fail!", 0).show();
            return;
        }
        String strSendAt6 = MiscUtils.sendAt("AT+SPCAPLOG=1", "atchannel0");
        if (strSendAt6 == null || !strSendAt6.contains("OK")) {
            Toast.makeText(this, "Set Fail!", 0).show();
            return;
        }
        if ("userdebug".equalsIgnoreCase(PropUtils.getProp("ro.build.type"))) {
            strSendAt = MiscUtils.sendAt("AT+SPCAPLEN=1500", "atchannel0");
        } else {
            strSendAt = MiscUtils.sendAt("AT+SPCAPLEN=80", "atchannel0");
        }
        if (strSendAt == null || !strSendAt.contains("OK")) {
            Toast.makeText(this, "Set Fail!", 0).show();
        } else {
            Toast.makeText(this, "Set Success!", 0).show();
        }
    }

    private void mergeLogLevel(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr4 = this.mSap;
            if (i2 >= bArr4.length) {
                break;
            }
            bArr4[i2] = (byte) (bArr4[i2] | bArr3[i2]);
            i2++;
        }
        int i3 = 0;
        while (true) {
            byte[] bArr5 = this.mModulePS;
            if (i3 >= bArr5.length) {
                break;
            }
            bArr5[i3] = (byte) (bArr5[i3] | bArr[i3]);
            i3++;
        }
        while (true) {
            byte[] bArr6 = this.mModuleDSP;
            if (i >= bArr6.length) {
                return;
            }
            bArr6[i] = (byte) (bArr6[i] | bArr2[i]);
            i++;
        }
    }

    private void setSelectAll(boolean z) {
        this.mDefaultCheckBox.setChecked(z);
        this.mSpecialUserCheckBox1.setChecked(z);
        this.mSpecialDebugCheckBox1.setChecked(z);
        this.mSpecialDebugCheckBox2.setChecked(z);
        this.mSpecialDebugCheckBox3_1.setChecked(z);
        this.mSpecialDebugCheckBox3_2.setChecked(z);
        this.mSpecialDebugCheckBox3_3.setChecked(z);
        this.mSpecialDebugCheckBox4_1.setChecked(z);
        this.mSpecialDebugCheckBox4_2.setChecked(z);
        this.mSpecialDebugCheckBox4_3.setChecked(z);
        this.mSpecialDebugCheckBox5_1.setChecked(z);
        this.mSpecialDebugCheckBox5_2.setChecked(z);
        this.mSpecialDebugCheckBox5_3.setChecked(z);
        this.mSpecialDebugCheckBox5_4.setChecked(z);
        this.mSpecialDebugCheckBox5_5.setChecked(z);
        this.mSpecialDebugCheckBox5_6.setChecked(z);
        this.mSpecialDebugCheckBox6.setChecked(z);
        this.mSpecialDebugCheckBox7_1.setChecked(z);
        this.mSpecialDebugCheckBox7_2.setChecked(z);
        this.mSpecialDebugCheckBox7_3.setChecked(z);
        this.mSpecialDebugCheckBox8.setChecked(z);
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
