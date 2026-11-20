.class public final Ld/a/b/b;
.super Ld/a/b/d$a;
.source "DuerGuardContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/duerguard/DuerGuardContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ld/a/b/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJZFDLjava/lang/String;)V
    .locals 0
    .param p1, "anInt"    # I
    .param p2, "aLong"    # J
    .param p4, "aBoolean"    # Z
    .param p5, "aFloat"    # F
    .param p6, "aDouble"    # D
    .param p8, "aString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public a(Ld/a/b/c;)V
    .locals 2
    .param p1, "cb"    # Ld/a/b/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceCrackScanCallback register address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuerGuardContentProvider"

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    invoke-virtual {v0, p1}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a(Ld/a/b/c;)V

    .line 92
    return-void
.end method

.method public a(Ld/a/b/e;Ljava/lang/String;)V
    .locals 2
    .param p1, "cb"    # Ld/a/b/e;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RiskScanCallback register address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuerGuardContentProvider"

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/baidu/duerguard/risk/RiskScanManager;->a:Lcom/baidu/duerguard/risk/RiskScanManager;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/duerguard/risk/RiskScanManager;->a(Ld/a/b/e;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public a(Ld/a/b/f;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cb"    # Ld/a/b/f;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "waitTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirusScanCallback  register address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuerGuardContentProvider"

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Ld/a/b/f;Ljava/lang/String;I)V

    .line 86
    return-void
.end method
