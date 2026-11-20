package com.sprd.logmanager.utils;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Process;
import android.util.Log;
import com.sprd.logmanager.LogManagerApplication;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: SocketUtils.java */
/* loaded from: classes.dex */
class Watchdog {
    private String cmd;
    private String logDate;
    private String server;
    private volatile int food = 0;
    public int trigger = 0;
    final int WATCHDOG_TIME = 180;
    Thread mThread = null;

    public Watchdog(String str, String str2) {
        this.server = "SERVER";
        this.cmd = "CMD";
        this.logDate = "";
        this.server = str;
        this.cmd = str2;
        this.logDate = new SimpleDateFormat("yyyyMMdd-HHmmss").format(new Date(System.currentTimeMillis()));
    }

    void wantEat() {
        if (this.cmd == null) {
            Log.d("SocketW", "invalid watching  " + this.server + " [" + this.cmd + "]");
            return;
        }
        this.food = 0;
        Thread thread = new Thread(new Runnable() { // from class: com.sprd.logmanager.utils.Watchdog.1
            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                for (int i = 0; i < 180; i++) {
                    try {
                        if (1 == Watchdog.this.food) {
                            Watchdog.this.mThread = null;
                            return;
                        }
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused) {
                        return;
                    }
                }
                if (Watchdog.this.food == 0) {
                    try {
                        if ((Watchdog.this.cmd == null || !(Watchdog.this.cmd.indexOf("apdumper") != -1 || Watchdog.this.cmd.contains("tar") || Watchdog.this.cmd.contains("rm -rf") || Watchdog.this.cmd.contains("rylogr") || Watchdog.this.cmd.contains("clear"))) && LogManagerApplication.getInstance().getCurrentActivity() != null) {
                            Watchdog.this.trigger = 1;
                            LogManagerApplication.getInstance().getCurrentActivity().runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.utils.Watchdog.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Log.d("SocketW", "watchdog triggered " + Watchdog.this.server + " [" + Watchdog.this.cmd + "] with 180");
                                    Watchdog.this.new DialogCaller().showDialog(Watchdog.this.server + " " + Watchdog.this.cmd + " error " + Watchdog.this.logDate, "[" + Watchdog.this.cmd + "] Blocked!\n click OK to EXIT", new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.utils.Watchdog.1.1.1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public void onClick(DialogInterface dialogInterface, int i2) {
                                            Process.killProcess(Process.myPid());
                                        }
                                    });
                                }
                            });
                        }
                    } catch (Exception e) {
                        Log.w("SocketW", "wantEat error" + e);
                    }
                }
            }
        });
        this.mThread = thread;
        thread.start();
    }

    void feedFood() {
        this.food = 1;
        try {
            Thread thread = this.mThread;
            if (thread != null) {
                thread.interrupt();
            }
        } catch (Exception e) {
            Log.w("LogManagerSocketUtils", "feedFood error" + e);
        }
    }

    /* compiled from: SocketUtils.java */
    class DialogCaller {
        DialogCaller() {
        }

        public void showDialog(String str, String str2, DialogInterface.OnClickListener onClickListener) {
            if (LogManagerApplication.getInstance().getCurrentActivity() == null) {
                return;
            }
            if (LogManagerApplication.getInstance().getCurrentActivity().isFinishing() || LogManagerApplication.getInstance().getCurrentActivity().isDestroyed()) {
                Log.w("SocketW", "activity is not run,not show dialog");
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(LogManagerApplication.getInstance().getCurrentActivity());
            builder.setTitle(str);
            builder.setMessage(str2);
            builder.setPositiveButton("OK", onClickListener);
            builder.setCancelable(false);
            builder.show();
        }
    }
}
