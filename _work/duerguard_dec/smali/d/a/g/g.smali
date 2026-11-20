.class public final Ld/a/g/g;
.super Ljava/lang/Object;
.source "BaiduLog.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    nop

    .line 25
    nop

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 200
    move-object v0, p0

    .line 201
    :goto_0
    const-string v1, ""

    if-eqz v0, :cond_1

    .line 202
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_0

    .line 203
    return-object v1

    .line 205
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception p0

    goto :goto_4

    .line 208
    :cond_1
    const/4 v0, 0x0

    .line 210
    :try_start_1
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    :try_start_2
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 212
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 213
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :try_start_3
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 220
    goto :goto_1

    .line 219
    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 213
    :goto_1
    return-object p0

    .line 215
    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_2

    .line 217
    :try_start_5
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 220
    goto :goto_3

    .line 219
    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 220
    :cond_2
    :goto_3
    throw p0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 224
    :goto_4
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 226
    return-object v1
.end method

.method public static a()V
    .locals 0

    .line 189
    return-void
.end method

.method public static b()V
    .locals 0

    .line 237
    return-void
.end method
