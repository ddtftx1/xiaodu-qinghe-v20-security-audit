package android.support.design.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.AbsSavedState;
import android.text.TextUtils;

/* loaded from: classes.dex */
class TextInputLayout$SavedState extends AbsSavedState {
    public static final Parcelable.Creator<TextInputLayout$SavedState> CREATOR = new Parcelable.ClassLoaderCreator<TextInputLayout$SavedState>() { // from class: android.support.design.widget.TextInputLayout$SavedState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public TextInputLayout$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new TextInputLayout$SavedState(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public TextInputLayout$SavedState createFromParcel(Parcel parcel) {
            return new TextInputLayout$SavedState(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public TextInputLayout$SavedState[] newArray(int i) {
            return new TextInputLayout$SavedState[i];
        }
    };
    CharSequence error;
    boolean isPasswordToggledVisible;

    TextInputLayout$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.error = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.isPasswordToggledVisible = parcel.readInt() == 1;
    }

    @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        TextUtils.writeToParcel(this.error, parcel, i);
        parcel.writeInt(this.isPasswordToggledVisible ? 1 : 0);
    }

    public String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.error) + "}";
    }
}
