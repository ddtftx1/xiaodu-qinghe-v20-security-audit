package com.sprd.validationtools.nonpublic;

import android.os.storage.StorageManager;
import com.sprd.validationtools.CommonKt;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* compiled from: StorageManagerProxy.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/sprd/validationtools/nonpublic/StorageManagerProxy;", "", "()V", "storageManagerObject", "Landroid/os/storage/StorageManager;", "getPrimaryStorageSize", "", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class StorageManagerProxy {
    public static final StorageManagerProxy INSTANCE = new StorageManagerProxy();
    private static StorageManager storageManagerObject;

    private StorageManagerProxy() {
    }

    static {
        Object systemService = CommonKt.getAppCtx().getSystemService("storage");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.os.storage.StorageManager");
        storageManagerObject = (StorageManager) systemService;
    }

    @JvmStatic
    public static final long getPrimaryStorageSize() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke = StorageManager.class.getMethod("getPrimaryStorageSize", new Class[0]).invoke(storageManagerObject, new Object[0]);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) objInvoke).longValue();
    }
}
