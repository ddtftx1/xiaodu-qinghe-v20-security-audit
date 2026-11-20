.class public final Ld/a/a/f;
.super Ljava/lang/Object;
.source "QuietlyClose.java"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 24
    :cond_0
    :goto_0
    return-void
.end method
