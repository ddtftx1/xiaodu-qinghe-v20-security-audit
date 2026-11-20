package com.sprd.validationtools.itemstest.rtc;

import android.os.Bundle;
import android.os.Handler;
import android.widget.TextView;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class RTCTest extends BaseActivity {
    private static final String TAG = "RTCTest";
    public static final String timeFormat = "hh:mm:ss";
    TextView mContent;
    public Handler mHandler = new Handler();
    public long mTime;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.rtc_layout);
        this.mContent = (TextView) findViewById(R.id.rtc_info);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(true);
        this.mTime = System.currentTimeMillis();
        setTimeText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimeText() {
        this.mContent.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.rtc.RTCTest.1
            @Override // java.lang.Runnable
            public void run() {
                RTCTest.this.mContent.setText(((Object) RTCTest.this.getResources().getText(R.string.rtc_tag)) + RTCTest.this.getTime());
                RTCTest.this.mContent.setTextSize(35.0f);
                if (System.currentTimeMillis() - RTCTest.this.mTime > 3000) {
                    return;
                }
                RTCTest.this.setTimeText();
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTime() {
        return new SimpleDateFormat(timeFormat).format(new Date());
    }
}
