package com.example.android.home;

import android.content.ComponentName;
import android.content.Intent;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
class ApplicationInfo {
    boolean filtered;
    Drawable icon;
    Intent intent;
    CharSequence title;

    ApplicationInfo() {
    }

    final void setActivity(ComponentName componentName, int i) {
        Intent intent = new Intent("android.intent.action.MAIN");
        this.intent = intent;
        intent.addCategory("android.intent.category.LAUNCHER");
        this.intent.setComponent(componentName);
        this.intent.setFlags(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApplicationInfo)) {
            return false;
        }
        ApplicationInfo applicationInfo = (ApplicationInfo) obj;
        return this.title.equals(applicationInfo.title) && this.intent.getComponent().getClassName().equals(applicationInfo.intent.getComponent().getClassName());
    }

    public int hashCode() {
        CharSequence charSequence = this.title;
        int iHashCode = charSequence != null ? charSequence.hashCode() : 0;
        String className = this.intent.getComponent().getClassName();
        return (iHashCode * 31) + (className != null ? className.hashCode() : 0);
    }
}
