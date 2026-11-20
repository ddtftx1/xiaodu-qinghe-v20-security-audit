package com.sprd.validationtools.utils;

import android.content.Context;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class StreamUtils {
    public static String get(Context context, int i) {
        return read(context.getResources().openRawResource(i));
    }

    public static String read(InputStream inputStream) {
        return read(inputStream, "utf-8");
    }

    public static String read(InputStream inputStream, String str) throws IOException {
        if (inputStream == null) {
            return "";
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        sb.append(line + "\n");
                    } else {
                        String string = sb.toString();
                        bufferedReader.close();
                        return string;
                    }
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        } catch (IOException e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
