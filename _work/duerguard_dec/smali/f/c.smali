.class public Lf/c;
.super Lf/z;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/c$a;
    }
.end annotation


# static fields
.field public static final e:J

.field public static final f:J

.field public static g:Lf/c;


# instance fields
.field public h:Z

.field public i:Lf/c;

.field public j:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lf/c;->e:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lf/c;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lf/c;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lf/z;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lf/c;JZ)V
    .locals 8
    .param p0, "node"    # Lf/c;
    .param p1, "timeoutNanos"    # J
    .param p3, "hasDeadline"    # Z

    const-class v0, Lf/c;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lf/c;->g:Lf/c;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lf/c;

    invoke-direct {v1}, Lf/c;-><init>()V

    sput-object v1, Lf/c;->g:Lf/c;

    .line 88
    new-instance v1, Lf/c$a;

    invoke-direct {v1}, Lf/c$a;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 92
    .local v1, "now":J
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    .line 95
    invoke-virtual {p0}, Lf/z;->c()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lf/c;->j:J

    goto :goto_0

    .line 96
    :cond_1
    cmp-long v3, p1, v3

    if-eqz v3, :cond_2

    .line 97
    add-long v3, v1, p1

    iput-wide v3, p0, Lf/c;->j:J

    goto :goto_0

    .line 98
    :cond_2
    if-eqz p3, :cond_6

    .line 99
    invoke-virtual {p0}, Lf/z;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lf/c;->j:J

    .line 105
    :goto_0
    invoke-virtual {p0, v1, v2}, Lf/c;->b(J)J

    move-result-wide v3

    .line 106
    .local v3, "remainingNanos":J
    sget-object v5, Lf/c;->g:Lf/c;

    .line 107
    .local v5, "prev":Lf/c;
    :goto_1
    iget-object v6, v5, Lf/c;->i:Lf/c;

    if-eqz v6, :cond_4

    iget-object v6, v5, Lf/c;->i:Lf/c;

    invoke-virtual {v6, v1, v2}, Lf/c;->b(J)J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-gez v6, :cond_3

    goto :goto_2

    .line 106
    :cond_3
    iget-object v6, v5, Lf/c;->i:Lf/c;

    move-object v5, v6

    goto :goto_1

    .line 108
    :cond_4
    :goto_2
    iget-object v6, v5, Lf/c;->i:Lf/c;

    iput-object v6, p0, Lf/c;->i:Lf/c;

    .line 109
    iput-object p0, v5, Lf/c;->i:Lf/c;

    .line 110
    sget-object v6, Lf/c;->g:Lf/c;

    if-ne v5, v6, :cond_5

    .line 111
    const-class v6, Lf/c;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v5    # "prev":Lf/c;
    :cond_5
    monitor-exit v0

    return-void

    .line 101
    .end local v3    # "remainingNanos":J
    :cond_6
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v1    # "now":J
    .end local p0    # "node":Lf/c;
    .end local p1    # "timeoutNanos":J
    .end local p3    # "hasDeadline":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Lf/c;)Z
    .locals 3
    .param p0, "node"    # Lf/c;

    const-class v0, Lf/c;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lf/c;->g:Lf/c;

    .local v1, "prev":Lf/c;
    :goto_0
    if-eqz v1, :cond_1

    .line 129
    iget-object v2, v1, Lf/c;->i:Lf/c;

    if-ne v2, p0, :cond_0

    .line 130
    iget-object v2, p0, Lf/c;->i:Lf/c;

    iput-object v2, v1, Lf/c;->i:Lf/c;

    .line 131
    const/4 v2, 0x0

    iput-object v2, p0, Lf/c;->i:Lf/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 128
    :cond_0
    move-object v1, v2

    goto :goto_0

    .line 137
    .end local v1    # "prev":Lf/c;
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 127
    .end local p0    # "node":Lf/c;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static g()Lf/c;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 342
    sget-object v0, Lf/c;->g:Lf/c;

    iget-object v0, v0, Lf/c;->i:Lf/c;

    .line 345
    .local v0, "node":Lf/c;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 347
    .local v2, "startNanos":J
    const-class v4, Lf/c;

    sget-wide v5, Lf/c;->e:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 348
    sget-object v4, Lf/c;->g:Lf/c;

    iget-object v4, v4, Lf/c;->i:Lf/c;

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-wide v6, Lf/c;->f:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 349
    sget-object v1, Lf/c;->g:Lf/c;

    goto :goto_0

    .line 350
    :cond_0
    nop

    .line 348
    :goto_0
    return-object v1

    .line 353
    .end local v2    # "startNanos":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lf/c;->b(J)J

    move-result-wide v2

    .line 356
    .local v2, "waitNanos":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 359
    const-wide/32 v4, 0xf4240

    div-long v6, v2, v4

    .line 360
    .local v6, "waitMillis":J
    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 361
    const-class v4, Lf/c;

    long-to-int v5, v2

    invoke-virtual {v4, v6, v7, v5}, Ljava/lang/Object;->wait(JI)V

    .line 362
    return-object v1

    .line 366
    .end local v6    # "waitMillis":J
    :cond_2
    sget-object v4, Lf/c;->g:Lf/c;

    iget-object v5, v0, Lf/c;->i:Lf/c;

    iput-object v5, v4, Lf/c;->i:Lf/c;

    .line 367
    iput-object v1, v0, Lf/c;->i:Lf/c;

    .line 368
    return-object v0
.end method


# virtual methods
.method public final a(Lf/w;)Lf/w;
    .locals 1
    .param p1, "sink"    # Lf/w;

    .line 160
    new-instance v0, Lf/a;

    invoke-direct {v0, p0, p1}, Lf/a;-><init>(Lf/c;Lf/w;)V

    return-object v0
.end method

.method public final a(Lf/x;)Lf/x;
    .locals 1
    .param p1, "source"    # Lf/x;

    .line 232
    new-instance v0, Lf/b;

    invoke-direct {v0, p0, p1}, Lf/b;-><init>(Lf/c;Lf/x;)V

    return-object v0
.end method

.method public final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lf/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 285
    :cond_0
    invoke-virtual {p0, p1}, Lf/c;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "throwOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lf/c;->i()Z

    move-result v0

    .line 275
    .local v0, "timedOut":Z
    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lf/c;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 276
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(J)J
    .locals 2
    .param p1, "now"    # J

    .line 145
    iget-wide v0, p0, Lf/c;->j:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;

    .line 294
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 298
    :cond_0
    return-object v0
.end method

.method public final h()V
    .locals 5

    .line 73
    iget-boolean v0, p0, Lf/c;->h:Z

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lf/z;->f()J

    move-result-wide v0

    .line 75
    .local v0, "timeoutNanos":J
    invoke-virtual {p0}, Lf/z;->d()Z

    move-result v2

    .line 76
    .local v2, "hasDeadline":Z
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lf/c;->h:Z

    .line 80
    invoke-static {p0, v0, v1, v2}, Lf/c;->a(Lf/c;JZ)V

    .line 81
    return-void

    .line 73
    .end local v0    # "timeoutNanos":J
    .end local v2    # "hasDeadline":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Z
    .locals 2

    .line 120
    iget-boolean v0, p0, Lf/c;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    iput-boolean v1, p0, Lf/c;->h:Z

    .line 122
    invoke-static {p0}, Lf/c;->a(Lf/c;)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0

    .line 153
    return-void
.end method
