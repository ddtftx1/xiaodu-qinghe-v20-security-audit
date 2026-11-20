package com.sprd.logmanager.logcopy.util;

import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.sprd.logmanager.utils.ShellUtils;
import com.sprd.logmanager.utils.StorageUtil;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public abstract class BaseCopyUtil {
    protected abstract void copyFile(File file, File file2, boolean z, boolean z2);

    public boolean checkisExternalStorageMounted() {
        return StorageUtil.getSdStorageState();
    }

    public int getCopy2PathFreeSize(boolean z) {
        int storageFreeSize = (int) ((StorageUtil.getStorageFreeSize(z) / 1024) / 1024);
        Log.d("BaseCopyUtil", "getCopy2PathFreeSize is " + storageFreeSize);
        if (storageFreeSize < 200) {
            return 0;
        }
        return storageFreeSize - 200;
    }

    public int copyDir(String str, String str2, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str)) {
            return -1;
        }
        Log.d("BaseCopyUtil", "fromFile is " + str + " toFile:" + str2);
        File file = new File(str);
        if (!file.exists()) {
            return -1;
        }
        File[] fileArrListFiles = file.listFiles(new FilterHiddenFile());
        File file2 = new File(str2);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        if (fileArrListFiles != null) {
            for (int i = 0; i < fileArrListFiles.length; i++) {
                if (fileArrListFiles[i].isDirectory()) {
                    copyDir(fileArrListFiles[i].getPath() + "/", str2 + "/" + fileArrListFiles[i].getName() + "/", z, z2);
                } else {
                    try {
                        copyFile(fileArrListFiles[i], new File(str2, fileArrListFiles[i].getName()), z, z2);
                    } catch (Exception e) {
                        Log.d("BaseCopyUtil", "file create fail because IOException");
                        e.printStackTrace();
                    }
                }
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00c8 A[Catch: IOException -> 0x00cb, TRY_LEAVE, TryCatch #7 {IOException -> 0x00cb, blocks: (B:49:0x00c3, B:51:0x00c8), top: B:60:0x00c3 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean copySignalFile(java.io.File r12, java.io.File r13) throws java.lang.Throwable {
        /*
            r11 = this;
            java.lang.String r11 = "BaseCopyUtil"
            java.lang.String r0 = "copySignalFile begin"
            android.util.Log.d(r11, r0)
            r0 = 0
            if (r12 == 0) goto Lcc
            if (r13 != 0) goto Le
            goto Lcc
        Le:
            java.time.Instant r1 = java.time.Instant.now()
            r2 = 0
            boolean r3 = r13.exists()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5f java.io.FileNotFoundException -> L82
            if (r3 != 0) goto L1c
            r13.createNewFile()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5f java.io.FileNotFoundException -> L82
        L1c:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5f java.io.FileNotFoundException -> L82
            r3.<init>(r12)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5f java.io.FileNotFoundException -> L82
            java.nio.channels.FileChannel r12 = r3.getChannel()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5f java.io.FileNotFoundException -> L82
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52 java.io.FileNotFoundException -> L58
            r3.<init>(r13)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52 java.io.FileNotFoundException -> L58
            java.nio.channels.FileChannel r2 = r3.getChannel()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52 java.io.FileNotFoundException -> L58
            r3 = 1
            if (r12 == 0) goto L42
            if (r2 == 0) goto L42
            r5 = 0
            long r7 = r12.size()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52 java.io.FileNotFoundException -> L58
            r4 = r12
            r9 = r2
            r4.transferTo(r5, r7, r9)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52 java.io.FileNotFoundException -> L58
            r2.force(r3)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52 java.io.FileNotFoundException -> L58
            r0 = r3
        L42:
            if (r12 == 0) goto L47
            r12.close()     // Catch: java.io.IOException -> L92
        L47:
            if (r2 == 0) goto L92
            r2.close()     // Catch: java.io.IOException -> L92
            goto L92
        L4d:
            r11 = move-exception
            r3 = r2
            r2 = r12
            goto Lc1
        L52:
            r3 = move-exception
            r10 = r2
            r2 = r12
            r12 = r3
            r3 = r10
            goto L61
        L58:
            r10 = r2
            r2 = r12
            r12 = r10
            goto L83
        L5c:
            r11 = move-exception
            r3 = r2
            goto Lc1
        L5f:
            r12 = move-exception
            r3 = r2
        L61:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L80
            r4.<init>()     // Catch: java.lang.Throwable -> L80
            java.lang.String r5 = "occur Exception:"
            r4.append(r5)     // Catch: java.lang.Throwable -> L80
            r4.append(r12)     // Catch: java.lang.Throwable -> L80
            java.lang.String r12 = r4.toString()     // Catch: java.lang.Throwable -> L80
            android.util.Log.e(r11, r12)     // Catch: java.lang.Throwable -> L80
            if (r2 == 0) goto L7a
            r2.close()     // Catch: java.io.IOException -> L92
        L7a:
            if (r3 == 0) goto L92
            r3.close()     // Catch: java.io.IOException -> L92
            goto L92
        L80:
            r11 = move-exception
            goto Lc1
        L82:
            r12 = r2
        L83:
            java.lang.String r3 = "file not found exception"
            android.util.Log.e(r11, r3)     // Catch: java.lang.Throwable -> Lbf
            if (r2 == 0) goto L8d
            r2.close()     // Catch: java.io.IOException -> L92
        L8d:
            if (r12 == 0) goto L92
            r12.close()     // Catch: java.io.IOException -> L92
        L92:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r2 = "copy file "
            r12.append(r2)
            java.lang.String r13 = r13.getName()
            r12.append(r13)
            java.lang.String r13 = " spent "
            r12.append(r13)
            java.time.Instant r13 = java.time.Instant.now()
            java.time.Duration r13 = java.time.Duration.between(r1, r13)
            long r1 = r13.toMillis()
            r12.append(r1)
            java.lang.String r12 = r12.toString()
            android.util.Log.d(r11, r12)
            return r0
        Lbf:
            r11 = move-exception
            r3 = r12
        Lc1:
            if (r2 == 0) goto Lc6
            r2.close()     // Catch: java.io.IOException -> Lcb
        Lc6:
            if (r3 == 0) goto Lcb
            r3.close()     // Catch: java.io.IOException -> Lcb
        Lcb:
            throw r11
        Lcc:
            java.lang.String r12 = "copySignalFile exit"
            android.util.Log.d(r11, r12)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.logmanager.logcopy.util.BaseCopyUtil.copySignalFile(java.io.File, java.io.File):boolean");
    }

    public void deleteSingleFileByRunCommand(String str) {
        Log.d("BaseCopyUtil", "deleteSingleFileByRunCommand " + str);
        ShellUtils.runCommand(String.format("rm -rf %s ", str));
    }

    public boolean deleteSingleFile(String str) {
        Log.d("BaseCopyUtil", "deleteSingleFile " + str);
        File file = new File(str);
        if (!file.exists()) {
            Log.e("BaseCopyUtil", "deleteSingleFile:" + str + " is not exists");
            return false;
        }
        if (file.isFile()) {
            if (file.delete()) {
                Log.d("BaseCopyUtil", "deleteSingleFile:" + str + " success");
                return true;
            }
            Log.d("BaseCopyUtil", "deleteSingleFile:" + str + " fail");
            return false;
        }
        Log.d("BaseCopyUtil", "deleteSingleFile:" + str + " is not file");
        return false;
    }

    public static class FilterHiddenFile implements FileFilter {
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.isHidden();
        }
    }

    public long getDirSize(String str) throws Exception {
        long fileSize;
        File file = new File(str);
        long j = 0;
        if (!file.exists()) {
            return 0L;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (int i = 0; i < fileArrListFiles.length; i++) {
                if (fileArrListFiles[i].isDirectory()) {
                    fileSize = getDirSize(fileArrListFiles[i].getPath() + "/");
                } else if (fileArrListFiles[i].getName().contains(".log")) {
                    fileSize = getFileSize(fileArrListFiles[i]);
                }
                j += fileSize;
            }
        }
        return j;
    }

    public long getFileSize(File file) throws Exception {
        if (!file.exists()) {
            return 0L;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        long jAvailable = fileInputStream.available();
        fileInputStream.close();
        return jAvailable;
    }

    public ArrayMap<String, String> getDirAllLogFiles(String str) {
        File[] fileArrListFiles;
        File file = new File(str);
        ArrayMap<String, String> arrayMap = new ArrayMap<>();
        if (file.exists() && (fileArrListFiles = file.listFiles(new FilterHiddenFile())) != null) {
            for (int i = 0; i < fileArrListFiles.length; i++) {
                if (fileArrListFiles[i].isDirectory()) {
                    ArrayMap<String, String> dirAllLogFiles = getDirAllLogFiles(fileArrListFiles[i].getPath() + "/");
                    if (dirAllLogFiles != null) {
                        arrayMap.putAll((ArrayMap<? extends String, ? extends String>) dirAllLogFiles);
                    }
                } else if (fileArrListFiles[i].getName().contains(".log")) {
                    arrayMap.put(fileArrListFiles[i].getName(), fileArrListFiles[i].getPath());
                }
            }
        }
        return arrayMap;
    }

    public long getCurrentSystemTime() {
        String str = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date(System.currentTimeMillis()));
        Log.d("BaseCopyUtil", "getCurrentSystemTime:" + str);
        return Long.parseLong(str);
    }
}
