package android.support.design.widget;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {
    private final BaseTransientBottomBar$BehaviorDelegate delegate = new BaseTransientBottomBar$BehaviorDelegate(this);

    @Override // android.support.design.widget.SwipeDismissBehavior
    public boolean canSwipeDismissView(View view) {
        return this.delegate.canSwipeDismissView(view);
    }

    @Override // android.support.design.widget.SwipeDismissBehavior, android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.delegate.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
    }
}
