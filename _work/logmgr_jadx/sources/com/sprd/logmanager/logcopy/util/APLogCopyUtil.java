package com.sprd.logmanager.logcopy.util;

import android.util.ArrayMap;
import android.util.Log;
import com.sprd.logmanager.logcontrol.APLogControl;
import com.sprd.logmanager.utils.StorageUtil;
import java.io.File;

/* loaded from: classes.dex */
public class APLogCopyUtil extends BaseCopyUtil {
    private String EXTERNAL_AP_LOG_PATH = StorageUtil.getExternalStorage() + "/Documents/ylog/ap";
    private String INTERNAL_AP_LOG_PATH = "/storage/emulated/0/Documents/ylog/ap";
    private String DATA_AP_LOG_PATH = "/data/ylog/ap";
    public ArrayMap<String, String> mNewCopyFile = new ArrayMap<>();
    private APLogControl mApLogControl = APLogControl.getInstance();

    public void startCopy(boolean z, boolean z2) {
        Log.d("BaseCopyUtil", "ap log copy begin...");
        if (z2) {
            copyDir(this.DATA_AP_LOG_PATH, this.EXTERNAL_AP_LOG_PATH, z, z2);
        } else {
            copyDir(this.DATA_AP_LOG_PATH, this.INTERNAL_AP_LOG_PATH, z, z2);
        }
        clearDataApLog();
        Log.d("BaseCopyUtil", "ap log copy end...");
    }

    protected boolean isLogOverwrite() {
        return this.mApLogControl.isLogOverwrite();
    }

    @Override // com.sprd.logmanager.logcopy.util.BaseCopyUtil
    protected void copyFile(File file, File file2, boolean z, boolean z2) {
        String currentWrittedFile = getCurrentWrittedFile();
        String str = this.INTERNAL_AP_LOG_PATH;
        if (z2) {
            str = this.EXTERNAL_AP_LOG_PATH;
        }
        if (file.getPath().contains(currentWrittedFile) && !z) {
            Log.d("BaseCopyUtil", "sourceFile:" + file.getName() + "is ap log current wirite file, not to copy.");
            return;
        }
        if (!z2 || checkisExternalStorageMounted()) {
            try {
                int fileSize = (int) ((getFileSize(file) / 1024) / 1024);
                int copy2PathFreeSize = getCopy2PathFreeSize(z2);
                if (copy2PathFreeSize < fileSize && z) {
                    Log.d("BaseCopyUtil", "Storage is full and once, end");
                    return;
                }
                if (!z && (copy2PathFreeSize < fileSize || getAPLogAllFileSize(str) + fileSize > getApLogTotalMaxSize())) {
                    Log.d("BaseCopyUtil", "Storage is full");
                    if (!isLogOverwrite()) {
                        Log.d("BaseCopyUtil", "Storage is full and ap log is not overwrite");
                        return;
                    }
                    String strFindOldFile = findOldFile(str);
                    if (strFindOldFile != null && deleteSingleFile(strFindOldFile)) {
                        copyFile(file, file2, z, z2);
                        return;
                    } else {
                        Log.d("BaseCopyUtil", "the oldfile is null or delete oldfile fail");
                        return;
                    }
                }
                if (!copySignalFile(file, file2) || file.getPath().contains(currentWrittedFile)) {
                    return;
                }
                this.mNewCopyFile.put(file.getName(), file.getPath());
            } catch (Exception e) {
                Log.d("BaseCopyUtil", "Exception:" + e);
            }
        }
    }

    public String findOldFile(String str) {
        int i;
        ArrayMap<String, String> dirAllLogFiles = getDirAllLogFiles(str);
        String str2 = null;
        if (dirAllLogFiles != null && dirAllLogFiles.size() > 0) {
            int i2 = 0;
            for (String str3 : dirAllLogFiles.keySet()) {
                if (!str3.contains("analyzer.py") && (i = Integer.parseInt(str3.substring(0, 3))) < i2) {
                    str2 = dirAllLogFiles.get(str3);
                    i2 = i;
                }
            }
        }
        return str2;
    }

    public int getAPLogAllFileSize(String str) {
        try {
            return (int) ((getDirSize(str) / 1024) / 1024);
        } catch (Exception unused) {
            return 0;
        }
    }

    private int getApLogTotalMaxSize() {
        return (int) ((StorageUtil.getStorageTotalSize(true) / 1024) / 1024);
    }

    public void clearDataApLog() {
        ArrayMap<String, String> arrayMap = this.mNewCopyFile;
        if (arrayMap == null || arrayMap.size() < 1) {
            return;
        }
        for (String str : this.mNewCopyFile.keySet()) {
            if (!str.contains("analyzer.py")) {
                deleteSingleFileByRunCommand(this.mNewCopyFile.get(str));
            }
        }
    }

    private String getCurrentWrittedFile() {
        return this.mApLogControl.getLogFile();
    }
}
