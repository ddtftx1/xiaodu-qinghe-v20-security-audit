package com.sprd.validationtools.testinfo;

import android.app.Activity;
import android.os.Bundle;
import android.os.SystemProperties;
import android.widget.TextView;
import com.sprd.validationtools.R;
import java.io.IOException;

/* loaded from: classes.dex */
public class HardwareHwSwInfo extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) throws IOException {
        super.onCreate(bundle);
        setContentView(R.layout.hardwarehwsw_info);
        String formattedContent = getFormattedContent();
        StringBuilder sb = new StringBuilder();
        String str = SystemProperties.get("ro.product.hardware", "Sprd");
        String str2 = SystemProperties.get("ro.build.display.id", "Unknown");
        sb.append("[HW VERSION]").append("\n").append(str).append("\n").append("\n");
        sb.append("[SW VERSION]").append("\n").append(str2).append("\n").append("\n");
        sb.append("[FLASH]").append("\n").append("Unknown").append("\n").append("\n");
        sb.append("[TP FIRMWARE VERSION]").append("\n").append("Unknown").append("\n").append("\n");
        ((TextView) findViewById(R.id.tv_hardwarehwswinfo)).setText(sb.toString() + formattedContent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002e, code lost:
    
        r4 = r2.trim();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String readHardwareInfo() throws java.io.IOException {
        /*
            r4 = this;
            java.lang.String r4 = "Unknown"
            java.lang.String r0 = "HardwareHwSwInfo"
            java.lang.String r1 = "readHardwareInfo \n"
            android.util.Log.d(r0, r1)     // Catch: java.io.IOException -> L33
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.io.IOException -> L33
            java.lang.String r2 = "cat /proc/zyt_peripherals"
            java.lang.Process r1 = r1.exec(r2)     // Catch: java.io.IOException -> L33
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L33
            java.io.InputStream r1 = r1.getInputStream()     // Catch: java.io.IOException -> L33
            java.nio.charset.Charset r3 = java.nio.charset.Charset.defaultCharset()     // Catch: java.io.IOException -> L33
            r2.<init>(r1, r3)     // Catch: java.io.IOException -> L33
            java.io.LineNumberReader r1 = new java.io.LineNumberReader     // Catch: java.io.IOException -> L33
            r1.<init>(r2)     // Catch: java.io.IOException -> L33
            r2 = r4
        L26:
            if (r2 == 0) goto L37
            java.lang.String r2 = r1.readLine()     // Catch: java.io.IOException -> L33
            if (r2 == 0) goto L26
            java.lang.String r4 = r2.trim()     // Catch: java.io.IOException -> L33
            goto L37
        L33:
            r1 = move-exception
            r1.printStackTrace()
        L37:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "readHardwareInfo res:"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r4)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r0, r1)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.testinfo.HardwareHwSwInfo.readHardwareInfo():java.lang.String");
    }

    private String getFormattedContent() throws IOException {
        StringBuilder sb = new StringBuilder();
        String hardwareInfo = readHardwareInfo();
        if (hardwareInfo.equals("Unknown")) {
            return hardwareInfo;
        }
        int iIndexOf = hardwareInfo.indexOf("[TP]");
        String strSubstring = hardwareInfo.substring(iIndexOf, hardwareInfo.indexOf(";", iIndexOf));
        sb.append("[TP]").append("\n").append(strSubstring.substring(strSubstring.indexOf("]") + 1)).append("\n").append("\n");
        int iIndexOf2 = hardwareInfo.indexOf("[LCD]");
        String strSubstring2 = hardwareInfo.substring(iIndexOf2, hardwareInfo.indexOf(";", iIndexOf2));
        sb.append("[LCD]").append("\n").append(strSubstring2.substring(strSubstring2.indexOf("]") + 1)).append("\n").append("\n");
        int iIndexOf3 = hardwareInfo.indexOf("[CAMERA_MAIN]");
        String strSubstring3 = hardwareInfo.substring(iIndexOf3, hardwareInfo.indexOf(";", iIndexOf3));
        sb.append("[CAMERA_MAIN]").append("\n").append(strSubstring3.substring(strSubstring3.indexOf("]") + 1)).append("\n").append("\n");
        int iIndexOf4 = hardwareInfo.indexOf("[CAMERA_SUB]");
        String strSubstring4 = hardwareInfo.substring(iIndexOf4, hardwareInfo.indexOf(";", iIndexOf4));
        sb.append("[CAMERA_SUB]").append("\n").append(strSubstring4.substring(strSubstring4.indexOf("]") + 1)).append("\n").append("\n");
        int iIndexOf5 = hardwareInfo.indexOf("[GSENSOR]");
        String strSubstring5 = hardwareInfo.substring(iIndexOf5, hardwareInfo.indexOf(";", iIndexOf5));
        sb.append("[GSENSOR]").append("\n").append(strSubstring5.substring(strSubstring5.indexOf("]") + 1)).append("\n").append("\n");
        int iIndexOf6 = hardwareInfo.indexOf("[PLSENSOR]");
        String strSubstring6 = hardwareInfo.substring(iIndexOf6, hardwareInfo.indexOf(";", iIndexOf6));
        sb.append("[PLSENSOR]").append("\n").append(strSubstring6.substring(strSubstring6.indexOf("]") + 1)).append("\n").append("\n");
        return sb.toString();
    }
}
