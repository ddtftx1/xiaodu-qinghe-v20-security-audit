package com.sprd.validationtools.itemstest.lcd;

import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class ScreenColorTest extends BaseActivity {
    private static final int[] COLOR_ARRAY = {SupportMenu.CATEGORY_MASK, -16711936, -16776961, InputDeviceCompat.SOURCE_ANY, -1, Color.parseColor("#404040"), Color.parseColor("#808080")};
    TextView mContent;
    private Runnable mRunnable;
    private String TAG = "ScreenColorTest";
    int mIndex = 0;
    int mCount = 0;
    private Handler mUiHandler = new Handler();

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        setContentView(R.layout.background_layout);
        TextView textView = (TextView) findViewById(R.id.lcd_content);
        this.mContent = textView;
        textView.setClickable(true);
        this.mContent.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.lcd.ScreenColorTest.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScreenColorTest.this.setBackground();
            }
        });
        this.mContent.setBackgroundColor(COLOR_ARRAY[this.mIndex]);
        this.mIndex++;
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        hideNavigationBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBackground() {
        int i = this.mIndex;
        int[] iArr = COLOR_ARRAY;
        if (i >= iArr.length) {
            Log.d("huangli", "mIndex>>" + this.mIndex + "   COLOR_ARRAY.length>>" + iArr.length);
            initRsultBtn(findViewById(R.id.result_btn));
            displayRsultBtn(findViewById(R.id.result_btn));
            setPassBtnEnabled(true);
            return;
        }
        this.mContent.setBackgroundColor(iArr[i]);
        this.mIndex++;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
