.class public final Le/a/c/h;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Le/z$a;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/z;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/b/f;

.field public final c:Le/a/c/c;

.field public final d:Le/a/b/c;

.field public final e:I

.field public final f:Le/F;

.field public final g:Le/f;

.field public final h:Le/v;

.field public final i:I

.field public final j:I

.field public final k:I

.field public l:I


# direct methods
.method public constructor <init>(Ljava/util/List;Le/a/b/f;Le/a/c/c;Le/a/b/c;ILe/F;Le/f;Le/v;III)V
    .locals 0
    .param p2, "streamAllocation"    # Le/a/b/f;
    .param p3, "httpCodec"    # Le/a/c/c;
    .param p4, "connection"    # Le/a/b/c;
    .param p5, "index"    # I
    .param p6, "request"    # Le/F;
    .param p7, "call"    # Le/f;
    .param p8, "eventListener"    # Le/v;
    .param p9, "connectTimeout"    # I
    .param p10, "readTimeout"    # I
    .param p11, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/z;",
            ">;",
            "Le/a/b/f;",
            "Le/a/c/c;",
            "Le/a/b/c;",
            "I",
            "Le/F;",
            "Le/f;",
            "Le/v;",
            "III)V"
        }
    .end annotation

    .line 52
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Interceptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Le/a/c/h;->a:Ljava/util/List;

    .line 54
    iput-object p4, p0, Le/a/c/h;->d:Le/a/b/c;

    .line 55
    iput-object p2, p0, Le/a/c/h;->b:Le/a/b/f;

    .line 56
    iput-object p3, p0, Le/a/c/h;->c:Le/a/c/c;

    .line 57
    iput p5, p0, Le/a/c/h;->e:I

    .line 58
    iput-object p6, p0, Le/a/c/h;->f:Le/F;

    .line 59
    iput-object p7, p0, Le/a/c/h;->g:Le/f;

    .line 60
    iput-object p8, p0, Le/a/c/h;->h:Le/v;

    .line 61
    iput p9, p0, Le/a/c/h;->i:I

    .line 62
    iput p10, p0, Le/a/c/h;->j:I

    .line 63
    iput p11, p0, Le/a/c/h;->k:I

    .line 64
    return-void
.end method


# virtual methods
.method public a(Le/F;)Le/I;
    .locals 3
    .param p1, "request"    # Le/F;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Le/a/c/h;->b:Le/a/b/f;

    iget-object v1, p0, Le/a/c/h;->c:Le/a/c/c;

    iget-object v2, p0, Le/a/c/h;->d:Le/a/b/c;

    invoke-virtual {p0, p1, v0, v1, v2}, Le/a/c/h;->a(Le/F;Le/a/b/f;Le/a/c/c;Le/a/b/c;)Le/I;

    move-result-object v0

    return-object v0
.end method

.method public a(Le/F;Le/a/b/f;Le/a/c/c;Le/a/b/c;)Le/I;
    .locals 17
    .param p1, "request"    # Le/F;
    .param p2, "streamAllocation"    # Le/a/b/f;
    .param p3, "httpCodec"    # Le/a/c/c;
    .param p4, "connection"    # Le/a/b/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    move-object/from16 v0, p0

    iget v1, v0, Le/a/c/h;->e:I

    iget-object v2, v0, Le/a/c/h;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 128
    iget v1, v0, Le/a/c/h;->l:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Le/a/c/h;->l:I

    .line 131
    iget-object v1, v0, Le/a/c/h;->c:Le/a/c/c;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v1, v0, Le/a/c/h;->d:Le/a/b/c;

    invoke-virtual/range {p1 .. p1}, Le/F;->g()Le/y;

    move-result-object v4

    invoke-virtual {v1, v4}, Le/a/b/c;->a(Le/y;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Le/a/c/h;->a:Ljava/util/List;

    iget v5, v0, Le/a/c/h;->e:I

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_1
    :goto_0
    iget-object v1, v0, Le/a/c/h;->c:Le/a/c/c;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Le/a/c/h;->l:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 138
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Le/a/c/h;->a:Ljava/util/List;

    iget v6, v0, Le/a/c/h;->e:I

    sub-int/2addr v6, v2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_3
    :goto_1
    new-instance v1, Le/a/c/h;

    iget-object v6, v0, Le/a/c/h;->a:Ljava/util/List;

    iget v5, v0, Le/a/c/h;->e:I

    add-int/lit8 v10, v5, 0x1

    iget-object v12, v0, Le/a/c/h;->g:Le/f;

    iget-object v13, v0, Le/a/c/h;->h:Le/v;

    iget v14, v0, Le/a/c/h;->i:I

    iget v15, v0, Le/a/c/h;->j:I

    iget v11, v0, Le/a/c/h;->k:I

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v16, v11

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v16}, Le/a/c/h;-><init>(Ljava/util/List;Le/a/b/f;Le/a/c/c;Le/a/b/c;ILe/F;Le/f;Le/v;III)V

    .line 146
    .local v1, "next":Le/a/c/h;
    iget-object v5, v0, Le/a/c/h;->a:Ljava/util/List;

    iget v6, v0, Le/a/c/h;->e:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/z;

    .line 147
    .local v5, "interceptor":Le/z;
    invoke-interface {v5, v1}, Le/z;->a(Le/z$a;)Le/I;

    move-result-object v6

    .line 150
    .local v6, "response":Le/I;
    if-eqz p3, :cond_5

    iget v7, v0, Le/a/c/h;->e:I

    add-int/2addr v7, v2

    iget-object v8, v0, Le/a/c/h;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget v7, v1, Le/a/c/h;->l:I

    if-ne v7, v2, :cond_4

    goto :goto_2

    .line 151
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_5
    :goto_2
    const-string v2, "interceptor "

    if-eqz v6, :cond_7

    .line 160
    invoke-virtual {v6}, Le/I;->i()Le/K;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 165
    return-object v6

    .line 161
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned a response with no body"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_7
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned null"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    .end local v1    # "next":Le/a/c/h;
    .end local v5    # "interceptor":Le/z;
    .end local v6    # "response":Le/I;
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public a()Le/f;
    .locals 1

    .line 109
    iget-object v0, p0, Le/a/c/h;->g:Le/f;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 71
    iget v0, p0, Le/a/c/h;->i:I

    return v0
.end method

.method public c()Le/j;
    .locals 1

    .line 67
    iget-object v0, p0, Le/a/c/h;->d:Le/a/b/c;

    return-object v0
.end method

.method public d()Le/v;
    .locals 1

    .line 113
    iget-object v0, p0, Le/a/c/h;->h:Le/v;

    return-object v0
.end method

.method public e()Le/a/c/c;
    .locals 1

    .line 105
    iget-object v0, p0, Le/a/c/h;->c:Le/a/c/c;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 81
    iget v0, p0, Le/a/c/h;->j:I

    return v0
.end method

.method public g()Le/F;
    .locals 1

    .line 117
    iget-object v0, p0, Le/a/c/h;->f:Le/F;

    return-object v0
.end method

.method public h()Le/a/b/f;
    .locals 1

    .line 101
    iget-object v0, p0, Le/a/c/h;->b:Le/a/b/f;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 91
    iget v0, p0, Le/a/c/h;->k:I

    return v0
.end method
