.class public final Le/a/e/q$a;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lf/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/f;

.field public b:Z

.field public c:Z

.field public final synthetic d:Le/a/e/q;


# direct methods
.method public constructor <init>(Le/a/e/q;)V
    .locals 1
    .param p1, "this$0"    # Le/a/e/q;

    .line 523
    iput-object p1, p0, Le/a/e/q$a;->d:Le/a/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    iput-object v0, p0, Le/a/e/q$a;->a:Lf/f;

    return-void
.end method


# virtual methods
.method public a(Lf/f;J)V
    .locals 4
    .param p1, "source"    # Lf/f;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    nop

    .line 541
    iget-object v0, p0, Le/a/e/q$a;->a:Lf/f;

    invoke-virtual {v0, p1, p2, p3}, Lf/f;->a(Lf/f;J)V

    .line 542
    :goto_0
    iget-object v0, p0, Le/a/e/q$a;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/a/e/q$a;->a(Z)V

    goto :goto_0

    .line 545
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 9
    .param p1, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    monitor-enter v0

    .line 554
    :try_start_0
    iget-object v1, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v1, v1, Le/a/e/q;->j:Le/a/e/q$c;

    invoke-virtual {v1}, Lf/c;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 556
    :goto_0
    :try_start_1
    iget-object v1, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-wide v1, v1, Le/a/e/q;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Le/a/e/q$a;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Le/a/e/q$a;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v1, v1, Le/a/e/q;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez v1, :cond_0

    .line 557
    iget-object v1, p0, Le/a/e/q$a;->d:Le/a/e/q;

    invoke-virtual {v1}, Le/a/e/q;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 560
    :cond_0
    :try_start_2
    iget-object v1, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v1, v1, Le/a/e/q;->j:Le/a/e/q$c;

    invoke-virtual {v1}, Le/a/e/q$c;->k()V

    .line 561
    nop

    .line 563
    iget-object v1, p0, Le/a/e/q$a;->d:Le/a/e/q;

    invoke-virtual {v1}, Le/a/e/q;->b()V

    .line 564
    iget-object v1, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-wide v1, v1, Le/a/e/q;->b:J

    iget-object v3, p0, Le/a/e/q$a;->a:Lf/f;

    invoke-virtual {v3}, Lf/f;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 565
    .local v1, "toWrite":J
    iget-object v3, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-wide v4, v3, Le/a/e/q;->b:J

    sub-long/2addr v4, v1

    iput-wide v4, v3, Le/a/e/q;->b:J

    .line 566
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 568
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v0, v0, Le/a/e/q;->j:Le/a/e/q$c;

    invoke-virtual {v0}, Lf/c;->h()V

    .line 570
    :try_start_3
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v3, v0, Le/a/e/q;->d:Le/a/e/k;

    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget v4, v0, Le/a/e/q;->c:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Le/a/e/q$a;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->size()J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v5, v0

    iget-object v6, p0, Le/a/e/q$a;->a:Lf/f;

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Le/a/e/k;->a(IZLf/f;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 572
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v0, v0, Le/a/e/q;->j:Le/a/e/q$c;

    invoke-virtual {v0}, Le/a/e/q$c;->k()V

    .line 573
    nop

    .line 574
    return-void

    .line 572
    :catchall_0
    move-exception v0

    iget-object v3, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v3, v3, Le/a/e/q;->j:Le/a/e/q$c;

    invoke-virtual {v3}, Le/a/e/q$c;->k()V

    throw v0

    .line 560
    .end local v1    # "toWrite":J
    :catchall_1
    move-exception v1

    :try_start_4
    iget-object v2, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v2, v2, Le/a/e/q;->j:Le/a/e/q$c;

    invoke-virtual {v2}, Le/a/e/q$c;->k()V

    .end local p1    # "outFinished":Z
    throw v1

    .line 566
    .restart local p1    # "outFinished":Z
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public b()Lf/z;
    .locals 1

    .line 588
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v0, v0, Le/a/e/q;->j:Le/a/e/q$c;

    return-object v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    nop

    .line 593
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    monitor-enter v0

    .line 594
    :try_start_0
    iget-boolean v1, p0, Le/a/e/q$a;->b:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 595
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 596
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v0, v0, Le/a/e/q;->h:Le/a/e/q$a;

    iget-boolean v0, v0, Le/a/e/q$a;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 598
    iget-object v0, p0, Le/a/e/q$a;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 599
    :goto_0
    iget-object v0, p0, Le/a/e/q$a;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 600
    invoke-virtual {p0, v1}, Le/a/e/q$a;->a(Z)V

    goto :goto_0

    .line 604
    :cond_1
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v2, v0, Le/a/e/q;->d:Le/a/e/k;

    iget v3, v0, Le/a/e/q;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Le/a/e/k;->a(IZLf/f;J)V

    .line 607
    :cond_2
    iget-object v2, p0, Le/a/e/q$a;->d:Le/a/e/q;

    monitor-enter v2

    .line 608
    :try_start_1
    iput-boolean v1, p0, Le/a/e/q$a;->b:Z

    .line 609
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v0, v0, Le/a/e/q;->d:Le/a/e/k;

    invoke-virtual {v0}, Le/a/e/k;->flush()V

    .line 611
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    invoke-virtual {v0}, Le/a/e/q;->a()V

    .line 612
    return-void

    .line 609
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 595
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    nop

    .line 578
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object v1, p0, Le/a/e/q$a;->d:Le/a/e/q;

    invoke-virtual {v1}, Le/a/e/q;->b()V

    .line 580
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :goto_0
    iget-object v0, p0, Le/a/e/q$a;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 582
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/a/e/q$a;->a(Z)V

    .line 583
    iget-object v0, p0, Le/a/e/q$a;->d:Le/a/e/q;

    iget-object v0, v0, Le/a/e/q;->d:Le/a/e/k;

    invoke-virtual {v0}, Le/a/e/k;->flush()V

    goto :goto_0

    .line 585
    :cond_0
    return-void

    .line 580
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
