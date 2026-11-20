package com.sprd.logmanager.utils;

import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class StorageUtil {
    public static String getInternalStorage() {
        return "/storage/emulated/0/";
    }

    public static String getExternalStorage() {
        String prop = PropUtils.getProp("vold.sdcard0.path");
        if (prop != null) {
            String prop2 = PropUtils.getProp("vold.sdcard0.state");
            if (prop2 != null && prop2.trim().equals("mounted")) {
                return prop;
            }
            if (prop2 != null) {
                prop2.trim().equals("unmounted");
            }
        }
        String sdPath = MiscUtils.getSdPath();
        return sdPath == null ? "/storage/sdcard0/" : sdPath.trim().split("\u0000")[0];
    }

    public static String getOtgStoragePath() throws ClassNotFoundException {
        String path;
        Exception e;
        try {
            Class<?> cls = Class.forName("android.os.EnvironmentEx");
            path = "";
            for (File file : (File[]) cls.getMethod("getUsbdiskVolumePaths", new Class[0]).invoke(null, new Object[0])) {
                try {
                    if (file != null && "mounted".equals(cls.getMethod("getUsbdiskVolumeState", File.class).invoke(null, file))) {
                        Log.d("StorageUitl", "otg udisk mounted, otg path is " + file.getPath());
                        path = file.getPath();
                    } else {
                        Log.i("StorageUitl", "otg udisk not mounted, otg path is null");
                        path = "";
                    }
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    return path;
                }
            }
        } catch (Exception e3) {
            path = "";
            e = e3;
        }
        return path;
    }

    public static boolean getSdStorageState() throws ClassNotFoundException {
        String otgStoragePath = getOtgStoragePath();
        String externalStorage = getExternalStorage();
        if (!TextUtils.isEmpty(otgStoragePath)) {
            if (otgStoragePath.split("/")[r0.length - 1].equals(externalStorage.split("/")[r1.length - 1])) {
                return false;
            }
        }
        return getExternalStorageState();
    }

    public static boolean getExternalStorageState() throws InterruptedException, IOException {
        String prop = PropUtils.getProp("vold.sdcard0.state");
        if (prop != null && prop.trim().equals("mounted")) {
            return true;
        }
        if (prop != null) {
            prop.trim().equals("unmounted");
        }
        String sdState = MiscUtils.getSdState();
        boolean z = sdState == null || !sdState.contains("0");
        if (sdState == null || !sdState.contains("1")) {
            return z;
        }
        return true;
    }

    public static long getStorageTotalSize(boolean z) {
        try {
            File file = new File(z ? "/storage/sdcard0/" : "/storage/emulated/0/");
            if (!file.exists()) {
                file = Environment.getDataDirectory();
            }
            return file.getTotalSpace();
        } catch (Exception e) {
            Log.d("StorageUitl", "getStorageTotalSize exception", e);
            return 0L;
        }
    }

    public static long getStorageFreeSize(boolean z) {
        try {
            File file = new File(z ? "/storage/sdcard0/" : "/storage/emulated/0/");
            if (!file.exists()) {
                file = Environment.getDataDirectory();
            }
            return file.getFreeSpace();
        } catch (Exception e) {
            Log.d("StorageUitl", "getStorageTotalSize exception", e);
            return 0L;
        }
    }

    public static long getFreeSpace(String str) {
        Log.i("StorageUitl", "getFreeSpace path is " + str);
        File file = new File(str);
        if (file.exists()) {
            return file.getFreeSpace();
        }
        Log.w("StorageUitl", "file is not exist :" + str);
        return 0L;
    }

    public static long getFreeSpace(File file) {
        if (file == null || !file.exists()) {
            return 0L;
        }
        return file.getFreeSpace();
    }

    public static long getTotalSpace(String str) {
        Log.i("StorageUitl", "getTotalSpace path is " + str);
        File file = new File(str);
        if (file.exists()) {
            return file.getTotalSpace();
        }
        Log.i("StorageUitl", "path not exist: " + str);
        return 0L;
    }
}
