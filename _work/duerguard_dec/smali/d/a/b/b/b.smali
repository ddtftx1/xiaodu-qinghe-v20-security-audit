.class public Ld/a/b/b/b;
.super Ljava/lang/Object;
.source "DeviceCrackScanManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a(Ld/a/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/a/b/c;

.field public final synthetic b:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;Ld/a/b/c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    .line 43
    iput-object p1, p0, Ld/a/b/b/b;->b:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    iput-object p2, p0, Ld/a/b/b/b;->a:Ld/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 46
    iget-object v0, p0, Ld/a/b/b/b;->b:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    invoke-static {v0}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    iget-object v1, p0, Ld/a/b/b/b;->a:Ld/a/b/c;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 47
    sget-object v0, Lcom/baidu/threadpool/ThreadManager;->a:Lcom/baidu/threadpool/ThreadManager;

    new-instance v1, Ld/a/b/b/a;

    invoke-direct {v1, p0}, Ld/a/b/b/a;-><init>(Ld/a/b/b/b;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/baidu/threadpool/ThreadManager;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 65
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/baidu/model/devicecrack/DeviceCrackScanResult;>;"
    const/4 v1, 0x0

    .line 67
    .local v1, "result":Lcom/baidu/model/devicecrack/DeviceCrackScanResult;
    const-wide/16 v2, 0x12c

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    iget-object v3, p0, Ld/a/b/b/b;->b:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, -0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    new-array v7, v5, [Ljava/lang/Object;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v6, "duerguard innner error:%s"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 74
    invoke-static {v3, v4}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;[Ljava/lang/Object;)Lcom/baidu/model/devicecrack/DeviceCrackScanResult;

    move-result-object v1

    goto :goto_1

    .line 68
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 69
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v2}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 70
    iget-object v3, p0, Ld/a/b/b/b;->b:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, -0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    new-array v7, v5, [Ljava/lang/Object;

    const/16 v8, 0x12c

    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v6, "obtain data timeout\uff08> %d seconds\uff09,please try again later"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 70
    invoke-static {v3, v4}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;[Ljava/lang/Object;)Lcom/baidu/model/devicecrack/DeviceCrackScanResult;

    move-result-object v1

    .line 76
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    nop

    .line 77
    :goto_1
    iget-object v2, p0, Ld/a/b/b/b;->b:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    invoke-static {v2, v1}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->b(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;Lcom/baidu/model/devicecrack/DeviceCrackScanResult;)V

    .line 78
    iget-object v2, p0, Ld/a/b/b/b;->b:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    const-wide/16 v3, 0x5

    invoke-static {v2, v3, v4}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;J)V

    .line 79
    return-void
.end method
