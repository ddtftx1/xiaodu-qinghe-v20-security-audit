package com.sprd.logmanager.logui;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.sprd.logmanager.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SceneListAdapter extends BaseAdapter {
    private static String TAG = "SceneListAdapter";
    private Context mContext;
    private LayoutInflater mInflater;
    private ArrayList<String> mSceneInfoList;

    public static class ViewHolder {
        public TextView sceneInfo;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public SceneListAdapter(Context context, ArrayList<String> arrayList) {
        this.mSceneInfoList = new ArrayList<>();
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
        this.mSceneInfoList = arrayList;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mSceneInfoList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.mSceneInfoList.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate;
        ViewHolder viewHolder;
        if (view == null) {
            viewHolder = new ViewHolder();
            viewInflate = this.mInflater.inflate(R.layout.ylog_scene_list_item, (ViewGroup) null);
            viewHolder.sceneInfo = (TextView) viewInflate.findViewById(R.id.sceneInfo);
            viewInflate.setTag(viewHolder);
        } else {
            viewInflate = view;
            viewHolder = (ViewHolder) view.getTag();
        }
        viewHolder.sceneInfo.setText(this.mSceneInfoList.get(i));
        Log.d(TAG, "position:" + i + " mSceneInfoList.get(position).getSceneName():" + this.mSceneInfoList.get(i));
        return viewInflate;
    }
}
