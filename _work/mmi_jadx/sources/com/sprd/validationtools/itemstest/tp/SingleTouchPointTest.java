package com.sprd.validationtools.itemstest.tp;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import android.os.SystemProperties;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SingleTouchPointTest extends BaseActivity {
    private static final int CIRCLE_X_1 = 0;
    private static final int CIRCLE_X_2 = 2;
    private static final int CIRCLE_Y_1 = 1;
    private static final int CIRCLE_Y_2 = 3;
    private static final int DISTANCE = 0;
    private static final float FIXED_TEXT = 100.0f;
    private static final int RADIUS = 40;
    private static final int STOKEN_WIDTH = 10;
    private static final int excursion_x = -10;
    private static final int excursion_y = -10;
    private DisplayMetrics mDisplayMetrics;
    private SurfaceView mSurfaceView = null;
    private SurfaceHolder mHolder = null;
    protected float mScreenWidth = 0.0f;
    protected float mScreenHeight = 0.0f;
    private final List<float[]> mPointList = new ArrayList();
    boolean mIsInCircle = false;
    private int mCirclePosition = -1;
    private float[] mMatchCircleXY = null;
    private List<List<float[]>> mCirclesList = null;
    private float mTouchUpX = 0.0f;
    private float mTouchUpY = 0.0f;

    protected boolean isShowCoordinate() {
        return true;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        setContentView(R.layout.single_touch_test);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        findViewById(R.id.linearlayout).setSystemUiVisibility(32511750);
        getWindow().addFlags(128);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.layoutInDisplayCutoutMode = 3;
        getWindow().setAttributes(attributes);
        TextView textView = (TextView) findViewById(R.id.title_text);
        textView.setText(getString(R.string.touchpoint_info));
        textView.setVisibility(8);
        this.mDisplayMetrics = new DisplayMetrics();
        this.mScreenWidth = r0.widthPixels;
        getWindowManager().getDefaultDisplay().getMetrics(this.mDisplayMetrics);
        this.mScreenWidth = getWindowManager().getDefaultDisplay().getWidth();
        if ("0".equals(SystemProperties.get("qemu.hw.mainkeys"))) {
            this.mScreenHeight = getWindowManager().getDefaultDisplay().getHeight() + getNavigationBarHeight() + 0;
        } else {
            this.mScreenHeight = getWindowManager().getDefaultDisplay().getHeight() + 0;
        }
        SurfaceView surfaceView = (SurfaceView) findViewById(R.id.surface_point);
        this.mSurfaceView = surfaceView;
        SurfaceHolder holder = surfaceView.getHolder();
        this.mHolder = holder;
        holder.addCallback(new SurfaceHolder.Callback() { // from class: com.sprd.validationtools.itemstest.tp.SingleTouchPointTest.1
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                Canvas canvasLockCanvas = SingleTouchPointTest.this.mHolder.lockCanvas();
                canvasLockCanvas.drawColor(-1);
                SingleTouchPointTest.this.startDraw(canvasLockCanvas);
                SingleTouchPointTest.this.showCoordinate(canvasLockCanvas, 0.0f, 0.0f);
                SingleTouchPointTest.this.mHolder.unlockCanvasAndPost(canvasLockCanvas);
            }
        });
        this.mCirclesList = getCirclesList();
    }

    private int getNavigationBarHeight() {
        Resources resources = getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    public int getStatusBarHeight() throws Resources.NotFoundException {
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
        Log.d("huangli", "getStatusBarHeight:height>>>>" + dimensionPixelSize);
        return dimensionPixelSize;
    }

    protected List<List<float[]>> getCirclesList() {
        float f = (this.mScreenWidth - 40.0f) - (-10.0f);
        float f2 = ((this.mScreenHeight - 40.0f) - (-10.0f)) - (-10.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new float[]{30.0f, 30.0f, f, 30.0f});
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new float[]{f, 30.0f, f, f2});
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new float[]{f, f2, 30.0f, f2});
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(new float[]{30.0f, f2, 30.0f, 30.0f});
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add(new float[]{30.0f, 30.0f, f, f2});
        float[] fArr = {f, 30.0f, 30.0f, f2};
        ArrayList arrayList6 = new ArrayList();
        arrayList6.add(fArr);
        ArrayList arrayList7 = new ArrayList();
        arrayList7.add(arrayList6);
        arrayList7.add(arrayList5);
        arrayList7.add(arrayList4);
        arrayList7.add(arrayList3);
        arrayList7.add(arrayList2);
        arrayList7.add(arrayList);
        return arrayList7;
    }

    private float getRadiusPx() {
        return this.mDisplayMetrics.density * 40.0f;
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        List<float[]> list;
        Canvas canvas;
        boolean z;
        float[] fArr;
        boolean z2;
        int i;
        SurfaceHolder surfaceHolder;
        List<List<float[]>> list2 = this.mCirclesList;
        if (list2 == null || list2.isEmpty()) {
            return false;
        }
        List<List<float[]>> list3 = this.mCirclesList;
        List<float[]> list4 = list3.get(list3.size() - 1);
        if (list4 == null || list4.isEmpty()) {
            return false;
        }
        if (motionEvent.getPointerCount() == 1) {
            int action = motionEvent.getAction();
            float x = motionEvent.getX();
            float y = motionEvent.getY() - 0.0f;
            if (action == 0) {
                float[] matchCircle = getMatchCircle(list4, x, y, getRadiusPx());
                this.mMatchCircleXY = matchCircle;
                if (matchCircle == null) {
                    return false;
                }
                this.mIsInCircle = true;
                setXY(x, y);
            } else if (action != 1) {
                if (action == 2) {
                    if (!this.mIsInCircle || (surfaceHolder = this.mHolder) == null || this.mPointList == null) {
                        return false;
                    }
                    if (surfaceHolder.getSurface().isValid()) {
                        Canvas canvasLockCanvas = this.mHolder.lockCanvas();
                        if (canvasLockCanvas != null && hasWindowFocus()) {
                            canvasLockCanvas.drawColor(-1);
                        }
                        float[] fArr2 = list4.get(this.mCirclePosition);
                        if (isInner(x, y, fArr2[0], fArr2[1], fArr2[2], fArr2[3], getRadiusPx())) {
                            setXY(x, y);
                            showCoordinate(canvasLockCanvas, x, y);
                        } else {
                            storeRusult(false);
                            this.mIsInCircle = false;
                            this.mCirclePosition = -1;
                            this.mMatchCircleXY = null;
                            this.mPointList.clear();
                        }
                        startDraw(canvasLockCanvas);
                        this.mHolder.unlockCanvasAndPost(canvasLockCanvas);
                    }
                }
            } else {
                if (this.mHolder == null || (list = this.mPointList) == null) {
                    return false;
                }
                list.clear();
                if (this.mHolder.getSurface().isValid()) {
                    Canvas canvasLockCanvas2 = this.mHolder.lockCanvas();
                    if (canvasLockCanvas2 != null && hasWindowFocus()) {
                        canvasLockCanvas2.drawColor(-1);
                    }
                    if (!this.mIsInCircle || (fArr = this.mMatchCircleXY) == null || fArr.length <= 1) {
                        canvas = canvasLockCanvas2;
                        z = false;
                    } else {
                        canvas = canvasLockCanvas2;
                        if (isInCircle(x, y, fArr[0], fArr[1], getRadiusPx())) {
                            if (!list4.isEmpty() && (i = this.mCirclePosition) >= 0) {
                                list4.remove(i);
                            }
                            if (list4.isEmpty()) {
                                List<List<float[]>> list5 = this.mCirclesList;
                                z2 = true;
                                list5.remove(list5.size() - 1);
                            } else {
                                z2 = true;
                            }
                            if (this.mCirclesList.isEmpty()) {
                                Toast.makeText(this, R.string.text_pass, 0).show();
                                storeRusult(z2);
                                finish();
                                return false;
                            }
                            z = false;
                        } else {
                            z = false;
                            storeRusult(false);
                        }
                        this.mTouchUpX = x;
                        this.mTouchUpY = y;
                    }
                    this.mIsInCircle = z;
                    this.mCirclePosition = -1;
                    this.mMatchCircleXY = null;
                    this.mPointList.clear();
                    Canvas canvas2 = canvas;
                    startDraw(canvas2);
                    showCoordinate(canvas2, this.mTouchUpX, this.mTouchUpY);
                    this.mHolder.unlockCanvasAndPost(canvas2);
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    private float[] getMatchCircle(List<float[]> list, float f, float f2, double d) {
        List<float[]> list2 = list;
        char c = 2;
        float[] fArr = new float[2];
        if (list2 == null || list.isEmpty()) {
            return null;
        }
        int i = 0;
        while (i < list.size()) {
            float[] fArr2 = list2.get(i);
            float f3 = fArr2[0];
            float f4 = fArr2[1];
            float f5 = fArr2[c];
            float f6 = fArr2[3];
            double d2 = f;
            float[] fArr3 = fArr;
            double d3 = f2;
            int i2 = i;
            if (isInCircle(d2, d3, f3, f4, d)) {
                fArr3[0] = f5;
                fArr3[1] = f6;
                this.mCirclePosition = i2;
                return fArr3;
            }
            if (isInCircle(d2, d3, f5, f6, d)) {
                fArr3[0] = f3;
                fArr3[1] = f4;
                this.mCirclePosition = i2;
                return fArr3;
            }
            i = i2 + 1;
            list2 = list;
            fArr = fArr3;
            c = 2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDraw(Canvas canvas) {
        List<List<float[]>> list = this.mCirclesList;
        if (list == null || list.isEmpty()) {
            return;
        }
        int i = 0;
        for (List<float[]> list2 : this.mCirclesList) {
            for (int i2 = 0; i2 < list2.size(); i2++) {
                drawShapes(list2.get(i2)[0], list2.get(i2)[1], list2.get(i2)[2], list2.get(i2)[3], canvas, getRadiusPx(), i);
            }
            Paint paint = new Paint();
            paint.setFlags(1);
            paint.setStrokeWidth(10.0f);
            paint.setColor(SupportMenu.CATEGORY_MASK);
            for (int i3 = 1; i3 < this.mPointList.size(); i3++) {
                int i4 = i3 - 1;
                canvas.drawLine(this.mPointList.get(i4)[0], this.mPointList.get(i4)[1], this.mPointList.get(i3)[0], this.mPointList.get(i3)[1], paint);
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCoordinate(Canvas canvas, float f, float f2) {
        int i;
        Paint paint = new Paint();
        paint.setFlags(1);
        paint.setColor(SupportMenu.CATEGORY_MASK);
        if (isShowCoordinate()) {
            int i2 = 0;
            if (f == 0.0f || f2 == 0.0f) {
                i = 0;
            } else {
                i2 = (int) f;
                i = (int) f2;
            }
            canvas.drawText("(" + i2 + "," + i + ")", this.mScreenWidth / 2.0f, FIXED_TEXT, paint);
        }
    }

    private void setXY(float f, float f2) {
        this.mPointList.add(new float[]{f, f2});
    }

    private boolean isInner(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        return getHeight((double) f, (double) f2, (double) f3, (double) f4, (double) f5, (double) f6) < ((double) f7);
    }

    private double getTwoPointDistance(double d, double d2, double d3, double d4) {
        double d5 = d - d3;
        double d6 = d2 - d4;
        return Math.sqrt((Math.abs(d5) * Math.abs(d5)) + (Math.abs(d6) * Math.abs(d6)));
    }

    private double getHeight(double d, double d2, double d3, double d4, double d5, double d6) {
        double twoPointDistance = getTwoPointDistance(d3, d4, d5, d6);
        double twoPointDistance2 = getTwoPointDistance(d3, d4, d, d2);
        double twoPointDistance3 = getTwoPointDistance(d, d2, d5, d6);
        double d7 = ((twoPointDistance + twoPointDistance2) + twoPointDistance3) / 2.0d;
        return (Math.sqrt((((d7 - twoPointDistance) * d7) * (d7 - twoPointDistance2)) * (d7 - twoPointDistance3)) * 2.0d) / twoPointDistance;
    }

    private boolean isInCircle(double d, double d2, double d3, double d4, double d5) {
        double d6 = d - d3;
        double d7 = d2 - d4;
        return Math.sqrt((Math.abs(d6) * Math.abs(d6)) + (Math.abs(d7) * Math.abs(d7))) <= d5;
    }

    private boolean drawShapes(float f, float f2, float f3, float f4, Canvas canvas, float f5, int i) {
        if (f != 0.0f && f4 != 0.0f && f3 != 0.0f && f2 != 0.0f) {
            Paint paint = new Paint();
            if (i < this.mCirclesList.size() - 1) {
                paint.setColor(-7829368);
            } else {
                paint.setColor(-16776961);
            }
            paint.setFlags(1);
            canvas.drawCircle(f, f2, f5, paint);
            canvas.drawCircle(f3, f4, f5, paint);
            float f6 = (f2 - f4) / (f - f3);
            float f7 = f5 * f5;
            double dSqrt = Math.sqrt(f7 + (f7 * f6 * f6));
            if (f == f3) {
                float f8 = f - f5;
                canvas.drawLine(f8, 0.0f, f8, this.mScreenHeight, paint);
                float f9 = f + f5;
                canvas.drawLine(f9, 0.0f, f9, this.mScreenHeight, paint);
                return true;
            }
            if (f2 == f4) {
                float f10 = f2 - f5;
                canvas.drawLine(0.0f, f10, this.mScreenWidth, f10, paint);
                float f11 = f2 + f5;
                canvas.drawLine(0.0f, f11, this.mScreenWidth, f11, paint);
                return true;
            }
            if (f6 > 0.0f) {
                double d = f2 - (f * f6);
                float f12 = (float) (d - dSqrt);
                float f13 = (float) (d + dSqrt);
                float f14 = this.mScreenHeight;
                canvas.drawLine(0.0f, f12, (f14 - f12) / f6, f14, paint);
                canvas.drawLine(0.0f, f13, (f14 - f13) / f6, this.mScreenHeight, paint);
            } else if (f6 < 0.0f) {
                double d2 = f2 - (f * f6);
                float f15 = (float) (d2 - dSqrt);
                float f16 = (float) (d2 + dSqrt);
                canvas.drawLine(0.0f, f15, (0.0f - f15) / f6, 0.0f, paint);
                canvas.drawLine(0.0f, f16, (0.0f - f16) / f6, 0.0f, paint);
            }
            return true;
        }
        return false;
    }
}
