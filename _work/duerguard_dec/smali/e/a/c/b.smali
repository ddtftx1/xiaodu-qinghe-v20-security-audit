.class public final Le/a/c/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Le/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/b$a;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forWebSocket"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Le/a/c/b;->a:Z

    .line 38
    return-void
.end method


# virtual methods
.method public a(Le/z$a;)Le/I;
    .locals 16
    .param p1, "chain"    # Le/z$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    move-object/from16 v0, p1

    check-cast v0, Le/a/c/h;

    .line 42
    .local v0, "realChain":Le/a/c/h;
    invoke-virtual {v0}, Le/a/c/h;->e()Le/a/c/c;

    move-result-object v1

    .line 43
    .local v1, "httpCodec":Le/a/c/c;
    invoke-virtual {v0}, Le/a/c/h;->h()Le/a/b/f;

    move-result-object v2

    .line 44
    .local v2, "streamAllocation":Le/a/b/f;
    invoke-virtual {v0}, Le/a/c/h;->c()Le/j;

    move-result-object v3

    check-cast v3, Le/a/b/c;

    .line 45
    .local v3, "connection":Le/a/b/c;
    invoke-virtual {v0}, Le/a/c/h;->g()Le/F;

    move-result-object v4

    .line 47
    .local v4, "request":Le/F;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 49
    .local v5, "sentRequestMillis":J
    invoke-virtual {v0}, Le/a/c/h;->d()Le/v;

    move-result-object v7

    invoke-virtual {v0}, Le/a/c/h;->a()Le/f;

    move-result-object v8

    invoke-virtual {v7, v8}, Le/v;->d(Le/f;)V

    .line 50
    invoke-interface {v1, v4}, Le/a/c/c;->a(Le/F;)V

    .line 51
    invoke-virtual {v0}, Le/a/c/h;->d()Le/v;

    move-result-object v7

    invoke-virtual {v0}, Le/a/c/h;->a()Le/f;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Le/v;->a(Le/f;Le/F;)V

    .line 53
    const/4 v7, 0x0

    .line 54
    .local v7, "responseBuilder":Le/I$a;
    invoke-virtual {v4}, Le/F;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/a/c/g;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Le/F;->a()Le/H;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 58
    const-string v8, "Expect"

    invoke-virtual {v4, v8}, Le/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "100-continue"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 59
    invoke-interface {v1}, Le/a/c/c;->b()V

    .line 60
    invoke-virtual {v0}, Le/a/c/h;->d()Le/v;

    move-result-object v8

    invoke-virtual {v0}, Le/a/c/h;->a()Le/f;

    move-result-object v9

    invoke-virtual {v8, v9}, Le/v;->f(Le/f;)V

    .line 61
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Le/a/c/c;->a(Z)Le/I$a;

    move-result-object v7

    .line 64
    :cond_0
    if-nez v7, :cond_1

    .line 66
    invoke-virtual {v0}, Le/a/c/h;->d()Le/v;

    move-result-object v8

    invoke-virtual {v0}, Le/a/c/h;->a()Le/f;

    move-result-object v9

    invoke-virtual {v8, v9}, Le/v;->c(Le/f;)V

    .line 67
    invoke-virtual {v4}, Le/F;->a()Le/H;

    move-result-object v8

    invoke-virtual {v8}, Le/H;->a()J

    move-result-wide v8

    .line 68
    .local v8, "contentLength":J
    new-instance v10, Le/a/c/b$a;

    .line 69
    invoke-interface {v1, v4, v8, v9}, Le/a/c/c;->a(Le/F;J)Lf/w;

    move-result-object v11

    invoke-direct {v10, v11}, Le/a/c/b$a;-><init>(Lf/w;)V

    .line 70
    .local v10, "requestBodyOut":Le/a/c/b$a;
    invoke-static {v10}, Lf/q;->a(Lf/w;)Lf/g;

    move-result-object v11

    .line 72
    .local v11, "bufferedRequestBody":Lf/g;
    invoke-virtual {v4}, Le/F;->a()Le/H;

    move-result-object v12

    invoke-virtual {v12, v11}, Le/H;->a(Lf/g;)V

    .line 73
    invoke-interface {v11}, Lf/w;->close()V

    .line 74
    invoke-virtual {v0}, Le/a/c/h;->d()Le/v;

    move-result-object v12

    .line 75
    invoke-virtual {v0}, Le/a/c/h;->a()Le/f;

    move-result-object v13

    iget-wide v14, v10, Le/a/c/b$a;->b:J

    invoke-virtual {v12, v13, v14, v15}, Le/v;->a(Le/f;J)V

    .end local v8    # "contentLength":J
    .end local v10    # "requestBodyOut":Le/a/c/b$a;
    .end local v11    # "bufferedRequestBody":Lf/g;
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v3}, Le/a/b/c;->d()Z

    move-result v8

    if-nez v8, :cond_2

    .line 80
    invoke-virtual {v2}, Le/a/b/f;->e()V

    nop

    .line 84
    :cond_2
    :goto_0
    invoke-interface {v1}, Le/a/c/c;->a()V

    .line 86
    const/4 v8, 0x0

    if-nez v7, :cond_3

    .line 87
    invoke-virtual {v0}, Le/a/c/h;->d()Le/v;

    move-result-object v9

    invoke-virtual {v0}, Le/a/c/h;->a()Le/f;

    move-result-object v10

    invoke-virtual {v9, v10}, Le/v;->f(Le/f;)V

    .line 88
    invoke-interface {v1, v8}, Le/a/c/c;->a(Z)Le/I$a;

    move-result-object v7

    .line 91
    :cond_3
    nop

    .line 92
    invoke-virtual {v7, v4}, Le/I$a;->a(Le/F;)Le/I$a;

    .line 93
    invoke-virtual {v2}, Le/a/b/f;->c()Le/a/b/c;

    move-result-object v9

    invoke-virtual {v9}, Le/a/b/c;->c()Le/w;

    move-result-object v9

    invoke-virtual {v7, v9}, Le/I$a;->a(Le/w;)Le/I$a;

    .line 94
    invoke-virtual {v7, v5, v6}, Le/I$a;->b(J)Le/I$a;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Le/I$a;->a(J)Le/I$a;

    .line 96
    invoke-virtual {v7}, Le/I$a;->a()Le/I;

    move-result-object v9

    .line 98
    .local v9, "response":Le/I;
    invoke-virtual {v9}, Le/I;->k()I

    move-result v10

    .line 99
    .local v10, "code":I
    const/16 v11, 0x64

    if-ne v10, v11, :cond_4

    .line 102
    invoke-interface {v1, v8}, Le/a/c/c;->a(Z)Le/I$a;

    move-result-object v7

    .line 104
    nop

    .line 105
    invoke-virtual {v7, v4}, Le/I$a;->a(Le/F;)Le/I$a;

    .line 106
    invoke-virtual {v2}, Le/a/b/f;->c()Le/a/b/c;

    move-result-object v8

    invoke-virtual {v8}, Le/a/b/c;->c()Le/w;

    move-result-object v8

    invoke-virtual {v7, v8}, Le/I$a;->a(Le/w;)Le/I$a;

    .line 107
    invoke-virtual {v7, v5, v6}, Le/I$a;->b(J)Le/I$a;

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Le/I$a;->a(J)Le/I$a;

    .line 109
    invoke-virtual {v7}, Le/I$a;->a()Le/I;

    move-result-object v9

    .line 111
    invoke-virtual {v9}, Le/I;->k()I

    move-result v10

    .line 114
    :cond_4
    invoke-virtual {v0}, Le/a/c/h;->d()Le/v;

    move-result-object v8

    .line 115
    invoke-virtual {v0}, Le/a/c/h;->a()Le/f;

    move-result-object v11

    invoke-virtual {v8, v11, v9}, Le/v;->a(Le/f;Le/I;)V

    .line 117
    move-object/from16 v8, p0

    iget-boolean v11, v8, Le/a/c/b;->a:Z

    if-eqz v11, :cond_5

    const/16 v11, 0x65

    if-ne v10, v11, :cond_5

    .line 119
    invoke-virtual {v9}, Le/I;->o()Le/I$a;

    move-result-object v11

    sget-object v12, Le/a/e;->c:Le/K;

    .line 120
    invoke-virtual {v11, v12}, Le/I$a;->a(Le/K;)Le/I$a;

    .line 121
    invoke-virtual {v11}, Le/I$a;->a()Le/I;

    move-result-object v9

    goto :goto_1

    .line 123
    :cond_5
    invoke-virtual {v9}, Le/I;->o()Le/I$a;

    move-result-object v11

    .line 124
    invoke-interface {v1, v9}, Le/a/c/c;->a(Le/I;)Le/K;

    move-result-object v12

    invoke-virtual {v11, v12}, Le/I$a;->a(Le/K;)Le/I$a;

    .line 125
    invoke-virtual {v11}, Le/I$a;->a()Le/I;

    move-result-object v9

    .line 128
    :goto_1
    invoke-virtual {v9}, Le/I;->r()Le/F;

    move-result-object v11

    const-string v12, "Connection"

    invoke-virtual {v11, v12}, Le/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "close"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 129
    invoke-virtual {v9, v12}, Le/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 130
    :cond_6
    invoke-virtual {v2}, Le/a/b/f;->e()V

    .line 133
    :cond_7
    const/16 v11, 0xcc

    if-eq v10, v11, :cond_8

    const/16 v11, 0xcd

    if-ne v10, v11, :cond_9

    :cond_8
    invoke-virtual {v9}, Le/I;->i()Le/K;

    move-result-object v11

    invoke-virtual {v11}, Le/K;->k()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_a

    .line 138
    :cond_9
    return-object v9

    .line 134
    :cond_a
    new-instance v11, Ljava/net/ProtocolException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HTTP "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " had non-zero Content-Length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v9}, Le/I;->i()Le/K;

    move-result-object v13

    invoke-virtual {v13}, Le/K;->k()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
