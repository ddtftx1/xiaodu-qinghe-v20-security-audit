package com.sprd.validationtools.utils;

import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class FileUtils {
    private static final String TAG = "FileUtils";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.io.InputStreamReader] */
    public static int getIntFromFile(String str) throws Throwable {
        FileInputStream fileInputStream;
        Throwable th;
        NumberFormatException e;
        InputStreamReader inputStreamReader;
        IOException e2;
        ?? file = new File(str);
        try {
            try {
                try {
                    fileInputStream = new FileInputStream((File) file);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                fileInputStream = null;
                e2 = e3;
                inputStreamReader = null;
            } catch (NumberFormatException e4) {
                fileInputStream = null;
                e = e4;
                inputStreamReader = null;
            } catch (Throwable th3) {
                fileInputStream = null;
                th = th3;
                file = 0;
            }
            try {
                inputStreamReader = new InputStreamReader(fileInputStream, Charset.defaultCharset());
                try {
                    char[] cArr = new char[1024];
                    int i = inputStreamReader.read(cArr);
                    if (i <= 0) {
                        inputStreamReader.close();
                        fileInputStream.close();
                        return -1;
                    }
                    int i2 = Integer.parseInt(String.valueOf(cArr, 0, i).trim());
                    try {
                        inputStreamReader.close();
                        fileInputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                    return i2;
                } catch (IOException e6) {
                    e2 = e6;
                    e2.printStackTrace();
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (fileInputStream == null) {
                        return -1;
                    }
                    fileInputStream.close();
                    return -1;
                } catch (NumberFormatException e7) {
                    e = e7;
                    e.printStackTrace();
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (fileInputStream == null) {
                        return -1;
                    }
                    fileInputStream.close();
                    return -1;
                }
            } catch (IOException e8) {
                inputStreamReader = null;
                e2 = e8;
            } catch (NumberFormatException e9) {
                inputStreamReader = null;
                e = e9;
            } catch (Throwable th4) {
                file = 0;
                th = th4;
                if (file != 0) {
                    try {
                        file.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                        throw th;
                    }
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
            return -1;
        }
    }

    public static void writeFile(String str, String str2) throws IOException {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            try {
                fileOutputStream.write(str2.getBytes());
                fileOutputStream.flush();
                fileOutputStream.close();
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static boolean fileIsExists(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            File file = new File(str);
            Log.d(TAG, "fileIsExists path=" + str);
            if (!file.exists()) {
                Log.d(TAG, str + " fileIsExists false");
                return false;
            }
            Log.d(TAG, str + " fileIsExists true");
            return true;
        } catch (NullPointerException e) {
            e.printStackTrace();
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static synchronized String readFile(String str) {
        String string;
        File file = new File(str);
        StringBuffer stringBuffer = new StringBuffer();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, Charset.defaultCharset()));
                try {
                    for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                        stringBuffer.append(line + "\n");
                    }
                    string = stringBuffer.toString();
                    bufferedReader.close();
                    fileInputStream.close();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
        return string;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x006e A[Catch: IOException -> 0x006a, TRY_LEAVE, TryCatch #2 {IOException -> 0x006a, blocks: (B:45:0x0066, B:49:0x006e), top: B:55:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0066 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int saveFileData(java.lang.String r5, java.lang.String r6) throws java.lang.Throwable {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r5)
            java.io.File r5 = new java.io.File
            r5.<init>(r6)
            r6 = 0
            r1 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4b
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4b
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            r5 = 512(0x200, float:7.175E-43)
            byte[] r5 = new byte[r5]     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L3e
            r6 = r1
        L1b:
            int r3 = r2.read(r5)     // Catch: java.io.IOException -> L39 java.lang.Throwable -> L3c
            r4 = -1
            if (r3 == r4) goto L27
            r0.write(r5, r1, r3)     // Catch: java.io.IOException -> L39 java.lang.Throwable -> L3c
            r6 = r3
            goto L1b
        L27:
            r2.close()     // Catch: java.io.IOException -> L39 java.lang.Throwable -> L3c
            r0.close()     // Catch: java.io.IOException -> L39 java.lang.Throwable -> L3c
            r2.close()     // Catch: java.io.IOException -> L34
            r0.close()     // Catch: java.io.IOException -> L34
            goto L62
        L34:
            r5 = move-exception
            r5.printStackTrace()
            goto L62
        L39:
            r5 = move-exception
            r1 = r6
            goto L46
        L3c:
            r5 = move-exception
            goto L42
        L3e:
            r5 = move-exception
            goto L46
        L40:
            r5 = move-exception
            r0 = r6
        L42:
            r6 = r2
            goto L64
        L44:
            r5 = move-exception
            r0 = r6
        L46:
            r6 = r2
            goto L4d
        L48:
            r5 = move-exception
            r0 = r6
            goto L64
        L4b:
            r5 = move-exception
            r0 = r6
        L4d:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L63
            if (r6 == 0) goto L58
            r6.close()     // Catch: java.io.IOException -> L56
            goto L58
        L56:
            r5 = move-exception
            goto L5e
        L58:
            if (r0 == 0) goto L61
            r0.close()     // Catch: java.io.IOException -> L56
            goto L61
        L5e:
            r5.printStackTrace()
        L61:
            r6 = r1
        L62:
            return r6
        L63:
            r5 = move-exception
        L64:
            if (r6 == 0) goto L6c
            r6.close()     // Catch: java.io.IOException -> L6a
            goto L6c
        L6a:
            r6 = move-exception
            goto L72
        L6c:
            if (r0 == 0) goto L75
            r0.close()     // Catch: java.io.IOException -> L6a
            goto L75
        L72:
            r6.printStackTrace()
        L75:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.utils.FileUtils.saveFileData(java.lang.String, java.lang.String):int");
    }

    public static int readFileData(String str) throws Throwable {
        FileInputStream fileInputStream;
        File file = new File(str);
        int i = 0;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                } catch (IOException e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        try {
            byte[] bArr = new byte[512];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 == -1) {
                    break;
                }
                i = i2;
            }
            fileInputStream.close();
        } catch (IOException e3) {
            e = e3;
            fileInputStream2 = fileInputStream;
            e.printStackTrace();
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            return i;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
        return i;
    }
}
