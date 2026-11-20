package com.sprd.validationtools.itemstest.camera;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import android.widget.RelativeLayout;

/* loaded from: classes.dex */
public class PreviewFrameLayout extends RelativeLayout {
    public static final double VAL_CAMERA_PREVIEW_RATIO = 0.75d;
    public static final double VAL_HEIGHT_RATIO = 3.0d;
    public static final double VAL_WIDTH_RATIO = 4.0d;
    private double mAspectRatio;
    private OnSizeChangedListener mListener;
    private boolean mScreenState;

    public interface OnSizeChangedListener {
        void onSizeChanged(int i, int i2);
    }

    public void fadeOutBorder() {
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return super.generateLayoutParams(attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public /* bridge */ /* synthetic */ ViewOverlay getOverlay() {
        return super.getOverlay();
    }

    public PreviewFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setAspectRatio(1.3333333333333333d);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    public void setAspectRatio(double d) {
        if (d <= 0.0d) {
            throw new IllegalArgumentException();
        }
        if (1 == getResources().getConfiguration().orientation) {
            d = 1.0d / d;
        }
        if (this.mAspectRatio != d) {
            this.mAspectRatio = d;
            requestLayout();
        }
    }

    public void setAspectRatio(double d, boolean z) {
        if (this.mScreenState != z) {
            this.mScreenState = z;
            requestLayout();
        }
        setAspectRatio(d);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        Tuple<Integer, Integer> optimalSize = Util.getOptimalSize(size - paddingLeft, size2 - paddingTop, this.mAspectRatio, this.mScreenState);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(optimalSize.first.intValue() + paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(optimalSize.second.intValue() + paddingTop, 1073741824));
    }

    public void setOnSizeChangedListener(OnSizeChangedListener onSizeChangedListener) {
        this.mListener = onSizeChangedListener;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        OnSizeChangedListener onSizeChangedListener = this.mListener;
        if (onSizeChangedListener != null) {
            onSizeChangedListener.onSizeChanged(i, i2);
        }
    }
}
