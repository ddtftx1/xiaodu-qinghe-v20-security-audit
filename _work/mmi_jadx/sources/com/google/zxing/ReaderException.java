package com.google.zxing;

/* loaded from: classes.dex */
public abstract class ReaderException extends Exception {
    protected static final boolean isStackTrace;

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return null;
    }

    static {
        isStackTrace = System.getProperty("surefire.test.class.path") != null;
    }

    ReaderException() {
    }

    ReaderException(Throwable th) {
        super(th);
    }
}
