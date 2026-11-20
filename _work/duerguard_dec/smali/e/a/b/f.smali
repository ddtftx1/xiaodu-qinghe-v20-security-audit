.class public final Le/a/b/f;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/f$a;
    }
.end annotation


# instance fields
.field public final a:Le/a;

.field public b:Le/a/b/e$a;

.field public c:Le/L;

.field public final d:Le/l;

.field public final e:Le/f;

.field public final f:Le/v;

.field public final g:Ljava/lang/Object;

.field public final h:Le/a/b/e;

.field public i:I

.field public j:Le/a/b/c;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Le/a/c/c;


# direct methods
.method public constructor <init>(Le/l;Le/a;Le/f;Le/v;Ljava/lang/Object;)V
    .locals 2
    .param p1, "connectionPool"    # Le/l;
    .param p2, "address"    # Le/a;
    .param p3, "call"    # Le/f;
    .param p4, "eventListener"    # Le/v;
    .param p5, "callStackTrace"    # Ljava/lang/Object;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Le/a/b/f;->d:Le/l;

    .line 98
    iput-object p2, p0, Le/a/b/f;->a:Le/a;

    .line 99
    iput-object p3, p0, Le/a/b/f;->e:Le/f;

    .line 100
    iput-object p4, p0, Le/a/b/f;->f:Le/v;

    .line 101
    new-instance v0, Le/a/b/e;

    invoke-virtual {p0}, Le/a/b/f;->i()Le/a/b/d;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p4}, Le/a/b/e;-><init>(Le/a;Le/a/b/d;Le/f;Le/v;)V

    iput-object v0, p0, Le/a/b/f;->h:Le/a/b/e;

    .line 102
    iput-object p5, p0, Le/a/b/f;->g:Ljava/lang/Object;

    .line 103
    return-void
.end method


# virtual methods
.method public final a(IIIIZ)Le/a/b/c;
    .locals 18
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 163
    .local v2, "foundPooledConnection":Z
    const/4 v3, 0x0

    .line 164
    .local v3, "result":Le/a/b/c;
    const/4 v4, 0x0

    .line 167
    .local v4, "selectedRoute":Le/L;
    iget-object v5, v1, Le/a/b/f;->d:Le/l;

    monitor-enter v5

    .line 168
    :try_start_0
    iget-boolean v0, v1, Le/a/b/f;->l:Z

    if-nez v0, :cond_12

    .line 169
    iget-object v0, v1, Le/a/b/f;->n:Le/a/c/c;

    if-nez v0, :cond_11

    .line 170
    iget-boolean v0, v1, Le/a/b/f;->m:Z

    if-nez v0, :cond_10

    .line 174
    iget-object v0, v1, Le/a/b/f;->j:Le/a/b/c;

    .line 175
    .local v0, "releasedConnection":Le/j;
    invoke-virtual/range {p0 .. p0}, Le/a/b/f;->g()Ljava/net/Socket;

    move-result-object v6

    .line 176
    .local v6, "toClose":Ljava/net/Socket;
    iget-object v7, v1, Le/a/b/f;->j:Le/a/b/c;

    if-eqz v7, :cond_0

    .line 178
    iget-object v7, v1, Le/a/b/f;->j:Le/a/b/c;

    move-object v3, v7

    .line 179
    const/4 v0, 0x0

    .line 181
    :cond_0
    iget-boolean v7, v1, Le/a/b/f;->k:Z

    if-nez v7, :cond_1

    .line 183
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    .line 181
    :cond_1
    move-object v7, v0

    .line 186
    .end local v0    # "releasedConnection":Le/j;
    .local v7, "releasedConnection":Le/j;
    :goto_0
    if-nez v3, :cond_3

    .line 188
    sget-object v0, Le/a/a;->a:Le/a/a;

    iget-object v8, v1, Le/a/b/f;->d:Le/l;

    iget-object v9, v1, Le/a/b/f;->a:Le/a;

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v1, v10}, Le/a/a;->a(Le/l;Le/a;Le/a/b/f;Le/L;)Le/a/b/c;

    .line 189
    iget-object v0, v1, Le/a/b/f;->j:Le/a/b/c;

    if-eqz v0, :cond_2

    .line 190
    const/4 v2, 0x1

    .line 191
    iget-object v0, v1, Le/a/b/f;->j:Le/a/b/c;

    move-object v3, v0

    .end local v3    # "result":Le/a/b/c;
    .local v0, "result":Le/a/b/c;
    goto :goto_1

    .line 193
    .end local v0    # "result":Le/a/b/c;
    .restart local v3    # "result":Le/a/b/c;
    :cond_2
    iget-object v0, v1, Le/a/b/f;->c:Le/L;

    move-object v4, v0

    .line 196
    :cond_3
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 197
    invoke-static {v6}, Le/a/e;->a(Ljava/net/Socket;)V

    .line 199
    if-eqz v7, :cond_4

    .line 200
    iget-object v0, v1, Le/a/b/f;->f:Le/v;

    iget-object v5, v1, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v5, v7}, Le/v;->b(Le/f;Le/j;)V

    .line 202
    :cond_4
    if-eqz v2, :cond_5

    .line 203
    iget-object v0, v1, Le/a/b/f;->f:Le/v;

    iget-object v5, v1, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v5, v3}, Le/v;->a(Le/f;Le/j;)V

    .line 205
    :cond_5
    if-eqz v3, :cond_6

    .line 207
    return-object v3

    .line 211
    :cond_6
    const/4 v0, 0x0

    .line 212
    .local v0, "newRouteSelection":Z
    if-nez v4, :cond_8

    iget-object v5, v1, Le/a/b/f;->b:Le/a/b/e$a;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Le/a/b/e$a;->b()Z

    move-result v5

    if-nez v5, :cond_8

    .line 213
    :cond_7
    const/4 v0, 0x1

    .line 214
    iget-object v5, v1, Le/a/b/f;->h:Le/a/b/e;

    invoke-virtual {v5}, Le/a/b/e;->c()Le/a/b/e$a;

    move-result-object v5

    iput-object v5, v1, Le/a/b/f;->b:Le/a/b/e$a;

    move v8, v0

    goto :goto_2

    .line 217
    :cond_8
    move v8, v0

    .end local v0    # "newRouteSelection":Z
    .local v8, "newRouteSelection":Z
    :goto_2
    iget-object v9, v1, Le/a/b/f;->d:Le/l;

    monitor-enter v9

    .line 218
    :try_start_1
    iget-boolean v0, v1, Le/a/b/f;->m:Z

    if-nez v0, :cond_f

    .line 220
    if-eqz v8, :cond_a

    .line 223
    iget-object v0, v1, Le/a/b/f;->b:Le/a/b/e$a;

    invoke-virtual {v0}, Le/a/b/e$a;->a()Ljava/util/List;

    move-result-object v0

    .line 224
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Route;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "size":I
    :goto_3
    if-ge v5, v10, :cond_a

    .line 225
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/L;

    .line 226
    .local v11, "route":Le/L;
    sget-object v12, Le/a/a;->a:Le/a/a;

    iget-object v13, v1, Le/a/b/f;->d:Le/l;

    iget-object v14, v1, Le/a/b/f;->a:Le/a;

    invoke-virtual {v12, v13, v14, v1, v11}, Le/a/a;->a(Le/l;Le/a;Le/a/b/f;Le/L;)Le/a/b/c;

    .line 227
    iget-object v12, v1, Le/a/b/f;->j:Le/a/b/c;

    if-eqz v12, :cond_9

    .line 228
    const/4 v2, 0x1

    .line 229
    iget-object v12, v1, Le/a/b/f;->j:Le/a/b/c;

    move-object v3, v12

    .line 230
    iput-object v11, v1, Le/a/b/f;->c:Le/L;

    .line 231
    goto :goto_4

    .line 224
    .end local v11    # "route":Le/L;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 236
    .end local v0    # "routes":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Route;>;"
    .end local v5    # "i":I
    .end local v10    # "size":I
    :cond_a
    :goto_4
    if-nez v2, :cond_c

    .line 237
    if-nez v4, :cond_b

    .line 238
    iget-object v0, v1, Le/a/b/f;->b:Le/a/b/e$a;

    invoke-virtual {v0}, Le/a/b/e$a;->c()Le/L;

    move-result-object v0

    move-object v4, v0

    .line 243
    :cond_b
    iput-object v4, v1, Le/a/b/f;->c:Le/L;

    .line 244
    const/4 v0, 0x0

    iput v0, v1, Le/a/b/f;->i:I

    .line 245
    new-instance v5, Le/a/b/c;

    iget-object v10, v1, Le/a/b/f;->d:Le/l;

    invoke-direct {v5, v10, v4}, Le/a/b/c;-><init>(Le/l;Le/L;)V

    move-object v3, v5

    .line 246
    invoke-virtual {v1, v3, v0}, Le/a/b/f;->a(Le/a/b/c;Z)V

    .line 248
    :cond_c
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    if-eqz v2, :cond_d

    .line 252
    iget-object v0, v1, Le/a/b/f;->f:Le/v;

    iget-object v5, v1, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v5, v3}, Le/v;->a(Le/f;Le/j;)V

    .line 253
    return-object v3

    .line 257
    :cond_d
    iget-object v0, v1, Le/a/b/f;->e:Le/f;

    iget-object v5, v1, Le/a/b/f;->f:Le/v;

    move-object v10, v3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    invoke-virtual/range {v10 .. v17}, Le/a/b/c;->a(IIIIZLe/f;Le/v;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Le/a/b/f;->i()Le/a/b/d;

    move-result-object v0

    invoke-virtual {v3}, Le/a/b/c;->e()Le/L;

    move-result-object v5

    invoke-virtual {v0, v5}, Le/a/b/d;->a(Le/L;)V

    .line 261
    const/4 v5, 0x0

    .line 262
    .local v5, "socket":Ljava/net/Socket;
    iget-object v10, v1, Le/a/b/f;->d:Le/l;

    monitor-enter v10

    .line 263
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, v1, Le/a/b/f;->k:Z

    .line 266
    sget-object v0, Le/a/a;->a:Le/a/a;

    iget-object v9, v1, Le/a/b/f;->d:Le/l;

    invoke-virtual {v0, v9, v3}, Le/a/a;->b(Le/l;Le/a/b/c;)V

    .line 270
    invoke-virtual {v3}, Le/a/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 271
    sget-object v0, Le/a/a;->a:Le/a/a;

    iget-object v9, v1, Le/a/b/f;->d:Le/l;

    iget-object v11, v1, Le/a/b/f;->a:Le/a;

    invoke-virtual {v0, v9, v11, v1}, Le/a/a;->a(Le/l;Le/a;Le/a/b/f;)Ljava/net/Socket;

    move-result-object v0

    move-object v5, v0

    .line 272
    iget-object v0, v1, Le/a/b/f;->j:Le/a/b/c;

    move-object v3, v0

    .line 274
    :cond_e
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    invoke-static {v5}, Le/a/e;->a(Ljava/net/Socket;)V

    .line 277
    iget-object v0, v1, Le/a/b/f;->f:Le/v;

    iget-object v9, v1, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v9, v3}, Le/v;->a(Le/f;Le/j;)V

    .line 278
    return-object v3

    .line 274
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 218
    .end local v5    # "socket":Ljava/net/Socket;
    :cond_f
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "foundPooledConnection":Z
    .end local v3    # "result":Le/a/b/c;
    .end local v4    # "selectedRoute":Le/L;
    .end local v6    # "toClose":Ljava/net/Socket;
    .end local v7    # "releasedConnection":Le/j;
    .end local v8    # "newRouteSelection":Z
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "pingIntervalMillis":I
    .end local p5    # "connectionRetryEnabled":Z
    throw v0

    .line 248
    .restart local v2    # "foundPooledConnection":Z
    .restart local v3    # "result":Le/a/b/c;
    .restart local v4    # "selectedRoute":Le/L;
    .restart local v6    # "toClose":Ljava/net/Socket;
    .restart local v7    # "releasedConnection":Le/j;
    .restart local v8    # "newRouteSelection":Z
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "pingIntervalMillis":I
    .restart local p5    # "connectionRetryEnabled":Z
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 170
    .end local v6    # "toClose":Ljava/net/Socket;
    .end local v7    # "releasedConnection":Le/j;
    .end local v8    # "newRouteSelection":Z
    :cond_10
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Canceled"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "foundPooledConnection":Z
    .end local v3    # "result":Le/a/b/c;
    .end local v4    # "selectedRoute":Le/L;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "pingIntervalMillis":I
    .end local p5    # "connectionRetryEnabled":Z
    throw v0

    .line 169
    .restart local v2    # "foundPooledConnection":Z
    .restart local v3    # "result":Le/a/b/c;
    .restart local v4    # "selectedRoute":Le/L;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "pingIntervalMillis":I
    .restart local p5    # "connectionRetryEnabled":Z
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "codec != null"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "foundPooledConnection":Z
    .end local v3    # "result":Le/a/b/c;
    .end local v4    # "selectedRoute":Le/L;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "pingIntervalMillis":I
    .end local p5    # "connectionRetryEnabled":Z
    throw v0

    .line 168
    .restart local v2    # "foundPooledConnection":Z
    .restart local v3    # "result":Le/a/b/c;
    .restart local v4    # "selectedRoute":Le/L;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "pingIntervalMillis":I
    .restart local p5    # "connectionRetryEnabled":Z
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "released"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "foundPooledConnection":Z
    .end local v3    # "result":Le/a/b/c;
    .end local v4    # "selectedRoute":Le/L;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "pingIntervalMillis":I
    .end local p5    # "connectionRetryEnabled":Z
    throw v0

    .line 196
    .restart local v2    # "foundPooledConnection":Z
    .restart local v3    # "result":Le/a/b/c;
    .restart local v4    # "selectedRoute":Le/L;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "pingIntervalMillis":I
    .restart local p5    # "connectionRetryEnabled":Z
    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final a(IIIIZZ)Le/a/b/c;
    .locals 3
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .param p6, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    :goto_0
    invoke-virtual/range {p0 .. p5}, Le/a/b/f;->a(IIIIZ)Le/a/b/c;

    move-result-object v0

    .line 139
    .local v0, "candidate":Le/a/b/c;
    iget-object v1, p0, Le/a/b/f;->d:Le/l;

    monitor-enter v1

    .line 140
    :try_start_0
    iget v2, v0, Le/a/b/c;->l:I

    if-nez v2, :cond_0

    .line 141
    monitor-exit v1

    return-object v0

    .line 143
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {v0, p6}, Le/a/b/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    invoke-virtual {p0}, Le/a/b/f;->e()V

    .line 149
    goto :goto_0

    .line 152
    :cond_1
    return-object v0

    .line 143
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public a(Le/C;Le/z$a;Z)Le/a/c/c;
    .locals 14
    .param p1, "client"    # Le/C;
    .param p2, "chain"    # Le/z$a;
    .param p3, "doExtensiveHealthChecks"    # Z

    .line 107
    move-object v8, p0

    move-object/from16 v0, p2

    check-cast v0, Le/a/c/h;

    invoke-virtual {v0}, Le/a/c/h;->b()I

    move-result v9

    .line 108
    .local v9, "connectTimeout":I
    invoke-virtual {v0}, Le/a/c/h;->f()I

    move-result v10

    .line 109
    .local v10, "readTimeout":I
    invoke-virtual {v0}, Le/a/c/h;->i()I

    move-result v11

    .line 110
    .local v11, "writeTimeout":I
    invoke-virtual {p1}, Le/C;->q()I

    move-result v12

    .line 111
    .local v12, "pingIntervalMillis":I
    invoke-virtual {p1}, Le/C;->w()Z

    move-result v13

    .line 114
    .local v13, "connectionRetryEnabled":Z
    move-object v1, p0

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move/from16 v7, p3

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Le/a/b/f;->a(IIIIZZ)Le/a/b/c;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    .local v1, "resultConnection":Le/a/b/c;
    move-object v2, p1

    :try_start_1
    invoke-virtual {v1, p1, v0, p0}, Le/a/b/c;->a(Le/C;Le/z$a;Le/a/b/f;)Le/a/c/c;

    move-result-object v0

    move-object v3, v0

    .line 118
    .local v3, "resultCodec":Le/a/c/c;
    iget-object v4, v8, Le/a/b/f;->d:Le/l;

    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :try_start_2
    iput-object v3, v8, Le/a/b/f;->n:Le/a/c/c;

    .line 120
    monitor-exit v4

    return-object v3

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v9    # "connectTimeout":I
    .end local v10    # "readTimeout":I
    .end local v11    # "writeTimeout":I
    .end local v12    # "pingIntervalMillis":I
    .end local v13    # "connectionRetryEnabled":Z
    .end local p1    # "client":Le/C;
    .end local p2    # "chain":Le/z$a;
    .end local p3    # "doExtensiveHealthChecks":Z
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 122
    .end local v1    # "resultConnection":Le/a/b/c;
    .end local v3    # "resultCodec":Le/a/c/c;
    .restart local v9    # "connectTimeout":I
    .restart local v10    # "readTimeout":I
    .restart local v11    # "writeTimeout":I
    .restart local v12    # "pingIntervalMillis":I
    .restart local v13    # "connectionRetryEnabled":Z
    .restart local p1    # "client":Le/C;
    .restart local p2    # "chain":Le/z$a;
    .restart local p3    # "doExtensiveHealthChecks":Z
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, p1

    .line 123
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final a(ZZZ)Ljava/net/Socket;
    .locals 5
    .param p1, "noNewStreams"    # Z
    .param p2, "released"    # Z
    .param p3, "streamFinished"    # Z

    .line 385
    nop

    .line 387
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 388
    iput-object v0, p0, Le/a/b/f;->n:Le/a/c/c;

    .line 390
    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 391
    iput-boolean v1, p0, Le/a/b/f;->l:Z

    .line 393
    :cond_1
    const/4 v2, 0x0

    .line 394
    .local v2, "socket":Ljava/net/Socket;
    iget-object v3, p0, Le/a/b/f;->j:Le/a/b/c;

    if-eqz v3, :cond_5

    .line 395
    if-eqz p1, :cond_2

    .line 396
    iput-boolean v1, v3, Le/a/b/c;->k:Z

    .line 398
    :cond_2
    iget-object v1, p0, Le/a/b/f;->n:Le/a/c/c;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Le/a/b/f;->l:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Le/a/b/f;->j:Le/a/b/c;

    iget-boolean v1, v1, Le/a/b/c;->k:Z

    if-eqz v1, :cond_5

    .line 399
    :cond_3
    iget-object v1, p0, Le/a/b/f;->j:Le/a/b/c;

    invoke-virtual {p0, v1}, Le/a/b/f;->a(Le/a/b/c;)V

    .line 400
    iget-object v1, p0, Le/a/b/f;->j:Le/a/b/c;

    iget-object v1, v1, Le/a/b/c;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 401
    iget-object v1, p0, Le/a/b/f;->j:Le/a/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v1, Le/a/b/c;->o:J

    .line 402
    sget-object v1, Le/a/a;->a:Le/a/a;

    iget-object v3, p0, Le/a/b/f;->d:Le/l;

    iget-object v4, p0, Le/a/b/f;->j:Le/a/b/c;

    invoke-virtual {v1, v3, v4}, Le/a/a;->a(Le/l;Le/a/b/c;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 403
    iget-object v1, p0, Le/a/b/f;->j:Le/a/b/c;

    invoke-virtual {v1}, Le/a/b/c;->f()Ljava/net/Socket;

    move-result-object v1

    move-object v2, v1

    .line 406
    :cond_4
    iput-object v0, p0, Le/a/b/f;->j:Le/a/b/c;

    .line 409
    :cond_5
    return-object v2
.end method

.method public a()V
    .locals 3

    .line 415
    iget-object v0, p0, Le/a/b/f;->d:Le/l;

    monitor-enter v0

    .line 416
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Le/a/b/f;->m:Z

    .line 417
    iget-object v1, p0, Le/a/b/f;->n:Le/a/c/c;

    .line 418
    .local v1, "codecToCancel":Le/a/c/c;
    iget-object v2, p0, Le/a/b/f;->j:Le/a/b/c;

    .line 419
    .local v2, "connectionToCancel":Le/a/b/c;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    if-eqz v1, :cond_0

    .line 421
    invoke-interface {v1}, Le/a/c/c;->cancel()V

    goto :goto_0

    .line 422
    :cond_0
    if-eqz v2, :cond_1

    .line 423
    invoke-virtual {v2}, Le/a/b/c;->a()V

    .line 425
    :cond_1
    :goto_0
    return-void

    .line 419
    .end local v1    # "codecToCancel":Le/a/c/c;
    .end local v2    # "connectionToCancel":Le/a/b/c;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Le/a/b/c;)V
    .locals 4
    .param p1, "connection"    # Le/a/b/c;

    .line 485
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Le/a/b/c;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 486
    iget-object v2, p1, Le/a/b/c;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 487
    .local v2, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 488
    iget-object v3, p1, Le/a/b/c;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 489
    return-void

    .line 485
    .end local v2    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Le/a/b/c;Z)V
    .locals 3
    .param p1, "connection"    # Le/a/b/c;
    .param p2, "reportedAcquired"    # Z

    .line 475
    nop

    .line 476
    iget-object v0, p0, Le/a/b/f;->j:Le/a/b/c;

    if-nez v0, :cond_0

    .line 478
    iput-object p1, p0, Le/a/b/f;->j:Le/a/b/c;

    .line 479
    iput-boolean p2, p0, Le/a/b/f;->k:Z

    .line 480
    iget-object v0, p1, Le/a/b/c;->n:Ljava/util/List;

    new-instance v1, Le/a/b/f$a;

    iget-object v2, p0, Le/a/b/f;->g:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Le/a/b/f$a;-><init>(Le/a/b/f;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    return-void

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Ljava/io/IOException;)V
    .locals 6
    .param p1, "e"    # Ljava/io/IOException;

    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "noNewStreams":Z
    iget-object v1, p0, Le/a/b/f;->d:Le/l;

    monitor-enter v1

    .line 433
    :try_start_0
    instance-of v2, p1, Lokhttp3/internal/http2/StreamResetException;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 434
    move-object v2, p1

    check-cast v2, Lokhttp3/internal/http2/StreamResetException;

    iget-object v2, v2, Lokhttp3/internal/http2/StreamResetException;->a:Lokhttp3/internal/http2/ErrorCode;

    .line 435
    .local v2, "errorCode":Lokhttp3/internal/http2/ErrorCode;
    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->e:Lokhttp3/internal/http2/ErrorCode;

    if-ne v2, v5, :cond_0

    .line 437
    iget v5, p0, Le/a/b/f;->i:I

    add-int/2addr v5, v4

    iput v5, p0, Le/a/b/f;->i:I

    .line 438
    iget v5, p0, Le/a/b/f;->i:I

    if-le v5, v4, :cond_1

    .line 439
    const/4 v0, 0x1

    .line 440
    iput-object v3, p0, Le/a/b/f;->c:Le/L;

    goto :goto_0

    .line 442
    :cond_0
    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->f:Lokhttp3/internal/http2/ErrorCode;

    if-eq v2, v5, :cond_1

    .line 444
    const/4 v0, 0x1

    .line 445
    iput-object v3, p0, Le/a/b/f;->c:Le/L;

    .line 447
    .end local v2    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    iget-object v2, p0, Le/a/b/f;->j:Le/a/b/c;

    if-eqz v2, :cond_1

    iget-object v2, p0, Le/a/b/f;->j:Le/a/b/c;

    .line 448
    invoke-virtual {v2}, Le/a/b/c;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v2, :cond_5

    .line 449
    :cond_3
    const/4 v0, 0x1

    .line 452
    iget-object v2, p0, Le/a/b/f;->j:Le/a/b/c;

    iget v2, v2, Le/a/b/c;->l:I

    if-nez v2, :cond_5

    .line 453
    iget-object v2, p0, Le/a/b/f;->c:Le/L;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 454
    iget-object v2, p0, Le/a/b/f;->h:Le/a/b/e;

    iget-object v5, p0, Le/a/b/f;->c:Le/L;

    invoke-virtual {v2, v5, p1}, Le/a/b/e;->a(Le/L;Ljava/io/IOException;)V

    .line 456
    :cond_4
    iput-object v3, p0, Le/a/b/f;->c:Le/L;

    .line 459
    :cond_5
    :goto_1
    iget-object v2, p0, Le/a/b/f;->j:Le/a/b/c;

    .line 460
    .local v2, "releasedConnection":Le/j;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v4}, Le/a/b/f;->a(ZZZ)Ljava/net/Socket;

    move-result-object v3

    .line 461
    .local v3, "socket":Ljava/net/Socket;
    iget-object v4, p0, Le/a/b/f;->j:Le/a/b/c;

    if-nez v4, :cond_6

    iget-boolean v4, p0, Le/a/b/f;->k:Z

    if-nez v4, :cond_7

    :cond_6
    const/4 v2, 0x0

    .line 462
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-static {v3}, Le/a/e;->a(Ljava/net/Socket;)V

    .line 465
    if-eqz v2, :cond_8

    .line 466
    iget-object v1, p0, Le/a/b/f;->f:Le/v;

    iget-object v4, p0, Le/a/b/f;->e:Le/f;

    invoke-virtual {v1, v4, v2}, Le/v;->b(Le/f;Le/j;)V

    .line 468
    :cond_8
    return-void

    .line 462
    .end local v2    # "releasedConnection":Le/j;
    .end local v3    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public a(ZLe/a/c/c;JLjava/io/IOException;)V
    .locals 6
    .param p1, "noNewStreams"    # Z
    .param p2, "codec"    # Le/a/c/c;
    .param p3, "bytesRead"    # J
    .param p5, "e"    # Ljava/io/IOException;

    .line 297
    iget-object v0, p0, Le/a/b/f;->f:Le/v;

    iget-object v1, p0, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v1, p3, p4}, Le/v;->b(Le/f;J)V

    .line 302
    iget-object v0, p0, Le/a/b/f;->d:Le/l;

    monitor-enter v0

    .line 303
    if-eqz p2, :cond_5

    :try_start_0
    iget-object v1, p0, Le/a/b/f;->n:Le/a/c/c;

    if-ne p2, v1, :cond_5

    .line 306
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 307
    iget-object v2, p0, Le/a/b/f;->j:Le/a/b/c;

    iget v3, v2, Le/a/b/c;->l:I

    add-int/2addr v3, v1

    iput v3, v2, Le/a/b/c;->l:I

    .line 309
    :cond_0
    iget-object v2, p0, Le/a/b/f;->j:Le/a/b/c;

    .line 310
    .local v2, "releasedConnection":Le/j;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v1}, Le/a/b/f;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 311
    .local v1, "socket":Ljava/net/Socket;
    iget-object v3, p0, Le/a/b/f;->j:Le/a/b/c;

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 312
    :cond_1
    iget-boolean v3, p0, Le/a/b/f;->l:Z

    .line 313
    .local v3, "callEnd":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-static {v1}, Le/a/e;->a(Ljava/net/Socket;)V

    .line 315
    if-eqz v2, :cond_2

    .line 316
    iget-object v0, p0, Le/a/b/f;->f:Le/v;

    iget-object v4, p0, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v4, v2}, Le/v;->b(Le/f;Le/j;)V

    .line 319
    :cond_2
    if-eqz p5, :cond_3

    .line 320
    sget-object v0, Le/a/a;->a:Le/a/a;

    iget-object v4, p0, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v4, p5}, Le/a/a;->a(Le/f;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p5

    .line 321
    iget-object v0, p0, Le/a/b/f;->f:Le/v;

    iget-object v4, p0, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v4, p5}, Le/v;->a(Le/f;Ljava/io/IOException;)V

    goto :goto_0

    .line 322
    :cond_3
    if-eqz v3, :cond_4

    .line 323
    sget-object v0, Le/a/a;->a:Le/a/a;

    iget-object v4, p0, Le/a/b/f;->e:Le/f;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Le/a/a;->a(Le/f;Ljava/io/IOException;)Ljava/io/IOException;

    .line 324
    iget-object v0, p0, Le/a/b/f;->f:Le/v;

    iget-object v4, p0, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v4}, Le/v;->a(Le/f;)V

    .line 326
    :cond_4
    :goto_0
    return-void

    .line 304
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v2    # "releasedConnection":Le/j;
    .end local v3    # "callEnd":Z
    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/b/f;->n:Le/a/c/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "noNewStreams":Z
    .end local p2    # "codec":Le/a/c/c;
    .end local p3    # "bytesRead":J
    .end local p5    # "e":Ljava/io/IOException;
    throw v1

    .line 313
    .restart local p1    # "noNewStreams":Z
    .restart local p2    # "codec":Le/a/c/c;
    .restart local p3    # "bytesRead":J
    .restart local p5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b()Le/a/c/c;
    .locals 2

    .line 329
    iget-object v0, p0, Le/a/b/f;->d:Le/l;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Le/a/b/f;->n:Le/a/c/c;

    monitor-exit v0

    return-object v1

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Le/a/b/c;)Ljava/net/Socket;
    .locals 3
    .param p1, "newConnection"    # Le/a/b/c;

    .line 504
    nop

    .line 505
    iget-object v0, p0, Le/a/b/f;->n:Le/a/c/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/f;->j:Le/a/b/c;

    iget-object v0, v0, Le/a/b/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 508
    iget-object v0, p0, Le/a/b/f;->j:Le/a/b/c;

    iget-object v0, v0, Le/a/b/c;->n:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 509
    .local v0, "onlyAllocation":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    invoke-virtual {p0, v1, v2, v2}, Le/a/b/f;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 512
    .local v1, "socket":Ljava/net/Socket;
    iput-object p1, p0, Le/a/b/f;->j:Le/a/b/c;

    .line 513
    iget-object v2, p1, Le/a/b/c;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    return-object v1

    .line 505
    .end local v0    # "onlyAllocation":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    .end local v1    # "socket":Ljava/net/Socket;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public declared-synchronized c()Le/a/b/c;
    .locals 1

    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Le/a/b/f;->j:Le/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Le/a/b/f;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .locals 1

    .line 519
    iget-object v0, p0, Le/a/b/f;->c:Le/L;

    if-nez v0, :cond_2

    iget-object v0, p0, Le/a/b/f;->b:Le/a/b/e$a;

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Le/a/b/e$a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Le/a/b/f;->h:Le/a/b/e;

    .line 521
    invoke-virtual {v0}, Le/a/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 519
    :goto_1
    return v0
.end method

.method public e()V
    .locals 4

    .line 366
    iget-object v0, p0, Le/a/b/f;->d:Le/l;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Le/a/b/f;->j:Le/a/b/c;

    .line 368
    .local v1, "releasedConnection":Le/j;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Le/a/b/f;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 369
    .local v2, "socket":Ljava/net/Socket;
    iget-object v3, p0, Le/a/b/f;->j:Le/a/b/c;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 370
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-static {v2}, Le/a/e;->a(Ljava/net/Socket;)V

    .line 372
    if-eqz v1, :cond_1

    .line 373
    iget-object v0, p0, Le/a/b/f;->f:Le/v;

    iget-object v3, p0, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v3, v1}, Le/v;->b(Le/f;Le/j;)V

    .line 375
    :cond_1
    return-void

    .line 370
    .end local v1    # "releasedConnection":Le/j;
    .end local v2    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 5

    .line 349
    iget-object v0, p0, Le/a/b/f;->d:Le/l;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-object v1, p0, Le/a/b/f;->j:Le/a/b/c;

    .line 351
    .local v1, "releasedConnection":Le/j;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3}, Le/a/b/f;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 352
    .local v2, "socket":Ljava/net/Socket;
    iget-object v3, p0, Le/a/b/f;->j:Le/a/b/c;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 353
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-static {v2}, Le/a/e;->a(Ljava/net/Socket;)V

    .line 355
    if-eqz v1, :cond_1

    .line 356
    sget-object v0, Le/a/a;->a:Le/a/a;

    iget-object v3, p0, Le/a/b/f;->e:Le/f;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Le/a/a;->a(Le/f;Ljava/io/IOException;)Ljava/io/IOException;

    .line 357
    iget-object v0, p0, Le/a/b/f;->f:Le/v;

    iget-object v3, p0, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v3, v1}, Le/v;->b(Le/f;Le/j;)V

    .line 358
    iget-object v0, p0, Le/a/b/f;->f:Le/v;

    iget-object v3, p0, Le/a/b/f;->e:Le/f;

    invoke-virtual {v0, v3}, Le/v;->a(Le/f;)V

    .line 360
    :cond_1
    return-void

    .line 353
    .end local v1    # "releasedConnection":Le/j;
    .end local v2    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final g()Ljava/net/Socket;
    .locals 3

    .line 288
    nop

    .line 289
    iget-object v0, p0, Le/a/b/f;->j:Le/a/b/c;

    .line 290
    .local v0, "allocatedConnection":Le/a/b/c;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Le/a/b/c;->k:Z

    if-eqz v1, :cond_0

    .line 291
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1}, Le/a/b/f;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    return-object v1

    .line 293
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public h()Le/L;
    .locals 1

    .line 339
    iget-object v0, p0, Le/a/b/f;->c:Le/L;

    return-object v0
.end method

.method public final i()Le/a/b/d;
    .locals 2

    .line 335
    sget-object v0, Le/a/a;->a:Le/a/a;

    iget-object v1, p0, Le/a/b/f;->d:Le/l;

    invoke-virtual {v0, v1}, Le/a/a;->a(Le/l;)Le/a/b/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 525
    invoke-virtual {p0}, Le/a/b/f;->c()Le/a/b/c;

    move-result-object v0

    .line 526
    .local v0, "connection":Le/a/b/c;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/a/b/f;->a:Le/a;

    invoke-virtual {v1}, Le/a;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
