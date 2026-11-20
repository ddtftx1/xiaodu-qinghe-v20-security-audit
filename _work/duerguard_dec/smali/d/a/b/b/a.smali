.class public Ld/a/b/b/a;
.super Ljava/lang/Object;
.source "DeviceCrackScanManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/b/b/b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/baidu/model/devicecrack/DeviceCrackScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ld/a/b/b/b;


# direct methods
.method public constructor <init>(Ld/a/b/b/b;)V
    .locals 0
    .param p1, "this$1"    # Ld/a/b/b/b;

    .line 48
    iput-object p1, p0, Ld/a/b/b/a;->a:Ld/a/b/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/baidu/model/devicecrack/DeviceCrackScanResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    :try_start_0
    const-string v0, "DeviceCrackManager"

    const-string v1, "start scanDeviceCrackAsync"

    invoke-static {v0, v1}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/a/d/a;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 54
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Ld/a/b/b/a/b;->a(Ljava/util/Map;)V

    .line 55
    invoke-static {v0}, Ld/a/b/b/a/b;->c(Ljava/util/Map;)Lcom/baidu/model/devicecrack/DeviceCrackScanResult;

    move-result-object v1

    .line 56
    .local v1, "result":Lcom/baidu/model/devicecrack/DeviceCrackScanResult;
    iget-object v2, p0, Ld/a/b/b/a;->a:Ld/a/b/b/b;

    iget-object v2, v2, Ld/a/b/b/b;->b:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    invoke-static {v2, v1}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;Lcom/baidu/model/devicecrack/DeviceCrackScanResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object v1

    .line 58
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "result":Lcom/baidu/model/devicecrack/DeviceCrackScanResult;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    iget-object v1, p0, Ld/a/b/b/a;->a:Ld/a/b/b/b;

    iget-object v1, v1, Ld/a/b/b/b;->b:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "duerguard innner error:%s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 60
    invoke-static {v1, v2}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;[Ljava/lang/Object;)Lcom/baidu/model/devicecrack/DeviceCrackScanResult;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Ld/a/b/b/a;->call()Lcom/baidu/model/devicecrack/DeviceCrackScanResult;

    move-result-object v0

    return-object v0
.end method
