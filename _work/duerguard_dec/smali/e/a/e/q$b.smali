.class public final Le/a/e/q$b;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lf/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/f;

.field public final b:Lf/f;

.field public final c:J

.field public d:Z

.field public e:Z

.field public final synthetic f:Le/a/e/q;


# direct methods
.method public constructor <init>(Le/a/e/q;J)V
    .locals 0
    .param p2, "maxByteCount"    # J

    .line 348
    iput-object p1, p0, Le/a/e/q$b;->f:Le/a/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance p1, Lf/f;

    invoke-direct {p1}, Lf/f;-><init>()V

    iput-object p1, p0, Le/a/e/q$b;->a:Lf/f;

    .line 334
    new-instance p1, Lf/f;

    invoke-direct {p1}, Lf/f;-><init>()V

    iput-object p1, p0, Le/a/e/q$b;->b:Lf/f;

    .line 349
    iput-wide p2, p0, Le/a/e/q$b;->c:J

    .line 350
    return-void
.end method


# virtual methods
.method public a(Lf/h;J)V
    .locals 11
    .param p1, "in"    # Lf/h;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    nop

    .line 435
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    .line 438
    iget-object v2, p0, Le/a/e/q$b;->f:Le/a/e/q;

    monitor-enter v2

    .line 439
    :try_start_0
    iget-boolean v3, p0, Le/a/e/q$b;->e:Z

    .line 440
    .local v3, "finished":Z
    iget-object v4, p0, Le/a/e/q$b;->b:Lf/f;

    invoke-virtual {v4}, Lf/f;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Le/a/e/q$b;->c:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v6

    .line 441
    .local v4, "flowControlError":Z
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 444
    if-eqz v4, :cond_1

    .line 445
    invoke-interface {p1, p2, p3}, Lf/h;->skip(J)V

    .line 446
    iget-object v0, p0, Le/a/e/q$b;->f:Le/a/e/q;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Le/a/e/q;->c(Lokhttp3/internal/http2/ErrorCode;)V

    .line 447
    return-void

    .line 451
    :cond_1
    if-eqz v3, :cond_2

    .line 452
    invoke-interface {p1, p2, p3}, Lf/h;->skip(J)V

    .line 453
    return-void

    .line 457
    :cond_2
    iget-object v2, p0, Le/a/e/q$b;->a:Lf/f;

    invoke-interface {p1, v2, p2, p3}, Lf/x;->b(Lf/f;J)J

    move-result-wide v7

    .line 458
    .local v7, "read":J
    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_5

    .line 459
    sub-long v9, p2, v7

    .line 462
    .end local p2    # "byteCount":J
    .local v9, "byteCount":J
    iget-object v2, p0, Le/a/e/q$b;->f:Le/a/e/q;

    monitor-enter v2

    .line 463
    :try_start_1
    iget-object p2, p0, Le/a/e/q$b;->b:Lf/f;

    invoke-virtual {p2}, Lf/f;->size()J

    move-result-wide p2

    cmp-long p2, p2, v0

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    move p2, v5

    .line 464
    .local p2, "wasEmpty":Z
    iget-object p3, p0, Le/a/e/q$b;->b:Lf/f;

    iget-object v0, p0, Le/a/e/q$b;->a:Lf/f;

    invoke-virtual {p3, v0}, Lf/f;->a(Lf/x;)J

    .line 465
    if-eqz p2, :cond_4

    .line 466
    iget-object p3, p0, Le/a/e/q$b;->f:Le/a/e/q;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 468
    .end local p2    # "wasEmpty":Z
    :cond_4
    monitor-exit v2

    .line 469
    .end local v3    # "finished":Z
    .end local v4    # "flowControlError":Z
    .end local v7    # "read":J
    move-wide p2, v9

    goto :goto_0

    .line 468
    .restart local v3    # "finished":Z
    .restart local v4    # "flowControlError":Z
    .restart local v7    # "read":J
    :catchall_0
    move-exception p2

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 458
    .end local v9    # "byteCount":J
    .local p2, "byteCount":J
    :cond_5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 441
    .end local v3    # "finished":Z
    .end local v4    # "flowControlError":Z
    .end local v7    # "read":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 470
    :cond_6
    return-void
.end method

.method public b(Lf/f;J)J
    .locals 12
    .param p1, "sink"    # Lf/f;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_8

    .line 356
    :goto_0
    const/4 v2, 0x0

    .line 357
    .local v2, "headersToDeliver":Le/x;
    const/4 v3, 0x0

    .line 358
    .local v3, "headersListenerToNotify":Le/a/e/a$a;
    const-wide/16 v4, -0x1

    .line 359
    .local v4, "readBytesDelivered":J
    const/4 v6, 0x0

    .line 363
    .local v6, "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    iget-object v7, p0, Le/a/e/q$b;->f:Le/a/e/q;

    monitor-enter v7

    .line 364
    :try_start_0
    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-object v8, v8, Le/a/e/q;->i:Le/a/e/q$c;

    invoke-virtual {v8}, Lf/c;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 366
    :try_start_1
    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-object v8, v8, Le/a/e/q;->k:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v8, :cond_0

    .line 368
    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-object v8, v8, Le/a/e/q;->k:Lokhttp3/internal/http2/ErrorCode;

    move-object v6, v8

    .line 371
    :cond_0
    iget-boolean v8, p0, Le/a/e/q$b;->d:Z

    if-nez v8, :cond_7

    .line 374
    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    invoke-static {v8}, Le/a/e/q;->a(Le/a/e/q;)Ljava/util/Deque;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Deque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    invoke-static {v8}, Le/a/e/q;->b(Le/a/e/q;)V

    .line 379
    :cond_1
    iget-object v8, p0, Le/a/e/q$b;->b:Lf/f;

    invoke-virtual {v8}, Lf/f;->size()J

    move-result-wide v8

    cmp-long v8, v8, v0

    if-lez v8, :cond_2

    .line 381
    iget-object v8, p0, Le/a/e/q$b;->b:Lf/f;

    iget-object v9, p0, Le/a/e/q$b;->b:Lf/f;

    invoke-virtual {v9}, Lf/f;->size()J

    move-result-wide v9

    invoke-static {p2, p3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v8, p1, v9, v10}, Lf/f;->b(Lf/f;J)J

    move-result-wide v8

    move-wide v4, v8

    .line 382
    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-wide v9, v8, Le/a/e/q;->a:J

    add-long/2addr v9, v4

    iput-wide v9, v8, Le/a/e/q;->a:J

    .line 384
    if-nez v6, :cond_3

    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-wide v8, v8, Le/a/e/q;->a:J

    iget-object v10, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-object v10, v10, Le/a/e/q;->d:Le/a/e/k;

    iget-object v10, v10, Le/a/e/k;->o:Le/a/e/v;

    .line 386
    invoke-virtual {v10}, Le/a/e/v;->c()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    .line 389
    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-object v8, v8, Le/a/e/q;->d:Le/a/e/k;

    iget-object v9, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget v9, v9, Le/a/e/q;->c:I

    iget-object v10, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-wide v10, v10, Le/a/e/q;->a:J

    invoke-virtual {v8, v9, v10, v11}, Le/a/e/k;->a(IJ)V

    .line 390
    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iput-wide v0, v8, Le/a/e/q;->a:J

    goto :goto_1

    .line 392
    :cond_2
    iget-boolean v8, p0, Le/a/e/q$b;->e:Z

    if-nez v8, :cond_3

    if-nez v6, :cond_3

    .line 394
    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    invoke-virtual {v8}, Le/a/e/q;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    :try_start_2
    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-object v8, v8, Le/a/e/q;->i:Le/a/e/q$c;

    invoke-virtual {v8}, Le/a/e/q$c;->k()V

    monitor-exit v7

    goto/16 :goto_0

    :cond_3
    :goto_1
    iget-object v8, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-object v8, v8, Le/a/e/q;->i:Le/a/e/q$c;

    invoke-virtual {v8}, Le/a/e/q$c;->k()V

    .line 399
    nop

    .line 400
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 404
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 405
    invoke-interface {v3, v2}, Le/a/e/a$a;->a(Le/x;)V

    .line 406
    goto/16 :goto_0

    .line 409
    :cond_4
    const-wide/16 v0, -0x1

    cmp-long v7, v4, v0

    if-eqz v7, :cond_5

    .line 411
    invoke-virtual {p0, v4, v5}, Le/a/e/q$b;->c(J)V

    .line 412
    return-wide v4

    .line 415
    :cond_5
    if-nez v6, :cond_6

    .line 423
    return-wide v0

    .line 420
    :cond_6
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    invoke-direct {v0, v6}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v0

    .line 372
    :cond_7
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "headersToDeliver":Le/x;
    .end local v3    # "headersListenerToNotify":Le/a/e/a$a;
    .end local v4    # "readBytesDelivered":J
    .end local v6    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    .end local p1    # "sink":Lf/f;
    .end local p2    # "byteCount":J
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 398
    .restart local v2    # "headersToDeliver":Le/x;
    .restart local v3    # "headersListenerToNotify":Le/a/e/a$a;
    .restart local v4    # "readBytesDelivered":J
    .restart local v6    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    .restart local p1    # "sink":Lf/f;
    .restart local p2    # "byteCount":J
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-object v1, v1, Le/a/e/q;->i:Le/a/e/q$c;

    invoke-virtual {v1}, Le/a/e/q$c;->k()V

    .end local v2    # "headersToDeliver":Le/x;
    .end local v3    # "headersListenerToNotify":Le/a/e/a$a;
    .end local v4    # "readBytesDelivered":J
    .end local v6    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    .end local p1    # "sink":Lf/f;
    .end local p2    # "byteCount":J
    throw v0

    .line 400
    .restart local v2    # "headersToDeliver":Le/x;
    .restart local v3    # "headersListenerToNotify":Le/a/e/a$a;
    .restart local v4    # "readBytesDelivered":J
    .restart local v6    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    .restart local p1    # "sink":Lf/f;
    .restart local p2    # "byteCount":J
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 353
    .end local v2    # "headersToDeliver":Le/x;
    .end local v3    # "headersListenerToNotify":Le/a/e/a$a;
    .end local v4    # "readBytesDelivered":J
    .end local v6    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lf/z;
    .locals 1

    .line 473
    iget-object v0, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-object v0, v0, Le/a/e/q;->i:Le/a/e/q$c;

    return-object v0
.end method

.method public final c(J)V
    .locals 1
    .param p1, "read"    # J

    .line 428
    nop

    .line 429
    iget-object v0, p0, Le/a/e/q$b;->f:Le/a/e/q;

    iget-object v0, v0, Le/a/e/q;->d:Le/a/e/k;

    invoke-virtual {v0, p1, p2}, Le/a/e/k;->f(J)V

    .line 430
    return-void
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "headersToDeliver":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Headers;>;"
    const/4 v1, 0x0

    .line 480
    .local v1, "headersListenerToNotify":Le/a/e/a$a;
    iget-object v2, p0, Le/a/e/q$b;->f:Le/a/e/q;

    monitor-enter v2

    .line 481
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Le/a/e/q$b;->d:Z

    .line 482
    iget-object v3, p0, Le/a/e/q$b;->b:Lf/f;

    invoke-virtual {v3}, Lf/f;->size()J

    move-result-wide v3

    .line 483
    .local v3, "bytesDiscarded":J
    iget-object v5, p0, Le/a/e/q$b;->b:Lf/f;

    invoke-virtual {v5}, Lf/f;->i()V

    .line 484
    iget-object v5, p0, Le/a/e/q$b;->f:Le/a/e/q;

    invoke-static {v5}, Le/a/e/q;->a(Le/a/e/q;)Ljava/util/Deque;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Le/a/e/q$b;->f:Le/a/e/q;

    invoke-static {v5}, Le/a/e/q;->b(Le/a/e/q;)V

    .line 489
    :cond_0
    iget-object v5, p0, Le/a/e/q$b;->f:Le/a/e/q;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 490
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_1

    .line 492
    invoke-virtual {p0, v3, v4}, Le/a/e/q$b;->c(J)V

    .line 494
    :cond_1
    iget-object v2, p0, Le/a/e/q$b;->f:Le/a/e/q;

    invoke-virtual {v2}, Le/a/e/q;->a()V

    .line 495
    if-eqz v1, :cond_2

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/x;

    .line 497
    .local v5, "headers":Le/x;
    invoke-interface {v1, v5}, Le/a/e/a$a;->a(Le/x;)V

    .line 498
    .end local v5    # "headers":Le/x;
    goto :goto_0

    .line 500
    :cond_2
    return-void

    .line 490
    .end local v3    # "bytesDiscarded":J
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
