package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
class ActionMenuPresenter$SavedState implements Parcelable {
    public static final Parcelable.Creator<ActionMenuPresenter$SavedState> CREATOR = new Parcelable.Creator<ActionMenuPresenter$SavedState>() { // from class: android.support.v7.widget.ActionMenuPresenter$SavedState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActionMenuPresenter$SavedState createFromParcel(Parcel parcel) {
            return new ActionMenuPresenter$SavedState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActionMenuPresenter$SavedState[] newArray(int i) {
            return new ActionMenuPresenter$SavedState[i];
        }
    };
    public int openSubMenuId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    ActionMenuPresenter$SavedState() {
    }

    ActionMenuPresenter$SavedState(Parcel parcel) {
        this.openSubMenuId = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.openSubMenuId);
    }
}
