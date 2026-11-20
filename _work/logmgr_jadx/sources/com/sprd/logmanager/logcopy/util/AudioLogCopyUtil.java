package com.sprd.logmanager.logcopy.util;

import android.util.ArrayMap;
import android.util.Log;
import com.sprd.logmanager.logcontrol.CPLogControlThroughHidl;
import com.sprd.logmanager.utils.StorageUtil;
import java.io.File;
import java.util.Iterator;

/* loaded from: classes.dex */
public class AudioLogCopyUtil extends BaseCopyUtil {
    private String EXTERNAL_AUDIO_LOG_PATH = StorageUtil.getExternalStorage() + "/Documents/ylog/audio";
    private String INTERNAL_AUDIO_LOG_PATH = "/storage/emulated/0/Documents/ylog/audio";
    private String DATA_AUDIO_LOG_PATH = "/data/ylog/audio";
    public ArrayMap<String, String> mNewCopyFile = new ArrayMap<>();
    private CPLogControlThroughHidl mCPLogControlThroughHidl = CPLogControlThroughHidl.getInstance();

    protected boolean isLogOverwrite() {
        return true;
    }

    public void startCopy(boolean z, boolean z2) {
        Log.d("BaseCopyUtil", "audio log copy begin...");
        if (z2) {
            copyDir(this.DATA_AUDIO_LOG_PATH, this.EXTERNAL_AUDIO_LOG_PATH, z, z2);
        } else {
            copyDir(this.DATA_AUDIO_LOG_PATH, this.INTERNAL_AUDIO_LOG_PATH, z, z2);
        }
        clearDataAudioLog();
        Log.d("BaseCopyUtil", "audio log copy end...");
    }

    @Override // com.sprd.logmanager.logcopy.util.BaseCopyUtil
    protected void copyFile(File file, File file2, boolean z, boolean z2) throws NumberFormatException {
        boolean z3 = !checkLogFile(file);
        String str = this.INTERNAL_AUDIO_LOG_PATH;
        if (z2) {
            str = this.EXTERNAL_AUDIO_LOG_PATH;
        }
        if (z3 && !z) {
            Log.d("BaseCopyUtil", "sourceFile:" + file.getName() + " is writting, not to copy");
            return;
        }
        String currentWrittedFile = getCurrentWrittedFile(this.DATA_AUDIO_LOG_PATH);
        if (currentWrittedFile != null && file.getName().contains(currentWrittedFile) && !z) {
            Log.d("BaseCopyUtil", "sourceFile:" + file.getName() + "is audio log current wirite file, not to copy.");
            return;
        }
        if (!z2 || checkisExternalStorageMounted()) {
            int fileSize = 0;
            try {
                fileSize = (int) ((getFileSize(file) / 1024) / 1024);
                Log.d("BaseCopyUtil", "fileSize: " + fileSize);
            } catch (Exception e) {
                Log.d("BaseCopyUtil", "Exception: " + e);
            }
            if (getCopy2PathFreeSize(z2) < fileSize) {
                Log.d("BaseCopyUtil", "Storage is full");
                if (z) {
                    Log.d("BaseCopyUtil", "Storage is full and once, end");
                    return;
                }
                if (!isLogOverwrite()) {
                    Log.d("BaseCopyUtil", "Storage is full and audio log is not overwrite");
                    return;
                }
                String strFindOldFile = findOldFile(str);
                if (strFindOldFile != null && deleteSingleFile(strFindOldFile)) {
                    copyFile(file, file2, z, z2);
                    return;
                } else {
                    Log.e("BaseCopyUtil", "the audio oldfile is null or delete oldfile fail");
                    return;
                }
            }
            if (!copySignalFile(file, file2) || z3 || file.getName().contains(currentWrittedFile)) {
                return;
            }
            this.mNewCopyFile.put(file.getName(), file.getPath());
        }
    }

    public String findOldFile(String str) throws NumberFormatException {
        ArrayMap<String, String> dirAllLogFiles = getDirAllLogFiles(str);
        String str2 = null;
        if (dirAllLogFiles != null && dirAllLogFiles.size() > 0) {
            long j = 0;
            for (String str3 : dirAllLogFiles.keySet()) {
                if (str3.contains(".log")) {
                    long j2 = Long.parseLong(str3.substring(3, 18).replace("-", ""));
                    if (j == 0 || j2 < j) {
                        str2 = dirAllLogFiles.get(str3);
                        j = j2;
                    }
                }
            }
        }
        return str2;
    }

    public void clearDataAudioLog() {
        ArrayMap<String, String> arrayMap = this.mNewCopyFile;
        if (arrayMap == null || arrayMap.size() < 1) {
            return;
        }
        Iterator<String> it = this.mNewCopyFile.keySet().iterator();
        while (it.hasNext()) {
            deleteSingleFileByRunCommand(this.mNewCopyFile.get(it.next()));
        }
    }

    private String getCurrentWrittedFile(String str) throws NumberFormatException {
        ArrayMap<String, String> dirAllLogFiles = getDirAllLogFiles(str);
        long currentSystemTime = getCurrentSystemTime();
        String str2 = null;
        if (dirAllLogFiles != null && dirAllLogFiles.size() > 0) {
            long j = 0;
            for (String str3 : dirAllLogFiles.keySet()) {
                if (str3.contains("ag") && str3.contains(".log")) {
                    long j2 = Long.parseLong(str3.substring(3, 18).replace("-", ""));
                    if (j2 > j && j2 <= currentSystemTime) {
                        str2 = str3;
                        j = j2;
                    }
                }
            }
        }
        Log.d("BaseCopyUtil", "audio log current save file:" + str2);
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005e A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean checkLogFile(java.io.File r9) throws java.lang.InterruptedException {
        /*
            r8 = this;
            java.lang.String r0 = r9.getName()
            r1 = 1
            if (r0 == 0) goto L18
            java.lang.String r2 = "ag"
            boolean r2 = r0.contains(r2)
            if (r2 == 0) goto L18
            java.lang.String r2 = ".log"
            boolean r0 = r0.contains(r2)
            if (r0 == 0) goto L18
            return r1
        L18:
            r2 = 0
            long r4 = r8.getFileSize(r9)     // Catch: java.lang.Exception -> L2a
            r6 = 1000(0x3e8, double:4.94E-321)
            java.lang.Thread.sleep(r6)     // Catch: java.lang.Exception -> L28
            long r2 = r8.getFileSize(r9)     // Catch: java.lang.Exception -> L28
            goto L2f
        L28:
            r8 = move-exception
            goto L2c
        L2a:
            r8 = move-exception
            r4 = r2
        L2c:
            r8.printStackTrace()
        L2f:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "file:"
            r8.append(r0)
            java.lang.String r9 = r9.getName()
            r8.append(r9)
            java.lang.String r9 = " firstSize:"
            r8.append(r9)
            r8.append(r4)
            java.lang.String r9 = " secondSize:"
            r8.append(r9)
            r8.append(r2)
            java.lang.String r8 = r8.toString()
            java.lang.String r9 = "BaseCopyUtil"
            android.util.Log.d(r9, r8)
            int r8 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r8 != 0) goto L5e
            return r1
        L5e:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.logmanager.logcopy.util.AudioLogCopyUtil.checkLogFile(java.io.File):boolean");
    }
}
