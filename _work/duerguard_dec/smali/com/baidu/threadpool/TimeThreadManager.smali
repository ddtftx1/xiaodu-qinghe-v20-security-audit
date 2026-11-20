.class public final enum Lcom/baidu/threadpool/TimeThreadManager;
.super Ljava/lang/Enum;
.source "TimeThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/threadpool/TimeThreadManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/threadpool/TimeThreadManager;

.field public static final synthetic b:[Lcom/baidu/threadpool/TimeThreadManager;


# instance fields
.field public final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/baidu/threadpool/TimeThreadManager;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/threadpool/TimeThreadManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/threadpool/TimeThreadManager;->a:Lcom/baidu/threadpool/TimeThreadManager;

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/threadpool/TimeThreadManager;

    sget-object v2, Lcom/baidu/threadpool/TimeThreadManager;->a:Lcom/baidu/threadpool/TimeThreadManager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/threadpool/TimeThreadManager;->b:[Lcom/baidu/threadpool/TimeThreadManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/baidu/threadpool/TimeThreadManager;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/threadpool/TimeThreadManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/baidu/threadpool/TimeThreadManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/threadpool/TimeThreadManager;

    return-object v0
.end method

.method public static values()[Lcom/baidu/threadpool/TimeThreadManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/baidu/threadpool/TimeThreadManager;->b:[Lcom/baidu/threadpool/TimeThreadManager;

    invoke-virtual {v0}, [Lcom/baidu/threadpool/TimeThreadManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/threadpool/TimeThreadManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 8
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/baidu/threadpool/TimeThreadManager;->c:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/baidu/threadpool/TimeThreadManager;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 41
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
