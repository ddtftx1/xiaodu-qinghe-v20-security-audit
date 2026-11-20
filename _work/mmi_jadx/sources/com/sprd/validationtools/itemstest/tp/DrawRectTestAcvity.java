package com.sprd.validationtools.itemstest.tp;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DrawRectTestAcvity extends BaseActivity {
    private static int RECT_HEIGHT = 40;
    private static int RECT_WIDTH = 240;
    private static final String TAG = "DrawRectTestAcvity";
    private boolean mIsRun;
    private int mPassNum;
    private List<RectInfo> mRectInfoList;
    private int mRectSize;
    private int mScreenHeight;
    private int mScreenWidth;
    private final Paint mGesturePaint = new Paint();
    private final Path mPath = new Path();
    private Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.tp.DrawRectTestAcvity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Toast.makeText(DrawRectTestAcvity.this, R.string.text_pass, 0).show();
            DrawRectTestAcvity.this.storeRusult(true);
            DrawRectTestAcvity.this.finish();
        }
    };

    static /* synthetic */ int access$408(DrawRectTestAcvity drawRectTestAcvity) {
        int i = drawRectTestAcvity.mPassNum;
        drawRectTestAcvity.mPassNum = i + 1;
        return i;
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.mScreenWidth = displayMetrics.widthPixels;
        this.mScreenHeight = displayMetrics.heightPixels;
        Log.d(TAG, "mScreenWidth:" + this.mScreenWidth + "   mScreenHeight:" + this.mScreenHeight);
        int i = this.mScreenWidth;
        if (i == 540) {
            RECT_WIDTH = 140;
            RECT_HEIGHT = 30;
        }
        if (i == 480) {
            RECT_WIDTH = 140;
            RECT_HEIGHT = 20;
        }
        if (i == 720) {
            RECT_WIDTH = 160;
            RECT_HEIGHT = 20;
        }
        initView();
        setContentView(new MySurfaceView(this));
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.mIsRun = false;
        Log.d(TAG, "onPause");
        super.onPause();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onDestroy() {
        this.mIsRun = false;
        Log.d(TAG, "onDestroy");
        super.onDestroy();
    }

    private void initView() {
        this.mRectInfoList = new ArrayList();
        drawLeft();
        drawTop();
        drawRight();
        drawBottom();
        this.mRectSize = this.mRectInfoList.size();
    }

    private void drawLeft() {
        Rect rect = new Rect(0, 0, RECT_WIDTH, RECT_HEIGHT);
        int i = (this.mScreenHeight - RECT_WIDTH) / RECT_HEIGHT;
        for (int i2 = 0; i2 < i; i2++) {
            Rect rect2 = new Rect(rect.left, rect.top + (RECT_HEIGHT * i2), rect.right, rect.bottom + (RECT_HEIGHT * i2));
            Paint paint = new Paint();
            paint.setColor(-16776961);
            this.mRectInfoList.add(new RectInfo(rect2, false, paint));
        }
    }

    private void drawRight() {
        int i = this.mScreenWidth;
        int i2 = RECT_WIDTH;
        Rect rect = new Rect(i - i2, i2, i, RECT_HEIGHT + i2);
        int i3 = (this.mScreenHeight - RECT_WIDTH) / RECT_HEIGHT;
        for (int i4 = 0; i4 < i3; i4++) {
            Rect rect2 = new Rect(rect.left, rect.top + (RECT_HEIGHT * i4), rect.right, rect.bottom + (RECT_HEIGHT * i4));
            Paint paint = new Paint();
            paint.setColor(-16776961);
            this.mRectInfoList.add(new RectInfo(rect2, false, paint));
        }
    }

    private void drawTop() {
        int i = RECT_WIDTH;
        Rect rect = new Rect(i, 0, RECT_HEIGHT + i, i);
        int i2 = (this.mScreenWidth - RECT_WIDTH) / RECT_HEIGHT;
        for (int i3 = 0; i3 < i2; i3++) {
            Rect rect2 = new Rect(rect.left + (RECT_HEIGHT * i3), rect.top, rect.right + (RECT_HEIGHT * i3), rect.bottom);
            Paint paint = new Paint();
            paint.setColor(-16776961);
            this.mRectInfoList.add(new RectInfo(rect2, false, paint));
        }
    }

    private void drawBottom() {
        int i = this.mScreenHeight;
        Rect rect = new Rect(0, i - RECT_WIDTH, RECT_HEIGHT, i);
        int i2 = (this.mScreenWidth - RECT_WIDTH) / RECT_HEIGHT;
        for (int i3 = 0; i3 < i2; i3++) {
            Rect rect2 = new Rect(rect.left + (RECT_HEIGHT * i3), rect.top, rect.right + (RECT_HEIGHT * i3), rect.bottom);
            Paint paint = new Paint();
            paint.setColor(-16776961);
            this.mRectInfoList.add(new RectInfo(rect2, false, paint));
        }
    }

    static class RectInfo {
        boolean isTouched;
        Paint paint;
        Rect rect;

        public RectInfo(Rect rect, boolean z, Paint paint) {
            this.rect = rect;
            this.isTouched = z;
            this.paint = paint;
        }
    }

    class SurfaceViewThread extends Thread {
        private SurfaceHolder holder;
        public boolean isRun;
        private Paint paint;

        public SurfaceViewThread(SurfaceHolder surfaceHolder) {
            this.holder = surfaceHolder;
            Paint paint = new Paint();
            this.paint = paint;
            paint.setColor(-7829368);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (DrawRectTestAcvity.this.mIsRun) {
                Log.d(DrawRectTestAcvity.TAG, "mIsRun = " + DrawRectTestAcvity.this.mIsRun);
                Canvas canvasLockCanvas = null;
                try {
                    try {
                        canvasLockCanvas = this.holder.lockCanvas();
                    } catch (Exception e) {
                        Log.e(DrawRectTestAcvity.TAG, "draw exception", e);
                        if (0 != 0) {
                        }
                    }
                    if (canvasLockCanvas == null) {
                        if (canvasLockCanvas != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    canvasLockCanvas.drawColor(-1);
                    DrawRectTestAcvity.this.drawView(canvasLockCanvas);
                    canvasLockCanvas.drawPath(DrawRectTestAcvity.this.mPath, DrawRectTestAcvity.this.mGesturePaint);
                    if (canvasLockCanvas != null) {
                        this.holder.unlockCanvasAndPost(canvasLockCanvas);
                    }
                } finally {
                    if (0 != 0) {
                        this.holder.unlockCanvasAndPost(null);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawView(Canvas canvas) {
        for (int i = 0; i < this.mRectInfoList.size(); i++) {
            RectInfo rectInfo = this.mRectInfoList.get(i);
            if (rectInfo.isTouched) {
                rectInfo.paint.setStyle(Paint.Style.FILL_AND_STROKE);
                rectInfo.paint.setStrokeWidth(2.0f);
            } else {
                rectInfo.paint.setStyle(Paint.Style.STROKE);
                rectInfo.paint.setStrokeWidth(2.0f);
            }
            rectInfo.paint.setAntiAlias(true);
            canvas.drawRect(rectInfo.rect, rectInfo.paint);
        }
    }

    private class MySurfaceView extends SurfaceView implements SurfaceHolder.Callback, View.OnTouchListener {
        private SurfaceHolder mHolder;
        private SurfaceViewThread mThread;
        private float mX;
        private float mY;

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        }

        public MySurfaceView(Context context) {
            super(context);
            SurfaceHolder holder = getHolder();
            this.mHolder = holder;
            holder.addCallback(this);
            DrawRectTestAcvity.this.mGesturePaint.setAntiAlias(true);
            DrawRectTestAcvity.this.mGesturePaint.setStyle(Paint.Style.STROKE);
            DrawRectTestAcvity.this.mGesturePaint.setStrokeWidth(2.0f);
            DrawRectTestAcvity.this.mGesturePaint.setColor(-16776961);
            setOnTouchListener(this);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            this.mThread = DrawRectTestAcvity.this.new SurfaceViewThread(this.mHolder);
            DrawRectTestAcvity.this.mIsRun = true;
            this.mThread.start();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            DrawRectTestAcvity.this.mIsRun = false;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                touchDown(motionEvent);
            } else if (action == 1) {
                Log.d(DrawRectTestAcvity.TAG, "mPassNum:" + DrawRectTestAcvity.this.mPassNum + "  mRectSize:" + DrawRectTestAcvity.this.mRectSize);
                if (DrawRectTestAcvity.this.mPassNum == DrawRectTestAcvity.this.mRectSize) {
                    DrawRectTestAcvity.this.mIsRun = false;
                    DrawRectTestAcvity.this.mHandler.sendEmptyMessage(0);
                }
            } else if (action == 2) {
                touchMove(motionEvent);
            } else if (action == 3) {
                Log.d(DrawRectTestAcvity.TAG, "mPassNum:" + DrawRectTestAcvity.this.mPassNum + "  mRectSize:" + DrawRectTestAcvity.this.mRectSize);
                if (DrawRectTestAcvity.this.mPassNum == DrawRectTestAcvity.this.mRectSize) {
                    DrawRectTestAcvity.this.mIsRun = false;
                    DrawRectTestAcvity.this.mHandler.sendEmptyMessage(0);
                }
            }
            return true;
        }

        private void touchDown(MotionEvent motionEvent) {
            DrawRectTestAcvity.this.mPath.reset();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.mX = x;
            this.mY = y;
            DrawRectTestAcvity.this.mPath.moveTo(x, y);
        }

        private void touchMove(MotionEvent motionEvent) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            float f = this.mX;
            float f2 = this.mY;
            float fAbs = Math.abs(x - f);
            float fAbs2 = Math.abs(y - f2);
            if (fAbs >= 3.0f || fAbs2 >= 3.0f) {
                DrawRectTestAcvity.this.mPath.quadTo(f, f2, (x + f) / 2.0f, (y + f2) / 2.0f);
                for (RectInfo rectInfo : DrawRectTestAcvity.this.mRectInfoList) {
                    if (rectInfo.rect.contains((int) x, (int) y) && !rectInfo.isTouched) {
                        rectInfo.paint.setColor(-16711936);
                        rectInfo.isTouched = true;
                        DrawRectTestAcvity.access$408(DrawRectTestAcvity.this);
                    }
                }
                this.mX = x;
                this.mY = y;
            }
        }
    }
}
