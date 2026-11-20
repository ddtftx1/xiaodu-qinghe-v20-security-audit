.class public final enum Lcom/baidu/threadpool/ThreadManager;
.super Ljava/lang/Enum;
.source "ThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/threadpool/ThreadManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/threadpool/ThreadManager;

.field public static final synthetic b:[Lcom/baidu/threadpool/ThreadManager;


# instance fields
.field public final c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/baidu/threadpool/ThreadManager;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/threadpool/ThreadManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/threadpool/ThreadManager;->a:Lcom/baidu/threadpool/ThreadManager;

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/threadpool/ThreadManager;

    sget-object v2, Lcom/baidu/threadpool/ThreadManager;->a:Lcom/baidu/threadpool/ThreadManager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/threadpool/ThreadManager;->b:[Lcom/baidu/threadpool/ThreadManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Ld/a/h/a;

    const-string p2, "duer_pool"

    invoke-direct {v7, p2}, Ld/a/h/a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x19

    const-wide/16 v3, 0x1e

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/baidu/threadpool/ThreadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/threadpool/ThreadManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/baidu/threadpool/ThreadManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/threadpool/ThreadManager;

    return-object v0
.end method

.method public static values()[Lcom/baidu/threadpool/ThreadManager;
    .locals 1

    .line 18
    sget-object v0, Lcom/baidu/threadpool/ThreadManager;->b:[Lcom/baidu/threadpool/ThreadManager;

    invoke-virtual {v0}, [Lcom/baidu/threadpool/ThreadManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/threadpool/ThreadManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 28
    const-string v0, "ThreadManager"

    const/4 v1, 0x0

    .line 30
    .local v1, "futrue":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    const-string v2, "submit"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v2, p0, Lcom/baidu/threadpool/ThreadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_2

    .line 35
    :catch_0
    move-exception v2

    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    goto :goto_1

    .line 36
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 33
    .end local v2    # "e":Ljava/lang/Exception;
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_1
    iget-object v2, p0, Lcom/baidu/threadpool/ThreadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 34
    iget-object v2, p0, Lcom/baidu/threadpool/ThreadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 37
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_2
    nop

    .line 39
    :goto_3
    return-object v1
.end method

.method public a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 43
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const-string v0, "ThreadManager"

    const/4 v1, 0x0

    .line 45
    .local v1, "futrue":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :try_start_0
    const-string v2, "submit"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v2, p0, Lcom/baidu/threadpool/ThreadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_2

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    goto :goto_1

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 48
    .end local v2    # "e":Ljava/lang/Exception;
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_1
    iget-object v2, p0, Lcom/baidu/threadpool/ThreadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 49
    iget-object v2, p0, Lcom/baidu/threadpool/ThreadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 52
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_2
    nop

    .line 54
    :goto_3
    return-object v1
.end method
