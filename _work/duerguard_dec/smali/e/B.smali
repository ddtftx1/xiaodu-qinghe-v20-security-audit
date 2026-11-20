.class public Le/B;
.super Le/a/a;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Le/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/I$a;)I
    .locals 1
    .param p1, "responseBuilder"    # Le/I$a;

    .line 175
    iget v0, p1, Le/I$a;->c:I

    return v0
.end method

.method public a(Le/l;Le/a;Le/a/b/f;Le/L;)Le/a/b/c;
    .locals 1
    .param p1, "pool"    # Le/l;
    .param p2, "address"    # Le/a;
    .param p3, "streamAllocation"    # Le/a/b/f;
    .param p4, "route"    # Le/L;

    .line 154
    invoke-virtual {p1, p2, p3, p4}, Le/l;->a(Le/a;Le/a/b/f;Le/L;)Le/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Le/l;)Le/a/b/d;
    .locals 1
    .param p1, "connectionPool"    # Le/l;

    .line 171
    iget-object v0, p1, Le/l;->f:Le/a/b/d;

    return-object v0
.end method

.method public a(Le/f;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .param p1, "call"    # Le/f;
    .param p2, "e"    # Ljava/io/IOException;

    .line 192
    move-object v0, p1

    check-cast v0, Le/E;

    invoke-virtual {v0, p2}, Le/E;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method public a(Le/l;Le/a;Le/a/b/f;)Ljava/net/Socket;
    .locals 1
    .param p1, "pool"    # Le/l;
    .param p2, "address"    # Le/a;
    .param p3, "streamAllocation"    # Le/a/b/f;

    .line 163
    invoke-virtual {p1, p2, p3}, Le/l;->a(Le/a;Le/a/b/f;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public a(Le/m;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0
    .param p1, "tlsConfiguration"    # Le/m;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    .line 180
    invoke-virtual {p1, p2, p3}, Le/m;->a(Ljavax/net/ssl/SSLSocket;Z)V

    .line 181
    return-void
.end method

.method public a(Le/x$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Le/x$a;
    .param p2, "line"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p1, p2}, Le/x$a;->a(Ljava/lang/String;)Le/x$a;

    .line 137
    return-void
.end method

.method public a(Le/x$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Le/x$a;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 140
    invoke-virtual {p1, p2, p3}, Le/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/x$a;

    .line 141
    return-void
.end method

.method public a(Le/a;Le/a;)Z
    .locals 1
    .param p1, "a"    # Le/a;
    .param p2, "b"    # Le/a;

    .line 158
    invoke-virtual {p1, p2}, Le/a;->a(Le/a;)Z

    move-result v0

    return v0
.end method

.method public a(Le/l;Le/a/b/c;)Z
    .locals 1
    .param p1, "pool"    # Le/l;
    .param p2, "connection"    # Le/a/b/c;

    .line 149
    invoke-virtual {p1, p2}, Le/l;->a(Le/a/b/c;)Z

    move-result v0

    return v0
.end method

.method public b(Le/l;Le/a/b/c;)V
    .locals 0
    .param p1, "pool"    # Le/l;
    .param p2, "connection"    # Le/a/b/c;

    .line 167
    invoke-virtual {p1, p2}, Le/l;->b(Le/a/b/c;)V

    .line 168
    return-void
.end method
