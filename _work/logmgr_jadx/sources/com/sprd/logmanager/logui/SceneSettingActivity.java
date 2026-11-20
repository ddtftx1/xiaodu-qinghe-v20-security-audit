package com.sprd.logmanager.logui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.sprd.logmanager.R;
import com.sprd.logmanager.database.LogManagerPreference;
import com.sprd.logmanager.database.LogSceneManager;
import com.sprd.logmanager.logcontrol.APLogControl;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SceneSettingActivity extends Activity implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {
    private APLogControl mApLogControl;
    private CPLogControlThroughHidl mCpLogControl;
    private ListView mListView;
    private LogManagerPreference mLogManagerPreference;
    private ProgressDialog mProgressDialog;
    private SceneListAdapter mSceneListAdapter;

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        return true;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.ylog_scene);
        this.mApLogControl = APLogControl.getInstance();
        this.mCpLogControl = CPLogControlThroughHidl.getInstance();
        this.mLogManagerPreference = LogManagerPreference.getInstanse();
        initViews();
    }

    private void initViews() {
        ListView listView = (ListView) findViewById(R.id.scenelist);
        this.mListView = listView;
        setListViewHeightBasedOnChildren(listView);
        SceneListAdapter sceneListAdapter = new SceneListAdapter(this, (ArrayList) LogSceneManager.getInstance().getAllSceneInfoList(this));
        this.mSceneListAdapter = sceneListAdapter;
        this.mListView.setAdapter((ListAdapter) sceneListAdapter);
        this.mListView.setOnItemClickListener(this);
        this.mListView.setOnItemLongClickListener(this);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        dismissProgressDialog(this.mProgressDialog);
        this.mProgressDialog = null;
        super.onDestroy();
    }

    public void setListViewHeightBasedOnChildren(ListView listView) {
        ListAdapter adapter;
        if (listView == null || (adapter = listView.getAdapter()) == null) {
            return;
        }
        int measuredHeight = 0;
        for (int i = 0; i < adapter.getCount(); i++) {
            View view = adapter.getView(i, null, listView);
            view.measure(0, 0);
            measuredHeight += view.getMeasuredHeight();
        }
        ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
        layoutParams.height = measuredHeight + (listView.getDividerHeight() * (adapter.getCount() - 1));
        ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(10, 10, 10, 10);
        listView.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProgressDialog() {
        Log.d("SceneSettingActivity", "showProgressDialog");
        runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.SceneSettingActivity.1
            @Override // java.lang.Runnable
            public void run() {
                if (SceneSettingActivity.this.mProgressDialog != null && SceneSettingActivity.this.mProgressDialog.isShowing()) {
                    SceneSettingActivity.this.mProgressDialog.dismiss();
                }
                SceneSettingActivity sceneSettingActivity = SceneSettingActivity.this;
                sceneSettingActivity.mProgressDialog = ProgressDialog.show(sceneSettingActivity, sceneSettingActivity.getResources().getString(R.string.scene_switching), SceneSettingActivity.this.getResources().getString(R.string.scene_switching_wait), true, false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressDialog(ProgressDialog progressDialog) {
        if (progressDialog != null) {
            try {
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            } catch (IllegalArgumentException unused) {
                Log.w("SceneSettingActivity", "exception when dismissing dialog");
            } catch (Exception e) {
                Log.w("SceneSettingActivity", "exception when dismissing dialog." + e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressDialog() {
        Log.d("SceneSettingActivity", "dismissProgressDialog");
        runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.SceneSettingActivity.2
            @Override // java.lang.Runnable
            public void run() {
                SceneSettingActivity sceneSettingActivity = SceneSettingActivity.this;
                sceneSettingActivity.dismissProgressDialog(sceneSettingActivity.mProgressDialog);
                SceneSettingActivity.this.mProgressDialog = null;
            }
        });
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        Log.d("SceneSettingActivity", "position:" + i);
        new Thread(new Runnable() { // from class: com.sprd.logmanager.logui.SceneSettingActivity.3
            @Override // java.lang.Runnable
            public void run() {
                String str = (String) SceneSettingActivity.this.mSceneListAdapter.getItem(i);
                if (!SceneSettingActivity.this.mApLogControl.isLogStarted()) {
                    SceneSettingActivity.this.mApLogControl.setLogStatus(true);
                }
                String selectScene = LogManagerPreference.getInstanse().getSelectScene();
                Log.i("SceneSettingActivity", "last scene is :" + selectScene + ",and new scene is " + str);
                if (str.equals(selectScene) && SceneSettingActivity.this.mApLogControl.isLogStarted()) {
                    return;
                }
                SceneSettingActivity.this.showProgressDialog();
                Log.d("SceneSettingActivity", "sceneName:" + str);
                if (str.equals("Normal")) {
                    LogSceneManager.getInstance().openNormalScene();
                } else if (str.equals("Data")) {
                    LogSceneManager.getInstance().openDataScene();
                } else if (str.equals("Audio")) {
                    LogSceneManager.getInstance().openAudioScene();
                } else if (str.equals("WCN")) {
                    LogSceneManager.getInstance().openWcnScene();
                }
                SceneSettingActivity.this.dismissProgressDialog();
            }
        }).start();
    }
}
