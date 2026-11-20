package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.AbsSavedState;

/* loaded from: classes.dex */
class SearchView$SavedState extends AbsSavedState {
    public static final Parcelable.Creator<SearchView$SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SearchView$SavedState>() { // from class: android.support.v7.widget.SearchView$SavedState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public SearchView$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new SearchView$SavedState(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public SearchView$SavedState createFromParcel(Parcel parcel) {
            return new SearchView$SavedState(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public SearchView$SavedState[] newArray(int i) {
            return new SearchView$SavedState[i];
        }
    };
    boolean isIconified;

    public SearchView$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.isIconified = ((Boolean) parcel.readValue(null)).booleanValue();
    }

    @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeValue(Boolean.valueOf(this.isIconified));
    }

    public String toString() {
        return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.isIconified + "}";
    }
}
