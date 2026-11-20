.class public final Lf/q;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lf/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lf/q;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static a(Lf/w;)Lf/g;
    .locals 1
    .param p0, "sink"    # Lf/w;

    .line 60
    new-instance v0, Lf/r;

    invoke-direct {v0, p0}, Lf/r;-><init>(Lf/w;)V

    return-object v0
.end method

.method public static a(Lf/x;)Lf/h;
    .locals 1
    .param p0, "source"    # Lf/x;

    .line 51
    new-instance v0, Lf/t;

    invoke-direct {v0, p0}, Lf/t;-><init>(Lf/x;)V

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;Lf/z;)Lf/w;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lf/z;

    .line 69
    if-eqz p0, :cond_1

    .line 70
    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Lf/n;

    invoke-direct {v0, p1, p0}, Lf/n;-><init>(Lf/z;Ljava/io/OutputStream;)V

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/net/Socket;)Lf/w;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0}, Lf/q;->c(Ljava/net/Socket;)Lf/c;

    move-result-object v0

    .line 119
    .local v0, "timeout":Lf/c;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lf/q;->a(Ljava/io/OutputStream;Lf/z;)Lf/w;

    move-result-object v1

    .line 120
    .local v1, "sink":Lf/w;
    invoke-virtual {v0, v1}, Lf/c;->a(Lf/w;)Lf/w;

    move-result-object v2

    return-object v2

    .line 117
    .end local v0    # "timeout":Lf/c;
    .end local v1    # "sink":Lf/w;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket\'s output stream == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/InputStream;)Lf/x;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .line 125
    new-instance v0, Lf/z;

    invoke-direct {v0}, Lf/z;-><init>()V

    invoke-static {p0, v0}, Lf/q;->a(Ljava/io/InputStream;Lf/z;)Lf/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lf/z;)Lf/x;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lf/z;

    .line 129
    if-eqz p0, :cond_1

    .line 130
    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Lf/o;

    invoke-direct {v0, p1, p0}, Lf/o;-><init>(Lf/z;Ljava/io/InputStream;)V

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .line 262
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0
.end method

.method public static b(Ljava/net/Socket;)Lf/x;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    if-eqz p0, :cond_1

    .line 223
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p0}, Lf/q;->c(Ljava/net/Socket;)Lf/c;

    move-result-object v0

    .line 225
    .local v0, "timeout":Lf/c;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lf/q;->a(Ljava/io/InputStream;Lf/z;)Lf/x;

    move-result-object v1

    .line 226
    .local v1, "source":Lf/x;
    invoke-virtual {v0, v1}, Lf/c;->a(Lf/x;)Lf/x;

    move-result-object v2

    return-object v2

    .line 223
    .end local v0    # "timeout":Lf/c;
    .end local v1    # "source":Lf/x;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket\'s input stream == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/net/Socket;)Lf/c;
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .line 230
    new-instance v0, Lf/p;

    invoke-direct {v0, p0}, Lf/p;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
