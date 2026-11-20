package com.sprd.validationtools.itemstest;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.sprd.validationtools.Const;
import com.sprd.validationtools.Constant;
import com.sprd.validationtools.PhaseCheckParse;
import com.sprd.validationtools.R;
import com.sprd.validationtools.ValidationToolsMainActivity;
import com.sprd.validationtools.difference.station.IStationCheck;
import com.sprd.validationtools.modules.TestItem;
import com.sprd.validationtools.modules.UnitTestItemList;
import com.sprd.validationtools.nvram.NvramAgentHelper;
import com.sprd.validationtools.sqlite.EngSqlite;
import com.sprd.validationtools.utils.IATUtils;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class TestResultActivity extends Activity {
    private static final int STATION_MMI1_INDEX = 56;
    private static final int STATION_MMI2_INDEX = 48;
    private static final int STATION_MMI_F_INDEX = 53;
    private static final String TAG = "TestResultActivity";
    private String mBit;
    private Context mContext;
    private EngSqlite mEngSqlite;
    public TextView mTestResultView;
    private int flagIndex = STATION_MMI1_INDEX;
    private PhaseCheckParse mPhaseCheckParse = null;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.test_result);
        this.mContext = this;
        this.mEngSqlite = EngSqlite.getInstance(this);
        ((ListView) findViewById(R.id.listview_layout)).setAdapter((android.widget.ListAdapter) new ListAdapter(this.mContext, this.mEngSqlite.queryData(UnitTestItemList.getInstance(this).getTestItemList())));
        this.mTestResultView = (TextView) findViewById(R.id.test_result_text);
        Window window = getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.addFlags(128);
        this.mPhaseCheckParse = PhaseCheckParse.getInstance();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        int iQueryAutoTestFailCount = this.mEngSqlite.queryAutoTestFailCount();
        if (iQueryAutoTestFailCount >= 1) {
            this.mTestResultView.setText(getResources().getString(R.string.TestResultTitleStringFail));
            this.mTestResultView.setTextColor(SupportMenu.CATEGORY_MASK);
        }
        String str = ValidationToolsMainActivity.test_station;
        if (Constant.SPREADTRUM.equals(Constant.currentPlatform)) {
            if (this.mPhaseCheckParse == null) {
                return;
            }
            int stationIndex = Const.getStationIndex(str);
            this.mPhaseCheckParse.writeStationTested(stationIndex);
            if (iQueryAutoTestFailCount >= 1) {
                this.mPhaseCheckParse.writeStationFail(stationIndex);
                return;
            } else {
                this.mPhaseCheckParse.writeStationPass(stationIndex);
                setSuccess();
                return;
            }
        }
        if (Constant.MEDIATEK.equals(Constant.currentPlatform)) {
            if (IStationCheck.STATION_MMI_F.equals(str)) {
                this.flagIndex = STATION_MMI_F_INDEX;
            } else if (IStationCheck.STATION_MMI1.equals(str)) {
                this.flagIndex = STATION_MMI1_INDEX;
            } else if (IStationCheck.STATION_MMI2.equals(str)) {
                this.flagIndex = STATION_MMI2_INDEX;
            }
            Log.d(TAG, "set result: " + str);
            Log.d(TAG, "set result_fail count: " + iQueryAutoTestFailCount);
            NvramAgentHelper.wirteNvramBuffByIndex(this.flagIndex, iQueryAutoTestFailCount > 0 ? (byte) 70 : (byte) 80);
        }
    }

    static class ViewHolder {
        public TextView textCase;
        public TextView textID;
        public TextView textResult;

        ViewHolder() {
        }
    }

    private class ListAdapter extends BaseAdapter {
        private Context mContext;
        private ArrayList<TestItem> mItems;
        private LayoutInflater mLayoutInflater;
        private ViewHolder mViewHolder = new ViewHolder();

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public ListAdapter(Context context, ArrayList<TestItem> arrayList) {
            this.mContext = context;
            this.mLayoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
            this.mItems = arrayList;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mItems.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.mLayoutInflater.inflate(R.layout.table_row_layout, viewGroup, false);
            }
            this.mViewHolder.textID = (TextView) view.findViewById(R.id.id_text);
            this.mViewHolder.textCase = (TextView) view.findViewById(R.id.test_case);
            this.mViewHolder.textResult = (TextView) view.findViewById(R.id.test_result);
            this.mViewHolder.textID.setText(String.valueOf(i + 1));
            this.mViewHolder.textCase.setText(this.mItems.get(i).getDisplayName(TestResultActivity.this.getApplicationContext()));
            if (this.mItems.get(i).getTestResult() == 0) {
                this.mViewHolder.textResult.setText(TestResultActivity.this.getResources().getString(R.string.text_fail));
                this.mViewHolder.textResult.setTextColor(SupportMenu.CATEGORY_MASK);
                TestResultActivity.this.mTestResultView.setText(TestResultActivity.this.getResources().getString(R.string.TestResultTitleStringFail));
                TestResultActivity.this.mTestResultView.setTextColor(SupportMenu.CATEGORY_MASK);
            } else if (this.mItems.get(i).getTestResult() == 1) {
                this.mViewHolder.textResult.setText(TestResultActivity.this.getResources().getString(R.string.text_pass));
                this.mViewHolder.textResult.setTextColor(-16711936);
            } else {
                this.mViewHolder.textResult.setText(TestResultActivity.this.getResources().getString(R.string.text_na));
                this.mViewHolder.textResult.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            }
            return view;
        }
    }

    private void setSuccess() {
        new Thread(new Runnable() { // from class: com.sprd.validationtools.itemstest.TestResultActivity.1
            @Override // java.lang.Runnable
            public void run() {
                String strSendATCmd = IATUtils.sendATCmd("AT+SGMR=0,0,4", "atchannel0");
                Log.d(TestResultActivity.TAG, "setSuccess get result str = " + strSendATCmd);
                if (strSendATCmd.contains(IATUtils.AT_OK)) {
                    TestResultActivity.this.mBit = getBitStr(strSendATCmd.split("\n")[0].split(":")[1].trim());
                    Log.d(TestResultActivity.TAG, "mBit: " + TestResultActivity.this.mBit);
                    long j = Long.parseLong(TestResultActivity.this.mBit, 16) | Long.parseLong("08000000", 16);
                    Log.d(TestResultActivity.TAG, "setSuccess set result cc = " + Long.toHexString(j) + ", str = " + IATUtils.sendATCmd("AT+SGMR=0,1,4,\"" + get8Bit("" + Long.toHexString(j)) + "\"", "atchannel0"));
                }
            }

            private String getBitStr(String str) {
                return str.substring(str.indexOf("0x") + 2).trim();
            }

            private String get8Bit(String str) {
                return str.length() < 8 ? "0" + str : str;
            }
        }).start();
    }
}
