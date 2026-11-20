.class public final Le/a/a/a;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Le/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    .local v0, "cache":Le/a/a/c;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    nop

    .line 50
    return-void
.end method

.method public static a(Le/I;)Le/I;
    .locals 2
    .param p0, "response"    # Le/I;

    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le/I;->i()Le/K;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Le/I;->o()Le/I$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/I$a;->a(Le/K;)Le/I$a;

    invoke-virtual {v0}, Le/I$a;->a()Le/I;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_0
    move-object v0, p0

    .line 148
    :goto_0
    return-object v0
.end method

.method public static a(Le/x;Le/x;)Le/x;
    .locals 6
    .param p0, "cachedHeaders"    # Le/x;
    .param p1, "networkHeaders"    # Le/x;

    .line 219
    new-instance v0, Le/x$a;

    invoke-direct {v0}, Le/x$a;-><init>()V

    .line 221
    .local v0, "result":Le/x$a;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Le/x;->b()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 222
    invoke-virtual {p0, v1}, Le/x;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Le/x;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    goto :goto_1

    .line 227
    :cond_0
    invoke-static {v3}, Le/a/a/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Le/a/a/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    invoke-virtual {p1, v3}, Le/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 229
    :cond_1
    sget-object v5, Le/a/a;->a:Le/a/a;

    invoke-virtual {v5, v0, v3, v4}, Le/a/a;->a(Le/x$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Le/x;->b()I

    move-result v2

    .restart local v2    # "size":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 234
    invoke-virtual {p1, v1}, Le/x;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 235
    .restart local v3    # "fieldName":Ljava/lang/String;
    invoke-static {v3}, Le/a/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Le/a/a/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 236
    sget-object v4, Le/a/a;->a:Le/a/a;

    invoke-virtual {p1, v1}, Le/x;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v3, v5}, Le/a/a;->a(Le/x$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .end local v3    # "fieldName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 240
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_5
    invoke-virtual {v0}, Le/x$a;->a()Le/x;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 263
    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 263
    :goto_1
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 248
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Le/z$a;)Le/I;
    .locals 10
    .param p1, "chain"    # Le/z$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    nop

    .line 55
    const/4 v0, 0x0

    move-object v1, v0

    .line 57
    .local v1, "cacheCandidate":Le/I;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    .local v2, "now":J
    new-instance v4, Le/a/a/b$a;

    move-object v5, p1

    check-cast v5, Le/a/c/h;

    invoke-virtual {v5}, Le/a/c/h;->g()Le/F;

    move-result-object v6

    invoke-direct {v4, v2, v3, v6, v1}, Le/a/a/b$a;-><init>(JLe/F;Le/I;)V

    invoke-virtual {v4}, Le/a/a/b$a;->c()Le/a/a/b;

    move-result-object v4

    .line 60
    .local v4, "strategy":Le/a/a/b;
    iget-object v6, v4, Le/a/a/b;->a:Le/F;

    .line 61
    .local v6, "networkRequest":Le/F;
    iget-object v7, v4, Le/a/a/b;->b:Le/I;

    .line 63
    .local v7, "cacheResponse":Le/I;
    nop

    .line 67
    if-eqz v1, :cond_0

    if-nez v7, :cond_0

    .line 68
    invoke-virtual {v1}, Le/I;->i()Le/K;

    move-result-object v8

    invoke-static {v8}, Le/a/e;->a(Ljava/io/Closeable;)V

    .line 72
    :cond_0
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 73
    new-instance v0, Le/I$a;

    invoke-direct {v0}, Le/I$a;-><init>()V

    .line 74
    invoke-virtual {v5}, Le/a/c/h;->g()Le/F;

    move-result-object v5

    invoke-virtual {v0, v5}, Le/I$a;->a(Le/F;)Le/I$a;

    sget-object v5, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    .line 75
    invoke-virtual {v0, v5}, Le/I$a;->a(Lokhttp3/Protocol;)Le/I$a;

    const/16 v5, 0x1f8

    .line 76
    invoke-virtual {v0, v5}, Le/I$a;->a(I)Le/I$a;

    .line 77
    const-string v5, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v0, v5}, Le/I$a;->a(Ljava/lang/String;)Le/I$a;

    sget-object v5, Le/a/e;->c:Le/K;

    .line 78
    invoke-virtual {v0, v5}, Le/I$a;->a(Le/K;)Le/I$a;

    const-wide/16 v8, -0x1

    .line 79
    invoke-virtual {v0, v8, v9}, Le/I$a;->b(J)Le/I$a;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Le/I$a;->a(J)Le/I$a;

    .line 81
    invoke-virtual {v0}, Le/I$a;->a()Le/I;

    move-result-object v0

    .line 73
    return-object v0

    .line 85
    :cond_1
    if-nez v6, :cond_2

    .line 86
    invoke-virtual {v7}, Le/I;->o()Le/I$a;

    move-result-object v0

    .line 87
    invoke-static {v7}, Le/a/a/a;->a(Le/I;)Le/I;

    move-result-object v5

    invoke-virtual {v0, v5}, Le/I$a;->a(Le/I;)Le/I$a;

    .line 88
    invoke-virtual {v0}, Le/I$a;->a()Le/I;

    move-result-object v0

    .line 86
    return-object v0

    .line 91
    :cond_2
    const/4 v8, 0x0

    .line 93
    .local v8, "networkResponse":Le/I;
    :try_start_0
    invoke-virtual {v5, v6}, Le/a/c/h;->a(Le/F;)Le/I;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v8    # "networkResponse":Le/I;
    .local v5, "networkResponse":Le/I;
    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {v1}, Le/I;->i()Le/K;

    move-result-object v8

    invoke-static {v8}, Le/a/e;->a(Ljava/io/Closeable;)V

    .line 102
    :cond_3
    if-eqz v7, :cond_5

    .line 103
    invoke-virtual {v5}, Le/I;->k()I

    move-result v8

    const/16 v9, 0x130

    if-eq v8, v9, :cond_4

    .line 119
    invoke-virtual {v7}, Le/I;->i()Le/K;

    move-result-object v0

    invoke-static {v0}, Le/a/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 104
    .end local v1    # "cacheCandidate":Le/I;
    .end local v2    # "now":J
    .end local v4    # "strategy":Le/a/a/b;
    .end local v5    # "networkResponse":Le/I;
    .end local v6    # "networkRequest":Le/F;
    .end local v7    # "cacheResponse":Le/I;
    .end local p0    # "this":Le/a/a/a;
    .end local p1    # "chain":Le/z$a;
    :cond_4
    invoke-virtual {v7}, Le/I;->o()Le/I$a;

    move-result-object p1

    .line 105
    invoke-virtual {v7}, Le/I;->m()Le/x;

    move-result-object v1

    invoke-virtual {v5}, Le/I;->m()Le/x;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/a/a;->a(Le/x;Le/x;)Le/x;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/I$a;->a(Le/x;)Le/I$a;

    .line 106
    invoke-virtual {v5}, Le/I;->s()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Le/I$a;->b(J)Le/I$a;

    .line 107
    invoke-virtual {v5}, Le/I;->q()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Le/I$a;->a(J)Le/I$a;

    .line 108
    invoke-static {v7}, Le/a/a/a;->a(Le/I;)Le/I;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/I$a;->a(Le/I;)Le/I$a;

    .line 109
    invoke-static {v5}, Le/a/a/a;->a(Le/I;)Le/I;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/I$a;->c(Le/I;)Le/I$a;

    .line 110
    invoke-virtual {p1}, Le/I$a;->a()Le/I;

    .line 111
    invoke-virtual {v5}, Le/I;->i()Le/K;

    move-result-object p1

    invoke-virtual {p1}, Le/K;->close()V

    .line 115
    throw v0

    .line 123
    .restart local v1    # "cacheCandidate":Le/I;
    .restart local v2    # "now":J
    .restart local v4    # "strategy":Le/a/a/b;
    .restart local v5    # "networkResponse":Le/I;
    .restart local v6    # "networkRequest":Le/F;
    .restart local v7    # "cacheResponse":Le/I;
    .restart local p1    # "chain":Le/z$a;
    :cond_5
    :goto_0
    invoke-virtual {v5}, Le/I;->o()Le/I$a;

    move-result-object v0

    .line 124
    invoke-static {v7}, Le/a/a/a;->a(Le/I;)Le/I;

    move-result-object v8

    invoke-virtual {v0, v8}, Le/I$a;->a(Le/I;)Le/I$a;

    .line 125
    invoke-static {v5}, Le/a/a/a;->a(Le/I;)Le/I;

    move-result-object v8

    invoke-virtual {v0, v8}, Le/I$a;->c(Le/I;)Le/I$a;

    .line 126
    invoke-virtual {v0}, Le/I$a;->a()Le/I;

    move-result-object v0

    .line 128
    .local v0, "response":Le/I;
    nop

    .line 144
    return-object v0

    .line 96
    .end local v0    # "response":Le/I;
    .end local v5    # "networkResponse":Le/I;
    .restart local v8    # "networkResponse":Le/I;
    :catchall_0
    move-exception v0

    if-nez v8, :cond_6

    if-eqz v1, :cond_6

    .line 97
    invoke-virtual {v1}, Le/I;->i()Le/K;

    move-result-object v5

    invoke-static {v5}, Le/a/e;->a(Ljava/io/Closeable;)V

    :cond_6
    throw v0
.end method
