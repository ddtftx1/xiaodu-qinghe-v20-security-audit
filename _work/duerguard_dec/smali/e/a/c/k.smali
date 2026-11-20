.class public final Le/a/c/k;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Le/z;


# instance fields
.field public final a:Le/C;

.field public volatile b:Le/a/b/f;

.field public c:Ljava/lang/Object;

.field public volatile d:Z


# direct methods
.method public constructor <init>(Le/C;Z)V
    .locals 0
    .param p1, "client"    # Le/C;
    .param p2, "forWebSocket"    # Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Le/a/c/k;->a:Le/C;

    .line 75
    nop

    .line 76
    return-void
.end method


# virtual methods
.method public final a(Le/I;I)I
    .locals 2
    .param p1, "userResponse"    # Le/I;
    .param p2, "defaultDelay"    # I

    .line 391
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Le/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "header":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 394
    return p2

    .line 399
    :cond_0
    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 403
    :cond_1
    const v1, 0x7fffffff

    return v1
.end method

.method public final a(Le/I;Le/L;)Le/F;
    .locals 10
    .param p1, "userResponse"    # Le/I;
    .param p2, "route"    # Le/L;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    if-eqz p1, :cond_15

    .line 278
    invoke-virtual {p1}, Le/I;->k()I

    move-result v0

    .line 280
    .local v0, "responseCode":I
    invoke-virtual {p1}, Le/I;->r()Le/F;

    move-result-object v1

    invoke-virtual {v1}, Le/F;->e()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "method":Ljava/lang/String;
    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_b

    const/16 v2, 0x134

    if-eq v0, v2, :cond_b

    const/16 v2, 0x191

    if-eq v0, v2, :cond_a

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_7

    const/16 v2, 0x197

    if-eq v0, v2, :cond_4

    const/16 v2, 0x198

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 386
    return-object v4

    .line 350
    :cond_0
    iget-object v3, p0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v3}, Le/C;->w()Z

    move-result v3

    if-nez v3, :cond_1

    .line 352
    return-object v4

    .line 355
    :cond_1
    invoke-virtual {p1}, Le/I;->r()Le/F;

    move-result-object v3

    invoke-virtual {v3}, Le/F;->a()Le/H;

    .line 359
    invoke-virtual {p1}, Le/I;->p()Le/I;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 360
    invoke-virtual {p1}, Le/I;->p()Le/I;

    move-result-object v3

    invoke-virtual {v3}, Le/I;->k()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 362
    return-object v4

    .line 365
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Le/a/c/k;->a(Le/I;I)I

    move-result v2

    if-lez v2, :cond_3

    .line 366
    return-object v4

    .line 369
    :cond_3
    invoke-virtual {p1}, Le/I;->r()Le/F;

    move-result-object v2

    return-object v2

    .line 283
    :cond_4
    if-eqz p2, :cond_5

    .line 284
    invoke-virtual {p2}, Le/L;->b()Ljava/net/Proxy;

    move-result-object v2

    goto :goto_0

    .line 285
    :cond_5
    iget-object v2, p0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v2}, Le/C;->s()Ljava/net/Proxy;

    move-result-object v2

    :goto_0
    nop

    .line 286
    .local v2, "selectedProxy":Ljava/net/Proxy;
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v5, :cond_6

    .line 289
    iget-object v3, p0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v3}, Le/C;->t()Le/c;

    move-result-object v3

    check-cast v3, Le/b;

    invoke-virtual {v3, p2, p1}, Le/b;->a(Le/L;Le/I;)Le/F;

    return-object v4

    .line 287
    :cond_6
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    .end local v2    # "selectedProxy":Ljava/net/Proxy;
    :cond_7
    invoke-virtual {p1}, Le/I;->p()Le/I;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 373
    invoke-virtual {p1}, Le/I;->p()Le/I;

    move-result-object v3

    invoke-virtual {v3}, Le/I;->k()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 375
    return-object v4

    .line 378
    :cond_8
    const v2, 0x7fffffff

    invoke-virtual {p0, p1, v2}, Le/a/c/k;->a(Le/I;I)I

    move-result v2

    if-nez v2, :cond_9

    .line 380
    invoke-virtual {p1}, Le/I;->r()Le/F;

    move-result-object v2

    return-object v2

    .line 383
    :cond_9
    return-object v4

    .line 292
    :cond_a
    iget-object v2, p0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v2}, Le/C;->a()Le/c;

    move-result-object v2

    check-cast v2, Le/b;

    invoke-virtual {v2, p2, p1}, Le/b;->a(Le/L;Le/I;)Le/F;

    return-object v4

    .line 298
    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 299
    return-object v4

    .line 307
    :cond_c
    :pswitch_0
    iget-object v2, p0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v2}, Le/C;->k()Z

    move-result v2

    if-nez v2, :cond_d

    return-object v4

    .line 309
    :cond_d
    const-string v2, "Location"

    invoke-virtual {p1, v2}, Le/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "location":Ljava/lang/String;
    if-nez v2, :cond_e

    return-object v4

    .line 311
    :cond_e
    invoke-virtual {p1}, Le/I;->r()Le/F;

    move-result-object v5

    invoke-virtual {v5}, Le/F;->g()Le/y;

    move-result-object v5

    invoke-virtual {v5, v2}, Le/y;->e(Ljava/lang/String;)Le/y;

    move-result-object v5

    .line 314
    .local v5, "url":Le/y;
    if-nez v5, :cond_f

    return-object v4

    .line 317
    :cond_f
    invoke-virtual {v5}, Le/y;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Le/I;->r()Le/F;

    move-result-object v7

    invoke-virtual {v7}, Le/F;->g()Le/y;

    move-result-object v7

    invoke-virtual {v7}, Le/y;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 318
    .local v6, "sameScheme":Z
    if-nez v6, :cond_10

    iget-object v7, p0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v7}, Le/C;->l()Z

    move-result v7

    if-nez v7, :cond_10

    return-object v4

    .line 321
    :cond_10
    invoke-virtual {p1}, Le/I;->r()Le/F;

    move-result-object v7

    invoke-virtual {v7}, Le/F;->f()Le/F$a;

    move-result-object v7

    .line 322
    .local v7, "requestBuilder":Le/F$a;
    invoke-static {v1}, Le/a/c/g;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 323
    invoke-static {v1}, Le/a/c/g;->c(Ljava/lang/String;)Z

    move-result v8

    .line 324
    .local v8, "maintainBody":Z
    invoke-static {v1}, Le/a/c/g;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 325
    invoke-virtual {v7, v3, v4}, Le/F$a;->a(Ljava/lang/String;Le/H;)Le/F$a;

    goto :goto_1

    .line 327
    :cond_11
    if-eqz v8, :cond_12

    invoke-virtual {p1}, Le/I;->r()Le/F;

    move-result-object v3

    invoke-virtual {v3}, Le/F;->a()Le/H;

    move-result-object v4

    :cond_12
    move-object v3, v4

    .line 328
    .local v3, "requestBody":Le/H;
    invoke-virtual {v7, v1, v3}, Le/F$a;->a(Ljava/lang/String;Le/H;)Le/F$a;

    .line 330
    .end local v3    # "requestBody":Le/H;
    :goto_1
    if-nez v8, :cond_13

    .line 331
    const-string v3, "Transfer-Encoding"

    invoke-virtual {v7, v3}, Le/F$a;->a(Ljava/lang/String;)Le/F$a;

    .line 332
    const-string v3, "Content-Length"

    invoke-virtual {v7, v3}, Le/F$a;->a(Ljava/lang/String;)Le/F$a;

    .line 333
    const-string v3, "Content-Type"

    invoke-virtual {v7, v3}, Le/F$a;->a(Ljava/lang/String;)Le/F$a;

    .line 340
    .end local v8    # "maintainBody":Z
    :cond_13
    invoke-virtual {p0, p1, v5}, Le/a/c/k;->a(Le/I;Le/y;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 341
    const-string v3, "Authorization"

    invoke-virtual {v7, v3}, Le/F$a;->a(Ljava/lang/String;)Le/F$a;

    .line 344
    :cond_14
    invoke-virtual {v7, v5}, Le/F$a;->a(Le/y;)Le/F$a;

    invoke-virtual {v7}, Le/F$a;->a()Le/F;

    move-result-object v3

    return-object v3

    .line 277
    .end local v0    # "responseCode":I
    .end local v1    # "method":Ljava/lang/String;
    .end local v2    # "location":Ljava/lang/String;
    .end local v5    # "url":Le/y;
    .end local v6    # "sameScheme":Z
    .end local v7    # "requestBuilder":Le/F$a;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Le/z$a;)Le/I;
    .locals 19
    .param p1, "chain"    # Le/z$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    check-cast v0, Le/a/c/h;

    invoke-virtual {v0}, Le/a/c/h;->g()Le/F;

    move-result-object v2

    .line 107
    .local v2, "request":Le/F;
    move-object v3, v0

    .line 108
    .local v3, "realChain":Le/a/c/h;
    invoke-virtual {v3}, Le/a/c/h;->a()Le/f;

    move-result-object v10

    .line 109
    .local v10, "call":Le/f;
    invoke-virtual {v3}, Le/a/c/h;->d()Le/v;

    move-result-object v11

    .line 111
    .local v11, "eventListener":Le/v;
    new-instance v0, Le/a/b/f;

    iget-object v4, v1, Le/a/c/k;->a:Le/C;

    invoke-virtual {v4}, Le/C;->e()Le/l;

    move-result-object v5

    .line 112
    invoke-virtual {v2}, Le/F;->g()Le/y;

    move-result-object v4

    invoke-virtual {v1, v4}, Le/a/c/k;->a(Le/y;)Le/a;

    move-result-object v6

    iget-object v9, v1, Le/a/c/k;->c:Ljava/lang/Object;

    move-object v4, v0

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v4 .. v9}, Le/a/b/f;-><init>(Le/l;Le/a;Le/f;Le/v;Ljava/lang/Object;)V

    .line 113
    .local v0, "streamAllocation":Le/a/b/f;
    iput-object v0, v1, Le/a/c/k;->b:Le/a/b/f;

    .line 115
    const/4 v4, 0x0

    .line 116
    .local v4, "followUpCount":I
    const/4 v5, 0x0

    move-object v12, v2

    move-object v13, v5

    move-object v2, v0

    .line 118
    .end local v0    # "streamAllocation":Le/a/b/f;
    .local v2, "streamAllocation":Le/a/b/f;
    .local v12, "request":Le/F;
    .local v13, "priorResponse":Le/I;
    :goto_0
    iget-boolean v0, v1, Le/a/c/k;->d:Z

    if-nez v0, :cond_b

    .line 124
    const/4 v5, 0x1

    .line 126
    .local v5, "releaseConnection":Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v3, v12, v2, v7, v7}, Le/a/c/h;->a(Le/F;Le/a/b/f;Le/a/c/c;Le/a/b/c;)Le/I;

    move-result-object v0
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .local v0, "response":Le/I;
    const/4 v14, 0x0

    .line 143
    .end local v5    # "releaseConnection":Z
    .local v14, "releaseConnection":Z
    if-eqz v14, :cond_0

    .line 144
    invoke-virtual {v2, v7}, Le/a/b/f;->a(Ljava/io/IOException;)V

    .line 145
    invoke-virtual {v2}, Le/a/b/f;->f()V

    .line 150
    :cond_0
    if-eqz v13, :cond_1

    .line 151
    invoke-virtual {v0}, Le/I;->o()Le/I$a;

    move-result-object v5

    .line 152
    invoke-virtual {v13}, Le/I;->o()Le/I$a;

    move-result-object v6

    .line 153
    invoke-virtual {v6, v7}, Le/I$a;->a(Le/K;)Le/I$a;

    .line 154
    invoke-virtual {v6}, Le/I$a;->a()Le/I;

    move-result-object v6

    .line 152
    invoke-virtual {v5, v6}, Le/I$a;->d(Le/I;)Le/I$a;

    .line 155
    invoke-virtual {v5}, Le/I$a;->a()Le/I;

    move-result-object v0

    move-object v15, v0

    goto :goto_1

    .line 150
    :cond_1
    move-object v15, v0

    .line 160
    .end local v0    # "response":Le/I;
    .local v15, "response":Le/I;
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Le/a/b/f;->h()Le/L;

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Le/a/c/k;->a(Le/I;Le/L;)Le/F;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    .local v0, "followUp":Le/F;
    nop

    .line 166
    if-nez v0, :cond_2

    .line 167
    invoke-virtual {v2}, Le/a/b/f;->f()V

    .line 168
    return-object v15

    .line 171
    :cond_2
    invoke-virtual {v15}, Le/I;->i()Le/K;

    move-result-object v5

    invoke-static {v5}, Le/a/e;->a(Ljava/io/Closeable;)V

    .line 173
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "followUpCount":I
    .local v9, "followUpCount":I
    const/16 v4, 0x14

    if-gt v9, v4, :cond_5

    .line 178
    invoke-virtual {v0}, Le/F;->a()Le/H;

    .line 183
    invoke-virtual {v0}, Le/F;->g()Le/y;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Le/a/c/k;->a(Le/I;Le/y;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 184
    invoke-virtual {v2}, Le/a/b/f;->f()V

    .line 185
    new-instance v16, Le/a/b/f;

    iget-object v4, v1, Le/a/c/k;->a:Le/C;

    invoke-virtual {v4}, Le/C;->e()Le/l;

    move-result-object v5

    .line 186
    invoke-virtual {v0}, Le/F;->g()Le/y;

    move-result-object v4

    invoke-virtual {v1, v4}, Le/a/c/k;->a(Le/y;)Le/a;

    move-result-object v6

    iget-object v8, v1, Le/a/c/k;->c:Ljava/lang/Object;

    move-object/from16 v4, v16

    move-object v7, v10

    move-object/from16 v17, v8

    move-object v8, v11

    move-object/from16 v18, v3

    move v3, v9

    .end local v9    # "followUpCount":I
    .local v3, "followUpCount":I
    .local v18, "realChain":Le/a/c/h;
    move-object/from16 v9, v17

    invoke-direct/range {v4 .. v9}, Le/a/b/f;-><init>(Le/l;Le/a;Le/f;Le/v;Ljava/lang/Object;)V

    move-object/from16 v2, v16

    .line 187
    iput-object v2, v1, Le/a/c/k;->b:Le/a/b/f;

    goto :goto_2

    .line 188
    .end local v18    # "realChain":Le/a/c/h;
    .local v3, "realChain":Le/a/c/h;
    .restart local v9    # "followUpCount":I
    :cond_3
    move-object/from16 v18, v3

    move v3, v9

    .end local v9    # "followUpCount":I
    .local v3, "followUpCount":I
    .restart local v18    # "realChain":Le/a/c/h;
    invoke-virtual {v2}, Le/a/b/f;->b()Le/a/c/c;

    move-result-object v4

    if-nez v4, :cond_4

    .line 193
    :goto_2
    move-object v12, v0

    .line 194
    move-object v13, v15

    .line 195
    .end local v0    # "followUp":Le/F;
    .end local v14    # "releaseConnection":Z
    .end local v15    # "response":Le/I;
    move v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_0

    .line 189
    .restart local v0    # "followUp":Le/F;
    .restart local v14    # "releaseConnection":Z
    .restart local v15    # "response":Le/I;
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Closing the body of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 174
    .end local v18    # "realChain":Le/a/c/h;
    .local v3, "realChain":Le/a/c/h;
    .restart local v9    # "followUpCount":I
    :cond_5
    move-object/from16 v18, v3

    move v3, v9

    .end local v9    # "followUpCount":I
    .local v3, "followUpCount":I
    .restart local v18    # "realChain":Le/a/c/h;
    invoke-virtual {v2}, Le/a/b/f;->f()V

    .line 175
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many follow-up requests: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    .end local v0    # "followUp":Le/F;
    .end local v18    # "realChain":Le/a/c/h;
    .local v3, "realChain":Le/a/c/h;
    .restart local v4    # "followUpCount":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    .line 162
    .end local v3    # "realChain":Le/a/c/h;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "realChain":Le/a/c/h;
    invoke-virtual {v2}, Le/a/b/f;->f()V

    .line 163
    throw v0

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    .end local v14    # "releaseConnection":Z
    .end local v15    # "response":Le/I;
    .end local v18    # "realChain":Le/a/c/h;
    .restart local v3    # "realChain":Le/a/c/h;
    .restart local v5    # "releaseConnection":Z
    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "realChain":Le/a/c/h;
    .restart local v18    # "realChain":Le/a/c/h;
    goto :goto_4

    .line 135
    .end local v18    # "realChain":Le/a/c/h;
    .restart local v3    # "realChain":Le/a/c/h;
    :catch_1
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v0

    .end local v3    # "realChain":Le/a/c/h;
    .restart local v18    # "realChain":Le/a/c/h;
    move-object v0, v3

    .line 137
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    nop

    instance-of v3, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v3, :cond_6

    const/4 v6, 0x1

    :cond_6
    move v3, v6

    .line 138
    .local v3, "requestSendStarted":Z
    invoke-virtual {v1, v0, v2, v3, v12}, Le/a/c/k;->a(Ljava/io/IOException;Le/a/b/f;ZLe/F;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_7

    .line 139
    const/4 v5, 0x0

    .line 143
    if-eqz v5, :cond_8

    .line 144
    invoke-virtual {v2, v7}, Le/a/b/f;->a(Ljava/io/IOException;)V

    .line 145
    invoke-virtual {v2}, Le/a/b/f;->f()V

    goto :goto_3

    .line 138
    .end local v2    # "streamAllocation":Le/a/b/f;
    .end local v4    # "followUpCount":I
    .end local v5    # "releaseConnection":Z
    .end local v10    # "call":Le/f;
    .end local v11    # "eventListener":Le/v;
    .end local v12    # "request":Le/F;
    .end local v13    # "priorResponse":Le/I;
    .end local v18    # "realChain":Le/a/c/h;
    .end local p1    # "chain":Le/z$a;
    :cond_7
    :try_start_3
    throw v0

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "streamAllocation":Le/a/b/f;
    .local v3, "realChain":Le/a/c/h;
    .restart local v4    # "followUpCount":I
    .restart local v5    # "releaseConnection":Z
    .restart local v10    # "call":Le/f;
    .restart local v11    # "eventListener":Le/v;
    .restart local v12    # "request":Le/F;
    .restart local v13    # "priorResponse":Le/I;
    .restart local p1    # "chain":Le/z$a;
    :catch_2
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v0

    .end local v3    # "realChain":Le/a/c/h;
    .restart local v18    # "realChain":Le/a/c/h;
    move-object v0, v3

    .line 130
    .local v0, "e":Lokhttp3/internal/connection/RouteException;
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteException;->b()Ljava/io/IOException;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v6, v12}, Le/a/c/k;->a(Ljava/io/IOException;Le/a/b/f;ZLe/F;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_9

    .line 133
    const/4 v3, 0x0

    .line 143
    .end local v5    # "releaseConnection":Z
    .local v3, "releaseConnection":Z
    if-eqz v3, :cond_8

    .line 144
    invoke-virtual {v2, v7}, Le/a/b/f;->a(Ljava/io/IOException;)V

    .line 145
    invoke-virtual {v2}, Le/a/b/f;->f()V

    .line 118
    .end local v0    # "e":Lokhttp3/internal/connection/RouteException;
    .end local v3    # "releaseConnection":Z
    :cond_8
    :goto_3
    move-object/from16 v3, v18

    goto/16 :goto_0

    .line 131
    .restart local v0    # "e":Lokhttp3/internal/connection/RouteException;
    .restart local v5    # "releaseConnection":Z
    :cond_9
    :try_start_4
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteException;->a()Ljava/io/IOException;

    move-result-object v3

    .end local v2    # "streamAllocation":Le/a/b/f;
    .end local v4    # "followUpCount":I
    .end local v5    # "releaseConnection":Z
    .end local v10    # "call":Le/f;
    .end local v11    # "eventListener":Le/v;
    .end local v12    # "request":Le/F;
    .end local v13    # "priorResponse":Le/I;
    .end local v18    # "realChain":Le/a/c/h;
    .end local p1    # "chain":Le/z$a;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 143
    .end local v0    # "e":Lokhttp3/internal/connection/RouteException;
    .restart local v2    # "streamAllocation":Le/a/b/f;
    .restart local v4    # "followUpCount":I
    .restart local v5    # "releaseConnection":Z
    .restart local v10    # "call":Le/f;
    .restart local v11    # "eventListener":Le/v;
    .restart local v12    # "request":Le/F;
    .restart local v13    # "priorResponse":Le/I;
    .restart local v18    # "realChain":Le/a/c/h;
    .restart local p1    # "chain":Le/z$a;
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v5, :cond_a

    .line 144
    invoke-virtual {v2, v7}, Le/a/b/f;->a(Ljava/io/IOException;)V

    .line 145
    invoke-virtual {v2}, Le/a/b/f;->f()V

    :cond_a
    throw v0

    .line 119
    .end local v5    # "releaseConnection":Z
    .end local v18    # "realChain":Le/a/c/h;
    .local v3, "realChain":Le/a/c/h;
    :cond_b
    move-object/from16 v18, v3

    .end local v3    # "realChain":Le/a/c/h;
    .restart local v18    # "realChain":Le/a/c/h;
    invoke-virtual {v2}, Le/a/b/f;->f()V

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Le/y;)Le/a;
    .locals 18
    .param p1, "url"    # Le/y;

    .line 199
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 200
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 201
    .local v2, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v3, 0x0

    .line 202
    .local v3, "certificatePinner":Le/g;
    invoke-virtual/range {p1 .. p1}, Le/y;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    iget-object v4, v0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v4}, Le/C;->y()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 204
    iget-object v4, v0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v4}, Le/C;->m()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 205
    iget-object v4, v0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v4}, Le/C;->c()Le/g;

    move-result-object v3

    .line 208
    :cond_0
    new-instance v17, Le/a;

    invoke-virtual/range {p1 .. p1}, Le/y;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Le/y;->j()I

    move-result v6

    iget-object v4, v0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v4}, Le/C;->i()Le/s;

    move-result-object v7

    iget-object v4, v0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v4}, Le/C;->x()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v4, v0, Le/a/c/k;->a:Le/C;

    .line 209
    invoke-virtual {v4}, Le/C;->t()Le/c;

    move-result-object v12

    iget-object v4, v0, Le/a/c/k;->a:Le/C;

    .line 210
    invoke-virtual {v4}, Le/C;->s()Ljava/net/Proxy;

    move-result-object v13

    iget-object v4, v0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v4}, Le/C;->r()Ljava/util/List;

    move-result-object v14

    iget-object v4, v0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v4}, Le/C;->f()Ljava/util/List;

    move-result-object v15

    iget-object v4, v0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v4}, Le/C;->u()Ljava/net/ProxySelector;

    move-result-object v16

    move-object/from16 v4, v17

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct/range {v4 .. v16}, Le/a;-><init>(Ljava/lang/String;ILe/s;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Le/g;Le/c;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 208
    return-object v17
.end method

.method public a()V
    .locals 1

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/c/k;->d:Z

    .line 89
    iget-object v0, p0, Le/a/c/k;->b:Le/a/b/f;

    .line 90
    .local v0, "streamAllocation":Le/a/b/f;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/b/f;->a()V

    .line 91
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callStackTrace"    # Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Le/a/c/k;->c:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public final a(Le/I;Le/y;)Z
    .locals 3
    .param p1, "response"    # Le/I;
    .param p2, "followUp"    # Le/y;

    .line 411
    invoke-virtual {p1}, Le/I;->r()Le/F;

    move-result-object v0

    invoke-virtual {v0}, Le/F;->g()Le/y;

    move-result-object v0

    .line 412
    .local v0, "url":Le/y;
    invoke-virtual {v0}, Le/y;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Le/y;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v0}, Le/y;->j()I

    move-result v1

    invoke-virtual {p2}, Le/y;->j()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 414
    invoke-virtual {v0}, Le/y;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Le/y;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 412
    :goto_0
    return v1
.end method

.method public final a(Ljava/io/IOException;Le/a/b/f;ZLe/F;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "streamAllocation"    # Le/a/b/f;
    .param p3, "requestSendStarted"    # Z
    .param p4, "userRequest"    # Le/F;

    .line 221
    invoke-virtual {p2, p1}, Le/a/b/f;->a(Ljava/io/IOException;)V

    .line 224
    iget-object v0, p0, Le/a/c/k;->a:Le/C;

    invoke-virtual {v0}, Le/C;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 227
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p4}, Le/F;->a()Le/H;

    .line 230
    :cond_1
    invoke-virtual {p0, p1, p3}, Le/a/c/k;->a(Ljava/io/IOException;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 233
    :cond_2
    invoke-virtual {p2}, Le/a/b/f;->d()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 236
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/io/IOException;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestSendStarted"    # Z

    .line 241
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    return v1

    .line 247
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 248
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 253
    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_3

    .line 257
    return v1

    .line 260
    :cond_3
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_4

    .line 262
    return v1

    .line 268
    :cond_4
    return v2
.end method

.method public b()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Le/a/c/k;->d:Z

    return v0
.end method
