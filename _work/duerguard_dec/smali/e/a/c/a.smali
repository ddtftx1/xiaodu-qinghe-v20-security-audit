.class public final Le/a/c/a;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Le/z;


# instance fields
.field public final a:Le/p;


# direct methods
.method public constructor <init>(Le/p;)V
    .locals 0
    .param p1, "cookieJar"    # Le/p;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Le/a/c/a;->a:Le/p;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Le/z$a;)Le/I;
    .locals 14
    .param p1, "chain"    # Le/z$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    move-object v0, p1

    check-cast v0, Le/a/c/h;

    invoke-virtual {v0}, Le/a/c/h;->g()Le/F;

    move-result-object v1

    .line 49
    .local v1, "userRequest":Le/F;
    invoke-virtual {v1}, Le/F;->f()Le/F$a;

    move-result-object v2

    .line 51
    .local v2, "requestBuilder":Le/F$a;
    invoke-virtual {v1}, Le/F;->a()Le/H;

    move-result-object v3

    .line 52
    .local v3, "body":Le/H;
    const-string v4, "Content-Type"

    const-wide/16 v5, -0x1

    const-string v7, "Content-Length"

    if-eqz v3, :cond_2

    .line 53
    invoke-virtual {v3}, Le/H;->b()Le/A;

    move-result-object v8

    .line 54
    .local v8, "contentType":Le/A;
    if-eqz v8, :cond_0

    .line 55
    invoke-virtual {v8}, Le/A;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Le/F$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 58
    :cond_0
    invoke-virtual {v3}, Le/H;->a()J

    move-result-wide v9

    .line 59
    .local v9, "contentLength":J
    cmp-long v11, v9, v5

    const-string v12, "Transfer-Encoding"

    if-eqz v11, :cond_1

    .line 60
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v7, v11}, Le/F$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 61
    invoke-virtual {v2, v12}, Le/F$a;->a(Ljava/lang/String;)Le/F$a;

    goto :goto_0

    .line 63
    :cond_1
    const-string v11, "chunked"

    invoke-virtual {v2, v12, v11}, Le/F$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 64
    invoke-virtual {v2, v7}, Le/F$a;->a(Ljava/lang/String;)Le/F$a;

    .line 68
    .end local v8    # "contentType":Le/A;
    .end local v9    # "contentLength":J
    :cond_2
    :goto_0
    const-string v8, "Host"

    invoke-virtual {v1, v8}, Le/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    .line 69
    invoke-virtual {v1}, Le/F;->g()Le/y;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Le/a/e;->a(Le/y;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Le/F$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 72
    :cond_3
    const-string v8, "Connection"

    invoke-virtual {v1, v8}, Le/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    .line 73
    const-string v9, "Keep-Alive"

    invoke-virtual {v2, v8, v9}, Le/F$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 78
    :cond_4
    const/4 v8, 0x0

    .line 79
    .local v8, "transparentGzip":Z
    const-string v9, "Accept-Encoding"

    invoke-virtual {v1, v9}, Le/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "gzip"

    if-nez v10, :cond_5

    const-string v10, "Range"

    invoke-virtual {v1, v10}, Le/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 80
    const/4 v8, 0x1

    .line 81
    invoke-virtual {v2, v9, v11}, Le/F$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 84
    :cond_5
    iget-object v9, p0, Le/a/c/a;->a:Le/p;

    invoke-virtual {v1}, Le/F;->g()Le/y;

    move-result-object v10

    check-cast v9, Le/o;

    invoke-virtual {v9, v10}, Le/o;->a(Le/y;)Ljava/util/List;

    move-result-object v9

    .line 85
    .local v9, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 86
    invoke-virtual {p0, v9}, Le/a/c/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "Cookie"

    invoke-virtual {v2, v12, v10}, Le/F$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 89
    :cond_6
    const-string v10, "User-Agent"

    invoke-virtual {v1, v10}, Le/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    .line 90
    invoke-static {}, Le/a/f;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v10, v12}, Le/F$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 93
    :cond_7
    invoke-virtual {v2}, Le/F$a;->a()Le/F;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/c/h;->a(Le/F;)Le/I;

    move-result-object v0

    .line 95
    .local v0, "networkResponse":Le/I;
    iget-object v10, p0, Le/a/c/a;->a:Le/p;

    invoke-virtual {v1}, Le/F;->g()Le/y;

    move-result-object v12

    invoke-virtual {v0}, Le/I;->m()Le/x;

    move-result-object v13

    invoke-static {v10, v12, v13}, Le/a/c/f;->a(Le/p;Le/y;Le/x;)V

    .line 97
    invoke-virtual {v0}, Le/I;->o()Le/I$a;

    move-result-object v10

    .line 98
    invoke-virtual {v10, v1}, Le/I$a;->a(Le/F;)Le/I$a;

    move-result-object v10

    .line 100
    .local v10, "responseBuilder":Le/I$a;
    if-eqz v8, :cond_8

    .line 101
    const-string v12, "Content-Encoding"

    invoke-virtual {v0, v12}, Le/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 102
    invoke-static {v0}, Le/a/c/f;->b(Le/I;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 103
    new-instance v11, Lf/l;

    invoke-virtual {v0}, Le/I;->i()Le/K;

    move-result-object v13

    invoke-virtual {v13}, Le/K;->m()Lf/h;

    move-result-object v13

    invoke-direct {v11, v13}, Lf/l;-><init>(Lf/x;)V

    .line 104
    .local v11, "responseBody":Lf/l;
    invoke-virtual {v0}, Le/I;->m()Le/x;

    move-result-object v13

    invoke-virtual {v13}, Le/x;->a()Le/x$a;

    move-result-object v13

    .line 105
    invoke-virtual {v13, v12}, Le/x$a;->b(Ljava/lang/String;)Le/x$a;

    .line 106
    invoke-virtual {v13, v7}, Le/x$a;->b(Ljava/lang/String;)Le/x$a;

    .line 107
    invoke-virtual {v13}, Le/x$a;->a()Le/x;

    move-result-object v7

    .line 108
    .local v7, "strippedHeaders":Le/x;
    invoke-virtual {v10, v7}, Le/I$a;->a(Le/x;)Le/I$a;

    .line 109
    invoke-virtual {v0, v4}, Le/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "contentType":Ljava/lang/String;
    new-instance v12, Le/a/c/i;

    invoke-static {v11}, Lf/q;->a(Lf/x;)Lf/h;

    move-result-object v13

    invoke-direct {v12, v4, v5, v6, v13}, Le/a/c/i;-><init>(Ljava/lang/String;JLf/h;)V

    invoke-virtual {v10, v12}, Le/I$a;->a(Le/K;)Le/I$a;

    .line 113
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v7    # "strippedHeaders":Le/x;
    .end local v11    # "responseBody":Lf/l;
    :cond_8
    invoke-virtual {v10}, Le/I$a;->a()Le/I;

    move-result-object v4

    return-object v4
.end method

.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/n;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 118
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "cookieHeader":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 120
    if-lez v1, :cond_0

    .line 121
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/n;

    .line 124
    .local v3, "cookie":Le/n;
    invoke-virtual {v3}, Le/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Le/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .end local v3    # "cookie":Le/n;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
