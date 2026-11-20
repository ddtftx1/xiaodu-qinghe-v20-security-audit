package com.sprd.validationtools;

import android.app.Activity;
import android.content.Intent;
import android.database.SQLException;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.sprd.validationtools.background.BackgroundBtTest;
import com.sprd.validationtools.background.BackgroundGpsTest;
import com.sprd.validationtools.background.BackgroundSdTest;
import com.sprd.validationtools.background.BackgroundSimTest;
import com.sprd.validationtools.background.BackgroundTest;
import com.sprd.validationtools.background.BackgroundTestActivity;
import com.sprd.validationtools.background.BackgroundWifiTest;
import com.sprd.validationtools.itemstest.TestResultActivity;
import com.sprd.validationtools.modules.AutoTestItemList;
import com.sprd.validationtools.modules.TestItem;
import com.sprd.validationtools.sqlite.EngSqlite;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class AutoTestActivity extends Activity {
    private ArrayList<TestItem> mAutoTestArray = null;
    private int mAutoTestCur = 0;
    private ArrayList<BackgroundTest> mBgTest = null;
    TextView mContent;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) throws SQLException {
        super.onCreate(bundle);
        TextView textView = new TextView(this);
        this.mContent = textView;
        setContentView(textView);
        this.mContent.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.mAutoTestArray = AutoTestItemList.getInstance(this).getTestItemList();
        this.mAutoTestCur = 0;
        startBackgroundTest();
        autoTest();
        removeFailedBgTestToTestlist();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) throws SQLException {
        Log.d("AutoTestActivity", "resultCode>>>" + i2);
        if (i2 == 0) {
            autoTest();
        } else if (i2 == 1) {
            Iterator<BackgroundTest> it = this.mBgTest.iterator();
            while (it.hasNext()) {
                it.next().stopTest();
            }
            finish();
        }
    }

    private void autoTest() throws SQLException {
        ArrayList<TestItem> arrayList = this.mAutoTestArray;
        if (arrayList != null && this.mAutoTestCur < arrayList.size()) {
            Intent intent = new Intent();
            intent.setClassName(this, this.mAutoTestArray.get(this.mAutoTestCur).getTestClassName());
            intent.putExtra(Const.INTENT_PARA_TEST_NAME, this.mAutoTestArray.get(this.mAutoTestCur).getTestName());
            intent.putExtra(Const.INTENT_PARA_TEST_INDEX, this.mAutoTestCur);
            startActivityForResult(intent, 0);
            this.mAutoTestCur++;
            return;
        }
        if (this.mBgTest != null && this.mAutoTestArray != null) {
            EngSqlite engSqlite = EngSqlite.getInstance(this);
            addFailedBgTestToTestlist();
            StringBuffer stringBuffer = new StringBuffer("");
            stringBuffer.append(getResources().getString(R.string.bg_test_notice) + "\n\n");
            Iterator<BackgroundTest> it = this.mBgTest.iterator();
            while (it.hasNext()) {
                BackgroundTest next = it.next();
                next.stopTest();
                engSqlite.updateDB(next.getTestItem(getApplicationContext()).getTestClassName(), next.getResult() == 1 ? 1 : 0);
                stringBuffer.append(next.getResultStr());
                stringBuffer.append("\n\n");
            }
            Intent intent2 = new Intent(this, (Class<?>) BackgroundTestActivity.class);
            intent2.putExtra(Const.INTENT_BACKGROUND_TEST_RESULT, stringBuffer.toString());
            startActivityForResult(intent2, 0);
            this.mBgTest = null;
            return;
        }
        startActivity(new Intent(this, (Class<?>) TestResultActivity.class));
        finish();
    }

    private void addFailedBgTestToTestlist() {
        Iterator<BackgroundTest> it = this.mBgTest.iterator();
        while (it.hasNext()) {
            BackgroundTest next = it.next();
            if (next.getResult() != 1) {
                this.mAutoTestArray.add(next.getTestItem(getApplicationContext()));
            }
        }
    }

    private void removeFailedBgTestToTestlist() {
        Iterator<BackgroundTest> it = this.mBgTest.iterator();
        while (it.hasNext()) {
            TestItem testItem = it.next().getTestItem(getApplicationContext());
            if (this.mAutoTestArray.contains(testItem)) {
                this.mAutoTestArray.remove(testItem);
            }
        }
    }

    private void startBackgroundTest() {
        ArrayList<BackgroundTest> arrayList = new ArrayList<>();
        this.mBgTest = arrayList;
        arrayList.add(new BackgroundBtTest(this));
        this.mBgTest.add(new BackgroundWifiTest(this));
        this.mBgTest.add(new BackgroundGpsTest(this));
        this.mBgTest.add(new BackgroundSimTest(this));
        this.mBgTest.add(new BackgroundSdTest(this));
        Iterator<BackgroundTest> it = this.mBgTest.iterator();
        while (it.hasNext()) {
            it.next().startTest();
        }
    }
}
