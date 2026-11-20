package com.sprd.validationtools.itemstest.fingerprint;

import vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi;

/* loaded from: classes.dex */
public class FingerprintTestImpl implements IFactoryTestImpl {
    private static final String TAG = "FingerprintTestImpl";
    private IFingerprintmmi mDaemon;
    FingerMmiStatus status = FingerMmiStatus.IDLE;

    private enum FingerMmiStatus {
        IDLE,
        RUNNING,
        EXIT
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0033 A[Catch: all -> 0x0051, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x000b, B:8:0x0013, B:11:0x001b, B:13:0x0027, B:14:0x002e, B:16:0x0033, B:17:0x003a, B:19:0x003c, B:23:0x004f, B:22:0x0042), top: B:30:0x0007, inners: #0, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.sprd.validationtools.itemstest.fingerprint.IFactoryTestImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int factory_init() {
        /*
            r5 = this;
            com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl$FingerMmiStatus r0 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.FingerMmiStatus.RUNNING
            r5.status = r0
            java.lang.Class<com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl> r0 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.class
            monitor-enter(r0)
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = r5.mDaemon     // Catch: java.lang.Throwable -> L51
            if (r1 != 0) goto L2e
            java.lang.String r1 = "FingerprintTestImpl"
            java.lang.String r2 = "factory_init mDeamon was null, connect to IFingerprintmmi"
            android.util.Slog.v(r1, r2)     // Catch: java.lang.Throwable -> L51
            r1 = 1
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi.getService(r1)     // Catch: android.os.RemoteException -> L1a java.util.NoSuchElementException -> L26 java.lang.Throwable -> L51
            r5.mDaemon = r1     // Catch: android.os.RemoteException -> L1a java.util.NoSuchElementException -> L26 java.lang.Throwable -> L51
            goto L2e
        L1a:
            r1 = move-exception
            java.lang.String r2 = "FingerprintTestImpl"
            java.lang.String r3 = "factory_init Failed to get IFingerprintmmi interface RemoteException"
            android.util.Slog.e(r2, r3, r1)     // Catch: java.lang.Throwable -> L51
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L51
            goto L2e
        L26:
            r1 = move-exception
            java.lang.String r2 = "FingerprintTestImpl"
            java.lang.String r3 = "factory_init Failed to get IFingerprintmmi interface NoSuchElementException"
            android.util.Slog.e(r2, r3, r1)     // Catch: java.lang.Throwable -> L51
        L2e:
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = r5.mDaemon     // Catch: java.lang.Throwable -> L51
            r2 = -1
            if (r1 != 0) goto L3c
            java.lang.String r5 = "FingerprintTestImpl"
            java.lang.String r1 = "factory_init IFingerprintmmi HIDL not available"
            android.util.Slog.w(r5, r1)     // Catch: java.lang.Throwable -> L51
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L51
            return r2
        L3c:
            int r2 = r1.factory_init()     // Catch: android.os.RemoteException -> L41 java.lang.Throwable -> L51
            goto L4f
        L41:
            r1 = move-exception
            java.lang.String r3 = "FingerprintTestImpl"
            java.lang.String r4 = "Failed to do factory_init()"
            android.util.Slog.e(r3, r4, r1)     // Catch: java.lang.Throwable -> L51
            r3 = 0
            r5.mDaemon = r3     // Catch: java.lang.Throwable -> L51
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L51
        L4f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L51
            return r2
        L51:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L51
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.factory_init():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003b A[Catch: all -> 0x005d, TryCatch #3 {, blocks: (B:8:0x001a, B:10:0x001e, B:11:0x0025, B:14:0x002d, B:15:0x0037, B:17:0x003b, B:18:0x0042, B:20:0x0044, B:24:0x0057, B:23:0x004a), top: B:33:0x001a, inners: #1, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.sprd.validationtools.itemstest.fingerprint.IFactoryTestImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int factory_exit() {
        /*
            r5 = this;
            com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl$FingerMmiStatus r0 = r5.status
            com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl$FingerMmiStatus r1 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.FingerMmiStatus.RUNNING
            r2 = -1
            if (r0 == r1) goto L13
            com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl$FingerMmiStatus r0 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.FingerMmiStatus.IDLE
            r5.status = r0
            java.lang.String r5 = "FingerprintTestImpl"
            java.lang.String r0 = "factory_exit no finger test,return"
            android.util.Slog.v(r5, r0)
            return r2
        L13:
            com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl$FingerMmiStatus r0 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.FingerMmiStatus.EXIT
            r5.status = r0
            java.lang.Class<com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl> r0 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.class
            monitor-enter(r0)
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = r5.mDaemon     // Catch: java.lang.Throwable -> L5d
            if (r1 != 0) goto L37
            java.lang.String r1 = "FingerprintTestImpl"
            java.lang.String r3 = "factory_exit mDeamon was null, connect to IFingerprintmmi"
            android.util.Slog.v(r1, r3)     // Catch: java.lang.Throwable -> L5d
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi.getService()     // Catch: android.os.RemoteException -> L2c java.util.NoSuchElementException -> L37 java.lang.Throwable -> L5d
            r5.mDaemon = r1     // Catch: android.os.RemoteException -> L2c java.util.NoSuchElementException -> L37 java.lang.Throwable -> L5d
            goto L37
        L2c:
            r1 = move-exception
            java.lang.String r3 = "FingerprintTestImpl"
            java.lang.String r4 = "factory_exit Failed to get IFingerprintmmi interface"
            android.util.Slog.e(r3, r4, r1)     // Catch: java.lang.Throwable -> L5d
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L5d
        L37:
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = r5.mDaemon     // Catch: java.lang.Throwable -> L5d
            if (r1 != 0) goto L44
            java.lang.String r5 = "FingerprintTestImpl"
            java.lang.String r1 = "factory_exit IFingerprintmmi HIDL not available"
            android.util.Slog.w(r5, r1)     // Catch: java.lang.Throwable -> L5d
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5d
            return r2
        L44:
            int r2 = r1.factory_exit()     // Catch: android.os.RemoteException -> L49 java.lang.Throwable -> L5d
            goto L57
        L49:
            r1 = move-exception
            java.lang.String r3 = "FingerprintTestImpl"
            java.lang.String r4 = "Failed to do factory_exit()"
            android.util.Slog.e(r3, r4, r1)     // Catch: java.lang.Throwable -> L5d
            r3 = 0
            r5.mDaemon = r3     // Catch: java.lang.Throwable -> L5d
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L5d
        L57:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5d
            com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl$FingerMmiStatus r0 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.FingerMmiStatus.IDLE
            r5.status = r0
            return r2
        L5d:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5d
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.factory_exit():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025 A[Catch: all -> 0x0043, TryCatch #2 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000e, B:10:0x0016, B:11:0x0020, B:13:0x0025, B:14:0x002c, B:16:0x002e, B:20:0x0041, B:19:0x0034), top: B:28:0x0003, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.sprd.validationtools.itemstest.fingerprint.IFactoryTestImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int spi_test() {
        /*
            r5 = this;
            java.lang.Class<com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl> r0 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.class
            monitor-enter(r0)
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = r5.mDaemon     // Catch: java.lang.Throwable -> L43
            if (r1 != 0) goto L20
            java.lang.String r1 = "FingerprintTestImpl"
            java.lang.String r2 = "spi_test mDeamon was null, connect to IFingerprintmmi"
            android.util.Slog.v(r1, r2)     // Catch: java.lang.Throwable -> L43
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi.getService()     // Catch: android.os.RemoteException -> L15 java.util.NoSuchElementException -> L20 java.lang.Throwable -> L43
            r5.mDaemon = r1     // Catch: android.os.RemoteException -> L15 java.util.NoSuchElementException -> L20 java.lang.Throwable -> L43
            goto L20
        L15:
            r1 = move-exception
            java.lang.String r2 = "FingerprintTestImpl"
            java.lang.String r3 = "spi_test Failed to get IFingerprintmmi interface"
            android.util.Slog.e(r2, r3, r1)     // Catch: java.lang.Throwable -> L43
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L43
        L20:
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = r5.mDaemon     // Catch: java.lang.Throwable -> L43
            r2 = -1
            if (r1 != 0) goto L2e
            java.lang.String r5 = "FingerprintTestImpl"
            java.lang.String r1 = "spi_test IFingerprintmmi HIDL not available"
            android.util.Slog.w(r5, r1)     // Catch: java.lang.Throwable -> L43
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            return r2
        L2e:
            int r2 = r1.spi_test()     // Catch: android.os.RemoteException -> L33 java.lang.Throwable -> L43
            goto L41
        L33:
            r1 = move-exception
            java.lang.String r3 = "FingerprintTestImpl"
            java.lang.String r4 = "Failed to do spi_test()"
            android.util.Slog.e(r3, r4, r1)     // Catch: java.lang.Throwable -> L43
            r3 = 0
            r5.mDaemon = r3     // Catch: java.lang.Throwable -> L43
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L43
        L41:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            return r2
        L43:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.spi_test():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025 A[Catch: all -> 0x0043, TryCatch #2 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000e, B:10:0x0016, B:11:0x0020, B:13:0x0025, B:14:0x002c, B:16:0x002e, B:20:0x0041, B:19:0x0034), top: B:28:0x0003, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.sprd.validationtools.itemstest.fingerprint.IFactoryTestImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int interrupt_test() {
        /*
            r5 = this;
            java.lang.Class<com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl> r0 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.class
            monitor-enter(r0)
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = r5.mDaemon     // Catch: java.lang.Throwable -> L43
            if (r1 != 0) goto L20
            java.lang.String r1 = "FingerprintTestImpl"
            java.lang.String r2 = "interrupt_test mDeamon was null, connect to IFingerprintmmi"
            android.util.Slog.v(r1, r2)     // Catch: java.lang.Throwable -> L43
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi.getService()     // Catch: android.os.RemoteException -> L15 java.util.NoSuchElementException -> L20 java.lang.Throwable -> L43
            r5.mDaemon = r1     // Catch: android.os.RemoteException -> L15 java.util.NoSuchElementException -> L20 java.lang.Throwable -> L43
            goto L20
        L15:
            r1 = move-exception
            java.lang.String r2 = "FingerprintTestImpl"
            java.lang.String r3 = "interrupt_test Failed to get IFingerprintmmi interface"
            android.util.Slog.e(r2, r3, r1)     // Catch: java.lang.Throwable -> L43
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L43
        L20:
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = r5.mDaemon     // Catch: java.lang.Throwable -> L43
            r2 = -1
            if (r1 != 0) goto L2e
            java.lang.String r5 = "FingerprintTestImpl"
            java.lang.String r1 = "interrupt_test IFingerprintmmi HIDL not available"
            android.util.Slog.w(r5, r1)     // Catch: java.lang.Throwable -> L43
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            return r2
        L2e:
            int r2 = r1.interrupt_test()     // Catch: android.os.RemoteException -> L33 java.lang.Throwable -> L43
            goto L41
        L33:
            r1 = move-exception
            java.lang.String r3 = "FingerprintTestImpl"
            java.lang.String r4 = "Failed to do interrupt_test()"
            android.util.Slog.e(r3, r4, r1)     // Catch: java.lang.Throwable -> L43
            r3 = 0
            r5.mDaemon = r3     // Catch: java.lang.Throwable -> L43
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L43
        L41:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            return r2
        L43:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.interrupt_test():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025 A[Catch: all -> 0x0043, TryCatch #2 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000e, B:10:0x0016, B:11:0x0020, B:13:0x0025, B:14:0x002c, B:16:0x002e, B:20:0x0041, B:19:0x0034), top: B:28:0x0003, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.sprd.validationtools.itemstest.fingerprint.IFactoryTestImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int deadpixel_test() {
        /*
            r5 = this;
            java.lang.Class<com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl> r0 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.class
            monitor-enter(r0)
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = r5.mDaemon     // Catch: java.lang.Throwable -> L43
            if (r1 != 0) goto L20
            java.lang.String r1 = "FingerprintTestImpl"
            java.lang.String r2 = "deadpixel_test mDeamon was null, connect to IFingerprintmmi"
            android.util.Slog.v(r1, r2)     // Catch: java.lang.Throwable -> L43
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi.getService()     // Catch: android.os.RemoteException -> L15 java.util.NoSuchElementException -> L20 java.lang.Throwable -> L43
            r5.mDaemon = r1     // Catch: android.os.RemoteException -> L15 java.util.NoSuchElementException -> L20 java.lang.Throwable -> L43
            goto L20
        L15:
            r1 = move-exception
            java.lang.String r2 = "FingerprintTestImpl"
            java.lang.String r3 = "deadpixel_test Failed to get IFingerprintmmi interface"
            android.util.Slog.e(r2, r3, r1)     // Catch: java.lang.Throwable -> L43
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L43
        L20:
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r1 = r5.mDaemon     // Catch: java.lang.Throwable -> L43
            r2 = -1
            if (r1 != 0) goto L2e
            java.lang.String r5 = "FingerprintTestImpl"
            java.lang.String r1 = "deadpixel_test IFingerprintmmi HIDL not available"
            android.util.Slog.w(r5, r1)     // Catch: java.lang.Throwable -> L43
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            return r2
        L2e:
            int r2 = r1.deadpixel_test()     // Catch: android.os.RemoteException -> L33 java.lang.Throwable -> L43
            goto L41
        L33:
            r1 = move-exception
            java.lang.String r3 = "FingerprintTestImpl"
            java.lang.String r4 = "Failed to do deadpixel_test()"
            android.util.Slog.e(r3, r4, r1)     // Catch: java.lang.Throwable -> L43
            r3 = 0
            r5.mDaemon = r3     // Catch: java.lang.Throwable -> L43
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L43
        L41:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            return r2
        L43:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L43
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.deadpixel_test():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0027 A[Catch: all -> 0x0083, TryCatch #1 {, blocks: (B:5:0x0005, B:7:0x0009, B:8:0x0010, B:11:0x0018, B:12:0x0022, B:14:0x0027, B:15:0x002e, B:20:0x0035, B:22:0x003b, B:25:0x0044, B:27:0x0060, B:32:0x0068, B:33:0x006f, B:35:0x0074, B:36:0x0081), top: B:45:0x0005, inners: #2, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    @Override // com.sprd.validationtools.itemstest.fingerprint.IFactoryTestImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int finger_detect(com.sprd.validationtools.itemstest.fingerprint.ISprdFingerDetectListener r8) {
        /*
            r7 = this;
            java.lang.Class<com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl> r0 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.class
            monitor-enter(r0)
            r1 = 100
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r2 = r7.mDaemon     // Catch: java.lang.Throwable -> L83
            if (r2 != 0) goto L22
            java.lang.String r2 = "FingerprintTestImpl"
            java.lang.String r3 = "finger_detect mDeamon was null, connect to IFingerprintmmi"
            android.util.Slog.v(r2, r3)     // Catch: java.lang.Throwable -> L83
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r2 = vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi.getService()     // Catch: android.os.RemoteException -> L17 java.util.NoSuchElementException -> L22 java.lang.Throwable -> L83
            r7.mDaemon = r2     // Catch: android.os.RemoteException -> L17 java.util.NoSuchElementException -> L22 java.lang.Throwable -> L83
            goto L22
        L17:
            r2 = move-exception
            java.lang.String r3 = "FingerprintTestImpl"
            java.lang.String r4 = "finger_detect Failed to get IFingerprintmmi interface"
            android.util.Slog.e(r3, r4, r2)     // Catch: java.lang.Throwable -> L83
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L83
        L22:
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r2 = r7.mDaemon     // Catch: java.lang.Throwable -> L83
            r3 = -1
            if (r2 != 0) goto L30
            java.lang.String r7 = "FingerprintTestImpl"
            java.lang.String r8 = "finger_detect IFingerprintmmi HIDL not available"
            android.util.Slog.w(r7, r8)     // Catch: java.lang.Throwable -> L83
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L83
            return r3
        L30:
            if (r8 == 0) goto L81
            r2 = r3
        L33:
            if (r1 <= 0) goto L66
            com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl$FingerMmiStatus r4 = r7.status     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
            com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl$FingerMmiStatus r5 = com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.FingerMmiStatus.EXIT     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
            if (r4 == r5) goto L66
            vendor.sprd.hardware.fingerprintmmi.V1_0.IFingerprintmmi r2 = r7.mDaemon     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
            int r2 = r2.finger_detect()     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
            if (r2 != 0) goto L44
            goto L66
        L44:
            int r1 = r1 + (-1)
            java.lang.String r4 = "FingerprintTestImpl"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
            r5.<init>()     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
            java.lang.String r6 = "not detect fingerprint, try again... ret = "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
            java.lang.StringBuilder r5 = r5.append(r2)     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
            java.lang.String r5 = r5.toString()     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
            android.util.Slog.w(r4, r5)     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
            r4 = 100
            java.lang.Thread.sleep(r4)     // Catch: java.lang.InterruptedException -> L33 android.os.RemoteException -> L64 java.lang.Throwable -> L83
            goto L33
        L64:
            r8 = move-exception
            goto L74
        L66:
            if (r2 == 0) goto L6f
            java.lang.String r1 = "FingerprintTestImpl"
            java.lang.String r4 = "finger_detect several times but failed"
            android.util.Slog.w(r1, r4)     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
        L6f:
            r8.on_finger_detected(r2)     // Catch: android.os.RemoteException -> L64 java.lang.Throwable -> L83
            r3 = r2
            goto L81
        L74:
            java.lang.String r1 = "FingerprintTestImpl"
            java.lang.String r2 = "Failed to do finger_detect()"
            android.util.Slog.e(r1, r2, r8)     // Catch: java.lang.Throwable -> L83
            r1 = 0
            r7.mDaemon = r1     // Catch: java.lang.Throwable -> L83
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L83
        L81:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L83
            return r3
        L83:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L83
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.fingerprint.FingerprintTestImpl.finger_detect(com.sprd.validationtools.itemstest.fingerprint.ISprdFingerDetectListener):int");
    }
}
