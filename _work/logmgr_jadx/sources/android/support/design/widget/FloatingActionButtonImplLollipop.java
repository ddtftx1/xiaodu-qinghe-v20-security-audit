package android.support.design.widget;

import android.graphics.Rect;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;

/* loaded from: classes.dex */
class FloatingActionButtonImplLollipop extends FloatingActionButtonImpl {
    private InsetDrawable insetDrawable;

    @Override // android.support.design.widget.FloatingActionButtonImpl
    void jumpDrawableToCurrentState() {
    }

    @Override // android.support.design.widget.FloatingActionButtonImpl
    boolean requirePreDrawListener() {
        return false;
    }

    FloatingActionButtonImplLollipop(VisibilityAwareImageButton visibilityAwareImageButton, ShadowViewDelegate shadowViewDelegate) {
        super(visibilityAwareImageButton, shadowViewDelegate);
    }

    public float getElevation() {
        return this.view.getElevation();
    }

    @Override // android.support.design.widget.FloatingActionButtonImpl
    void onPaddingUpdated(Rect rect) {
        if (this.shadowViewDelegate.isCompatPaddingEnabled()) {
            InsetDrawable insetDrawable = new InsetDrawable(this.rippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
            this.insetDrawable = insetDrawable;
            this.shadowViewDelegate.setBackgroundDrawable(insetDrawable);
            return;
        }
        this.shadowViewDelegate.setBackgroundDrawable(this.rippleDrawable);
    }

    @Override // android.support.design.widget.FloatingActionButtonImpl
    void onDrawableStateChanged(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (this.view.isEnabled()) {
                this.view.setElevation(this.elevation);
                if (this.view.isPressed()) {
                    this.view.setTranslationZ(this.pressedTranslationZ);
                    return;
                } else if (this.view.isFocused() || this.view.isHovered()) {
                    this.view.setTranslationZ(this.hoveredFocusedTranslationZ);
                    return;
                } else {
                    this.view.setTranslationZ(0.0f);
                    return;
                }
            }
            this.view.setElevation(0.0f);
            this.view.setTranslationZ(0.0f);
        }
    }

    @Override // android.support.design.widget.FloatingActionButtonImpl
    void getPadding(Rect rect) {
        if (this.shadowViewDelegate.isCompatPaddingEnabled()) {
            float radius = this.shadowViewDelegate.getRadius();
            float elevation = getElevation() + this.pressedTranslationZ;
            int iCeil = (int) Math.ceil(ShadowDrawableWrapper.calculateHorizontalPadding(elevation, radius, false));
            int iCeil2 = (int) Math.ceil(ShadowDrawableWrapper.calculateVerticalPadding(elevation, radius, false));
            rect.set(iCeil, iCeil2, iCeil, iCeil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }
}
