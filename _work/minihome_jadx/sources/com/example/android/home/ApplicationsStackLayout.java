package com.example.android.home;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.List;

/* loaded from: classes.dex */
public class ApplicationsStackLayout extends ViewGroup implements View.OnClickListener {
    private Drawable mBackground;
    private View mButton;
    private Rect mDrawRect;
    private List<ApplicationInfo> mFavorites;
    private int mFavoritesEnd;
    private int mFavoritesStart;
    private int mIconSize;
    private LayoutInflater mInflater;
    private int mMarginBottom;
    private int mMarginLeft;
    private int mMarginRight;
    private int mMarginTop;
    private int mOrientation;
    private List<ApplicationInfo> mRecents;

    public ApplicationsStackLayout(Context context) {
        super(context);
        this.mOrientation = 1;
        this.mDrawRect = new Rect();
        initLayout();
    }

    public ApplicationsStackLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOrientation = 1;
        this.mDrawRect = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ApplicationsStackLayout);
        this.mOrientation = typedArrayObtainStyledAttributes.getInt(4, 1);
        this.mMarginLeft = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.mMarginTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.mMarginRight = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.mMarginBottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mIconSize = 42;
        initLayout();
    }

    private void initLayout() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        this.mInflater = layoutInflaterFrom;
        View viewInflate = layoutInflaterFrom.inflate(R.layout.all_applications_button, (ViewGroup) this, false);
        this.mButton = viewInflate;
        addView(viewInflate);
        this.mBackground = getBackground();
        setBackgroundDrawable(null);
        setWillNotDraw(false);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable = this.mBackground;
        int width = getWidth();
        int height = getHeight();
        if (this.mOrientation == 1) {
            this.mDrawRect.set(0, 0, width, this.mFavoritesStart);
        } else {
            this.mDrawRect.set(0, 0, this.mFavoritesStart, height);
        }
        drawable.setBounds(this.mDrawRect);
        drawable.draw(canvas);
        int i = this.mFavoritesStart;
        if (i > -1) {
            if (this.mOrientation == 1) {
                this.mDrawRect.set(0, i, width, this.mFavoritesEnd);
            } else {
                this.mDrawRect.set(i, 0, this.mFavoritesEnd, height);
            }
            drawable.setBounds(this.mDrawRect);
            drawable.draw(canvas);
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824 || mode2 != 1073741824) {
            throw new IllegalStateException("ApplicationsStackLayout can only be used with measure spec mode=EXACTLY");
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        removeAllApplications();
        ViewGroup.LayoutParams layoutParams = this.mButton.getLayoutParams();
        this.mButton.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
        if (this.mOrientation == 1) {
            layoutVertical();
        } else {
            layoutHorizontal();
        }
    }

    private void layoutVertical() {
        int height = getHeight();
        int measuredWidth = this.mButton.getMeasuredWidth();
        int measuredHeight = this.mButton.getMeasuredHeight();
        int i = height - (this.mMarginBottom + measuredHeight);
        this.mButton.layout(0, i, measuredWidth + 0, measuredHeight + i);
        int i2 = i - this.mMarginTop;
        this.mFavoritesEnd = i2 - this.mMarginBottom;
        int iStackApplications = stackApplications(this.mFavorites, 0, i2);
        if (iStackApplications != i2) {
            this.mFavoritesStart = this.mMarginTop + iStackApplications;
        } else {
            this.mFavoritesStart = -1;
        }
        stackApplications(this.mRecents, 0, iStackApplications);
    }

    private void layoutHorizontal() {
        int width = getWidth();
        int measuredWidth = this.mButton.getMeasuredWidth();
        int i = width - measuredWidth;
        this.mButton.layout(i, 0, measuredWidth + i, this.mButton.getMeasuredHeight() + 0);
        int i2 = i - this.mMarginLeft;
        this.mFavoritesEnd = i2 - this.mMarginRight;
        int iStackApplications = stackApplications(this.mFavorites, i2, 0);
        if (iStackApplications != i2) {
            this.mFavoritesStart = this.mMarginLeft + iStackApplications;
        } else {
            this.mFavoritesStart = -1;
        }
        stackApplications(this.mRecents, iStackApplications, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int stackApplications(java.util.List<com.example.android.home.ApplicationInfo> r9, int r10, int r11) {
        /*
            r8 = this;
            int r0 = r8.mOrientation
            r1 = 1
            if (r0 != r1) goto L7
            r0 = r1
            goto L8
        L7:
            r0 = 0
        L8:
            int r2 = r9.size()
            int r2 = r2 - r1
        Ld:
            if (r2 < 0) goto L63
            java.lang.Object r1 = r9.get(r2)
            com.example.android.home.ApplicationInfo r1 = (com.example.android.home.ApplicationInfo) r1
            android.view.LayoutInflater r3 = r8.mInflater
            android.view.View r1 = r8.createApplicationIcon(r3, r8, r1)
            android.view.ViewGroup$LayoutParams r3 = r1.getLayoutParams()
            int r4 = r3.width
            r5 = 1073741824(0x40000000, float:2.0)
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r4, r5)
            int r6 = r3.height
            int r5 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r5)
            r1.measure(r4, r5)
            int r4 = r1.getMeasuredWidth()
            int r5 = r1.getMeasuredHeight()
            if (r0 == 0) goto L44
            int r6 = r8.mMarginBottom
            int r7 = r5 + r6
            int r11 = r11 - r7
            if (r11 >= 0) goto L4e
            int r5 = r5 + r6
            int r11 = r11 + r5
            goto L63
        L44:
            int r6 = r8.mMarginRight
            int r7 = r4 + r6
            int r10 = r10 - r7
            if (r10 >= 0) goto L4e
            int r4 = r4 + r6
            int r10 = r10 + r4
            goto L63
        L4e:
            r6 = -1
            r8.addViewInLayout(r1, r6, r3)
            int r4 = r4 + r10
            int r5 = r5 + r11
            r1.layout(r10, r11, r4, r5)
            if (r0 == 0) goto L5d
            int r1 = r8.mMarginTop
            int r11 = r11 - r1
            goto L60
        L5d:
            int r1 = r8.mMarginLeft
            int r10 = r10 - r1
        L60:
            int r2 = r2 + (-1)
            goto Ld
        L63:
            if (r0 == 0) goto L66
            r10 = r11
        L66:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.android.home.ApplicationsStackLayout.stackApplications(java.util.List, int, int):int");
    }

    private void removeAllApplications() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (getChildAt(childCount) != this.mButton) {
                removeViewAt(childCount);
            }
        }
    }

    private View createApplicationIcon(LayoutInflater layoutInflater, ViewGroup viewGroup, ApplicationInfo applicationInfo) {
        TextView textView = (TextView) layoutInflater.inflate(R.layout.favorite, viewGroup, false);
        Drawable drawable = applicationInfo.icon;
        int i = this.mIconSize;
        drawable.setBounds(0, 0, i, i);
        textView.setCompoundDrawables(null, applicationInfo.icon, null, null);
        textView.setText(applicationInfo.title);
        textView.setTag(applicationInfo.intent);
        textView.setOnClickListener(this);
        return textView;
    }

    public void setFavorites(List<ApplicationInfo> list) {
        this.mFavorites = list;
        requestLayout();
    }

    public void setRecents(List<ApplicationInfo> list) {
        this.mRecents = list;
        requestLayout();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        getContext().startActivity((Intent) view.getTag());
    }
}
