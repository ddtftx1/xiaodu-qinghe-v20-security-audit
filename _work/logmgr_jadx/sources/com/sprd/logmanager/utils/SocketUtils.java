package com.sprd.logmanager.utils;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public class SocketUtils {
    private InputStream mInputStream;
    private OutputStream mOutputStream;
    private LocalSocketAddress mSocketAddress;
    private LocalSocket mSocketClient = null;
    private String mSocketName;

    public SocketUtils(String str) {
        this.mSocketName = null;
        this.mSocketName = str;
        Log.d("LogManagerSocketUtils", " mSocketName is " + this.mSocketName);
    }

    public String sendCmdAndRecResultNoRetry(String str) throws InterruptedException, IOException {
        Watchdog watchdog;
        LocalSocket localSocket;
        String str2 = ("[" + Integer.toHexString(hashCode()) + "][" + Thread.currentThread().getId() + "] ") + "<" + str.replace('\n', '\\') + ">";
        Log.d("LogManagerSocketUtils", this.mSocketName + " send cmd: " + str2);
        byte[] bArr = new byte[255];
        if (this.mOutputStream == null || this.mInputStream == null || (localSocket = this.mSocketClient) == null || !localSocket.isConnected()) {
            if (this.mSocketClient != null) {
                Log.i("LogManagerSocketUtils", str2 + "disconnect with server,close socket first");
                closeSocket();
            }
            this.mSocketClient = new LocalSocket();
            this.mSocketAddress = new LocalSocketAddress(this.mSocketName, LocalSocketAddress.Namespace.ABSTRACT);
            for (int i = 0; i < 5; i++) {
                try {
                    this.mSocketClient.connect(this.mSocketAddress);
                } catch (IOException e) {
                    e.printStackTrace();
                    Log.w("LogManagerSocketUtils", str2 + "connect " + this.mSocketName + " for " + i + " times failed", e);
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
                if (this.mSocketClient.isConnected()) {
                    break;
                }
            }
            if (this.mSocketClient.isConnected()) {
                Log.i("LogManagerSocketUtils", str2 + "connect " + this.mSocketName + " success");
                try {
                    this.mOutputStream = this.mSocketClient.getOutputStream();
                    this.mInputStream = this.mSocketClient.getInputStream();
                } catch (IOException e3) {
                    Log.w("LogManagerSocketUtils", str2 + "getOutputStream or getInputStream failed", e3);
                    try {
                        this.mSocketClient.close();
                        this.mSocketClient = null;
                        this.mOutputStream = null;
                        this.mInputStream = null;
                    } catch (IOException unused) {
                        Log.d("LogManagerSocketUtils", str2 + "getStream error, catch exception is " + e3);
                    }
                    return null;
                }
            } else {
                Log.w("LogManagerSocketUtils", str2 + "connect failed");
                this.mSocketClient = null;
                return null;
            }
        }
        try {
            this.mOutputStream.write((str + (char) 0).getBytes(StandardCharsets.UTF_8));
            Log.d("LogManagerSocketUtils", str2 + " write done , flush data next");
            this.mOutputStream.flush();
            Log.d("LogManagerSocketUtils", str2 + " result read beg...");
            watchdog = new Watchdog(this.mSocketName, str);
        } catch (IOException e4) {
            e = e4;
            watchdog = null;
        }
        try {
            watchdog.wantEat();
            int i2 = this.mInputStream.read(bArr, 0, 255);
            if (1 == watchdog.trigger) {
                Log.d("LogManagerSocketUtils", str2 + " result read timeout");
                return null;
            }
            watchdog.feedFood();
            Log.d("LogManagerSocketUtils", str2 + " result read done");
            String str3 = "read count is -1";
            if (i2 != -1) {
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, 0, bArr2, 0, i2);
                str3 = new String(bArr2, "utf-8");
            }
            Log.d("LogManagerSocketUtils", str2 + "count = " + i2 + ", result is " + str3);
            Log.d("LogManagerSocketUtils", str2 + "handle over and result is :" + str3);
            return str3;
        } catch (IOException e5) {
            e = e5;
            Log.e("LogManagerSocketUtils", str2 + "send cmd error or read result error" + e.toString());
            if (watchdog != null) {
                watchdog.feedFood();
            }
            closeSocket();
            return null;
        }
    }

    public String sendCmdAndRecResult(String str) throws InterruptedException, IOException {
        int i = 3;
        while (true) {
            int i2 = i - 1;
            if (i == 0) {
                return null;
            }
            String strSendCmdAndRecResultNoRetry = sendCmdAndRecResultNoRetry(str);
            if (strSendCmdAndRecResultNoRetry != null) {
                return strSendCmdAndRecResultNoRetry;
            }
            try {
                Thread.sleep(100L);
            } catch (Exception e) {
                Log.d("LogManagerSocketUtils", e.toString());
            }
            Log.d("LogManagerSocketUtils", "send cmd :" + str + "error ,try again " + i2);
            i = i2;
        }
    }

    public void closeSocket() throws IOException {
        try {
            OutputStream outputStream = this.mOutputStream;
            if (outputStream != null) {
                outputStream.close();
                this.mOutputStream = null;
            }
            InputStream inputStream = this.mInputStream;
            if (inputStream != null) {
                inputStream.close();
                this.mOutputStream = null;
            }
            LocalSocket localSocket = this.mSocketClient;
            if (localSocket != null) {
                localSocket.close();
                this.mSocketClient = null;
            }
        } catch (Exception e) {
            Log.d("LogManagerSocketUtils", "closeSocket error, catch exception is " + e);
        }
    }
}
