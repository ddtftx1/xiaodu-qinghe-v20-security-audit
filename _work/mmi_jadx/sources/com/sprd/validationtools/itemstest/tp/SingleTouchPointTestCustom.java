package com.sprd.validationtools.itemstest.tp;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.SystemProperties;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import androidx.core.view.ViewCompat;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.Const;
import java.lang.reflect.Array;

/* loaded from: classes.dex */
public class SingleTouchPointTestCustom extends BaseActivity {
    public static final String TAG = "SingleTouchPointTestCustom";
    private Intent intent;
    private int YCOUNT = 15;
    private int XCOUNT = 15;
    private int TOP_WIDTH = 60;
    private boolean[][] mDrawedGrid = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.YCOUNT, this.XCOUNT);
    private boolean[][] mIsDrawArea = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.YCOUNT, this.XCOUNT);
    private boolean mIsCompleted = false;
    private PowerManager.WakeLock wakeLock = null;

    public void setFail() {
    }

    public void setSuccess() {
    }

    public class TouchGridView extends View {
        private int mDisplayHeight;
        private int mDisplayWidth;
        private Bitmap mGridBmp;
        private Canvas mGridCvs;
        private boolean mIsTouchDown;
        private Bitmap mLineBmp;
        private Canvas mLineCvs;
        private Paint mLinePaint;
        private float mNewTouchedX;
        private float mNewTouchedY;
        private Paint mNonTouchPaint;
        private float mOldTouchedX;
        private float mOldTouchedY;
        private Paint mTouchPaint;

        public TouchGridView(Context context) {
            super(context);
            this.mOldTouchedX = 0.0f;
            this.mOldTouchedY = 0.0f;
            this.mNewTouchedX = 0.0f;
            this.mNewTouchedY = 0.0f;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if ("0".equals(SystemProperties.get("qemu.hw.mainkeys"))) {
                point.y = defaultDisplay.getHeight() + SingleTouchPointTestCustom.this.getNavigationBarHeight();
            } else {
                point.y = defaultDisplay.getHeight();
            }
            this.mDisplayWidth = point.x;
            int i = point.y;
            this.mDisplayHeight = i;
            this.mGridBmp = Bitmap.createBitmap(this.mDisplayWidth, i, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.mGridBmp);
            this.mGridCvs = canvas;
            canvas.drawColor(-1);
            this.mLineBmp = Bitmap.createBitmap(this.mDisplayWidth, this.mDisplayHeight, Bitmap.Config.ARGB_8888);
            this.mLineCvs = new Canvas(this.mLineBmp);
            initPaint();
            initRect(this.mLineCvs);
            this.mIsTouchDown = false;
            Log.v(SingleTouchPointTestCustom.TAG, "mDisplayWidth: " + this.mDisplayWidth + " mDisplayHeight: " + this.mDisplayHeight);
        }

        private void drawLine(float f, float f2, float f3, float f4) {
            int i;
            int i2;
            int i3;
            int i4;
            this.mLineCvs.drawLine(f, f2, f3, f4, this.mLinePaint);
            if (f >= f3) {
                i2 = (int) f;
                i = (int) f3;
            } else {
                int i5 = (int) f3;
                i = (int) f;
                i2 = i5;
            }
            if (f2 >= f4) {
                i4 = (int) f2;
                i3 = (int) f4;
            } else {
                int i6 = (int) f4;
                i3 = (int) f2;
                i4 = i6;
            }
            invalidate(new Rect(i - 6, i3 - 6, i2 + 6, i4 + 6));
        }

        private void drawPoint(float f, float f2) {
            this.mLineCvs.drawPoint(f, f2, this.mLinePaint);
            int i = (int) f;
            int i2 = (int) f2;
            invalidate(new Rect(i - 6, i2 - 6, i + 6, i2 + 6));
        }

        private void drawRect(float f, float f2, Paint paint) {
            float f3 = this.mDisplayHeight / SingleTouchPointTestCustom.this.YCOUNT;
            float f4 = (this.mDisplayWidth - SingleTouchPointTestCustom.this.TOP_WIDTH) / SingleTouchPointTestCustom.this.XCOUNT;
            float f5 = ((f2 % f3) * f4) / f3;
            int i = (int) (f2 / f3);
            float f6 = i;
            float f7 = f6 * f4;
            if (f > (f7 + f5) - 30.0f && f < SingleTouchPointTestCustom.this.TOP_WIDTH + f7 + f5 + 30.0f) {
                SingleTouchPointTestCustom.this.mDrawedGrid[i][i] = true;
                if (SingleTouchPointTestCustom.this.mDrawedGrid[i][i] && SingleTouchPointTestCustom.this.mIsDrawArea[i][i]) {
                    Path path = new Path();
                    float f8 = f6 * f3;
                    path.moveTo(f7 - 30.0f, f8);
                    float f9 = i + 1;
                    float f10 = f9 * f4;
                    float f11 = f9 * f3;
                    path.lineTo((-30.0f) + f10, f11);
                    path.lineTo(f10 + SingleTouchPointTestCustom.this.TOP_WIDTH + 30.0f, f11);
                    path.lineTo(f7 + 30.0f + SingleTouchPointTestCustom.this.TOP_WIDTH, f8);
                    this.mGridCvs.drawPath(path, this.mTouchPaint);
                }
            }
            int i2 = this.mDisplayWidth;
            if (f < ((i2 - f7) - f5) + 30.0f && f > (((i2 - f7) - f5) - SingleTouchPointTestCustom.this.TOP_WIDTH) - 30.0f) {
                SingleTouchPointTestCustom.this.mDrawedGrid[i][(SingleTouchPointTestCustom.this.YCOUNT - i) - 1] = true;
                if (SingleTouchPointTestCustom.this.mDrawedGrid[i][(SingleTouchPointTestCustom.this.YCOUNT - i) - 1] && SingleTouchPointTestCustom.this.mIsDrawArea[i][(SingleTouchPointTestCustom.this.YCOUNT - i) - 1]) {
                    Path path2 = new Path();
                    float f12 = f6 * f3;
                    path2.moveTo(((this.mDisplayWidth - 30) - f7) - SingleTouchPointTestCustom.this.TOP_WIDTH, f12);
                    float f13 = i + 1;
                    float f14 = f4 * f13;
                    float f15 = f13 * f3;
                    path2.lineTo(((this.mDisplayWidth - 30) - f14) - SingleTouchPointTestCustom.this.TOP_WIDTH, f15);
                    path2.lineTo((this.mDisplayWidth + 30) - f14, f15);
                    path2.lineTo((this.mDisplayWidth + 30) - f7, f12);
                    this.mGridCvs.drawPath(path2, this.mTouchPaint);
                }
            }
            if (!SingleTouchPointTestCustom.this.isPassed() || SingleTouchPointTestCustom.this.mIsCompleted) {
                return;
            }
            SingleTouchPointTestCustom.this.mIsCompleted = true;
            Intent intent = new Intent(SingleTouchPointTestCustom.this, (Class<?>) SingleTouchPointTestSM.class);
            intent.putExtra(Const.INTENT_PARA_TEST_NAME, SingleTouchPointTestCustom.this.intent.getExtras().getString(Const.INTENT_PARA_TEST_NAME));
            intent.putExtra(Const.INTENT_PARA_TEST_INDEX, SingleTouchPointTestCustom.this.intent.getExtras().getString(Const.INTENT_PARA_TEST_INDEX));
            startActivityForResult(intent, 0);
            SingleTouchPointTestCustom.this.storeRusult(true);
            SingleTouchPointTestCustom.this.finish();
        }

        private void initRect(Canvas canvas) {
            float f = this.mDisplayHeight / SingleTouchPointTestCustom.this.YCOUNT;
            float f2 = (this.mDisplayWidth - SingleTouchPointTestCustom.this.TOP_WIDTH) / SingleTouchPointTestCustom.this.XCOUNT;
            Paint paint = new Paint();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            paint.setStyle(Paint.Style.STROKE);
            int i = 1;
            paint.setAntiAlias(true);
            int i2 = 0;
            while (i2 < SingleTouchPointTestCustom.this.YCOUNT) {
                int i3 = (SingleTouchPointTestCustom.this.YCOUNT - i2) - i;
                Path path = new Path();
                float f3 = i2;
                float f4 = f3 * f2;
                float f5 = f3 * f;
                path.moveTo(f4 - 30.0f, f5);
                int i4 = i2 + 1;
                float f6 = i4;
                float f7 = f6 * f2;
                float f8 = f6 * f;
                path.lineTo((-30.0f) + f7, f8);
                path.lineTo(((f7 + 30.0f) + SingleTouchPointTestCustom.this.TOP_WIDTH) - 1.0f, f8);
                path.lineTo(30.0f + f4 + SingleTouchPointTestCustom.this.TOP_WIDTH, f5);
                path.close();
                canvas.drawPath(path, paint);
                SingleTouchPointTestCustom.this.mDrawedGrid[i2][i2] = false;
                Path path2 = new Path();
                path2.moveTo(((this.mDisplayWidth - 30) - f4) - SingleTouchPointTestCustom.this.TOP_WIDTH, f5);
                path2.lineTo(((this.mDisplayWidth - 30) - f7) - SingleTouchPointTestCustom.this.TOP_WIDTH, f8);
                path2.lineTo((this.mDisplayWidth + 30) - f7, f8);
                path2.lineTo((this.mDisplayWidth + 30) - f4, f5);
                path2.close();
                canvas.drawPath(path2, paint);
                SingleTouchPointTestCustom.this.mDrawedGrid[i2][i3] = false;
                i2 = i4;
                i = 1;
            }
        }

        private void initPaint() {
            Paint paint = new Paint();
            this.mLinePaint = paint;
            paint.setAntiAlias(true);
            this.mLinePaint.setDither(true);
            this.mLinePaint.setStyle(Paint.Style.STROKE);
            this.mLinePaint.setStrokeJoin(Paint.Join.ROUND);
            this.mLinePaint.setStrokeCap(Paint.Cap.SQUARE);
            this.mLinePaint.setStrokeWidth(3.0f);
            this.mLinePaint.setPathEffect(new DashPathEffect(new float[]{3.0f, 3.0f}, 1.0f));
            this.mLinePaint.setColor(ViewCompat.MEASURED_STATE_MASK);
            Paint paint2 = new Paint();
            this.mTouchPaint = paint2;
            paint2.setStyle(Paint.Style.FILL);
            this.mTouchPaint.setAntiAlias(false);
            this.mTouchPaint.setColor(-16776961);
            Paint paint3 = new Paint();
            this.mNonTouchPaint = paint3;
            paint3.setAntiAlias(false);
            this.mNonTouchPaint.setColor(-1);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.drawBitmap(this.mGridBmp, 0.0f, 0.0f, (Paint) null);
            canvas.drawBitmap(this.mLineBmp, 0.0f, 0.0f, (Paint) null);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            motionEvent.getPointerCount();
            if (motionEvent.getToolType(0) == 2) {
                return true;
            }
            if (action == 0) {
                this.mNewTouchedX = motionEvent.getX();
                float y = motionEvent.getY();
                this.mNewTouchedY = y;
                int i = this.mDisplayHeight;
                if (y > i - 1) {
                    this.mNewTouchedY = i - 1;
                }
                drawRect(this.mNewTouchedX, this.mNewTouchedY, this.mTouchPaint);
                this.mIsTouchDown = true;
            } else if (action != 1) {
                if (action == 2 && this.mIsTouchDown) {
                    for (int i2 = 0; i2 < motionEvent.getHistorySize(); i2++) {
                        this.mOldTouchedX = this.mNewTouchedX;
                        this.mOldTouchedY = this.mNewTouchedY;
                        this.mNewTouchedX = motionEvent.getHistoricalX(i2);
                        float historicalY = motionEvent.getHistoricalY(i2);
                        this.mNewTouchedY = historicalY;
                        int i3 = this.mDisplayHeight;
                        if (historicalY > i3 - 1) {
                            this.mNewTouchedY = i3 - 1;
                        }
                        drawRect(this.mNewTouchedX, this.mNewTouchedY, this.mTouchPaint);
                        drawLine(this.mOldTouchedX, this.mOldTouchedY, this.mNewTouchedX, this.mNewTouchedY);
                    }
                    this.mOldTouchedX = this.mNewTouchedX;
                    this.mOldTouchedY = this.mNewTouchedY;
                    this.mNewTouchedX = motionEvent.getX();
                    float y2 = motionEvent.getY();
                    this.mNewTouchedY = y2;
                    int i4 = this.mDisplayHeight;
                    if (y2 > i4 - 1) {
                        this.mNewTouchedY = i4 - 1;
                    }
                    drawRect(this.mNewTouchedX, this.mNewTouchedY, this.mTouchPaint);
                    drawLine(this.mOldTouchedX, this.mOldTouchedY, this.mNewTouchedX, this.mNewTouchedY);
                    this.mIsTouchDown = true;
                }
            } else if (this.mIsTouchDown) {
                this.mOldTouchedX = this.mNewTouchedX;
                this.mOldTouchedY = this.mNewTouchedY;
                this.mNewTouchedX = motionEvent.getX();
                float y3 = motionEvent.getY();
                this.mNewTouchedY = y3;
                int i5 = this.mDisplayHeight;
                if (y3 > i5 - 1) {
                    this.mNewTouchedY = i5 - 1;
                }
                float f = this.mOldTouchedX;
                float f2 = this.mNewTouchedX;
                if (f == f2) {
                    float f3 = this.mOldTouchedY;
                    float f4 = this.mNewTouchedY;
                    if (f3 == f4) {
                        drawPoint(f2, f4);
                    }
                }
                this.mIsTouchDown = false;
            }
            return true;
        }
    }

    private void initGrid() {
        for (int i = 0; i < this.YCOUNT; i++) {
            for (int i2 = 0; i2 < this.XCOUNT; i2++) {
                if (isNeedCheck(i, i2)) {
                    this.mIsDrawArea[i][i2] = true;
                } else {
                    this.mIsDrawArea[i][i2] = false;
                }
            }
        }
    }

    private boolean isNeedCheck(int i, int i2) {
        return i == i2 || i2 + i == this.YCOUNT - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPassed() {
        boolean z = true;
        for (int i = 0; i < this.YCOUNT; i++) {
            for (int i2 = 0; i2 < this.XCOUNT; i2++) {
                if (this.mIsDrawArea[i][i2]) {
                    z = z && this.mDrawedGrid[i][i2];
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNavigationBarHeight() {
        Resources resources = getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(new TouchGridView(this));
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        releaseWakeLock();
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        acquireWakeLock(this);
        this.intent = getIntent();
        getWindow().getDecorView().setSystemUiVisibility(5894);
        getWindow().addFlags(128);
        initGrid();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    public void acquireWakeLock(Context context) {
        if (this.wakeLock == null) {
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wakeup");
            this.wakeLock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.acquire();
        }
    }

    public void releaseWakeLock() {
        PowerManager.WakeLock wakeLock = this.wakeLock;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        this.wakeLock.release();
        this.wakeLock = null;
    }
}
