package android.support.v4.app;

import android.arch.lifecycle.ViewModel;
import android.arch.lifecycle.ViewModelProvider$Factory;
import android.support.v4.util.SparseArrayCompat;

/* loaded from: classes.dex */
class LoaderManagerImpl$LoaderViewModel extends ViewModel {
    private static final ViewModelProvider$Factory FACTORY = new ViewModelProvider$Factory() { // from class: android.support.v4.app.LoaderManagerImpl$LoaderViewModel.1
    };
    private SparseArrayCompat<?> mLoaders = new SparseArrayCompat<>();
    private boolean mCreatingLoader = false;

    LoaderManagerImpl$LoaderViewModel() {
    }
}
