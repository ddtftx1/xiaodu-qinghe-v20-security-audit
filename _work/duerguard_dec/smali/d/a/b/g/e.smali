.class public Ld/a/b/g/e;
.super Ljava/lang/Object;
.source "VirusScanManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Ld/a/b/f;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lcom/baidu/duerguard/virusscan/VirusScanManager;


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/virusscan/VirusScanManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/duerguard/virusscan/VirusScanManager;

    .line 288
    iput-object p1, p0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    iput-object p2, p0, Ld/a/b/g/e;->a:Ljava/lang/String;

    iput p3, p0, Ld/a/b/g/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call scan apk file start,scan apk path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/a/b/g/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirusScanManager"

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    iget v2, p0, Ld/a/b/g/e;->b:I

    invoke-virtual {v0, v2}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 297
    const-string v0, "Sofire sdk initialized successfully."

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Ld/a/b/g/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    const v1, 0x186f8

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/List;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/baidu/sofire/ac/Callback;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const/16 v4, 0x19

    .line 303
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    new-instance v4, Ld/a/b/g/d;

    invoke-direct {v4, p0}, Ld/a/b/g/d;-><init>(Ld/a/b/g/e;)V

    aput-object v4, v2, v7

    .line 301
    const-string v4, "startFolderScan"

    invoke-static {v1, v4, v3, v2}, Lcom/baidu/sofire/ac/FH;->callSync(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    .line 353
    :try_start_0
    iget-object v1, p0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v1}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b(Lcom/baidu/duerguard/virusscan/VirusScanManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 356
    iget-object v2, p0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    .line 357
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "duerguard innner error:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 356
    invoke-static {v2, v3}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;[Ljava/lang/Object;)V

    .line 359
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, p0, Ld/a/b/g/e;->c:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v1}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 360
    return-void
.end method
