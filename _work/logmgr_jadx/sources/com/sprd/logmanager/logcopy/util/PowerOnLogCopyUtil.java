package com.sprd.logmanager.logcopy.util;

import android.util.ArrayMap;
import android.util.Log;
import com.sprd.logmanager.utils.StorageUtil;
import java.io.File;
import java.util.Iterator;

/* loaded from: classes.dex */
public class PowerOnLogCopyUtil extends BaseCopyUtil {
    private String EXTERNAL_POWERON_LOG_PATH = StorageUtil.getExternalStorage() + "/Documents/ylog/poweron";
    private String INTERNAL_POWERON_LOG_PATH = "/storage/emulated/0/Documents/ylog/poweron";
    private String DATA_POWERON_LOG_PATH = "/data/ylog/poweron";
    public ArrayMap<String, String> mNewCopyFile = new ArrayMap<>();

    public void startCopy(boolean z, boolean z2) {
        Log.d("BaseCopyUtil", "poweron log copy begin...");
        if (z2) {
            copyDir(this.DATA_POWERON_LOG_PATH, this.EXTERNAL_POWERON_LOG_PATH, z, z2);
        } else {
            copyDir(this.DATA_POWERON_LOG_PATH, this.INTERNAL_POWERON_LOG_PATH, z, z2);
        }
        clearDataPoweronLog();
        Log.d("BaseCopyUtil", "poweron log copy end...");
    }

    @Override // com.sprd.logmanager.logcopy.util.BaseCopyUtil
    protected void copyFile(File file, File file2, boolean z, boolean z2) {
        if (!z2 || checkisExternalStorageMounted()) {
            try {
                if (getCopy2PathFreeSize(z2) < ((int) ((getFileSize(file) / 1024) / 1024))) {
                    Log.d("BaseCopyUtil", "Storage is full");
                } else if (copySignalFile(file, file2)) {
                    this.mNewCopyFile.put(file.getName(), file.getPath());
                }
            } catch (Exception e) {
                Log.d("BaseCopyUtil", "Exception:" + e);
            }
        }
    }

    public void clearDataPoweronLog() {
        ArrayMap<String, String> arrayMap = this.mNewCopyFile;
        if (arrayMap == null || arrayMap.size() < 1) {
            return;
        }
        Iterator<String> it = this.mNewCopyFile.keySet().iterator();
        while (it.hasNext()) {
            deleteSingleFileByRunCommand(this.mNewCopyFile.get(it.next()));
        }
    }
}
