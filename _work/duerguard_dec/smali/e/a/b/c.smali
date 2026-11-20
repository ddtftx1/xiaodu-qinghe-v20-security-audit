.class public final Le/a/b/c;
.super Le/a/e/k$b;
.source "RealConnection.java"

# interfaces
.implements Le/j;


# instance fields
.field public final b:Le/l;

.field public final c:Le/L;

.field public d:Ljava/net/Socket;

.field public e:Ljava/net/Socket;

.field public f:Le/w;

.field public g:Lokhttp3/Protocol;

.field public h:Le/a/e/k;

.field public i:Lf/h;

.field public j:Lf/g;

.field public k:Z

.field public l:I

.field public m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Le/a/b/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:J


# direct methods
.method public constructor <init>(Le/l;Le/L;)V
    .locals 2
    .param p1, "connectionPool"    # Le/l;
    .param p2, "route"    # Le/L;

    .line 118
    invoke-direct {p0}, Le/a/e/k$b;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Le/a/b/c;->m:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/b/c;->n:Ljava/util/List;

    .line 116
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Le/a/b/c;->o:J

    .line 119
    iput-object p1, p0, Le/a/b/c;->b:Le/l;

    .line 120
    iput-object p2, p0, Le/a/b/c;->c:Le/L;

    .line 121
    return-void
.end method


# virtual methods
.method public final a(IILe/F;Le/y;)Le/F;
    .locals 9
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "tunnelRequest"    # Le/F;
    .param p4, "url"    # Le/y;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Le/a/e;->a(Le/y;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "requestLine":Ljava/lang/String;
    :goto_0
    new-instance v1, Le/a/d/b;

    iget-object v2, p0, Le/a/b/c;->i:Lf/h;

    iget-object v3, p0, Le/a/b/c;->j:Lf/g;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Le/a/d/b;-><init>(Le/C;Le/a/b/f;Lf/h;Lf/g;)V

    .line 372
    .local v1, "tunnelConnection":Le/a/d/b;
    iget-object v2, p0, Le/a/b/c;->i:Lf/h;

    invoke-interface {v2}, Lf/x;->b()Lf/z;

    move-result-object v2

    int-to-long v5, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Lf/z;->a(JLjava/util/concurrent/TimeUnit;)Lf/z;

    .line 373
    iget-object v2, p0, Le/a/b/c;->j:Lf/g;

    invoke-interface {v2}, Lf/w;->b()Lf/z;

    move-result-object v2

    int-to-long v5, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Lf/z;->a(JLjava/util/concurrent/TimeUnit;)Lf/z;

    .line 374
    invoke-virtual {p3}, Le/F;->c()Le/x;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Le/a/d/b;->a(Le/x;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Le/a/d/b;->a()V

    .line 376
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Le/a/d/b;->a(Z)Le/I$a;

    move-result-object v2

    .line 377
    invoke-virtual {v2, p3}, Le/I$a;->a(Le/F;)Le/I$a;

    .line 378
    invoke-virtual {v2}, Le/I$a;->a()Le/I;

    move-result-object v2

    .line 381
    .local v2, "response":Le/I;
    invoke-static {v2}, Le/a/c/f;->a(Le/I;)J

    move-result-wide v5

    .line 382
    .local v5, "contentLength":J
    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    .line 383
    const-wide/16 v5, 0x0

    .line 385
    :cond_0
    invoke-virtual {v1, v5, v6}, Le/a/d/b;->b(J)Lf/x;

    move-result-object v3

    .line 386
    .local v3, "body":Lf/x;
    const v7, 0x7fffffff

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v7, v8}, Le/a/e;->b(Lf/x;ILjava/util/concurrent/TimeUnit;)Z

    .line 387
    invoke-interface {v3}, Lf/x;->close()V

    .line 389
    invoke-virtual {v2}, Le/I;->k()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_4

    const/16 v4, 0x197

    if-ne v7, v4, :cond_3

    .line 401
    iget-object v4, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v4}, Le/L;->a()Le/a;

    move-result-object v4

    invoke-virtual {v4}, Le/a;->g()Le/c;

    move-result-object v4

    iget-object v7, p0, Le/a/b/c;->c:Le/L;

    check-cast v4, Le/b;

    invoke-virtual {v4, v7, v2}, Le/b;->a(Le/L;Le/I;)Le/F;

    const/4 p3, 0x0

    .line 402
    if-eqz p3, :cond_2

    .line 404
    const-string v4, "Connection"

    invoke-virtual {v2, v4}, Le/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "close"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    return-object p3

    .line 413
    .end local v1    # "tunnelConnection":Le/a/d/b;
    .end local v2    # "response":Le/I;
    .end local v3    # "body":Lf/x;
    .end local v5    # "contentLength":J
    :cond_1
    goto/16 :goto_0

    .line 402
    .restart local v1    # "tunnelConnection":Le/a/d/b;
    .restart local v2    # "response":Le/I;
    .restart local v3    # "body":Lf/x;
    .restart local v5    # "contentLength":J
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v7, "Failed to authenticate with proxy"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 410
    :cond_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected response code for CONNECT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v2}, Le/I;->k()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    :cond_4
    iget-object v7, p0, Le/a/b/c;->i:Lf/h;

    invoke-interface {v7}, Lf/h;->a()Lf/f;

    move-result-object v7

    invoke-virtual {v7}, Lf/f;->c()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Le/a/b/c;->j:Lf/g;

    invoke-interface {v7}, Lf/g;->a()Lf/f;

    move-result-object v7

    invoke-virtual {v7}, Lf/f;->c()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 398
    return-object v4

    .line 396
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v7, "TLS tunnel buffered too many bytes!"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public a(Le/C;Le/z$a;Le/a/b/f;)Le/a/c/c;
    .locals 5
    .param p1, "client"    # Le/C;
    .param p2, "chain"    # Le/z$a;
    .param p3, "streamAllocation"    # Le/a/b/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Le/a/b/c;->h:Le/a/e/k;

    if-eqz v0, :cond_0

    .line 516
    new-instance v1, Le/a/e/d;

    invoke-direct {v1, p1, p2, p3, v0}, Le/a/e/d;-><init>(Le/C;Le/z$a;Le/a/b/f;Le/a/e/k;)V

    return-object v1

    .line 518
    :cond_0
    iget-object v0, p0, Le/a/b/c;->e:Ljava/net/Socket;

    move-object v1, p2

    check-cast v1, Le/a/c/h;

    invoke-virtual {v1}, Le/a/c/h;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 519
    iget-object v0, p0, Le/a/b/c;->i:Lf/h;

    invoke-interface {v0}, Lf/x;->b()Lf/z;

    move-result-object v0

    invoke-virtual {v1}, Le/a/c/h;->f()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lf/z;->a(JLjava/util/concurrent/TimeUnit;)Lf/z;

    .line 520
    iget-object v0, p0, Le/a/b/c;->j:Lf/g;

    invoke-interface {v0}, Lf/w;->b()Lf/z;

    move-result-object v0

    invoke-virtual {v1}, Le/a/c/h;->i()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lf/z;->a(JLjava/util/concurrent/TimeUnit;)Lf/z;

    .line 521
    new-instance v0, Le/a/d/b;

    iget-object v1, p0, Le/a/b/c;->i:Lf/h;

    iget-object v2, p0, Le/a/b/c;->j:Lf/g;

    invoke-direct {v0, p1, p3, v1, v2}, Le/a/d/b;-><init>(Le/C;Le/a/b/f;Lf/h;Lf/g;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 539
    iget-object v0, p0, Le/a/b/c;->d:Ljava/net/Socket;

    invoke-static {v0}, Le/a/e;->a(Ljava/net/Socket;)V

    .line 540
    return-void
.end method

.method public final a(I)V
    .locals 5
    .param p1, "pingIntervalMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Le/a/b/c;->e:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 293
    new-instance v0, Le/a/e/k$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/e/k$a;-><init>(Z)V

    iget-object v1, p0, Le/a/b/c;->e:Ljava/net/Socket;

    iget-object v2, p0, Le/a/b/c;->c:Le/L;

    .line 294
    invoke-virtual {v2}, Le/L;->a()Le/a;

    move-result-object v2

    invoke-virtual {v2}, Le/a;->k()Le/y;

    move-result-object v2

    invoke-virtual {v2}, Le/y;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le/a/b/c;->i:Lf/h;

    iget-object v4, p0, Le/a/b/c;->j:Lf/g;

    invoke-virtual {v0, v1, v2, v3, v4}, Le/a/e/k$a;->a(Ljava/net/Socket;Ljava/lang/String;Lf/h;Lf/g;)Le/a/e/k$a;

    .line 295
    invoke-virtual {v0, p0}, Le/a/e/k$a;->a(Le/a/e/k$b;)Le/a/e/k$a;

    .line 296
    invoke-virtual {v0, p1}, Le/a/e/k$a;->a(I)Le/a/e/k$a;

    .line 297
    invoke-virtual {v0}, Le/a/e/k$a;->a()Le/a/e/k;

    move-result-object v0

    iput-object v0, p0, Le/a/b/c;->h:Le/a/e/k;

    .line 298
    iget-object v0, p0, Le/a/b/c;->h:Le/a/e/k;

    invoke-virtual {v0}, Le/a/e/k;->m()V

    .line 299
    return-void
.end method

.method public a(IIIIZLe/f;Le/v;)V
    .locals 16
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .param p6, "call"    # Le/f;
    .param p7, "eventListener"    # Le/v;

    .line 134
    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    iget-object v0, v7, Le/a/b/c;->g:Lokhttp3/Protocol;

    if-nez v0, :cond_b

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "routeException":Lokhttp3/internal/connection/RouteException;
    iget-object v1, v7, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->b()Ljava/util/List;

    move-result-object v10

    .line 138
    .local v10, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/ConnectionSpec;>;"
    new-instance v1, Le/a/b/b;

    invoke-direct {v1, v10}, Le/a/b/b;-><init>(Ljava/util/List;)V

    move-object v11, v1

    .line 140
    .local v11, "connectionSpecSelector":Le/a/b/b;
    iget-object v1, v7, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 141
    sget-object v1, Le/m;->d:Le/m;

    invoke-interface {v10, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, v7, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->k()Le/y;

    move-result-object v1

    invoke-virtual {v1}, Le/y;->g()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "host":Ljava/lang/String;
    invoke-static {}, Le/a/f/f;->b()Le/a/f/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Le/a/f/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    .end local v1    # "host":Ljava/lang/String;
    goto :goto_0

    .line 147
    .restart local v1    # "host":Ljava/lang/String;
    :cond_0
    new-instance v2, Lokhttp3/internal/connection/RouteException;

    new-instance v3, Ljava/net/UnknownServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEARTEXT communication to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not permitted by network security policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 142
    .end local v1    # "host":Ljava/lang/String;
    :cond_1
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication not enabled for client"

    invoke-direct {v2, v3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 151
    :cond_2
    iget-object v1, v7, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->e()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lokhttp3/Protocol;->e:Lokhttp3/Protocol;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 159
    :goto_0
    move-object v12, v0

    .end local v0    # "routeException":Lokhttp3/internal/connection/RouteException;
    .local v12, "routeException":Lokhttp3/internal/connection/RouteException;
    :goto_1
    :try_start_0
    iget-object v0, v7, Le/a/b/c;->c:Le/L;

    invoke-virtual {v0}, Le/L;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Le/a/b/c;->a(IIILe/f;Le/v;)V

    .line 161
    iget-object v0, v7, Le/a/b/c;->d:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    .line 163
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p4

    goto :goto_3

    .line 161
    :cond_3
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_2

    .line 166
    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    :try_start_1
    invoke-virtual {v7, v13, v14, v8, v9}, Le/a/b/c;->a(IILe/f;Le/v;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :goto_2
    move/from16 v15, p4

    :try_start_2
    invoke-virtual {v7, v11, v15, v8, v9}, Le/a/b/c;->a(Le/a/b/b;ILe/f;Le/v;)V

    .line 169
    iget-object v0, v7, Le/a/b/c;->c:Le/L;

    invoke-virtual {v0}, Le/L;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Le/a/b/c;->g:Lokhttp3/Protocol;

    invoke-virtual {v9, v8, v0, v1, v2}, Le/v;->a(Le/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    nop

    .line 196
    :goto_3
    iget-object v0, v7, Le/a/b/c;->c:Le/L;

    invoke-virtual {v0}, Le/L;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Le/a/b/c;->d:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    .line 197
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "exception":Ljava/net/ProtocolException;
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 202
    .end local v0    # "exception":Ljava/net/ProtocolException;
    :cond_6
    :goto_4
    iget-object v0, v7, Le/a/b/c;->h:Le/a/e/k;

    if-eqz v0, :cond_7

    .line 203
    iget-object v1, v7, Le/a/b/c;->b:Le/l;

    monitor-enter v1

    .line 204
    :try_start_3
    iget-object v0, v7, Le/a/b/c;->h:Le/a/e/k;

    invoke-virtual {v0}, Le/a/e/k;->l()I

    move-result v0

    iput v0, v7, Le/a/b/c;->m:I

    .line 205
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 207
    :cond_7
    :goto_5
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    :goto_6
    move/from16 v15, p4

    .line 172
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    iget-object v1, v7, Le/a/b/c;->e:Ljava/net/Socket;

    invoke-static {v1}, Le/a/e;->a(Ljava/net/Socket;)V

    .line 173
    iget-object v1, v7, Le/a/b/c;->d:Ljava/net/Socket;

    invoke-static {v1}, Le/a/e;->a(Ljava/net/Socket;)V

    .line 174
    const/4 v1, 0x0

    iput-object v1, v7, Le/a/b/c;->e:Ljava/net/Socket;

    .line 175
    iput-object v1, v7, Le/a/b/c;->d:Ljava/net/Socket;

    .line 176
    iput-object v1, v7, Le/a/b/c;->i:Lf/h;

    .line 177
    iput-object v1, v7, Le/a/b/c;->j:Lf/g;

    .line 178
    iput-object v1, v7, Le/a/b/c;->f:Le/w;

    .line 179
    iput-object v1, v7, Le/a/b/c;->g:Lokhttp3/Protocol;

    .line 180
    iput-object v1, v7, Le/a/b/c;->h:Le/a/e/k;

    .line 182
    iget-object v1, v7, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->b()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Le/v;->a(Le/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    .line 184
    if-nez v12, :cond_8

    .line 185
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v12, v1

    .end local v12    # "routeException":Lokhttp3/internal/connection/RouteException;
    .local v1, "routeException":Lokhttp3/internal/connection/RouteException;
    goto :goto_8

    .line 187
    .end local v1    # "routeException":Lokhttp3/internal/connection/RouteException;
    .restart local v12    # "routeException":Lokhttp3/internal/connection/RouteException;
    :cond_8
    invoke-virtual {v12, v0}, Lokhttp3/internal/connection/RouteException;->a(Ljava/io/IOException;)V

    .line 190
    :goto_8
    if-eqz p5, :cond_9

    invoke-virtual {v11, v0}, Le/a/b/b;->a(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 193
    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_9
    throw v12

    .line 152
    .end local v12    # "routeException":Lokhttp3/internal/connection/RouteException;
    .local v0, "routeException":Lokhttp3/internal/connection/RouteException;
    :cond_a
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p4

    new-instance v1, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v2, v3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 134
    .end local v0    # "routeException":Lokhttp3/internal/connection/RouteException;
    .end local v10    # "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/ConnectionSpec;>;"
    .end local v11    # "connectionSpecSelector":Le/a/b/b;
    :cond_b
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(IIILe/f;Le/v;)V
    .locals 6
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "call"    # Le/f;
    .param p5, "eventListener"    # Le/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Le/a/b/c;->b()Le/F;

    move-result-object v0

    .line 216
    .local v0, "tunnelRequest":Le/F;
    invoke-virtual {v0}, Le/F;->g()Le/y;

    move-result-object v1

    .line 217
    .local v1, "url":Le/y;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 218
    invoke-virtual {p0, p1, p2, p4, p5}, Le/a/b/c;->a(IILe/f;Le/v;)V

    .line 219
    invoke-virtual {p0, p2, p3, v0, v1}, Le/a/b/c;->a(IILe/F;Le/y;)Le/F;

    move-result-object v0

    .line 221
    if-nez v0, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    iget-object v3, p0, Le/a/b/c;->d:Ljava/net/Socket;

    invoke-static {v3}, Le/a/e;->a(Ljava/net/Socket;)V

    .line 226
    const/4 v3, 0x0

    iput-object v3, p0, Le/a/b/c;->d:Ljava/net/Socket;

    .line 227
    iput-object v3, p0, Le/a/b/c;->j:Lf/g;

    .line 228
    iput-object v3, p0, Le/a/b/c;->i:Lf/h;

    .line 229
    iget-object v4, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v4}, Le/L;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v5}, Le/L;->b()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Le/v;->a(Le/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public final a(IILe/f;Le/v;)V
    .locals 6
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "call"    # Le/f;
    .param p4, "eventListener"    # Le/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v0}, Le/L;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 237
    .local v0, "proxy":Ljava/net/Proxy;
    iget-object v1, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    .line 239
    .local v1, "address":Le/a;
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 240
    :cond_1
    :goto_0
    invoke-virtual {v1}, Le/a;->i()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    .line 241
    :goto_1
    iput-object v2, p0, Le/a/b/c;->d:Ljava/net/Socket;

    .line 243
    iget-object v2, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v2}, Le/L;->d()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p4, p3, v2, v0}, Le/v;->a(Le/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 244
    iget-object v2, p0, Le/a/b/c;->d:Ljava/net/Socket;

    invoke-virtual {v2, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 246
    :try_start_0
    invoke-static {}, Le/a/f/f;->b()Le/a/f/f;

    move-result-object v2

    iget-object v3, p0, Le/a/b/c;->d:Ljava/net/Socket;

    iget-object v4, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v4}, Le/L;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Le/a/f/f;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    nop

    .line 258
    :try_start_1
    iget-object v2, p0, Le/a/b/c;->d:Ljava/net/Socket;

    invoke-static {v2}, Lf/q;->b(Ljava/net/Socket;)Lf/x;

    move-result-object v2

    invoke-static {v2}, Lf/q;->a(Lf/x;)Lf/h;

    move-result-object v2

    iput-object v2, p0, Le/a/b/c;->i:Lf/h;

    .line 259
    iget-object v2, p0, Le/a/b/c;->d:Ljava/net/Socket;

    invoke-static {v2}, Lf/q;->a(Ljava/net/Socket;)Lf/w;

    move-result-object v2

    invoke-static {v2}, Lf/q;->a(Lf/w;)Lf/g;

    move-result-object v2

    iput-object v2, p0, Le/a/b/c;->j:Lf/g;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    goto :goto_2

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "throw with null exception"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 265
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_2
    return-void

    .line 262
    .restart local v2    # "npe":Ljava/lang/NullPointerException;
    :cond_2
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 247
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 248
    .local v2, "e":Ljava/net/ConnectException;
    new-instance v3, Ljava/net/ConnectException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v5}, Le/L;->d()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 249
    .local v3, "ce":Ljava/net/ConnectException;
    invoke-virtual {v3, v2}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 250
    throw v3
.end method

.method public final a(Le/a/b/b;)V
    .locals 11
    .param p1, "connectionSpecSelector"    # Le/a/b/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v0}, Le/L;->a()Le/a;

    move-result-object v0

    .line 303
    .local v0, "address":Le/a;
    invoke-virtual {v0}, Le/a;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 304
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 305
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 308
    .local v3, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    iget-object v4, p0, Le/a/b/c;->d:Ljava/net/Socket;

    .line 309
    invoke-virtual {v0}, Le/a;->k()Le/y;

    move-result-object v5

    invoke-virtual {v5}, Le/y;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Le/a;->k()Le/y;

    move-result-object v6

    invoke-virtual {v6}, Le/y;->j()I

    move-result v6

    const/4 v7, 0x1

    .line 308
    invoke-virtual {v1, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    move-object v3, v4

    .line 312
    invoke-virtual {p1, v3}, Le/a/b/b;->a(Ljavax/net/ssl/SSLSocket;)Le/m;

    move-result-object v4

    .line 313
    .local v4, "connectionSpec":Le/m;
    invoke-virtual {v4}, Le/m;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    invoke-static {}, Le/a/f/f;->b()Le/a/f/f;

    move-result-object v5

    .line 315
    invoke-virtual {v0}, Le/a;->k()Le/y;

    move-result-object v6

    invoke-virtual {v6}, Le/y;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Le/a;->e()Ljava/util/List;

    move-result-object v7

    .line 314
    invoke-virtual {v5, v3, v6, v7}, Le/a/f/f;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 319
    :cond_0
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 321
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    .line 322
    .local v5, "sslSocketSession":Ljavax/net/ssl/SSLSession;
    invoke-static {v5}, Le/w;->a(Ljavax/net/ssl/SSLSession;)Le/w;

    move-result-object v6

    .line 325
    .local v6, "unverifiedHandshake":Le/w;
    invoke-virtual {v0}, Le/a;->d()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v7

    invoke-virtual {v0}, Le/a;->k()Le/y;

    move-result-object v8

    invoke-virtual {v8}, Le/y;->g()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 334
    invoke-virtual {v0}, Le/a;->a()Le/g;

    move-result-object v7

    invoke-virtual {v0}, Le/a;->k()Le/y;

    move-result-object v8

    invoke-virtual {v8}, Le/y;->g()Ljava/lang/String;

    move-result-object v8

    .line 335
    invoke-virtual {v6}, Le/w;->b()Ljava/util/List;

    move-result-object v9

    .line 334
    invoke-virtual {v7, v8, v9}, Le/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 338
    invoke-virtual {v4}, Le/m;->c()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 339
    invoke-static {}, Le/a/f/f;->b()Le/a/f/f;

    move-result-object v7

    invoke-virtual {v7, v3}, Le/a/f/f;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 340
    :cond_1
    const/4 v7, 0x0

    :goto_0
    nop

    .line 341
    .local v7, "maybeProtocol":Ljava/lang/String;
    iput-object v3, p0, Le/a/b/c;->e:Ljava/net/Socket;

    .line 342
    iget-object v8, p0, Le/a/b/c;->e:Ljava/net/Socket;

    invoke-static {v8}, Lf/q;->b(Ljava/net/Socket;)Lf/x;

    move-result-object v8

    invoke-static {v8}, Lf/q;->a(Lf/x;)Lf/h;

    move-result-object v8

    iput-object v8, p0, Le/a/b/c;->i:Lf/h;

    .line 343
    iget-object v8, p0, Le/a/b/c;->e:Ljava/net/Socket;

    invoke-static {v8}, Lf/q;->a(Ljava/net/Socket;)Lf/w;

    move-result-object v8

    invoke-static {v8}, Lf/q;->a(Lf/w;)Lf/g;

    move-result-object v8

    iput-object v8, p0, Le/a/b/c;->j:Lf/g;

    .line 344
    iput-object v6, p0, Le/a/b/c;->f:Le/w;

    .line 345
    if-eqz v7, :cond_2

    .line 346
    invoke-static {v7}, Lokhttp3/Protocol;->a(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v8

    goto :goto_1

    .line 347
    :cond_2
    sget-object v8, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    :goto_1
    iput-object v8, p0, Le/a/b/c;->g:Lokhttp3/Protocol;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    const/4 v2, 0x1

    .line 353
    .end local v4    # "connectionSpec":Le/m;
    .end local v5    # "sslSocketSession":Ljavax/net/ssl/SSLSession;
    .end local v6    # "unverifiedHandshake":Le/w;
    .end local v7    # "maybeProtocol":Ljava/lang/String;
    nop

    .line 354
    invoke-static {}, Le/a/f/f;->b()Le/a/f/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Le/a/f/f;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 356
    if-nez v2, :cond_3

    .line 357
    invoke-static {v3}, Le/a/e;->a(Ljava/net/Socket;)V

    .line 360
    :cond_3
    return-void

    .line 326
    .restart local v4    # "connectionSpec":Le/m;
    .restart local v5    # "sslSocketSession":Ljavax/net/ssl/SSLSession;
    .restart local v6    # "unverifiedHandshake":Le/w;
    :cond_4
    :try_start_1
    invoke-virtual {v6}, Le/w;->b()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 327
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    new-instance v8, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Hostname "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Le/a;->k()Le/y;

    move-result-object v10

    invoke-virtual {v10}, Le/y;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " not verified:\n    certificate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {v7}, Le/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n    DN: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n    subjectAltNames: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-static {v7}, Le/a/h/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "address":Le/a;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "connectionSpecSelector":Le/a/b/b;
    throw v8
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    .end local v4    # "connectionSpec":Le/m;
    .end local v5    # "sslSocketSession":Ljavax/net/ssl/SSLSession;
    .end local v6    # "unverifiedHandshake":Le/w;
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "address":Le/a;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "connectionSpecSelector":Le/a/b/b;
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 349
    :catch_0
    move-exception v4

    .line 350
    .local v4, "e":Ljava/lang/AssertionError;
    :try_start_2
    invoke-static {v4}, Le/a/e;->a(Ljava/lang/AssertionError;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "address":Le/a;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "connectionSpecSelector":Le/a/b/b;
    throw v5

    .line 351
    .restart local v0    # "address":Le/a;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "connectionSpecSelector":Le/a/b/b;
    :cond_5
    nop

    .end local v0    # "address":Le/a;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "connectionSpecSelector":Le/a/b/b;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    .end local v4    # "e":Ljava/lang/AssertionError;
    .restart local v0    # "address":Le/a;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "connectionSpecSelector":Le/a/b/b;
    :goto_2
    if-eqz v3, :cond_6

    .line 354
    invoke-static {}, Le/a/f/f;->b()Le/a/f/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Le/a/f/f;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 356
    :cond_6
    if-nez v2, :cond_7

    .line 357
    invoke-static {v3}, Le/a/e;->a(Ljava/net/Socket;)V

    :cond_7
    throw v4
.end method

.method public final a(Le/a/b/b;ILe/f;Le/v;)V
    .locals 2
    .param p1, "connectionSpecSelector"    # Le/a/b/b;
    .param p2, "pingIntervalMillis"    # I
    .param p3, "call"    # Le/f;
    .param p4, "eventListener"    # Le/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v0}, Le/L;->a()Le/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v0}, Le/L;->a()Le/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a;->e()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->e:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Le/a/b/c;->d:Ljava/net/Socket;

    iput-object v0, p0, Le/a/b/c;->e:Ljava/net/Socket;

    .line 272
    sget-object v0, Lokhttp3/Protocol;->e:Lokhttp3/Protocol;

    iput-object v0, p0, Le/a/b/c;->g:Lokhttp3/Protocol;

    .line 273
    invoke-virtual {p0, p2}, Le/a/b/c;->a(I)V

    .line 274
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Le/a/b/c;->d:Ljava/net/Socket;

    iput-object v0, p0, Le/a/b/c;->e:Ljava/net/Socket;

    .line 278
    sget-object v0, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    iput-object v0, p0, Le/a/b/c;->g:Lokhttp3/Protocol;

    .line 279
    return-void

    .line 282
    :cond_1
    invoke-virtual {p4, p3}, Le/v;->g(Le/f;)V

    .line 283
    invoke-virtual {p0, p1}, Le/a/b/c;->a(Le/a/b/b;)V

    .line 284
    iget-object v0, p0, Le/a/b/c;->f:Le/w;

    invoke-virtual {p4, p3, v0}, Le/v;->a(Le/f;Le/w;)V

    .line 286
    iget-object v0, p0, Le/a/b/c;->g:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_2

    .line 287
    invoke-virtual {p0, p2}, Le/a/b/c;->a(I)V

    .line 289
    :cond_2
    return-void
.end method

.method public a(Le/a/e/k;)V
    .locals 2
    .param p1, "connection"    # Le/a/e/k;

    .line 585
    iget-object v0, p0, Le/a/b/c;->b:Le/l;

    monitor-enter v0

    .line 586
    :try_start_0
    invoke-virtual {p1}, Le/a/e/k;->l()I

    move-result v1

    iput v1, p0, Le/a/b/c;->m:I

    .line 587
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Le/a/e/q;)V
    .locals 1
    .param p1, "stream"    # Le/a/e/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->e:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Le/a/e/q;->a(Lokhttp3/internal/http2/ErrorCode;)V

    .line 581
    return-void
.end method

.method public a(Le/a;Le/L;)Z
    .locals 5
    .param p1, "address"    # Le/a;
    .param p2, "route"    # Le/L;

    .line 459
    iget-object v0, p0, Le/a/b/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Le/a/b/c;->m:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Le/a/b/c;->k:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 462
    :cond_0
    sget-object v0, Le/a/a;->a:Le/a/a;

    iget-object v1, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Le/a/a;->a(Le/a;Le/a;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 465
    :cond_1
    invoke-virtual {p1}, Le/a;->k()Le/y;

    move-result-object v0

    invoke-virtual {v0}, Le/y;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Le/a/b/c;->e()Le/L;

    move-result-object v1

    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->k()Le/y;

    move-result-object v1

    invoke-virtual {v1}, Le/y;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 466
    return v1

    .line 475
    :cond_2
    iget-object v0, p0, Le/a/b/c;->h:Le/a/e/k;

    if-nez v0, :cond_3

    return v2

    .line 480
    :cond_3
    if-nez p2, :cond_4

    return v2

    .line 481
    :cond_4
    invoke-virtual {p2}, Le/L;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    .line 482
    :cond_5
    iget-object v0, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v0}, Le/L;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    .line 483
    :cond_6
    iget-object v0, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v0}, Le/L;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Le/L;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 486
    :cond_7
    invoke-virtual {p2}, Le/L;->a()Le/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a;->d()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sget-object v3, Le/a/h/d;->a:Le/a/h/d;

    if-eq v0, v3, :cond_8

    return v2

    .line 487
    :cond_8
    invoke-virtual {p1}, Le/a;->k()Le/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/b/c;->a(Le/y;)Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    .line 491
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Le/a;->a()Le/g;

    move-result-object v0

    invoke-virtual {p1}, Le/a;->k()Le/y;

    move-result-object v3

    invoke-virtual {v3}, Le/y;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le/a/b/c;->c()Le/w;

    move-result-object v4

    invoke-virtual {v4}, Le/w;->b()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Le/g;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    nop

    .line 496
    return v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    return v2

    .line 459
    .end local v0    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :cond_a
    :goto_0
    return v2
.end method

.method public a(Le/y;)Z
    .locals 5
    .param p1, "url"    # Le/y;

    .line 500
    invoke-virtual {p1}, Le/y;->j()I

    move-result v0

    iget-object v1, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->k()Le/y;

    move-result-object v1

    invoke-virtual {v1}, Le/y;->j()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 501
    return v2

    .line 504
    :cond_0
    invoke-virtual {p1}, Le/y;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->k()Le/y;

    move-result-object v1

    invoke-virtual {v1}, Le/y;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 506
    iget-object v0, p0, Le/a/b/c;->f:Le/w;

    if-eqz v0, :cond_1

    sget-object v0, Le/a/h/d;->a:Le/a/h/d;

    .line 507
    invoke-virtual {p1}, Le/y;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le/a/b/c;->f:Le/w;

    invoke-virtual {v4}, Le/w;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 506
    invoke-virtual {v0, v3, v4}, Le/a/h/d;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 510
    :cond_2
    return v1
.end method

.method public a(Z)Z
    .locals 5
    .param p1, "doExtensiveChecks"    # Z

    .line 548
    iget-object v0, p0, Le/a/b/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Le/a/b/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Le/a/b/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Le/a/b/c;->h:Le/a/e/k;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {v0}, Le/a/e/k;->k()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 556
    :cond_1
    if-eqz p1, :cond_3

    .line 558
    :try_start_0
    iget-object v0, p0, Le/a/b/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .local v0, "readTimeout":I
    :try_start_1
    iget-object v3, p0, Le/a/b/c;->e:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 561
    iget-object v3, p0, Le/a/b/c;->i:Lf/h;

    invoke-interface {v3}, Lf/h;->c()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 562
    nop

    .line 566
    :try_start_2
    iget-object v3, p0, Le/a/b/c;->e:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 562
    return v1

    .line 564
    :cond_2
    nop

    .line 566
    iget-object v3, p0, Le/a/b/c;->e:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 564
    return v2

    .line 566
    :catchall_0
    move-exception v3

    iget-object v4, p0, Le/a/b/c;->e:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .end local p1    # "doExtensiveChecks":Z
    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 570
    .end local v0    # "readTimeout":I
    .restart local p1    # "doExtensiveChecks":Z
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/io/IOException;
    return v1

    .line 568
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 575
    :cond_3
    return v2

    .line 549
    :cond_4
    :goto_0
    return v1
.end method

.method public final b()Le/F;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    new-instance v0, Le/F$a;

    invoke-direct {v0}, Le/F$a;-><init>()V

    iget-object v1, p0, Le/a/b/c;->c:Le/L;

    .line 427
    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->k()Le/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/F$a;->a(Le/y;)Le/F$a;

    .line 428
    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Le/F$a;->a(Ljava/lang/String;Le/H;)Le/F$a;

    iget-object v1, p0, Le/a/b/c;->c:Le/L;

    .line 429
    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->k()Le/y;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/e;->a(Le/y;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Le/F$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 430
    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Le/F$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 431
    invoke-static {}, Le/a/f;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Le/F$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 432
    invoke-virtual {v0}, Le/F$a;->a()Le/F;

    move-result-object v0

    .line 434
    .local v0, "proxyConnectRequest":Le/F;
    new-instance v1, Le/I$a;

    invoke-direct {v1}, Le/I$a;-><init>()V

    .line 435
    invoke-virtual {v1, v0}, Le/I$a;->a(Le/F;)Le/I$a;

    sget-object v2, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    .line 436
    invoke-virtual {v1, v2}, Le/I$a;->a(Lokhttp3/Protocol;)Le/I$a;

    .line 437
    const/16 v2, 0x197

    invoke-virtual {v1, v2}, Le/I$a;->a(I)Le/I$a;

    .line 438
    const-string v2, "Preemptive Authenticate"

    invoke-virtual {v1, v2}, Le/I$a;->a(Ljava/lang/String;)Le/I$a;

    sget-object v2, Le/a/e;->c:Le/K;

    .line 439
    invoke-virtual {v1, v2}, Le/I$a;->a(Le/K;)Le/I$a;

    .line 440
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Le/I$a;->b(J)Le/I$a;

    .line 441
    invoke-virtual {v1, v2, v3}, Le/I$a;->a(J)Le/I$a;

    .line 442
    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    invoke-virtual {v1, v2, v3}, Le/I$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/I$a;

    .line 443
    invoke-virtual {v1}, Le/I$a;->a()Le/I;

    move-result-object v1

    .line 445
    .local v1, "fakeAuthChallengeResponse":Le/I;
    iget-object v2, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v2}, Le/L;->a()Le/a;

    move-result-object v2

    invoke-virtual {v2}, Le/a;->g()Le/c;

    move-result-object v2

    iget-object v3, p0, Le/a/b/c;->c:Le/L;

    .line 446
    check-cast v2, Le/b;

    invoke-virtual {v2, v3, v1}, Le/b;->a(Le/L;Le/I;)Le/F;

    const/4 v2, 0x0

    .line 448
    .local v2, "authenticatedRequest":Le/F;
    if-eqz v2, :cond_0

    .line 449
    move-object v3, v2

    goto :goto_0

    .line 450
    :cond_0
    move-object v3, v0

    .line 448
    :goto_0
    return-object v3
.end method

.method public c()Le/w;
    .locals 1

    .line 591
    iget-object v0, p0, Le/a/b/c;->f:Le/w;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 599
    iget-object v0, p0, Le/a/b/c;->h:Le/a/e/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Le/L;
    .locals 1

    .line 534
    iget-object v0, p0, Le/a/b/c;->c:Le/L;

    return-object v0
.end method

.method public f()Ljava/net/Socket;
    .locals 1

    .line 543
    iget-object v0, p0, Le/a/b/c;->e:Ljava/net/Socket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/c;->c:Le/L;

    .line 608
    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->k()Le/y;

    move-result-object v1

    invoke-virtual {v1}, Le/y;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/c;->c:Le/L;

    invoke-virtual {v1}, Le/L;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->k()Le/y;

    move-result-object v1

    invoke-virtual {v1}, Le/y;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/c;->c:Le/L;

    .line 610
    invoke-virtual {v1}, Le/L;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/c;->c:Le/L;

    .line 612
    invoke-virtual {v1}, Le/L;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v1, p0, Le/a/b/c;->f:Le/w;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le/w;->a()Le/i;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/c;->g:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    return-object v0
.end method
