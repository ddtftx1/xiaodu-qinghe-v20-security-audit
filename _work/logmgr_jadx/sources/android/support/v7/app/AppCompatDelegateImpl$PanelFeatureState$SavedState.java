package android.support.v7.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
class AppCompatDelegateImpl$PanelFeatureState$SavedState implements Parcelable {
    public static final Parcelable.Creator<AppCompatDelegateImpl$PanelFeatureState$SavedState> CREATOR = new Parcelable.ClassLoaderCreator<AppCompatDelegateImpl$PanelFeatureState$SavedState>() { // from class: android.support.v7.app.AppCompatDelegateImpl$PanelFeatureState$SavedState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public AppCompatDelegateImpl$PanelFeatureState$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return AppCompatDelegateImpl$PanelFeatureState$SavedState.readFromParcel(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public AppCompatDelegateImpl$PanelFeatureState$SavedState createFromParcel(Parcel parcel) {
            return AppCompatDelegateImpl$PanelFeatureState$SavedState.readFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public AppCompatDelegateImpl$PanelFeatureState$SavedState[] newArray(int i) {
            return new AppCompatDelegateImpl$PanelFeatureState$SavedState[i];
        }
    };
    int featureId;
    boolean isOpen;
    Bundle menuState;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    AppCompatDelegateImpl$PanelFeatureState$SavedState() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.featureId);
        parcel.writeInt(this.isOpen ? 1 : 0);
        if (this.isOpen) {
            parcel.writeBundle(this.menuState);
        }
    }

    static AppCompatDelegateImpl$PanelFeatureState$SavedState readFromParcel(Parcel parcel, ClassLoader classLoader) {
        AppCompatDelegateImpl$PanelFeatureState$SavedState appCompatDelegateImpl$PanelFeatureState$SavedState = new AppCompatDelegateImpl$PanelFeatureState$SavedState();
        appCompatDelegateImpl$PanelFeatureState$SavedState.featureId = parcel.readInt();
        boolean z = parcel.readInt() == 1;
        appCompatDelegateImpl$PanelFeatureState$SavedState.isOpen = z;
        if (z) {
            appCompatDelegateImpl$PanelFeatureState$SavedState.menuState = parcel.readBundle(classLoader);
        }
        return appCompatDelegateImpl$PanelFeatureState$SavedState;
    }
}
