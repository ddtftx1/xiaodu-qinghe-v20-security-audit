package com.sprd.validationtools.background;

import android.content.Context;
import com.sprd.validationtools.modules.TestItem;

/* loaded from: classes.dex */
public interface BackgroundTest {
    public static final int RESULT_FAIL = 0;
    public static final int RESULT_INVALID = -1;
    public static final int RESULT_PASS = 1;

    int getResult();

    String getResultStr();

    TestItem getTestItem(Context context);

    int getTestItemIdx();

    void startTest();

    void stopTest();
}
