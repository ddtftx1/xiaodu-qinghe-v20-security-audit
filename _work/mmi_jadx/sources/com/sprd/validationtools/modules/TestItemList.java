package com.sprd.validationtools.modules;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import com.sprd.validationtools.Const;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class TestItemList {
    private static final String TAG = "TestItemList";
    private ArrayList<TestItem> mTestItemList = new ArrayList<>();

    public abstract String[] getfilterClassName();

    public TestItemList(Context context) throws PackageManager.NameNotFoundException {
        addAndFilterTestItemList(context, getfilterClassName());
    }

    public ArrayList<TestItem> getTestItemList() {
        ArrayList<TestItem> arrayList;
        synchronized (this.mTestItemList) {
            arrayList = this.mTestItemList;
        }
        return arrayList;
    }

    public TestItem getTestItemByClassName(String str) {
        synchronized (this.mTestItemList) {
            Iterator<TestItem> it = this.mTestItemList.iterator();
            while (it.hasNext()) {
                TestItem next = it.next();
                if (str != null && str.equals(next.getTestClassName())) {
                    Log.d(TAG, "getTestItemByClassName className=" + str);
                    return next;
                }
            }
            Log.d(TAG, "getTestItemByClassName NOT FOUND!");
            return null;
        }
    }

    private ArrayList<TestItem> addAndFilterTestItemList(Context context, String[] strArr) throws PackageManager.NameNotFoundException {
        ActivityInfo activityInfo;
        if (strArr == null) {
            return null;
        }
        for (String str : strArr) {
            ComponentName componentName = new ComponentName(context, str);
            try {
                activityInfo = context.getPackageManager().getActivityInfo(componentName, 128);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                activityInfo = null;
            }
            if (activityInfo == null) {
                return null;
            }
            String string = context.getString(activityInfo.labelRes);
            if (TextUtils.isEmpty(string)) {
                string = componentName.getShortClassName();
            }
            TestItem testItem = new TestItem(string, componentName.getPackageName(), componentName.getClassName(), 2, activityInfo.labelRes);
            if (Const.isSupport(str, context)) {
                this.mTestItemList.add(testItem);
            }
        }
        return this.mTestItemList;
    }
}
