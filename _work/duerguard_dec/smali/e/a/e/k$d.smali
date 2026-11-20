.class public Le/a/e/k$d;
.super Le/a/b;
.source "Http2Connection.java"

# interfaces
.implements Le/a/e/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public final b:Le/a/e/p;

.field public final synthetic c:Le/a/e/k;


# direct methods
.method public constructor <init>(Le/a/e/k;Le/a/e/p;)V
    .locals 3
    .param p1, "this$0"    # Le/a/e/k;
    .param p2, "reader"    # Le/a/e/p;

    .line 600
    iput-object p1, p0, Le/a/e/k$d;->c:Le/a/e/k;

    .line 601
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p1, Le/a/e/k;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OkHttp %s"

    invoke-direct {p0, v1, v0}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iput-object p2, p0, Le/a/e/k$d;->b:Le/a/e/p;

    .line 603
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 606
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->c:Lokhttp3/internal/http2/ErrorCode;

    .line 607
    .local v0, "connectionErrorCode":Lokhttp3/internal/http2/ErrorCode;
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->c:Lokhttp3/internal/http2/ErrorCode;

    .line 609
    .local v1, "streamErrorCode":Lokhttp3/internal/http2/ErrorCode;
    :try_start_0
    iget-object v2, p0, Le/a/e/k$d;->b:Le/a/e/p;

    invoke-virtual {v2, p0}, Le/a/e/p;->a(Le/a/e/p$b;)V

    .line 610
    :goto_0
    iget-object v2, p0, Le/a/e/k$d;->b:Le/a/e/p;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Le/a/e/p;->a(ZLe/a/e/p$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->a:Lokhttp3/internal/http2/ErrorCode;

    move-object v0, v2

    .line 613
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->f:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 619
    :try_start_1
    iget-object v2, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v2, v0, v1}, Le/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 620
    :catch_0
    move-exception v2

    goto :goto_2

    .line 618
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 614
    :catch_1
    move-exception v2

    .line 615
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->b:Lokhttp3/internal/http2/ErrorCode;

    move-object v0, v3

    .line 616
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->b:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    .line 619
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v2, v0, v1}, Le/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 621
    :goto_1
    goto :goto_2

    .line 620
    :catch_2
    move-exception v2

    .line 622
    :goto_2
    iget-object v2, p0, Le/a/e/k$d;->b:Le/a/e/p;

    invoke-static {v2}, Le/a/e;->a(Ljava/io/Closeable;)V

    .line 623
    nop

    .line 624
    return-void

    .line 619
    :goto_3
    :try_start_4
    iget-object v3, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v3, v0, v1}, Le/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 621
    goto :goto_4

    .line 620
    :catch_3
    move-exception v3

    .line 622
    :goto_4
    iget-object v3, p0, Le/a/e/k$d;->b:Le/a/e/p;

    invoke-static {v3}, Le/a/e;->a(Ljava/io/Closeable;)V

    throw v2
.end method

.method public a(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .line 812
    return-void
.end method

.method public a(IILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Le/a/e/a;",
            ">;)V"
        }
    .end annotation

    .line 816
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v0, p2, p3}, Le/a/e/k;->a(ILjava/util/List;)V

    .line 817
    return-void
.end method

.method public a(IJ)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .line 794
    if-nez p1, :cond_0

    .line 795
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    monitor-enter v0

    .line 796
    :try_start_0
    iget-object v1, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-wide v2, v1, Le/a/e/k;->n:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Le/a/e/k;->n:J

    .line 797
    iget-object v1, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 798
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 800
    :cond_0
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v0, p1}, Le/a/e/k;->a(I)Le/a/e/q;

    move-result-object v0

    .line 801
    .local v0, "stream":Le/a/e/q;
    if-eqz v0, :cond_1

    .line 802
    monitor-enter v0

    .line 803
    :try_start_1
    invoke-virtual {v0, p2, p3}, Le/a/e/q;->a(J)V

    .line 804
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 807
    .end local v0    # "stream":Le/a/e/q;
    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .line 694
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v0, p1}, Le/a/e/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v0, p1, p2}, Le/a/e/k;->a(ILokhttp3/internal/http2/ErrorCode;)V

    .line 696
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v0, p1}, Le/a/e/k;->c(I)Le/a/e/q;

    move-result-object v0

    .line 699
    .local v0, "rstStream":Le/a/e/q;
    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {v0, p2}, Le/a/e/q;->d(Lokhttp3/internal/http2/ErrorCode;)V

    .line 702
    :cond_1
    return-void
.end method

.method public a(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;
    .param p3, "debugData"    # Lokio/ByteString;

    .line 774
    invoke-virtual {p3}, Lokio/ByteString;->e()I

    .line 779
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    monitor-enter v0

    .line 780
    :try_start_0
    iget-object v1, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v1, v1, Le/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v2, v2, Le/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Le/a/e/q;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Le/a/e/q;

    .line 781
    .local v1, "streamsCopy":[Le/a/e/q;
    iget-object v2, p0, Le/a/e/k$d;->c:Le/a/e/k;

    const/4 v3, 0x1

    iput-boolean v3, v2, Le/a/e/k;->h:Z

    .line 782
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 786
    .local v3, "http2Stream":Le/a/e/q;
    invoke-virtual {v3}, Le/a/e/q;->c()I

    move-result v4

    if-le v4, p1, :cond_0

    invoke-virtual {v3}, Le/a/e/q;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 787
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->e:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v3, v4}, Le/a/e/q;->d(Lokhttp3/internal/http2/ErrorCode;)V

    .line 788
    iget-object v4, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v3}, Le/a/e/q;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Le/a/e/k;->c(I)Le/a/e/q;

    .line 785
    .end local v3    # "http2Stream":Le/a/e/q;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 791
    :cond_1
    return-void

    .line 782
    .end local v1    # "streamsCopy":[Le/a/e/q;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Le/a/e/v;)V
    .locals 6
    .param p1, "peerSettings"    # Le/a/e/v;

    .line 739
    :try_start_0
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-static {v0}, Le/a/e/k;->b(Le/a/e/k;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Le/a/e/o;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v5, v5, Le/a/e/k;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Le/a/e/o;-><init>(Le/a/e/k$d;Ljava/lang/String;[Ljava/lang/Object;Le/a/e/v;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    goto :goto_0

    .line 748
    :catch_0
    move-exception v0

    .line 751
    :goto_0
    return-void
.end method

.method public a(ZII)V
    .locals 4
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .line 758
    if-eqz p1, :cond_0

    .line 759
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    monitor-enter v0

    .line 760
    :try_start_0
    iget-object v1, p0, Le/a/e/k$d;->c:Le/a/e/k;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Le/a/e/k;->a(Le/a/e/k;Z)Z

    .line 761
    iget-object v1, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 762
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 766
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-static {v0}, Le/a/e/k;->b(Le/a/e/k;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Le/a/e/k$c;

    iget-object v2, p0, Le/a/e/k$d;->c:Le/a/e/k;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2, p3}, Le/a/e/k$c;-><init>(Le/a/e/k;ZII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 769
    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 771
    :goto_0
    return-void
.end method

.method public a(ZIILjava/util/List;)V
    .locals 11
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Le/a/e/a;",
            ">;)V"
        }
    .end annotation

    .line 647
    .local p4, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v0, p2}, Le/a/e/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v0, p2, p4, p1}, Le/a/e/k;->b(ILjava/util/List;Z)V

    .line 649
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    monitor-enter v0

    .line 653
    :try_start_0
    iget-object v1, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v1, p2}, Le/a/e/k;->a(I)Le/a/e/q;

    move-result-object v1

    .line 655
    .local v1, "stream":Le/a/e/q;
    if-nez v1, :cond_4

    .line 657
    iget-object v2, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-boolean v2, v2, Le/a/e/k;->h:Z

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    .line 660
    :cond_1
    iget-object v2, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget v2, v2, Le/a/e/k;->f:I

    if-gt p2, v2, :cond_2

    monitor-exit v0

    return-void

    .line 663
    :cond_2
    rem-int/lit8 v2, p2, 0x2

    iget-object v3, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget v3, v3, Le/a/e/k;->g:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    monitor-exit v0

    return-void

    .line 666
    :cond_3
    invoke-static {p4}, Le/a/e;->b(Ljava/util/List;)Le/x;

    move-result-object v10

    .line 667
    .local v10, "headers":Le/x;
    new-instance v2, Le/a/e/q;

    iget-object v7, p0, Le/a/e/k$d;->c:Le/a/e/k;

    const/4 v8, 0x0

    move-object v5, v2

    move v6, p2

    move v9, p1

    invoke-direct/range {v5 .. v10}, Le/a/e/q;-><init>(ILe/a/e/k;ZZLe/x;)V

    .line 669
    .local v2, "newStream":Le/a/e/q;
    iget-object v3, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iput p2, v3, Le/a/e/k;->f:I

    .line 670
    iget-object v3, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v3, v3, Le/a/e/k;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-static {}, Le/a/e/k;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v5, Le/a/e/m;

    const-string v6, "OkHttp %s stream %d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v8, v8, Le/a/e/k;->e:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-direct {v5, p0, v6, v4, v2}, Le/a/e/m;-><init>(Le/a/e/k$d;Ljava/lang/String;[Ljava/lang/Object;Le/a/e/q;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 684
    monitor-exit v0

    return-void

    .line 686
    .end local v2    # "newStream":Le/a/e/q;
    .end local v10    # "headers":Le/x;
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    invoke-virtual {v1, p4}, Le/a/e/q;->a(Ljava/util/List;)V

    .line 690
    if-eqz p1, :cond_5

    invoke-virtual {v1}, Le/a/e/q;->i()V

    .line 691
    :cond_5
    return-void

    .line 686
    .end local v1    # "stream":Le/a/e/q;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(ZILf/h;I)V
    .locals 4
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lf/h;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v0, p2}, Le/a/e/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v0, p2, p3, p4, p1}, Le/a/e/k;->a(ILf/h;IZ)V

    .line 630
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-virtual {v0, p2}, Le/a/e/k;->a(I)Le/a/e/q;

    move-result-object v0

    .line 633
    .local v0, "dataStream":Le/a/e/q;
    if-nez v0, :cond_1

    .line 634
    iget-object v1, p0, Le/a/e/k$d;->c:Le/a/e/k;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->b:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, p2, v2}, Le/a/e/k;->c(ILokhttp3/internal/http2/ErrorCode;)V

    .line 635
    iget-object v1, p0, Le/a/e/k$d;->c:Le/a/e/k;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Le/a/e/k;->f(J)V

    .line 636
    int-to-long v1, p4

    invoke-interface {p3, v1, v2}, Lf/h;->skip(J)V

    .line 637
    return-void

    .line 639
    :cond_1
    invoke-virtual {v0, p3, p4}, Le/a/e/q;->a(Lf/h;I)V

    .line 640
    if-eqz p1, :cond_2

    .line 641
    invoke-virtual {v0}, Le/a/e/q;->i()V

    .line 643
    :cond_2
    return-void
.end method

.method public a(ZLe/a/e/v;)V
    .locals 12
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Le/a/e/v;

    .line 705
    const-wide/16 v0, 0x0

    .line 706
    .local v0, "delta":J
    const/4 v2, 0x0

    .line 707
    .local v2, "streamsToNotify":[Le/a/e/q;
    iget-object v3, p0, Le/a/e/k$d;->c:Le/a/e/k;

    monitor-enter v3

    .line 708
    :try_start_0
    iget-object v4, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v4, v4, Le/a/e/k;->p:Le/a/e/v;

    invoke-virtual {v4}, Le/a/e/v;->c()I

    move-result v4

    .line 709
    .local v4, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    iget-object v5, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v5, v5, Le/a/e/k;->p:Le/a/e/v;

    invoke-virtual {v5}, Le/a/e/v;->a()V

    .line 710
    :cond_0
    iget-object v5, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v5, v5, Le/a/e/k;->p:Le/a/e/v;

    invoke-virtual {v5, p2}, Le/a/e/v;->a(Le/a/e/v;)V

    .line 711
    invoke-virtual {p0, p2}, Le/a/e/k$d;->a(Le/a/e/v;)V

    .line 712
    iget-object v5, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v5, v5, Le/a/e/k;->p:Le/a/e/v;

    invoke-virtual {v5}, Le/a/e/v;->c()I

    move-result v5

    .line 713
    .local v5, "peerInitialWindowSize":I
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2

    if-eq v5, v4, :cond_2

    .line 714
    sub-int v6, v5, v4

    int-to-long v0, v6

    .line 715
    iget-object v6, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-boolean v6, v6, Le/a/e/k;->q:Z

    if-nez v6, :cond_1

    .line 716
    iget-object v6, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iput-boolean v7, v6, Le/a/e/k;->q:Z

    .line 718
    :cond_1
    iget-object v6, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v6, v6, Le/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 719
    iget-object v6, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v6, v6, Le/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    iget-object v8, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v8, v8, Le/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Le/a/e/q;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Le/a/e/q;

    move-object v2, v6

    .line 722
    :cond_2
    invoke-static {}, Le/a/e/k;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v8, Le/a/e/n;

    const-string v9, "OkHttp %s settings"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, p0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v10, v10, Le/a/e/k;->e:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v7, v11

    invoke-direct {v8, p0, v9, v7}, Le/a/e/n;-><init>(Le/a/e/k$d;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 727
    .end local v4    # "priorWriteWindowSize":I
    .end local v5    # "peerInitialWindowSize":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 728
    if-eqz v2, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_3

    .line 729
    array-length v3, v2

    :goto_0
    if-ge v11, v3, :cond_3

    aget-object v4, v2, v11

    .line 730
    .local v4, "stream":Le/a/e/q;
    monitor-enter v4

    .line 731
    :try_start_1
    invoke-virtual {v4, v0, v1}, Le/a/e/q;->a(J)V

    .line 732
    monitor-exit v4

    .line 729
    .end local v4    # "stream":Le/a/e/q;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 732
    .restart local v4    # "stream":Le/a/e/q;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 735
    .end local v4    # "stream":Le/a/e/q;
    :cond_3
    return-void

    .line 727
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public b()V
    .locals 0

    .line 755
    return-void
.end method
