package com.sprd.validationtools.modules;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class TestItem {
    private int labelResId;
    private String testClassName;
    private String testName;
    private String testPackageName;
    private int testResult;

    public TestItem(String str, String str2, String str3, int i, int i2) {
        this.labelResId = 0;
        this.testName = str;
        this.testPackageName = str2;
        this.testClassName = str3;
        this.testResult = i;
        this.labelResId = i2;
    }

    public String getTestName() {
        return this.testName;
    }

    public String getTestPackageName() {
        return this.testPackageName;
    }

    public String getTestClassName() {
        return this.testClassName;
    }

    public int getTestResult() {
        return this.testResult;
    }

    public void setTestResult(int i) {
        this.testResult = i;
    }

    public int getTestLabelResId() {
        return this.labelResId;
    }

    public void setTestLabelResId(int i) {
        this.labelResId = i;
    }

    public String getDisplayName(Context context) {
        String string = "";
        try {
            int i = this.labelResId;
            if (i > 0) {
                string = context.getString(i);
            }
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
        }
        return TextUtils.isEmpty(string) ? this.testName : string;
    }
}
