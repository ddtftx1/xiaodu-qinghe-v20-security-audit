package com.sprd.validationtools.itemstest.tp;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class MutiTouchTest extends BaseActivity {
    private static final String TAG = "MutiTouchTest";
    private boolean isShowNavigationBar = false;
    private Context mContext;
    private DisplayMetrics mDisplayMetrics;
    private MainHandler mHandler;
    private MuiltImageView mImgView;
    private TextView mTextView;

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        this.mContext = this;
        getWindow().addFlags(128);
        this.mDisplayMetrics = new DisplayMetrics();
        ((WindowManager) getSystemService("window")).getDefaultDisplay().getMetrics(this.mDisplayMetrics);
        this.mHandler = new MainHandler();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        setContentView(createView());
        if (this.isShowNavigationBar) {
            hideNavigationBar();
        }
    }

    private View createView() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-2, -2);
        this.mTextView = new TextView(this);
        this.mImgView = new MuiltImageView(this, this.mDisplayMetrics.widthPixels, this.mDisplayMetrics.heightPixels, this.mHandler);
        this.mTextView.setLayoutParams(layoutParams2);
        this.mImgView.setLayoutParams(layoutParams2);
        this.mTextView.setText(getString(R.string.muti_touchpoint_info));
        linearLayout.addView(this.mTextView);
        linearLayout.addView(this.mImgView);
        return linearLayout;
    }

    private class MainHandler extends Handler {
        private MainHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                Toast.makeText(MutiTouchTest.this.mContext, R.string.text_pass, 0).show();
                MutiTouchTest.this.storeRusult(true);
                MutiTouchTest.this.finish();
            }
        }
    }

    private class MuiltImageView extends View {
        private static final float RADIUS = 75.0f;
        private Handler mHandler;
        private int mHeight;
        private Paint mPaint;
        private boolean mPass;
        private int mWidth;
        private PointF pointf;
        private PointF points;

        public MuiltImageView(Context context, int i, int i2, Handler handler) {
            super(context);
            this.pointf = new PointF();
            this.points = new PointF();
            this.mPass = false;
            this.mPaint = null;
            this.mWidth = i;
            this.mHeight = i2;
            this.mHandler = handler;
            initData();
            initPaint();
        }

        private void initData() {
            this.pointf.set(this.mWidth - RADIUS, RADIUS);
            if (MutiTouchTest.this.isShowNavigationBar) {
                this.points.set(RADIUS, this.mHeight - RADIUS);
            } else {
                this.points.set(RADIUS, (this.mHeight - RADIUS) - 150.0f);
            }
        }

        private void initPaint() {
            Paint paint = new Paint();
            this.mPaint = paint;
            paint.setAntiAlias(true);
            this.mPaint.setStyle(Paint.Style.FILL);
            this.mPaint.setColor(InputDeviceCompat.SOURCE_ANY);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.drawCircle(this.pointf.x, this.pointf.y, RADIUS, this.mPaint);
            canvas.drawCircle(this.points.x, this.points.y, RADIUS, this.mPaint);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getPointerCount() == 2) {
                this.pointf.set(motionEvent.getX(0), motionEvent.getY(0));
                this.points.set(motionEvent.getX(1), motionEvent.getY(1));
                double dSqrt = Math.sqrt(((this.pointf.x - this.points.x) * (this.pointf.x - this.points.x)) + ((this.pointf.y - this.points.y) * (this.pointf.y - this.points.y)));
                int i = this.mWidth;
                if (dSqrt < i / 3.0d || dSqrt > (i / 3.0d) * 2.0d) {
                    this.mPass = true;
                }
            }
            if (motionEvent.getAction() == 1 && this.mPass) {
                this.mHandler.sendEmptyMessage(1);
            }
            invalidate();
            return true;
        }
    }
}
