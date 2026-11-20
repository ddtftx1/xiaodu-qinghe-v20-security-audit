.class public Ld/a/b/g/a;
.super Ljava/lang/Object;
.source "VirusScanManager.java"

# interfaces
.implements Lcom/baidu/sofire/ac/BDModuleLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/duerguard/virusscan/VirusScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/duerguard/virusscan/VirusScanManager;


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/virusscan/VirusScanManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/duerguard/virusscan/VirusScanManager;

    .line 60
    iput-object p1, p0, Ld/a/b/g/a;->a:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(II)V
    .locals 2
    .param p1, "moduleId"    # I
    .param p2, "errorCode"    # I

    .line 68
    iget-object v0, p0, Ld/a/b/g/a;->a:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    const-string v1, "init"

    invoke-static {v0, p1, p2, v1}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Lcom/baidu/duerguard/virusscan/VirusScanManager;IILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public onSuccess(I)V
    .locals 3
    .param p1, "moduleId"    # I

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[methodName=init,moduleId=%d]sofire\u521d\u59cb\u5316\u6210\u529f\u3002"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirusScanManager"

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
