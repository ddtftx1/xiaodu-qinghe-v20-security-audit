package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.R$styleable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class BaseTransientBottomBar$SnackbarBaseLayout extends FrameLayout {
    private final AccessibilityManager accessibilityManager;
    private BaseTransientBottomBar$OnAttachStateChangeListener onAttachStateChangeListener;
    private BaseTransientBottomBar$OnLayoutChangeListener onLayoutChangeListener;
    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener;

    protected BaseTransientBottomBar$SnackbarBaseLayout(Context context) {
        this(context, null);
    }

    protected BaseTransientBottomBar$SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SnackbarLayout);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_elevation)) {
            ViewCompat.setElevation(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(r0, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        this.accessibilityManager = accessibilityManager;
        AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() { // from class: android.support.design.widget.BaseTransientBottomBar$SnackbarBaseLayout.1
            @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
            public void onTouchExplorationStateChanged(boolean z) {
                BaseTransientBottomBar$SnackbarBaseLayout.this.setClickableOrFocusableBasedOnAccessibility(z);
            }
        };
        this.touchExplorationStateChangeListener = touchExplorationStateChangeListener;
        AccessibilityManagerCompat.addTouchExplorationStateChangeListener(accessibilityManager, touchExplorationStateChangeListener);
        setClickableOrFocusableBasedOnAccessibility(accessibilityManager.isTouchExplorationEnabled());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
        setClickable(!z);
        setFocusable(z);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        BaseTransientBottomBar$OnLayoutChangeListener baseTransientBottomBar$OnLayoutChangeListener = this.onLayoutChangeListener;
        if (baseTransientBottomBar$OnLayoutChangeListener != null) {
            baseTransientBottomBar$OnLayoutChangeListener.onLayoutChange(this, i, i2, i3, i4);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        BaseTransientBottomBar$OnAttachStateChangeListener baseTransientBottomBar$OnAttachStateChangeListener = this.onAttachStateChangeListener;
        if (baseTransientBottomBar$OnAttachStateChangeListener != null) {
            baseTransientBottomBar$OnAttachStateChangeListener.onViewAttachedToWindow(this);
        }
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        BaseTransientBottomBar$OnAttachStateChangeListener baseTransientBottomBar$OnAttachStateChangeListener = this.onAttachStateChangeListener;
        if (baseTransientBottomBar$OnAttachStateChangeListener != null) {
            baseTransientBottomBar$OnAttachStateChangeListener.onViewDetachedFromWindow(this);
        }
        AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(this.accessibilityManager, this.touchExplorationStateChangeListener);
    }
}
