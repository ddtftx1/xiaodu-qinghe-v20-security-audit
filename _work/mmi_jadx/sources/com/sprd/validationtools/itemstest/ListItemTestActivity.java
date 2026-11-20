package com.sprd.validationtools.itemstest;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.sprd.validationtools.Const;
import com.sprd.validationtools.R;
import com.sprd.validationtools.modules.TestItem;
import com.sprd.validationtools.modules.UnitTestItemList;
import com.sprd.validationtools.sqlite.EngSqlite;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ListItemTestActivity extends Activity {
    private static final String TAG = "ListItemTestActivity";
    private Button backBT;
    private EngSqlite mEngSqlite;
    private ItemListViewAdapter mItemListViewAdapter;
    private ArrayList<TestItem> mItemsListView = new ArrayList<>();
    private int mLastTestItemIndex = 0;
    private ListView mListViewItem;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mEngSqlite = EngSqlite.getInstance(this);
        setContentView(R.layout.activity_validation_tools_main);
        this.mListViewItem = (ListView) findViewById(R.id.ValidationToolsList);
        initAdapter();
        this.mListViewItem.setAdapter((ListAdapter) this.mItemListViewAdapter);
        this.mListViewItem.setOnItemClickListener(new ListItemClickListener());
        Button button = (Button) findViewById(R.id.back_bt);
        this.backBT = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.ListItemTestActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListItemTestActivity.this.finish();
            }
        });
        Window window = getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.addFlags(128);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.mItemsListView.clear();
        super.onDestroy();
    }

    private void initAdapter() {
        EngSqlite engSqlite = EngSqlite.getInstance(this);
        if (engSqlite == null) {
            return;
        }
        this.mItemsListView.addAll(UnitTestItemList.getInstance(this).getTestItemList());
        this.mItemsListView.add(new TestItem("TestResult", TestResultActivity.class.getPackage().getName(), TestResultActivity.class.getName(), -2, R.string.test_result_title));
        for (int i = 0; i < this.mItemsListView.size() - 1; i++) {
            this.mItemsListView.get(i).setTestResult(engSqlite.getTestListItemStatus(this.mItemsListView.get(i).getTestClassName()));
        }
        this.mItemListViewAdapter = new ItemListViewAdapter(this, this.mItemsListView);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == 0 || i2 == 1) {
            int i3 = this.mLastTestItemIndex;
            this.mItemsListView.get(i3).setTestResult(this.mEngSqlite.getTestListItemStatus(this.mItemsListView.get(i3).getTestClassName()));
            this.mItemListViewAdapter.notifyDataSetChanged();
        }
    }

    private class ListItemClickListener implements AdapterView.OnItemClickListener {
        private ListItemClickListener() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ListItemTestActivity.this.mLastTestItemIndex = i;
            Intent intent = new Intent();
            ListItemTestActivity listItemTestActivity = ListItemTestActivity.this;
            intent.setClassName(listItemTestActivity, ((TestItem) listItemTestActivity.mItemsListView.get(i)).getTestClassName());
            intent.putExtra(Const.INTENT_PARA_TEST_NAME, ((TestItem) ListItemTestActivity.this.mItemsListView.get(i)).getTestName());
            intent.putExtra(Const.INTENT_PARA_TEST_INDEX, i);
            ListItemTestActivity.this.startActivityForResult(intent, 0);
        }
    }

    private class ItemListViewAdapter extends BaseAdapter {
        private LayoutInflater mInflater;
        private ArrayList<TestItem> mItemList;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public ItemListViewAdapter(Context context, ArrayList<TestItem> arrayList) {
            this.mItemList = arrayList;
            this.mInflater = (LayoutInflater) ListItemTestActivity.this.getSystemService("layout_inflater");
        }

        @Override // android.widget.Adapter
        public int getCount() {
            ArrayList<TestItem> arrayList = this.mItemList;
            if (arrayList != null) {
                return arrayList.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TestItem testItem = this.mItemList.get(i);
            if (view == null) {
                view = this.mInflater.inflate(R.layout.listview_item, viewGroup, false);
            }
            TextView textView = (TextView) view.findViewById(R.id.listitem_text);
            textView.setText(testItem.getDisplayName(ListItemTestActivity.this.getApplicationContext()));
            if (testItem.getTestResult() == 1) {
                textView.setTextColor(-16711936);
            } else if (testItem.getTestResult() == 0) {
                textView.setTextColor(SupportMenu.CATEGORY_MASK);
            } else {
                textView.setTextColor(-1);
            }
            return view;
        }
    }
}
