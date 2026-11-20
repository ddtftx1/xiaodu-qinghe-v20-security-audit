.class public final Le/E;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Le/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/E$a;
    }
.end annotation


# instance fields
.field public final a:Le/C;

.field public final b:Le/a/c/k;

.field public final c:Lf/c;

.field public d:Le/v;

.field public final e:Le/F;

.field public final f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Le/C;Le/F;Z)V
    .locals 4
    .param p1, "client"    # Le/C;
    .param p2, "originalRequest"    # Le/F;
    .param p3, "forWebSocket"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Le/E;->a:Le/C;

    .line 60
    iput-object p2, p0, Le/E;->e:Le/F;

    .line 61
    iput-boolean p3, p0, Le/E;->f:Z

    .line 62
    new-instance v0, Le/a/c/k;

    invoke-direct {v0, p1, p3}, Le/a/c/k;-><init>(Le/C;Z)V

    iput-object v0, p0, Le/E;->b:Le/a/c/k;

    .line 63
    new-instance v0, Le/D;

    invoke-direct {v0, p0}, Le/D;-><init>(Le/E;)V

    iput-object v0, p0, Le/E;->c:Lf/c;

    .line 68
    iget-object v0, p0, Le/E;->c:Lf/c;

    invoke-virtual {p1}, Le/C;->b()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lf/z;->a(JLjava/util/concurrent/TimeUnit;)Lf/z;

    .line 69
    return-void
.end method

.method public static a(Le/C;Le/F;Z)Le/E;
    .locals 2
    .param p0, "client"    # Le/C;
    .param p1, "originalRequest"    # Le/F;
    .param p2, "forWebSocket"    # Z

    .line 73
    new-instance v0, Le/E;

    invoke-direct {v0, p0, p1, p2}, Le/E;-><init>(Le/C;Le/F;Z)V

    .line 74
    .local v0, "call":Le/E;
    invoke-virtual {p0}, Le/C;->j()Le/v$a;

    move-result-object v1

    check-cast v1, Le/u;

    invoke-virtual {v1, v0}, Le/u;->a(Le/f;)Le/v;

    move-result-object v1

    iput-object v1, v0, Le/E;->d:Le/v;

    .line 75
    return-object v0
.end method

.method public static synthetic a(Le/E;)Le/v;
    .locals 1
    .param p0, "x0"    # Le/E;

    .line 40
    iget-object v0, p0, Le/E;->d:Le/v;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;

    .line 105
    iget-object v0, p0, Le/E;->c:Lf/c;

    invoke-virtual {v0}, Lf/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 107
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 111
    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 130
    iget-object v0, p0, Le/E;->b:Le/a/c/k;

    invoke-virtual {v0}, Le/a/c/k;->a()V

    .line 131
    return-void
.end method

.method public final b()V
    .locals 2

    .line 115
    invoke-static {}, Le/a/f/f;->b()Le/a/f/f;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Le/a/f/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "callStackTrace":Ljava/lang/Object;
    iget-object v1, p0, Le/E;->b:Le/a/c/k;

    invoke-virtual {v1, v0}, Le/a/c/k;->a(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public c()Le/I;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v0, p0, Le/E;->g:Z

    if-nez v0, :cond_1

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/E;->g:Z

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    invoke-virtual {p0}, Le/E;->b()V

    .line 88
    iget-object v0, p0, Le/E;->c:Lf/c;

    invoke-virtual {v0}, Lf/c;->h()V

    .line 89
    iget-object v0, p0, Le/E;->d:Le/v;

    invoke-virtual {v0, p0}, Le/v;->b(Le/f;)V

    .line 91
    :try_start_1
    iget-object v0, p0, Le/E;->a:Le/C;

    invoke-virtual {v0}, Le/C;->h()Le/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/q;->a(Le/E;)V

    .line 92
    invoke-virtual {p0}, Le/E;->d()Le/I;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .local v0, "result":Le/I;
    if-eqz v0, :cond_0

    .line 94
    nop

    .line 100
    iget-object v1, p0, Le/E;->a:Le/C;

    invoke-virtual {v1}, Le/C;->h()Le/q;

    move-result-object v1

    invoke-virtual {v1, p0}, Le/q;->b(Le/E;)V

    .line 94
    return-object v0

    .line 93
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v0    # "result":Le/I;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, v0}, Le/E;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    move-object v0, v1

    .line 97
    iget-object v1, p0, Le/E;->d:Le/v;

    invoke-virtual {v1, p0, v0}, Le/v;->a(Le/f;Ljava/io/IOException;)V

    .line 98
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v1, p0, Le/E;->a:Le/C;

    invoke-virtual {v1}, Le/C;->h()Le/q;

    move-result-object v1

    invoke-virtual {v1, p0}, Le/q;->b(Le/E;)V

    throw v0

    .line 84
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public clone()Le/E;
    .locals 3

    .line 147
    iget-object v0, p0, Le/E;->a:Le/C;

    iget-object v1, p0, Le/E;->e:Le/F;

    iget-boolean v2, p0, Le/E;->f:Z

    invoke-static {v0, v1, v2}, Le/E;->a(Le/C;Le/F;Z)Le/E;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Le/E;->clone()Le/E;

    move-result-object v0

    return-object v0
.end method

.method public d()Le/I;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "interceptors":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Interceptor;>;"
    iget-object v1, p0, Le/E;->a:Le/C;

    invoke-virtual {v1}, Le/C;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v1, p0, Le/E;->b:Le/a/c/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Le/a/c/a;

    iget-object v2, p0, Le/E;->a:Le/C;

    invoke-virtual {v2}, Le/C;->g()Le/p;

    move-result-object v2

    invoke-direct {v1, v2}, Le/a/c/a;-><init>(Le/p;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Le/a/a/a;

    iget-object v2, p0, Le/E;->a:Le/C;

    invoke-virtual {v2}, Le/C;->o()V

    invoke-direct {v1}, Le/a/a/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Le/a/b/a;

    iget-object v2, p0, Le/E;->a:Le/C;

    invoke-direct {v1, v2}, Le/a/b/a;-><init>(Le/C;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-boolean v1, p0, Le/E;->f:Z

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Le/E;->a:Le/C;

    invoke-virtual {v1}, Le/C;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_0
    new-instance v1, Le/a/c/b;

    iget-boolean v2, p0, Le/E;->f:Z

    invoke-direct {v1, v2}, Le/a/c/b;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v13, Le/a/c/h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Le/E;->e:Le/F;

    iget-object v9, p0, Le/E;->d:Le/v;

    iget-object v1, p0, Le/E;->a:Le/C;

    .line 251
    invoke-virtual {v1}, Le/C;->d()I

    move-result v10

    iget-object v1, p0, Le/E;->a:Le/C;

    .line 252
    invoke-virtual {v1}, Le/C;->v()I

    move-result v11

    iget-object v1, p0, Le/E;->a:Le/C;

    invoke-virtual {v1}, Le/C;->z()I

    move-result v12

    move-object v1, v13

    move-object v2, v0

    move-object v8, p0

    invoke-direct/range {v1 .. v12}, Le/a/c/h;-><init>(Ljava/util/List;Le/a/b/f;Le/a/c/c;Le/a/b/c;ILe/F;Le/f;Le/v;III)V

    .line 254
    .local v1, "chain":Le/z$a;
    iget-object v2, p0, Le/E;->e:Le/F;

    invoke-virtual {v1, v2}, Le/a/c/h;->a(Le/F;)Le/I;

    move-result-object v2

    return-object v2
.end method

.method public e()Z
    .locals 1

    .line 142
    iget-object v0, p0, Le/E;->b:Le/a/c/k;

    invoke-virtual {v0}, Le/a/c/k;->b()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Le/E;->e:Le/F;

    invoke-virtual {v0}, Le/F;->g()Le/y;

    move-result-object v0

    invoke-virtual {v0}, Le/y;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/E;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-boolean v1, p0, Le/E;->f:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Le/E;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    return-object v0
.end method
