package com.sprd.validationtools.utils;

import android.content.Context;
import android.os.Environment;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.storage.IStorageManager;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.os.storage.VolumeInfo;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;
import com.sprd.validationtools.nonpublic.ServiceManagerProxy;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class StorageUtil {
    private static final int EXT_COMMON_PATH = 1;
    private static final int EXT_EMULATED_PATH = 0;
    private static final int OTG_UDISK_PATH = 2;
    public static final String TAG = "StorageUtil";
    private static final String emulatedPathPrefix = "/storage/emulated";

    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getExternalStorageAppPath(android.content.Context r9, int r10) {
        /*
            java.lang.String r0 = "StorageUtil"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            java.io.File[] r9 = r9.getExternalFilesDirs(r2)
            java.util.Collections.addAll(r1, r9)
            java.io.File[] r9 = getUsbdiskVolumePaths()     // Catch: java.lang.Exception -> L51
            int r3 = r9.length     // Catch: java.lang.Exception -> L51
            r4 = 0
            r5 = r2
        L16:
            if (r4 >= r3) goto L56
            r6 = r9[r4]     // Catch: java.lang.Exception -> L4f
            if (r6 == 0) goto L47
            java.lang.String r7 = "mounted"
            java.lang.String r8 = getUsbdiskVolumeState(r6)     // Catch: java.lang.Exception -> L4f
            boolean r7 = r7.equals(r8)     // Catch: java.lang.Exception -> L4f
            if (r7 == 0) goto L47
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L4f
            r7.<init>()     // Catch: java.lang.Exception -> L4f
            java.lang.String r8 = "otg udisk mounted, otg path is "
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch: java.lang.Exception -> L4f
            java.lang.String r8 = r6.getPath()     // Catch: java.lang.Exception -> L4f
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch: java.lang.Exception -> L4f
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Exception -> L4f
            android.util.Log.d(r0, r7)     // Catch: java.lang.Exception -> L4f
            java.lang.String r5 = r6.getPath()     // Catch: java.lang.Exception -> L4f
            goto L4c
        L47:
            java.lang.String r6 = "otg udisk not mounted, otg path is null"
            android.util.Log.i(r0, r6)     // Catch: java.lang.Exception -> L4f
        L4c:
            int r4 = r4 + 1
            goto L16
        L4f:
            r9 = move-exception
            goto L53
        L51:
            r9 = move-exception
            r5 = r2
        L53:
            r9.printStackTrace()
        L56:
            java.util.Iterator r9 = r1.iterator()
            r1 = r2
            r3 = r1
        L5c:
            boolean r4 = r9.hasNext()
            if (r4 == 0) goto La6
            java.lang.Object r4 = r9.next()
            java.io.File r4 = (java.io.File) r4
            if (r4 == 0) goto L5c
            java.lang.String r4 = r4.getAbsolutePath()
            java.lang.String r6 = "/storage/emulated/0"
            boolean r6 = r4.startsWith(r6)
            if (r6 == 0) goto L8e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r6 = "external storage emulated path is: "
            java.lang.StringBuilder r1 = r1.append(r6)
            java.lang.StringBuilder r1 = r1.append(r4)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r0, r1)
            r1 = r4
            goto L5c
        L8e:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r6 = "external storage common path is: "
            java.lang.StringBuilder r3 = r3.append(r6)
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            android.util.Log.d(r0, r3)
            r3 = r4
            goto L5c
        La6:
            if (r10 != 0) goto La9
            return r1
        La9:
            r9 = 1
            if (r10 != r9) goto Lad
            return r3
        Lad:
            r9 = 2
            if (r10 != r9) goto Lb1
            return r5
        Lb1:
            java.lang.String r9 = "type is incorrect!"
            android.util.Log.w(r0, r9)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.utils.StorageUtil.getExternalStorageAppPath(android.content.Context, int):java.lang.String");
    }

    public static File[] getUsbdiskVolumePaths() {
        List<VolumeInfo> usbdiskVolumes = getUsbdiskVolumes();
        int size = usbdiskVolumes.size();
        File[] fileArr = new File[size];
        for (int i = 0; i < size; i++) {
            fileArr[i] = usbdiskVolumes.get(i).getPath();
        }
        return fileArr;
    }

    public static List<VolumeInfo> getUsbdiskVolumes() {
        ArrayList arrayList = new ArrayList();
        try {
            for (VolumeInfo volumeInfo : Arrays.asList(IStorageManager.Stub.asInterface(ServiceManagerProxy.getService("mount")).getVolumes(0))) {
                if (volumeInfo.disk != null && volumeInfo.disk.isUsb()) {
                    arrayList.add(volumeInfo);
                }
            }
            return arrayList;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public static String getUsbdiskVolumeState(File file) {
        for (VolumeInfo volumeInfo : getUsbdiskVolumes()) {
            if (android.os.FileUtils.contains(volumeInfo.getPath(), file)) {
                return VolumeInfo.getEnvironmentForState(volumeInfo.getState());
            }
        }
        return EnvironmentCompat.MEDIA_UNKNOWN;
    }

    public static File getExternalStoragePath(Context context) {
        for (StorageVolume storageVolume : ((StorageManager) context.getSystemService("storage")).getStorageVolumes()) {
            File directory = storageVolume.getDirectory();
            Log.i(TAG, "getExternalStoragePath volumePath : " + directory);
            if (directory != null && storageVolume.isRemovable() && "mounted".equals(Environment.getExternalStorageState(directory))) {
                Log.i(TAG, "really createAccessIntent for : " + directory);
                return directory;
            }
        }
        return null;
    }

    public static String getExternalStoragePathState(Context context) {
        File externalStoragePath = getExternalStoragePath(context);
        return externalStoragePath != null ? Environment.getExternalStorageState(externalStoragePath) : EnvironmentCompat.MEDIA_UNKNOWN;
    }

    public static File getInternalStoragePath() {
        return new File("/storage/emulated/" + UserHandle.myUserId());
    }
}
