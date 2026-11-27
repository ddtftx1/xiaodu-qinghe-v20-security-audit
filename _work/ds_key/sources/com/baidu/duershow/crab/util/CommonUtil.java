package com.baidu.duershow.crab.util;

import android.app.ActivityManager;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.duershow.crab.CrabSDK;
import com.baidu.duershow.crab.collector.CMDResultCollector;
import com.baidu.duershow.crab.collector.PackageCollector;
import com.baidu.duershow.crab.monitor.HardwareMonitor;
import com.baidu.duershow.crab.monitor.hardware.TemperatureData;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

public class CommonUtil {
    public static final String CHILD_MODE_KEY = "duer_kids_mode";

    public static List<String> getReportByLineFromTask(Task task) {
        CommandResult commandResultExecCommand = CommandExecutor.execCommand(task.getCommand());
        BLog.i("task.getCommand() = " + task.getCommand() + " command res = " + commandResultExecCommand);
        if (commandResultExecCommand.result == 0) {
            return commandResultExecCommand.successMsgByLine;
        }
        BLog.w("getReportFromTask error:\n" + commandResultExecCommand.errorMsg);
        return null;
    }

    public static String getProcNameByPid(Context context, int i) {
        try {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses != null && runningAppProcesses.size() != 0) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == i) {
                        return runningAppProcessInfo.processName;
                    }
                }
                return null;
            }
            BLog.i("getRunningAppProcesses error!!");
            return null;
        } catch (Exception e) {
            BLog.e("getProcNameByPid error!", e);
        }
    }

    public static int getPidByProcName(Context context, String str) {
        try {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses != null && runningAppProcesses.size() != 0) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.processName.equals(str)) {
                        BLog.i("Found relative pid " + runningAppProcessInfo.pid + " of procName " + str);
                        return runningAppProcessInfo.pid;
                    }
                }
                return -1;
            }
            BLog.i("getRunningAppProcesses error!!");
            return -1;
        } catch (Exception e) {
            BLog.e("getPidByProcName error!", e);
        }
    }

    public static byte[] compress(String str) throws IOException {
        if (str == null || str.length() == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, new Deflater(9, true));
        deflaterOutputStream.write(str.getBytes("UTF-8"));
        deflaterOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static String bytes4Human(long j) {
        if (j / 1000000000 > 0) {
            return "" + ((j / 100000000) / 10.0f) + "G";
        }
        if (j / 1000000 > 0) {
            return "" + ((j / 100000) / 10.0f) + "M";
        }
        if (j / 1000 > 0) {
            return "" + ((j / 100) / 10.0f) + "K";
        }
        return "" + j + "B";
    }

    public static String getMD5Str(String str) {
        if (TextUtils.isEmpty(str)) {
            return C.NO_RESULT;
        }
        MessageDigest messageDigest = null;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (messageDigest == null) {
            return str;
        }
        try {
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < bArrDigest.length; i++) {
                if (Integer.toHexString(bArrDigest[i] & 255).length() == 1) {
                    stringBuffer.append(CMDResultCollector.IDLE_PID_LOG_LOG_NUM);
                    stringBuffer.append(Integer.toHexString(bArrDigest[i] & 255));
                } else {
                    stringBuffer.append(Integer.toHexString(bArrDigest[i] & 255));
                }
            }
            return stringBuffer.toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public static long getDeviceStartTime() throws Throwable {
        String lineFromStat = getLineFromStat("/proc/stat", "btime");
        long startUpTime = CrabSDK.getCrabConfig().getStartUpTime() / 1000;
        try {
            startUpTime = Long.parseLong(lineFromStat.trim().substring(5).trim());
            BLog.i("btime is " + startUpTime);
            return startUpTime;
        } catch (Exception e) {
            BLog.e("getDeviceStartTime error!", e);
            return startUpTime;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x004b A[Catch: IOException -> 0x0047, TRY_LEAVE, TryCatch #0 {IOException -> 0x0047, blocks: (B:26:0x0043, B:30:0x004b), top: B:45:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x005f A[Catch: IOException -> 0x005b, TRY_LEAVE, TryCatch #8 {IOException -> 0x005b, blocks: (B:37:0x0057, B:41:0x005f), top: B:54:0x0057 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v7 */
    public static String getLineFromStat(String str, String str2) throws Throwable {
        FileReader fileReader;
        String str3;
        ?? r0 = 0;
        String line = null;
        bufferedReader = null;
        BufferedReader bufferedReader = null;
        r0 = 0;
        try {
            try {
                fileReader = new FileReader(str);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(fileReader, 8192);
                    do {
                        try {
                            line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                        } catch (Exception e) {
                            e = e;
                            String str4 = line;
                            bufferedReader = bufferedReader2;
                            str3 = str4;
                            BLog.e("Get current cpu stat failed!", e);
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                    if (fileReader != null) {
                                        fileReader.close();
                                    }
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                    r0 = str3;
                                    return r0;
                                }
                            } else if (fileReader != null) {
                                fileReader.close();
                            }
                            r0 = str3;
                        } catch (Throwable th) {
                            th = th;
                            r0 = bufferedReader2;
                            if (r0 != 0) {
                                try {
                                    r0.close();
                                    if (fileReader != null) {
                                        fileReader.close();
                                    }
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                    throw th;
                                }
                            } else if (fileReader != null) {
                                fileReader.close();
                            }
                            throw th;
                        }
                    } while (!line.startsWith(str2));
                    bufferedReader2.close();
                    fileReader.close();
                    try {
                        bufferedReader2.close();
                        fileReader.close();
                        r0 = line;
                    } catch (IOException e4) {
                        e4.printStackTrace();
                        r0 = line;
                    }
                } catch (Exception e5) {
                    e = e5;
                    str3 = null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e6) {
            e = e6;
            str3 = null;
            fileReader = null;
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
        }
        return r0;
    }

    public static void doZipCompress(ArrayList<File> arrayList, long j, int i) throws Throwable {
        if (arrayList == null || arrayList.size() == 0) {
            return;
        }
        String str = null;
        if (i == 1) {
            str = CrabSDK.getCrabConfig().getCrabFilePath() + "log/" + FileUtils.LOG_TOMB_ZIP_PREFIX + j + ".zip";
        } else if (i == 2) {
            str = CrabSDK.getCrabConfig().getCrabFilePath() + "log/" + FileUtils.LOG_ANR_ZIP_PREFIX + j + ".zip";
        } else if (i == 3) {
            str = CrabSDK.getCrabConfig().getCrabFilePath() + "log/" + FileUtils.LOG_JAVA_ZIP_PREFIX + j + ".zip";
        }
        if (str == null) {
            BLog.e("Log file path is null!");
            return;
        }
        BLog.d("Doing zip compressing...");
        long jCurrentTimeMillis = System.currentTimeMillis();
        zipMultiCompress(arrayList, str);
        BLog.d("Zip finished! Cost:" + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
        FileUtils.readPIDInfoEnd();
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ac A[Catch: IOException -> 0x00a8, TryCatch #2 {IOException -> 0x00a8, blocks: (B:59:0x00a4, B:63:0x00ac, B:65:0x00b1), top: B:71:0x00a4 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x00b1 A[Catch: IOException -> 0x00a8, TRY_LEAVE, TryCatch #2 {IOException -> 0x00a8, blocks: (B:59:0x00a4, B:63:0x00ac, B:65:0x00b1), top: B:71:0x00a4 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void zipMultiCompress(List<File> list, String str) throws Throwable {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        File file = new File(str);
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        ZipOutputStream zipOutputStream = null;
        fileInputStream = null;
        fileInputStream = null;
        FileInputStream fileInputStream2 = null;
        zipOutputStream = null;
        zipOutputStream = null;
        zipOutputStream = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    ZipOutputStream zipOutputStream2 = new ZipOutputStream(fileOutputStream);
                    try {
                        for (File file2 : list) {
                            if (file2 != null) {
                                fileInputStream = new FileInputStream(file2);
                                try {
                                    zipOutputStream2.putNextEntry(new ZipEntry(file2.getName()));
                                    byte[] bArr = new byte[1024];
                                    while (true) {
                                        int i = fileInputStream.read(bArr);
                                        if (i <= 0) {
                                            break;
                                        } else {
                                            zipOutputStream2.write(bArr, 0, i);
                                        }
                                    }
                                    zipOutputStream2.closeEntry();
                                    fileInputStream.close();
                                    fileInputStream2 = fileInputStream;
                                } catch (Exception e) {
                                    e = e;
                                    zipOutputStream = zipOutputStream2;
                                    try {
                                        BLog.e("zipMultiCompress error!", e);
                                        if (zipOutputStream != null) {
                                            zipOutputStream.close();
                                        }
                                        if (fileInputStream != null) {
                                            fileInputStream.close();
                                        }
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                            return;
                                        }
                                        return;
                                    } catch (Throwable th) {
                                        th = th;
                                        if (zipOutputStream != null) {
                                            try {
                                                zipOutputStream.close();
                                                if (fileInputStream != null) {
                                                    fileInputStream.close();
                                                }
                                                if (fileOutputStream != null) {
                                                    fileOutputStream.close();
                                                }
                                            } catch (IOException e2) {
                                                BLog.e("close stream error!", e2);
                                                throw th;
                                            }
                                        } else {
                                            if (fileInputStream != null) {
                                                fileInputStream.close();
                                            }
                                            if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                            }
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    zipOutputStream = zipOutputStream2;
                                    if (zipOutputStream != null) {
                                        zipOutputStream.close();
                                        if (fileInputStream != null) {
                                            fileInputStream.close();
                                        }
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                    } else {
                                        if (fileInputStream != null) {
                                            fileInputStream.close();
                                        }
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                    }
                                    throw th;
                                }
                            }
                        }
                        zipOutputStream2.close();
                        fileOutputStream.close();
                        zipOutputStream2.close();
                        if (fileInputStream2 != null) {
                            fileInputStream2.close();
                        }
                        fileOutputStream.close();
                    } catch (Exception e3) {
                        e = e3;
                        fileInputStream = fileInputStream2;
                    } catch (Throwable th3) {
                        th = th3;
                        fileInputStream = fileInputStream2;
                    }
                } catch (Exception e4) {
                    e = e4;
                    fileInputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    fileInputStream = null;
                }
            } catch (IOException e5) {
                BLog.e("close stream error!", e5);
            }
        } catch (Exception e6) {
            e = e6;
            fileOutputStream = null;
            fileInputStream = null;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
            fileInputStream = null;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0062 -> B:34:0x0065). Please report as a decompilation issue!!! */
    public static void zipCompress(String str, String str2) throws Throwable {
        File file = new File(str);
        if (!file.exists()) {
            BLog.e("File not exists! " + str);
            return;
        }
        File file2 = new File(str2);
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        ZipOutputStream zipOutputStream = null;
        try {
            try {
                try {
                    ZipOutputStream zipOutputStream2 = new ZipOutputStream(new FileOutputStream(file2));
                    try {
                        doCompress(zipOutputStream2, file, file.getName());
                        zipOutputStream2.close();
                        zipOutputStream2.close();
                    } catch (Exception e) {
                        e = e;
                        zipOutputStream = zipOutputStream2;
                        BLog.e("zip compress file exception", e);
                        if (zipOutputStream != null) {
                            zipOutputStream.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        zipOutputStream = zipOutputStream2;
                        if (zipOutputStream != null) {
                            try {
                                zipOutputStream.close();
                            } catch (Exception e2) {
                                BLog.e("zos close exception", e2);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Exception e4) {
            BLog.e("zos close exception", e4);
        }
    }

    private static void doCompress(ZipOutputStream zipOutputStream, File file, String str) throws Exception {
        zipOutputStream.putNextEntry(new ZipEntry(str));
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[1024];
        while (true) {
            int i = fileInputStream.read(bArr);
            if (i != -1) {
                zipOutputStream.write(bArr, 0, i);
            } else {
                zipOutputStream.closeEntry();
                fileInputStream.close();
                return;
            }
        }
    }

    public static void parseResult(String str) {
        try {
            if (str.contains("<sign>:")) {
                String[] strArrSplit = str.split("<sign>:");
                if (!RSAUtils.verify(strArrSplit[0].getBytes(), strArrSplit[1])) {
                    BLog.d("The config is invalid!");
                    return;
                }
                BLog.d("The config is valid.");
                JSONObject jSONObject = new JSONObject(strArrSplit[0]);
                if (jSONObject.optInt("code", -1) == 0 && jSONObject.has("data")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    if (jSONObject2.has("hw")) {
                        JSONObject jSONObject3 = jSONObject2.getJSONObject("hw");
                        if (jSONObject3.optInt("status", 0) == 0) {
                            BLog.i("Status is 0, monotor is disabled!");
                            if (HardwareMonitor.isInstanceCreated()) {
                                BLog.i("Stop the monitor.");
                                HardwareMonitor.getInstance().stopMonitor();
                                return;
                            }
                            return;
                        }
                        JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("proc");
                        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                            int iOptInt = jSONObject3.optInt("cpu", 0);
                            int iOptInt2 = jSONObject3.optInt("gpu", 0);
                            int iOptInt3 = jSONObject3.optInt("mem", 0);
                            int iOptInt4 = jSONObject3.optInt("disk", 0);
                            int iOptInt5 = jSONObject3.optInt(TemperatureData.CPU_TEMP_KEY, 0);
                            if (iOptInt + iOptInt3 + iOptInt4 + iOptInt5 == 0) {
                                BLog.i("All switch is closed, monitor is disabled!");
                                if (HardwareMonitor.isInstanceCreated()) {
                                    BLog.i("Stop the monitor.");
                                    HardwareMonitor.getInstance().stopMonitor();
                                    return;
                                }
                                return;
                            }
                            int iOptInt6 = jSONObject3.optInt("cycle", 0);
                            int iNextInt = new Random().nextInt(400) - 200;
                            int i = iOptInt6 + iNextInt;
                            BLog.i("Internal cycle is:" + i + ", random is:" + iNextInt);
                            HardwareMonitor hardwareMonitor = HardwareMonitor.getInstance();
                            if (i < 60) {
                                i = 60;
                            }
                            hardwareMonitor.setInterval(i);
                            HardwareMonitor.getInstance().setProcArray(jSONArrayOptJSONArray);
                            HardwareMonitor.getInstance().setSwitchCpu(iOptInt);
                            HardwareMonitor.getInstance().setSwitchGpu(iOptInt2);
                            HardwareMonitor.getInstance().setSwitchMem(iOptInt3);
                            HardwareMonitor.getInstance().setSwitchDisk(iOptInt4);
                            HardwareMonitor.getInstance().setSwitchTemper(iOptInt5);
                            JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject("apk");
                            if (jSONObjectOptJSONObject != null) {
                                HardwareMonitor.getInstance().setSwitchApk(jSONObjectOptJSONObject.optInt("status"));
                                HardwareMonitor.getInstance().setTimeArray(jSONObjectOptJSONObject.getJSONArray("times"));
                            }
                            if (!HardwareMonitor.isInstanceCreated()) {
                                BLog.i("Monitor is not enabled, start now.");
                                HardwareMonitor.getInstance().startMonitor();
                                return;
                            } else {
                                if (HardwareMonitor.getInstance().isMonitorStopped()) {
                                    BLog.i("Monitor is stopped, start now.");
                                    HardwareMonitor.getInstance().startMonitor();
                                    return;
                                }
                                return;
                            }
                        }
                        BLog.i("Proc info is empty, monitor is disabled!");
                        if (HardwareMonitor.isInstanceCreated()) {
                            BLog.i("Stop the monitor.");
                            HardwareMonitor.getInstance().stopMonitor();
                        }
                    }
                }
            }
        } catch (Exception e) {
            BLog.e("Parse config result error!", e);
        }
    }

    public static String[] getMemArray() {
        return FileUtils.hasMemcg() ? new String[]{FileUtils.readMemoryUsageFromMemcg(), FileUtils.readMemorySWUsageFromMemcg()} : new String[]{CMDResultCollector.IDLE_PID_LOG_LOG_NUM, CMDResultCollector.IDLE_PID_LOG_LOG_NUM};
    }

    public static String getTraceInfo(Throwable th) {
        return Log.getStackTraceString(th);
    }

    public static String getErrorLine(Throwable th) {
        if (th == null) {
            BLog.e("getErrorLine thr is null.");
            return "";
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        return stackTrace.length > 0 ? stackTrace[0].toString() : C.NO_RESULT;
    }

    public static String getErrorOriginalLine(Throwable th) {
        if (th == null) {
            BLog.e("getErrorOriginalLine thr is null.");
            return "";
        }
        while (th.getCause() != null) {
            th = th.getCause();
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        String pkgName = PackageCollector.getPkgName();
        for (int i = 0; i < stackTrace.length; i++) {
            if (stackTrace[i].getClassName().contains(pkgName)) {
                return stackTrace[i].toString();
            }
        }
        return stackTrace.length > 0 ? stackTrace[0].toString() : C.NO_RESULT;
    }

    public static boolean isChild(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), CHILD_MODE_KEY, 0) != 0;
    }

    public static String getUserCustomJson() {
        HashMap map = new HashMap();
        map.put("儿童模式", String.valueOf(isChild(CrabSDK.getCrabConfig().getContext())));
        return FileUtils.hashMapStringToJson(map);
    }
}
