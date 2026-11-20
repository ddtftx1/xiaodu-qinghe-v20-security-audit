package com.sprd.validationtools;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import androidx.core.view.ViewCompat;
import com.sprd.validationtools.utils.ValidationToolsUtils;
import java.lang.reflect.Array;

/* loaded from: classes.dex */
public class AutoTouchTest extends Activity {
    public static final String TAG = "AutoTouchTest";
    private int YCOUNT = 25;
    private int XCOUNT = 15;
    private boolean[][] mDrawedGrid = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.YCOUNT, this.XCOUNT);
    private boolean[][] mIsDrawArea = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.YCOUNT, this.XCOUNT);
    private boolean mIsCompleted = false;
    private PowerManager.WakeLock wakeLock = null;
    private boolean isShowNavigationBar = false;

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
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            Log.v(AutoTouchTest.TAG, "width: " + i + ", height: " + i2);
            AutoTouchTest.this.isShowNavigationBar = ValidationToolsUtils.hasNavigationBar(AutoTouchTest.this);
            Log.v(AutoTouchTest.TAG, "isShowNavigationBar: " + AutoTouchTest.this.isShowNavigationBar);
            if (!AutoTouchTest.this.isShowNavigationBar) {
                this.mDisplayHeight = i2 - AutoTouchTest.this.getNavigationBarHeight();
                Log.v(AutoTouchTest.TAG, "isShowNavigationBar getNavigationBarHeight(): " + AutoTouchTest.this.getNavigationBarHeight());
                Log.v(AutoTouchTest.TAG, "isShowNavigationBar getStatusBarHeight(): " + AutoTouchTest.this.getStatusBarHeight());
            } else {
                this.mDisplayHeight = i2;
                Log.v(AutoTouchTest.TAG, "isShowNavigationBar getNavigationBarHeight(): " + AutoTouchTest.this.getNavigationBarHeight());
                Log.v(AutoTouchTest.TAG, "isShowNavigationBar getStatusBarHeight(): " + AutoTouchTest.this.getStatusBarHeight());
            }
            this.mDisplayWidth = i;
            this.mGridBmp = Bitmap.createBitmap(i, this.mDisplayHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.mGridBmp);
            this.mGridCvs = canvas;
            canvas.drawColor(-1);
            this.mLineBmp = Bitmap.createBitmap(this.mDisplayWidth, this.mDisplayHeight, Bitmap.Config.ARGB_8888);
            this.mLineCvs = new Canvas(this.mLineBmp);
            initPaint();
            initRect();
            this.mIsTouchDown = false;
            Log.v(AutoTouchTest.TAG, "mDisplayWidth: " + this.mDisplayWidth + " mDisplayHeight: " + this.mDisplayHeight);
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
            float f3 = this.mDisplayHeight / AutoTouchTest.this.YCOUNT;
            float f4 = this.mDisplayWidth / AutoTouchTest.this.XCOUNT;
            int i = (int) (f / f4);
            int i2 = (int) (f2 / f3);
            float f5 = i * f4;
            float f6 = i2 * f3;
            if (i2 < 0 || i < 0 || i2 > AutoTouchTest.this.YCOUNT - 1 || i > AutoTouchTest.this.XCOUNT - 1) {
                System.out.println("XIONG ---range error----mDisplayHeight=" + this.mDisplayHeight + "------x=" + f + "----y=" + f2 + "----mDisplayWidth=" + this.mDisplayWidth + "----stepY=" + f3 + "----stepX=" + f4 + "----i=" + i + "----j=" + i2);
                if (i2 > AutoTouchTest.this.YCOUNT - 1) {
                    i2 = AutoTouchTest.this.YCOUNT - 1;
                }
                if (i > AutoTouchTest.this.XCOUNT - 1) {
                    i = AutoTouchTest.this.XCOUNT - 1;
                }
                if (i2 < 0) {
                    i2 = 0;
                }
                if (i < 0) {
                    i = 0;
                }
            }
            if (!AutoTouchTest.this.mDrawedGrid[i2][i]) {
                AutoTouchTest.this.mDrawedGrid[i2][i] = true;
                if (AutoTouchTest.this.mDrawedGrid[i2][i] && AutoTouchTest.this.mIsDrawArea[i2][i]) {
                    this.mGridCvs.drawOval(new RectF(((int) f5) + 1, ((int) f6) + 1, (int) (f5 + f4), (int) (f6 + f3)), paint);
                } else {
                    this.mGridCvs.drawRect(((int) f5) + 1, ((int) f6) + 1, (int) (f5 + f4), (int) (f6 + f3), this.mNonTouchPaint);
                }
                invalidate(new Rect((int) (f5 - 1.0f), (int) (f6 - 1.0f), (int) (f5 + f4 + 1.0f), (int) (f6 + f3 + 1.0f)));
            }
            if (!AutoTouchTest.this.isPassed() || AutoTouchTest.this.mIsCompleted) {
                return;
            }
            AutoTouchTest.this.mIsCompleted = true;
            AutoTouchTest.this.finish();
        }

        private void initRect() {
            float f = this.mDisplayHeight / AutoTouchTest.this.YCOUNT;
            float f2 = this.mDisplayWidth / AutoTouchTest.this.XCOUNT;
            Paint paint = new Paint();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            paint.setStyle(Paint.Style.STROKE);
            paint.setAntiAlias(true);
            for (int i = 0; i < AutoTouchTest.this.YCOUNT; i++) {
                int i2 = (int) (i * f);
                for (int i3 = 0; i3 < AutoTouchTest.this.XCOUNT; i3++) {
                    int i4 = (int) (i3 * f2);
                    if (AutoTouchTest.this.isNeedCheck(i, i3)) {
                        this.mGridCvs.drawOval(new RectF(i4 + 1, i2 + 1, (int) ((r8 + f2) - 1.0f), (int) ((r10 + f) - 1.0f)), paint);
                        AutoTouchTest.this.mDrawedGrid[i][i3] = false;
                    }
                }
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
            paint2.setAntiAlias(false);
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNeedCheck(int i, int i2) {
        if (i != 0) {
            int i3 = this.YCOUNT;
            if (i != i3 - 1 && i != i3 / 2 && i != i3 / 4 && i != (i3 * 3) / 4 && i2 != 0) {
                int i4 = this.XCOUNT;
                if (i2 != i4 - 1 && i2 != i4 / 2) {
                    return false;
                }
            }
        }
        return true;
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
    public int getNavigationBarHeight() throws Resources.NotFoundException {
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
        Log.d("huangli", "getNavigationBarHeight:height>>>>" + dimensionPixelSize);
        return dimensionPixelSize;
    }

    public int getStatusBarHeight() throws Resources.NotFoundException {
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
        Log.d("huangli", "getStatusBarHeight:height>>>>" + dimensionPixelSize);
        return dimensionPixelSize;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(new TouchGridView(this));
    }

    @Override // android.app.Activity
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
        getWindow().getDecorView().setSystemUiVisibility(32577286);
        getWindow().addFlags(128);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.layoutInDisplayCutoutMode = 3;
        getWindow().setAttributes(attributes);
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
