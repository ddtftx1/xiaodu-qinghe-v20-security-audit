package com.google.zxing.aztec;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;

/* loaded from: classes.dex */
public final class AztecReader implements Reader {
    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005b A[LOOP:0: B:30:0x0059->B:31:0x005b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0083  */
    @Override // com.google.zxing.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.zxing.Result decode(com.google.zxing.BinaryBitmap r5, java.util.Map<com.google.zxing.DecodeHintType, ?> r6) throws com.google.zxing.NotFoundException, com.google.zxing.FormatException {
        /*
            r4 = this;
            com.google.zxing.aztec.detector.Detector r4 = new com.google.zxing.aztec.detector.Detector
            com.google.zxing.common.BitMatrix r5 = r5.getBlackMatrix()
            r4.<init>(r5)
            r5 = 0
            r0 = 0
            com.google.zxing.aztec.AztecDetectorResult r1 = r4.detect(r5)     // Catch: com.google.zxing.FormatException -> L25 com.google.zxing.NotFoundException -> L2b
            com.google.zxing.ResultPoint[] r2 = r1.getPoints()     // Catch: com.google.zxing.FormatException -> L25 com.google.zxing.NotFoundException -> L2b
            com.google.zxing.aztec.decoder.Decoder r3 = new com.google.zxing.aztec.decoder.Decoder     // Catch: com.google.zxing.FormatException -> L21 com.google.zxing.NotFoundException -> L23
            r3.<init>()     // Catch: com.google.zxing.FormatException -> L21 com.google.zxing.NotFoundException -> L23
            com.google.zxing.common.DecoderResult r1 = r3.decode(r1)     // Catch: com.google.zxing.FormatException -> L21 com.google.zxing.NotFoundException -> L23
            r3 = r2
            r2 = r0
            r0 = r1
            r1 = r2
            goto L2f
        L21:
            r1 = move-exception
            goto L27
        L23:
            r1 = move-exception
            goto L2d
        L25:
            r1 = move-exception
            r2 = r0
        L27:
            r3 = r2
            r2 = r1
            r1 = r0
            goto L2f
        L2b:
            r1 = move-exception
            r2 = r0
        L2d:
            r3 = r2
            r2 = r0
        L2f:
            if (r0 != 0) goto L4c
            r0 = 1
            com.google.zxing.aztec.AztecDetectorResult r4 = r4.detect(r0)     // Catch: java.lang.Throwable -> L44
            com.google.zxing.ResultPoint[] r3 = r4.getPoints()     // Catch: java.lang.Throwable -> L44
            com.google.zxing.aztec.decoder.Decoder r0 = new com.google.zxing.aztec.decoder.Decoder     // Catch: java.lang.Throwable -> L44
            r0.<init>()     // Catch: java.lang.Throwable -> L44
            com.google.zxing.common.DecoderResult r0 = r0.decode(r4)     // Catch: java.lang.Throwable -> L44
            goto L4c
        L44:
            r4 = move-exception
            if (r1 != 0) goto L4b
            if (r2 == 0) goto L4a
            throw r2
        L4a:
            throw r4
        L4b:
            throw r1
        L4c:
            if (r6 == 0) goto L63
            com.google.zxing.DecodeHintType r4 = com.google.zxing.DecodeHintType.NEED_RESULT_POINT_CALLBACK
            java.lang.Object r4 = r6.get(r4)
            com.google.zxing.ResultPointCallback r4 = (com.google.zxing.ResultPointCallback) r4
            if (r4 == 0) goto L63
            int r6 = r3.length
        L59:
            if (r5 >= r6) goto L63
            r1 = r3[r5]
            r4.foundPossibleResultPoint(r1)
            int r5 = r5 + 1
            goto L59
        L63:
            com.google.zxing.Result r4 = new com.google.zxing.Result
            java.lang.String r5 = r0.getText()
            byte[] r6 = r0.getRawBytes()
            com.google.zxing.BarcodeFormat r1 = com.google.zxing.BarcodeFormat.AZTEC
            r4.<init>(r5, r6, r3, r1)
            java.util.List r5 = r0.getByteSegments()
            if (r5 == 0) goto L7d
            com.google.zxing.ResultMetadataType r6 = com.google.zxing.ResultMetadataType.BYTE_SEGMENTS
            r4.putMetadata(r6, r5)
        L7d:
            java.lang.String r5 = r0.getECLevel()
            if (r5 == 0) goto L88
            com.google.zxing.ResultMetadataType r6 = com.google.zxing.ResultMetadataType.ERROR_CORRECTION_LEVEL
            r4.putMetadata(r6, r5)
        L88:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.AztecReader.decode(com.google.zxing.BinaryBitmap, java.util.Map):com.google.zxing.Result");
    }
}
