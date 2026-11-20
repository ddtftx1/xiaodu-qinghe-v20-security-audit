package com.sprd.validationtools.utils;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class SocketUtils {
    public static final String FAIL = "FAIL";
    public static final String OK = "OK";
    private static final String TAG = "SocketUtils";
    public static LogControlAidl logctl = new LogControlAidl();

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a7 A[Catch: IOException -> 0x00a3, all -> 0x016e, TryCatch #9 {IOException -> 0x00a3, blocks: (B:21:0x009f, B:25:0x00a7, B:26:0x00aa), top: B:85:0x009f, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x011a A[Catch: IOException -> 0x0116, all -> 0x016e, TryCatch #1 {IOException -> 0x0116, blocks: (B:50:0x0112, B:54:0x011a, B:56:0x011f), top: B:80:0x0112, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011f A[Catch: IOException -> 0x0116, all -> 0x016e, TRY_LEAVE, TryCatch #1 {IOException -> 0x0116, blocks: (B:50:0x0112, B:54:0x011a, B:56:0x011f), top: B:80:0x0112, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x014a A[Catch: IOException -> 0x0146, all -> 0x016e, TryCatch #8 {IOException -> 0x0146, blocks: (B:65:0x0142, B:69:0x014a, B:71:0x014f), top: B:83:0x0142, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x014f A[Catch: IOException -> 0x0146, all -> 0x016e, TRY_LEAVE, TryCatch #8 {IOException -> 0x0146, blocks: (B:65:0x0142, B:69:0x014a, B:71:0x014f), top: B:83:0x0142, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0112 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0142 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized java.lang.String sendByteAndRecResult(java.lang.String r7, android.net.LocalSocketAddress.Namespace r8, byte[] r9, int r10) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.utils.SocketUtils.sendByteAndRecResult(java.lang.String, android.net.LocalSocketAddress$Namespace, byte[], int):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x015c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0095 A[Catch: IOException -> 0x0091, all -> 0x0188, TryCatch #3 {IOException -> 0x0091, blocks: (B:24:0x008d, B:28:0x0095, B:29:0x0098), top: B:95:0x008d, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c1 A[Catch: IOException -> 0x00bd, all -> 0x0188, TryCatch #12 {IOException -> 0x00bd, blocks: (B:36:0x00b9, B:40:0x00c1, B:41:0x00c4), top: B:104:0x00b9, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0134 A[Catch: IOException -> 0x0130, all -> 0x0188, TryCatch #5 {IOException -> 0x0130, blocks: (B:65:0x012c, B:69:0x0134, B:71:0x0139), top: B:98:0x012c, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0139 A[Catch: IOException -> 0x0130, all -> 0x0188, TRY_LEAVE, TryCatch #5 {IOException -> 0x0130, blocks: (B:65:0x012c, B:69:0x0134, B:71:0x0139), top: B:98:0x012c, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0164 A[Catch: IOException -> 0x0160, all -> 0x0188, TryCatch #11 {IOException -> 0x0160, blocks: (B:80:0x015c, B:84:0x0164, B:86:0x0169), top: B:102:0x015c, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0169 A[Catch: IOException -> 0x0160, all -> 0x0188, TRY_LEAVE, TryCatch #11 {IOException -> 0x0160, blocks: (B:80:0x015c, B:84:0x0164, B:86:0x0169), top: B:102:0x015c, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x012c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized byte[] sendByteAndRecResult2(java.lang.String r10, android.net.LocalSocketAddress.Namespace r11, byte[] r12, int r13) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.utils.SocketUtils.sendByteAndRecResult2(java.lang.String, android.net.LocalSocketAddress$Namespace, byte[], int):byte[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00c9 A[Catch: IOException -> 0x00c5, all -> 0x0187, TryCatch #8 {IOException -> 0x00c5, blocks: (B:17:0x00c1, B:21:0x00c9, B:22:0x00cc), top: B:81:0x00c1, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0133 A[Catch: IOException -> 0x012f, all -> 0x0187, TryCatch #3 {IOException -> 0x012f, blocks: (B:48:0x012b, B:52:0x0133, B:54:0x0138), top: B:79:0x012b, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0138 A[Catch: IOException -> 0x012f, all -> 0x0187, TRY_LEAVE, TryCatch #3 {IOException -> 0x012f, blocks: (B:48:0x012b, B:52:0x0133, B:54:0x0138), top: B:79:0x012b, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0163 A[Catch: IOException -> 0x015f, all -> 0x0187, TryCatch #10 {IOException -> 0x015f, blocks: (B:63:0x015b, B:67:0x0163, B:69:0x0168), top: B:85:0x015b, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0168 A[Catch: IOException -> 0x015f, all -> 0x0187, TRY_LEAVE, TryCatch #10 {IOException -> 0x015f, blocks: (B:63:0x015b, B:67:0x0163, B:69:0x0168), top: B:85:0x015b, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x012b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x015b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized java.lang.String sendCmdAndRecResult(java.lang.String r8, android.net.LocalSocketAddress.Namespace r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.utils.SocketUtils.sendCmdAndRecResult(java.lang.String, android.net.LocalSocketAddress$Namespace, java.lang.String):java.lang.String");
    }

    public static String sendCmdAndRecResult(String str, LocalSocketAddress.Namespace namespace, String str2, int i) throws InterruptedException {
        while (true) {
            int i2 = i - 1;
            if (i == 0) {
                return null;
            }
            String strSendCmdAndRecResult = sendCmdAndRecResult(str, namespace, str2);
            if (strSendCmdAndRecResult != null) {
                return strSendCmdAndRecResult;
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            Log.d(TAG, "try again" + i2);
            i = i2;
        }
    }

    public static String sendCmd(String str, String str2) throws Throwable {
        OutputStream outputStream;
        InputStream inputStream;
        String str3;
        Watchdog watchdog;
        String str4 = String.format("[%s][%d]<%s>", Thread.currentThread().getStackTrace()[2].getClassName(), Long.valueOf(Thread.currentThread().getId()), str2.replace('\n', '\\'));
        Log.d(TAG, str + " send cmd: " + str4);
        LocalSocket localSocket = new LocalSocket();
        byte[] bArr = new byte[1024];
        Watchdog watchdog2 = null;
        String str5 = null;
        watchdog2 = null;
        watchdog2 = null;
        watchdog2 = null;
        watchdog2 = null;
        watchdog2 = null;
        try {
            localSocket.connect(new LocalSocketAddress(str, LocalSocketAddress.Namespace.ABSTRACT));
            Log.i(TAG, str4 + "connect " + str + " success");
            outputStream = localSocket.getOutputStream();
            try {
                inputStream = localSocket.getInputStream();
                try {
                    try {
                        outputStream.write(str2.getBytes(StandardCharsets.UTF_8));
                        outputStream.flush();
                        Log.d(TAG, str4 + " write cmd done , flush data done");
                        watchdog = new Watchdog(str, str2);
                    } catch (IOException e) {
                        e = e;
                        str3 = null;
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e2) {
                e = e2;
                str3 = null;
                inputStream = null;
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
        } catch (IOException e3) {
            e = e3;
            str3 = null;
            outputStream = null;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
            inputStream = null;
        }
        try {
            watchdog.setTimeoutCallback(new Consumer() { // from class: com.sprd.validationtools.utils.SocketUtils$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) throws IOException {
                    SocketUtils.timeout(obj);
                }
            }, localSocket);
            watchdog.wantEat();
            int i = inputStream.read(bArr, 0, 1024);
            watchdog.feedFood();
            Log.d(TAG, str4 + " result read done");
            str5 = "read count is -1";
            if (i != -1) {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, i);
                str5 = new String(bArr2, StandardCharsets.UTF_8);
            } else {
                Log.e(TAG, str4 + " read failed");
            }
            Log.d(TAG, str4 + "count = " + i + ", result is " + str5);
            watchdog.feedFood();
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            localSocket.close();
        } catch (IOException e5) {
            e = e5;
            str3 = str5;
            watchdog2 = watchdog;
            e.printStackTrace();
            if (watchdog2 != null) {
                watchdog2.feedFood();
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                    str5 = str3;
                    Log.d(TAG, str4 + "handle over and result is :" + str5);
                    return str5;
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            localSocket.close();
            str5 = str3;
            Log.d(TAG, str4 + "handle over and result is :" + str5);
            return str5;
        } catch (Throwable th4) {
            th = th4;
            watchdog2 = watchdog;
            if (watchdog2 != null) {
                watchdog2.feedFood();
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                    throw th;
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            localSocket.close();
            throw th;
        }
        Log.d(TAG, str4 + "handle over and result is :" + str5);
        return str5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void timeout(Object obj) throws IOException {
        try {
            ((LocalSocket) obj).close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static synchronized String sendCmdByAidl(String str, String str2) {
        String strSendCmd;
        strSendCmd = null;
        String str3 = str2 + "\u0000";
        if (logctl != null) {
            Log.d(TAG, "logctl not null");
            strSendCmd = logctl.sendCmd(str, str3);
        }
        Log.d(TAG, "aidl cmd = " + str2 + ", res = " + strSendCmd);
        return strSendCmd;
    }
}
