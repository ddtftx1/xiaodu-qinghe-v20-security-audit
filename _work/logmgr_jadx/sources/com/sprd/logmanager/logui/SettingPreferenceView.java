package com.sprd.logmanager.logui;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.sprd.logmanager.R;

/* loaded from: classes.dex */
public class SettingPreferenceView extends RelativeLayout {
    public OnCheckListener mCheckListener;
    private boolean mIsChecked;
    private Switch mSelected;
    private SharedPreferences mSharedPreferences;
    private TextView mSummary;
    private TextView mTips;
    private TextView mTitle;

    public interface OnCheckListener {
        void onCheck();
    }

    public SettingPreferenceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R.layout.setting_preference, this);
        this.mTitle = (TextView) findViewById(R.id.title);
        this.mTips = (TextView) findViewById(R.id.tips);
        this.mSummary = (TextView) findViewById(R.id.summary);
        this.mSelected = (Switch) findViewById(R.id.checkbox);
        setClickable(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.settingpreference);
        this.mTitle.setText(typedArrayObtainStyledAttributes.getString(7));
        this.mSummary.setText(typedArrayObtainStyledAttributes.getString(3));
        this.mTips.setText(typedArrayObtainStyledAttributes.getString(5));
        String string = typedArrayObtainStyledAttributes.getString(4);
        String string2 = typedArrayObtainStyledAttributes.getString(0);
        boolean z = !TextUtils.isEmpty(typedArrayObtainStyledAttributes.getString(2));
        int i = 8;
        this.mSummary.setVisibility((TextUtils.isEmpty(string) || !string.equals("visiable")) ? 8 : 0);
        this.mSelected.setVisibility((TextUtils.isEmpty(string2) || !string2.equals("visiable")) ? 8 : 0);
        String string3 = typedArrayObtainStyledAttributes.getString(6);
        TextView textView = this.mTips;
        if (!TextUtils.isEmpty(string3) && string3.equals("visiable")) {
            i = 0;
        }
        textView.setVisibility(i);
        SharedPreferences sharedPreferences = context.getSharedPreferences("settingpreference", 0);
        this.mSharedPreferences = sharedPreferences;
        boolean z2 = sharedPreferences.getBoolean(this.mTitle.getText().toString(), typedArrayObtainStyledAttributes.getBoolean(1, false));
        this.mIsChecked = z2;
        if (z2) {
            this.mSelected.setChecked(true);
        } else {
            this.mSelected.setChecked(false);
        }
        if (z) {
            this.mSelected.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.logmanager.logui.SettingPreferenceView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    OnCheckListener onCheckListener = SettingPreferenceView.this.mCheckListener;
                    if (onCheckListener != null) {
                        onCheckListener.onCheck();
                    }
                }
            });
        }
    }

    public void setOnCheckListener(OnCheckListener onCheckListener) {
        this.mCheckListener = onCheckListener;
    }

    public void setChecked(boolean z) {
        this.mIsChecked = z;
        this.mSelected.setChecked(z);
        this.mSharedPreferences.edit().putBoolean(this.mTitle.getText().toString(), this.mIsChecked).apply();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            setTitleTextColor(getColor(R.color.black));
            setTipsTextColor(getColor(R.color.gray));
            setSummaryTextColor(getColor(R.color.gray));
        } else {
            setTitleTextColor(getColor(R.color.lightgray));
            setTipsTextColor(getColor(R.color.lightgray));
            setSummaryTextColor(getColor(R.color.lightgray));
        }
    }

    public boolean isChecked() {
        return this.mIsChecked;
    }

    public void setTitleTextColor(int i) {
        this.mTitle.setTextColor(i);
    }

    public void setSummaryTextColor(int i) {
        this.mSummary.setTextColor(i);
    }

    public void setTipsTextColor(int i) {
        this.mTips.setTextColor(i);
    }

    private int getColor(int i) {
        return getResources().getColor(i);
    }
}
