.class public final Le/a/d/b$b;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lf/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/k;

.field public b:Z

.field public final synthetic c:Le/a/d/b;


# direct methods
.method public constructor <init>(Le/a/d/b;)V
    .locals 1

    .line 321
    iput-object p1, p0, Le/a/d/b$b;->c:Le/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance p1, Lf/k;

    iget-object v0, p0, Le/a/d/b$b;->c:Le/a/d/b;

    iget-object v0, v0, Le/a/d/b;->d:Lf/g;

    invoke-interface {v0}, Lf/w;->b()Lf/z;

    move-result-object v0

    invoke-direct {p1, v0}, Lf/k;-><init>(Lf/z;)V

    iput-object p1, p0, Le/a/d/b$b;->a:Lf/k;

    .line 322
    return-void
.end method


# virtual methods
.method public a(Lf/f;J)V
    .locals 2
    .param p1, "source"    # Lf/f;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-boolean v0, p0, Le/a/d/b$b;->b:Z

    if-nez v0, :cond_1

    .line 330
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Le/a/d/b$b;->c:Le/a/d/b;

    iget-object v0, v0, Le/a/d/b;->d:Lf/g;

    invoke-interface {v0, p2, p3}, Lf/g;->c(J)Lf/g;

    .line 333
    iget-object v0, p0, Le/a/d/b$b;->c:Le/a/d/b;

    iget-object v0, v0, Le/a/d/b;->d:Lf/g;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lf/g;->a(Ljava/lang/String;)Lf/g;

    .line 334
    iget-object v0, p0, Le/a/d/b$b;->c:Le/a/d/b;

    iget-object v0, v0, Le/a/d/b;->d:Lf/g;

    invoke-interface {v0, p1, p2, p3}, Lf/w;->a(Lf/f;J)V

    .line 335
    iget-object v0, p0, Le/a/d/b$b;->c:Le/a/d/b;

    iget-object v0, v0, Le/a/d/b;->d:Lf/g;

    invoke-interface {v0, v1}, Lf/g;->a(Ljava/lang/String;)Lf/g;

    .line 336
    return-void

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lf/z;
    .locals 1

    .line 325
    iget-object v0, p0, Le/a/d/b$b;->a:Lf/k;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 344
    :try_start_0
    iget-boolean v0, p0, Le/a/d/b$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 345
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Le/a/d/b$b;->b:Z

    .line 346
    iget-object v0, p0, Le/a/d/b$b;->c:Le/a/d/b;

    iget-object v0, v0, Le/a/d/b;->d:Lf/g;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lf/g;->a(Ljava/lang/String;)Lf/g;

    .line 347
    iget-object v0, p0, Le/a/d/b$b;->c:Le/a/d/b;

    iget-object v1, p0, Le/a/d/b$b;->a:Lf/k;

    invoke-virtual {v0, v1}, Le/a/d/b;->a(Lf/k;)V

    .line 348
    iget-object v0, p0, Le/a/d/b$b;->c:Le/a/d/b;

    const/4 v1, 0x3

    iput v1, v0, Le/a/d/b;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 343
    .end local p0    # "this":Le/a/d/b$b;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 339
    :try_start_0
    iget-boolean v0, p0, Le/a/d/b$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 340
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/d/b$b;->c:Le/a/d/b;

    iget-object v0, v0, Le/a/d/b;->d:Lf/g;

    invoke-interface {v0}, Lf/g;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 338
    .end local p0    # "this":Le/a/d/b$b;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
