package com.sprd.validationtools.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ZXingUtils {
    private static final String TAG = "ZXingUtils";

    public static Bitmap createQRImage(String str, int i, int i2) {
        try {
            Log.d(TAG, "url = " + str);
            if (str != null && str.length() >= 1) {
                Log.d(TAG, "url length= " + str.length());
                HashMap map = new HashMap();
                map.put(EncodeHintType.CHARACTER_SET, "utf-8");
                BitMatrix bitMatrixEncode = new QRCodeWriter().encode(str, BarcodeFormat.QR_CODE, i, i2, map);
                int[] iArr = new int[i * i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    for (int i4 = 0; i4 < i; i4++) {
                        if (bitMatrixEncode.get(i4, i3)) {
                            iArr[(i3 * i) + i4] = -16777216;
                        } else {
                            iArr[(i3 * i) + i4] = -1;
                        }
                    }
                }
                bitMatrixEncode.clear();
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
                bitmapCreateBitmap.setPixels(iArr, 0, i, 0, 0, i, i2);
                return bitmapCreateBitmap;
            }
            return null;
        } catch (WriterException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap creatBarcode(Context context, String str, int i, int i2, boolean z) {
        BarcodeFormat barcodeFormat = BarcodeFormat.CODE_128;
        if (z) {
            return mixtureBitmap(encodeAsBitmap(str, barcodeFormat, i, i2), creatCodeBitmap(str, i + 40, i2, context), new PointF(0.0f, i2));
        }
        return encodeAsBitmap(str, barcodeFormat, i, i2);
    }

    protected static Bitmap encodeAsBitmap(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        try {
            BitMatrix bitMatrixEncode = new MultiFormatWriter().encode(str, barcodeFormat, i, i2, null);
            int width = bitMatrixEncode.getWidth();
            int height = bitMatrixEncode.getHeight();
            int[] iArr = new int[width * height];
            for (int i3 = 0; i3 < height; i3++) {
                int i4 = i3 * width;
                for (int i5 = 0; i5 < width; i5++) {
                    iArr[i4 + i5] = bitMatrixEncode.get(i5, i3) ? ViewCompat.MEASURED_STATE_MASK : -1;
                }
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
            return bitmapCreateBitmap;
        } catch (WriterException e) {
            e.printStackTrace();
            return null;
        }
    }

    protected static Bitmap creatCodeBitmap(String str, int i, int i2, Context context) {
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        textView.setText(str);
        textView.setHeight(i2);
        textView.setGravity(1);
        textView.setWidth(i);
        textView.setDrawingCacheEnabled(true);
        textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        textView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        textView.layout(0, 0, textView.getMeasuredWidth(), textView.getMeasuredHeight());
        textView.buildDrawingCache();
        return textView.getDrawingCache();
    }

    protected static Bitmap mixtureBitmap(Bitmap bitmap, Bitmap bitmap2, PointF pointF) {
        if (bitmap == null || bitmap2 == null || pointF == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth() + bitmap2.getWidth() + 20, bitmap.getHeight() + bitmap2.getHeight(), Bitmap.Config.ARGB_4444);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawBitmap(bitmap, 20, 0.0f, (Paint) null);
        canvas.drawBitmap(bitmap2, pointF.x, pointF.y, (Paint) null);
        canvas.save(31);
        canvas.restore();
        return bitmapCreateBitmap;
    }
}
