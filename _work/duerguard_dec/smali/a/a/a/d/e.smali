.class public La/a/a/d/e;
.super Ljava/lang/Object;
.source "TimerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:La/a/a/e/b;

.field public final b:I


# direct methods
.method public constructor <init>(La/a/a/e/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/a/a/d/e;->a:La/a/a/e/b;

    .line 3
    iput p2, p0, La/a/a/d/e;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, La/a/a/d/e;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    nop

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "timer run-delay[%d]min"

    invoke-static {v2, v1}, La/a/a/b/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 6
    new-instance v2, La/a/a/d/d;

    invoke-direct {v2, p0}, La/a/a/d/d;-><init>(La/a/a/d/e;)V

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
