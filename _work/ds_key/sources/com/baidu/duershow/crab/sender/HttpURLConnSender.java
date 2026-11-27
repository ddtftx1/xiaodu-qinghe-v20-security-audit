package com.baidu.duershow.crab.sender;

import com.baidu.duershow.crab.CrabSDK;
import com.baidu.duershow.crab.collector.CMDResultCollector;
import com.baidu.duershow.crab.util.BLog;
import com.baidu.duershow.crab.util.C;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

public class HttpURLConnSender {
    private static final int CONNECT_TIMEOUT = 15000;
    private static final int READ_TIMEOUT = 15000;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v25, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v32 */
    public static String send(String str, byte[] bArr, String str2, String str3) throws Throwable {
        HttpURLConnection httpURLConnectionCreateUrlConn;
        InputStreamReader inputStreamReader;
        ?? bufferedReader;
        DataOutputStream dataOutputStream = null;
         = 0;
         = 0;
        ?? r1 = 0;
        dataOutputStream = null;
        try {
            BLog.d("Upload file size is:" + (bArr.length / 1024) + "KB");
            httpURLConnectionCreateUrlConn = createUrlConn(new URL(str));
            try {
                httpURLConnectionCreateUrlConn.setRequestProperty("Content-Encoding", "gzip");
                httpURLConnectionCreateUrlConn.setRequestProperty("Content-Type", "application/octet-stream");
                if ("Crash".equals(str2) || "Exception".equals(str2)) {
                    httpURLConnectionCreateUrlConn.setRequestProperty("EncryptType", "RSA-AES2");
                } else if (str2.equals("Anr") || str2.equals("NDK")) {
                    httpURLConnectionCreateUrlConn.setRequestProperty("EncryptType", "RSA-AES");
                }
                httpURLConnectionCreateUrlConn.setRequestProperty("EncryptData", str3);
                httpURLConnectionCreateUrlConn.setRequestProperty("User-Agent", CrashRecordFactory.createCrashAgent(str2, CrabSDK.getCrabConfig().getAppVn()));
                DataOutputStream dataOutputStream2 = new DataOutputStream(httpURLConnectionCreateUrlConn.getOutputStream());
                try {
                    dataOutputStream2.write(bArr);
                    dataOutputStream2.flush();
                    dataOutputStream2.close();
                    StringBuilder sb = new StringBuilder();
                    BLog.i("response code is " + httpURLConnectionCreateUrlConn.getResponseCode());
                    if (httpURLConnectionCreateUrlConn.getResponseCode() == 200) {
                        inputStreamReader = new InputStreamReader(httpURLConnectionCreateUrlConn.getInputStream());
                        try {
                            bufferedReader = new BufferedReader(inputStreamReader);
                            while (true) {
                                try {
                                    String line = bufferedReader.readLine();
                                    if (line == null) {
                                        break;
                                    }
                                    sb.append(line);
                                    sb.append("\n");
                                } catch (Exception e) {
                                    e = e;
                                    dataOutputStream = dataOutputStream2;
                                    bufferedReader = bufferedReader;
                                    try {
                                        BLog.e("Upload Data Error!", e);
                                        close(dataOutputStream, httpURLConnectionCreateUrlConn, bufferedReader, inputStreamReader);
                                        return C.NO_RESULT;
                                    } catch (Throwable th) {
                                        th = th;
                                        close(dataOutputStream, httpURLConnectionCreateUrlConn, bufferedReader, inputStreamReader);
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    dataOutputStream = dataOutputStream2;
                                    close(dataOutputStream, httpURLConnectionCreateUrlConn, bufferedReader, inputStreamReader);
                                    throw th;
                                }
                            }
                            inputStreamReader.close();
                            bufferedReader.close();
                            r1 = bufferedReader;
                        } catch (Exception e2) {
                            e = e2;
                            bufferedReader = r1;
                        } catch (Throwable th3) {
                            th = th3;
                            bufferedReader = r1;
                        }
                    } else {
                        sb.append(C.NO_RESULT);
                        inputStreamReader = null;
                    }
                    httpURLConnectionCreateUrlConn.disconnect();
                    String string = sb.toString();
                    close(dataOutputStream2, httpURLConnectionCreateUrlConn, r1, inputStreamReader);
                    return string;
                } catch (Exception e3) {
                    e = e3;
                    inputStreamReader = null;
                    bufferedReader = 0;
                } catch (Throwable th4) {
                    th = th4;
                    inputStreamReader = null;
                    bufferedReader = 0;
                }
            } catch (Exception e4) {
                e = e4;
                inputStreamReader = null;
                bufferedReader = inputStreamReader;
                BLog.e("Upload Data Error!", e);
                close(dataOutputStream, httpURLConnectionCreateUrlConn, bufferedReader, inputStreamReader);
                return C.NO_RESULT;
            } catch (Throwable th5) {
                th = th5;
                inputStreamReader = null;
                bufferedReader = inputStreamReader;
                close(dataOutputStream, httpURLConnectionCreateUrlConn, bufferedReader, inputStreamReader);
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            httpURLConnectionCreateUrlConn = null;
            inputStreamReader = null;
        } catch (Throwable th6) {
            th = th6;
            httpURLConnectionCreateUrlConn = null;
            inputStreamReader = null;
        }
    }

    public static boolean send(byte[] bArr, int i, String str) {
        if (bArr != null) {
            BLog.d("Data size after compressed is " + bArr.length + "B");
        }
        boolean zResend = false;
        for (int i2 = 1; i2 <= 2 && !zResend; i2++) {
            zResend = resend(bArr, i, str);
        }
        return zResend;
    }

    private static boolean resend(byte[] bArr, int i, String str) {
        if (bArr == null) {
            BLog.e("Data is null!");
            return false;
        }
        HttpURLConnection conn = getConn(bArr.length, i, str);
        if (conn == null) {
            return false;
        }
        try {
            OutputStream outputStream = conn.getOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
            dataOutputStream.write(bArr);
            dataOutputStream.flush();
            dataOutputStream.close();
            outputStream.close();
            StringBuilder sb = new StringBuilder();
            if (conn.getResponseCode() == 200) {
                InputStreamReader inputStreamReader = new InputStreamReader(conn.getInputStream());
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                    sb.append("\n");
                }
                inputStreamReader.close();
                bufferedReader.close();
                conn.disconnect();
                BLog.i("responseResult:" + sb.toString());
                JSONObject jSONObject = new JSONObject(sb.toString());
                if (jSONObject.has("code") && jSONObject.getInt("code") == 0) {
                    return true;
                }
            }
            BLog.w("return false!! code = " + conn.getResponseCode());
            conn.disconnect();
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            BLog.e("decode response error!!", e);
            return false;
        }
    }

    private static HttpURLConnection getConn(long j, int i, String str) {
        String str2;
        String str3 = "Event";
        HttpURLConnection httpURLConnection = null;
        switch (i) {
            case 0:
                str2 = "sn";
                str3 = "Sync";
                break;
            case 1:
                str2 = "ev";
                break;
            case 2:
            case 3:
                str2 = "lk";
                str3 = "Socket";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                str2 = "hw";
                str3 = "Device";
                break;
            case 9:
                str2 = "wf";
                str3 = "Network";
                break;
            default:
                str2 = null;
                break;
        }
        if (str2 == null) {
            BLog.e("type is null!");
            return null;
        }
        try {
            BLog.i("Url is : " + CrabSDK.getCrabConfig().getMonitorUrl() + "; type = " + str2);
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(CrabSDK.getCrabConfig().getMonitorUrl()).openConnection();
            try {
                httpURLConnection2.setRequestMethod("POST");
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.setDoOutput(true);
                httpURLConnection2.setUseCaches(false);
                httpURLConnection2.setConnectTimeout(15000);
                httpURLConnection2.setReadTimeout(15000);
                httpURLConnection2.setRequestProperty("Content-Encoding", "gzip");
                httpURLConnection2.setRequestProperty("Content-Type", "application/octet-stream");
                httpURLConnection2.setRequestProperty("Content-Length", j + "");
                httpURLConnection2.setRequestProperty("User-Agent", CrashRecordFactory.createCrashAgent(str3, null, 1));
                httpURLConnection2.setRequestProperty("type", str2);
                httpURLConnection2.setRequestProperty("EncryptType", CMDResultCollector.END_DUMP_PID_LOG_NUM);
                httpURLConnection2.setRequestProperty("EncryptData", str);
                httpURLConnection2.setRequestProperty("ver", "v2");
                return httpURLConnection2;
            } catch (Exception e) {
                e = e;
                httpURLConnection = httpURLConnection2;
                e.printStackTrace();
                return httpURLConnection;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.io.InputStreamReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.io.BufferedReader] */
    public static String pullFromServer(int i) {
        HttpURLConnection httpURLConnectionCreateUrlConn;
        Object obj;
        DataOutputStream dataOutputStream;
        ?? r5;
        ?? inputStreamReader;
        ?? bufferedReader;
        ?? r4;
        DataOutputStream dataOutputStream2 = null;
        try {
            String strCreateSyncJson = CrashRecordFactory.createSyncJson(i);
            String pullConfUrl = CrabSDK.getCrabConfig().getPullConfUrl();
            BLog.d("sync json is " + strCreateSyncJson + "; url:" + pullConfUrl);
            httpURLConnectionCreateUrlConn = createUrlConn(new URL(pullConfUrl));
            try {
                httpURLConnectionCreateUrlConn.setRequestProperty("ver", "v2");
                httpURLConnectionCreateUrlConn.setRequestProperty("User-Agent", CrashRecordFactory.createCrashAgent("pull", null));
                dataOutputStream = new DataOutputStream(httpURLConnectionCreateUrlConn.getOutputStream());
                try {
                    dataOutputStream.writeBytes(strCreateSyncJson);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    StringBuilder sb = new StringBuilder();
                    if (httpURLConnectionCreateUrlConn.getResponseCode() == 200) {
                        String headerField = httpURLConnectionCreateUrlConn.getHeaderField("sign");
                        inputStreamReader = new InputStreamReader(httpURLConnectionCreateUrlConn.getInputStream());
                        try {
                            bufferedReader = new BufferedReader(inputStreamReader);
                            while (true) {
                                try {
                                    try {
                                        String line = bufferedReader.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        sb.append(line);
                                    } catch (Exception e) {
                                        e = e;
                                        BLog.e("connect to server error!", e);
                                        close(dataOutputStream, httpURLConnectionCreateUrlConn, bufferedReader, inputStreamReader);
                                        return null;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    dataOutputStream2 = dataOutputStream;
                                    r4 = inputStreamReader;
                                    r5 = bufferedReader;
                                    close(dataOutputStream2, httpURLConnectionCreateUrlConn, r5, r4);
                                    throw th;
                                }
                            }
                            inputStreamReader.close();
                            bufferedReader.close();
                            httpURLConnectionCreateUrlConn.disconnect();
                            if (headerField != null) {
                                sb.append("<sign>:");
                                sb.append(headerField);
                            }
                            BLog.i("Pull ResponseResult:" + sb.toString());
                            inputStreamReader = inputStreamReader;
                            bufferedReader = bufferedReader;
                        } catch (Exception e2) {
                            e = e2;
                            bufferedReader = 0;
                            BLog.e("connect to server error!", e);
                            close(dataOutputStream, httpURLConnectionCreateUrlConn, bufferedReader, inputStreamReader);
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = 0;
                            dataOutputStream2 = dataOutputStream;
                            r4 = inputStreamReader;
                            r5 = bufferedReader;
                            close(dataOutputStream2, httpURLConnectionCreateUrlConn, r5, r4);
                            throw th;
                        }
                    } else {
                        BLog.w("Pull Failed! StatusCode = " + httpURLConnectionCreateUrlConn.getResponseCode());
                        inputStreamReader = 0;
                        bufferedReader = 0;
                    }
                    httpURLConnectionCreateUrlConn.disconnect();
                    String string = sb.toString();
                    close(dataOutputStream, httpURLConnectionCreateUrlConn, bufferedReader, inputStreamReader);
                    return string;
                } catch (Exception e3) {
                    e = e3;
                    inputStreamReader = 0;
                    bufferedReader = inputStreamReader;
                    BLog.e("connect to server error!", e);
                    close(dataOutputStream, httpURLConnectionCreateUrlConn, bufferedReader, inputStreamReader);
                    return null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStreamReader = 0;
                    bufferedReader = 0;
                }
            } catch (Exception e4) {
                e = e4;
                dataOutputStream = null;
                inputStreamReader = dataOutputStream;
                bufferedReader = inputStreamReader;
                BLog.e("connect to server error!", e);
                close(dataOutputStream, httpURLConnectionCreateUrlConn, bufferedReader, inputStreamReader);
                return null;
            } catch (Throwable th4) {
                th = th4;
                obj = null;
                r5 = obj;
                r4 = obj;
                close(dataOutputStream2, httpURLConnectionCreateUrlConn, r5, r4);
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            httpURLConnectionCreateUrlConn = null;
            dataOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            httpURLConnectionCreateUrlConn = null;
            obj = null;
        }
    }

    public static void sendSync() throws Throwable {
        HttpURLConnection httpURLConnectionCreateUrlConn;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2;
        try {
            try {
                String strCreateSyncJson = CrashRecordFactory.createSyncJson(0);
                String appLife = CrabSDK.getCrabConfig().getAppLife();
                BLog.d("sync json is " + strCreateSyncJson + "; url:" + appLife);
                httpURLConnectionCreateUrlConn = createUrlConn(new URL(appLife));
                try {
                    httpURLConnectionCreateUrlConn.setRequestProperty("User-Agent", CrashRecordFactory.createCrashAgent("sync", CrabSDK.getCrabConfig().getAppVn()));
                    dataOutputStream2 = new DataOutputStream(httpURLConnectionCreateUrlConn.getOutputStream());
                    try {
                        dataOutputStream2.writeBytes(strCreateSyncJson);
                        dataOutputStream2.flush();
                        dataOutputStream2.close();
                        if (httpURLConnectionCreateUrlConn.getResponseCode() == 200) {
                            BLog.i("#### ^@^ sync ok!");
                        } else {
                            BLog.i("#### T^T sync failed!");
                        }
                        httpURLConnectionCreateUrlConn.disconnect();
                    } catch (Exception unused) {
                        BLog.i("sync connect to server error!");
                    }
                } catch (Exception unused2) {
                    dataOutputStream2 = null;
                } catch (Throwable th) {
                    th = th;
                    dataOutputStream = null;
                    close(dataOutputStream, httpURLConnectionCreateUrlConn, null, null);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused3) {
            httpURLConnectionCreateUrlConn = null;
            dataOutputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnectionCreateUrlConn = null;
            dataOutputStream = null;
        }
        close(dataOutputStream2, httpURLConnectionCreateUrlConn, null, null);
    }

    private static HttpURLConnection createUrlConn(URL url) {
        Exception e;
        HttpURLConnection httpURLConnection;
        try {
            httpURLConnection = (HttpURLConnection) url.openConnection();
            try {
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoInput(true);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(15000);
                httpURLConnection.setInstanceFollowRedirects(true);
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (Exception e3) {
            e = e3;
            httpURLConnection = null;
        }
        return httpURLConnection;
    }

    private static void close(DataOutputStream dataOutputStream, HttpURLConnection httpURLConnection, BufferedReader bufferedReader, InputStreamReader inputStreamReader) {
        if (dataOutputStream != null) {
            try {
                dataOutputStream.close();
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        if (bufferedReader != null) {
            bufferedReader.close();
        }
        if (inputStreamReader != null) {
            inputStreamReader.close();
        }
    }
}
