package com.sprd.validationtools.itemstest.camera;

import android.media.Image;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;

/* loaded from: classes.dex */
public class ImageUtils {
    private static final String TAG = "ImageUtils";

    public static void writeYuvImage(Image image, OutputStream outputStream) throws IOException {
        if (image.getFormat() != 35) {
            Log.w(TAG, String.format("Unexpected Image format: %d, expected ImageFormat.YUV_420_888", Integer.valueOf(image.getFormat())));
        }
        WritableByteChannel writableByteChannelNewChannel = Channels.newChannel(outputStream);
        int i = 0;
        while (i < 3) {
            Image.Plane plane = image.getPlanes()[i];
            ByteBuffer buffer = plane.getBuffer();
            int i2 = i == 0 ? 1 : 2;
            int width = image.getWidth() / i2;
            int height = image.getHeight() / i2;
            buffer.rewind();
            buffer.limit(buffer.capacity());
            if (plane.getPixelStride() == 1) {
                int i3 = 0;
                int rowStride = 0;
                while (i3 < height) {
                    buffer.limit(rowStride + width);
                    buffer.position(rowStride);
                    writableByteChannelNewChannel.write(buffer);
                    i3++;
                    rowStride += plane.getRowStride();
                }
            } else {
                byte[] bArr = new byte[((width - 1) * plane.getPixelStride()) + 1];
                byte[] bArr2 = new byte[width];
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr2);
                int i4 = 0;
                int rowStride2 = 0;
                while (i4 < height) {
                    buffer.position(rowStride2);
                    buffer.get(bArr);
                    int i5 = 0;
                    int pixelStride = 0;
                    while (i5 < width) {
                        bArr2[i5] = bArr[pixelStride];
                        i5++;
                        pixelStride += plane.getPixelStride();
                    }
                    byteBufferWrap.rewind();
                    writableByteChannelNewChannel.write(byteBufferWrap);
                    i4++;
                    rowStride2 += plane.getRowStride();
                }
            }
            i++;
        }
    }

    public static byte[] getNV21FromImage(Image image) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Image.Plane[] planes = image.getPlanes();
        ByteBuffer[] byteBufferArr = new ByteBuffer[3];
        for (int i = 0; i < 3; i++) {
            byteBufferArr[i] = planes[i].getBuffer();
        }
        ByteBuffer byteBuffer = byteBufferArr[0];
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = new byte[(iRemaining * 3) / 2];
        byteBuffer.get(bArr, 0, iRemaining);
        byteBuffer.clear();
        ByteBuffer byteBuffer2 = byteBufferArr[1];
        int iRemaining2 = byteBuffer2.remaining();
        byte[] bArr2 = new byte[iRemaining2];
        byteBuffer2.get(bArr2);
        byteBuffer2.clear();
        ByteBuffer byteBuffer3 = byteBufferArr[2];
        byte[] bArr3 = new byte[1];
        byteBuffer3.get(bArr3);
        byteBuffer3.clear();
        bArr[iRemaining] = bArr3[0];
        System.arraycopy(bArr2, 0, bArr, iRemaining + 1, iRemaining2);
        Log.i(TAG, "getNV21FromImage cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return bArr;
    }
}
