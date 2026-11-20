.class public final Le/E$a;
.super Le/a/b;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Le/E;


# virtual methods
.method public a()V
    .locals 6

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "signalledCallback":Z
    iget-object v1, p0, Le/E$a;->b:Le/E;

    iget-object v1, v1, Le/E;->c:Lf/c;

    invoke-virtual {v1}, Lf/c;->h()V

    .line 200
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Le/E$a;->b:Le/E;

    invoke-virtual {v2}, Le/E;->d()Le/I;

    move-result-object v2

    .line 201
    .local v2, "response":Le/I;
    iget-object v3, p0, Le/E$a;->b:Le/E;

    iget-object v3, v3, Le/E;->b:Le/a/c/k;

    invoke-virtual {v3}, Le/a/c/k;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    .end local v2    # "response":Le/I;
    const/4 v0, 0x1

    .line 203
    iget-object v2, p0, Le/E$a;->b:Le/E;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "signalledCallback":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .restart local v0    # "signalledCallback":Z
    .restart local v2    # "response":Le/I;
    :cond_0
    const/4 v0, 0x1

    .line 206
    :try_start_2
    iget-object v3, p0, Le/E$a;->b:Le/E;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "signalledCallback":Z
    :try_start_3
    throw v1

    .line 218
    .end local v2    # "response":Le/I;
    .restart local v0    # "signalledCallback":Z
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Le/E$a;->b:Le/E;

    invoke-virtual {v3, v2}, Le/E;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v3

    move-object v2, v3

    .line 210
    if-eqz v0, :cond_1

    .line 212
    invoke-static {}, Le/a/f/f;->b()Le/a/f/f;

    move-result-object v1

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Le/E$a;->b:Le/E;

    invoke-virtual {v5}, Le/E;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Le/a/f/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    .end local v2    # "e":Ljava/io/IOException;
    iget-object v1, p0, Le/E$a;->b:Le/E;

    iget-object v1, v1, Le/E;->a:Le/C;

    invoke-virtual {v1}, Le/C;->h()Le/q;

    move-result-object v1

    invoke-virtual {v1, p0}, Le/q;->a(Le/E$a;)V

    .line 219
    nop

    .line 220
    return-void

    .line 214
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_4
    iget-object v3, p0, Le/E$a;->b:Le/E;

    invoke-static {v3}, Le/E;->a(Le/E;)Le/v;

    move-result-object v3

    iget-object v4, p0, Le/E$a;->b:Le/E;

    invoke-virtual {v3, v4, v2}, Le/v;->a(Le/f;Ljava/io/IOException;)V

    .line 215
    iget-object v3, p0, Le/E$a;->b:Le/E;

    .end local v0    # "signalledCallback":Z
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "signalledCallback":Z
    :goto_0
    iget-object v2, p0, Le/E$a;->b:Le/E;

    iget-object v2, v2, Le/E;->a:Le/C;

    invoke-virtual {v2}, Le/C;->h()Le/q;

    move-result-object v2

    invoke-virtual {v2, p0}, Le/q;->a(Le/E$a;)V

    throw v1
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 179
    nop

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "success":Z
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const/4 v0, 0x1

    .line 190
    if-nez v0, :cond_0

    .line 191
    iget-object v1, p0, Le/E$a;->b:Le/E;

    iget-object v1, v1, Le/E;->a:Le/C;

    invoke-virtual {v1}, Le/C;->h()Le/q;

    move-result-object v1

    invoke-virtual {v1, p0}, Le/q;->a(Le/E$a;)V

    .line 194
    :cond_0
    return-void

    .line 190
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    new-instance v2, Ljava/io/InterruptedIOException;

    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v3, "executor rejected"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, "ioException":Ljava/io/InterruptedIOException;
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 187
    iget-object v1, p0, Le/E$a;->b:Le/E;

    invoke-static {v1}, Le/E;->a(Le/E;)Le/v;

    move-result-object v1

    iget-object v3, p0, Le/E$a;->b:Le/E;

    invoke-virtual {v1, v3, v2}, Le/v;->a(Le/f;Ljava/io/IOException;)V

    .line 188
    iget-object v1, p0, Le/E$a;->b:Le/E;

    const/4 v1, 0x0

    .end local v0    # "success":Z
    .end local p1    # "executorService":Ljava/util/concurrent/ExecutorService;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .end local v2    # "ioException":Ljava/io/InterruptedIOException;
    .restart local v0    # "success":Z
    .restart local p1    # "executorService":Ljava/util/concurrent/ExecutorService;
    :goto_0
    if-nez v0, :cond_1

    .line 191
    iget-object v2, p0, Le/E$a;->b:Le/E;

    iget-object v2, v2, Le/E;->a:Le/C;

    invoke-virtual {v2}, Le/C;->h()Le/q;

    move-result-object v2

    invoke-virtual {v2, p0}, Le/q;->a(Le/E$a;)V

    :cond_1
    throw v1
.end method

.method public b()Le/E;
    .locals 1

    .line 171
    iget-object v0, p0, Le/E$a;->b:Le/E;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Le/E$a;->b:Le/E;

    iget-object v0, v0, Le/E;->e:Le/F;

    invoke-virtual {v0}, Le/F;->g()Le/y;

    move-result-object v0

    invoke-virtual {v0}, Le/y;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
