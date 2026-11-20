.class public Ld/a/b/g/d;
.super Lcom/baidu/sofire/ac/Callback;
.source "VirusScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/b/g/e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/a/b/g/e;


# direct methods
.method public constructor <init>(Ld/a/b/g/e;)V
    .locals 0
    .param p1, "this$1"    # Ld/a/b/g/e;

    .line 303
    iput-object p1, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    invoke-direct {p0}, Lcom/baidu/sofire/ac/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onBegin([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # [Ljava/lang/Object;

    .line 306
    const-string v0, "VirusScanManager"

    const-string v1, "sdk begin scan."

    invoke-static {v0, v1}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-super {p0, p1}, Lcom/baidu/sofire/ac/Callback;->onBegin([Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "param"    # [Ljava/lang/Object;

    .line 332
    const-string v0, "duerguard innner error:%s"

    iget-object v1, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v1, v1, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v1}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 334
    const/4 v1, -0x2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v5, v5, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v5, p1}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b(Lcom/baidu/duerguard/virusscan/VirusScanManager;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 335
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/virus/AvpScanResult;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 336
    iget-object v6, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v6, v6, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v6, v5}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;Ljava/util/List;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v6, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v6, v6, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    new-array v8, v3, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avpScanResults is empty="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 339
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 338
    invoke-static {v6, v7}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/virus/AvpScanResult;>;"
    :goto_0
    goto :goto_1

    .line 342
    :catch_0
    move-exception v5

    .line 343
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    iget-object v6, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v6, v6, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    new-array v1, v3, [Ljava/lang/Object;

    .line 345
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 344
    invoke-static {v6, v2}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;[Ljava/lang/Object;)V

    .line 347
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v0, v0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b(Lcom/baidu/duerguard/virusscan/VirusScanManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 348
    iget-object v0, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v0, v0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 349
    invoke-super {p0, p1}, Lcom/baidu/sofire/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs onError([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "param"    # [Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v0, v0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 319
    :try_start_0
    iget-object v0, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v0, v0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v0, p1}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    iget-object v1, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v1, v1, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "duerguard innner error:%s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 322
    invoke-static {v1, v2}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;[Ljava/lang/Object;)V

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v0, v0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b(Lcom/baidu/duerguard/virusscan/VirusScanManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 326
    iget-object v0, p0, Ld/a/b/g/d;->a:Ld/a/b/g/e;

    iget-object v0, v0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 327
    invoke-super {p0, p1}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs onProgress1([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # [Ljava/lang/Object;

    .line 312
    invoke-super {p0, p1}, Lcom/baidu/sofire/ac/Callback;->onProgress1([Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
