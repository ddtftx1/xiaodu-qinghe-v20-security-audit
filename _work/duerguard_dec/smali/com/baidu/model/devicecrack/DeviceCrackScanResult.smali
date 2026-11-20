.class public Lcom/baidu/model/devicecrack/DeviceCrackScanResult;
.super Ljava/lang/Object;
.source "DeviceCrackScanResult.java"


# instance fields
.field public final caStoreUnsafe:Z

.field public final deviceCracked:Z

.field public final deviceCrackedReason:Ljava/lang/String;

.field public final deviceDebuggable:Z

.field public final deviceHooked:Z

.field public final deviceMagisked:Z

.field public final deviceMounted:Z

.field public final deviceRooted:Z

.field public final deviceUnlocked:Z

.field public final errorinfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final networkUnsafe:Z

.field public final seLinuxDisabled:Z

.field public final usbDebuggable:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p1, "errorinfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v13}, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;-><init>(Ljava/util/List;ZLjava/lang/String;ZZZZZZZZZZ)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLjava/lang/String;ZZZZZZZZZZ)V
    .locals 0
    .param p2, "deviceCracked"    # Z
    .param p3, "deviceCrackedReason"    # Ljava/lang/String;
    .param p4, "seLinuxDisabled"    # Z
    .param p5, "usbDebuggable"    # Z
    .param p6, "deviceDebuggable"    # Z
    .param p7, "deviceRooted"    # Z
    .param p8, "deviceHooked"    # Z
    .param p9, "networkUnsafe"    # Z
    .param p10, "caStoreUnsafe"    # Z
    .param p11, "deviceMagisked"    # Z
    .param p12, "deviceMounted"    # Z
    .param p13, "deviceUnlocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "ZZZZZZZZZZ)V"
        }
    .end annotation

    .line 75
    .local p1, "errorinfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->errorinfo:Ljava/util/List;

    .line 77
    iput-boolean p2, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceCracked:Z

    .line 78
    iput-object p3, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceCrackedReason:Ljava/lang/String;

    .line 79
    iput-boolean p4, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->seLinuxDisabled:Z

    .line 80
    iput-boolean p5, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->usbDebuggable:Z

    .line 81
    iput-boolean p6, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceDebuggable:Z

    .line 82
    iput-boolean p7, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceRooted:Z

    .line 83
    iput-boolean p8, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceHooked:Z

    .line 84
    iput-boolean p9, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->networkUnsafe:Z

    .line 85
    iput-boolean p10, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->caStoreUnsafe:Z

    .line 86
    iput-boolean p11, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceMagisked:Z

    .line 87
    iput-boolean p12, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceMounted:Z

    .line 88
    iput-boolean p13, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceUnlocked:Z

    .line 89
    return-void
.end method


# virtual methods
.method public getDeviceCrackedReason()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceCrackedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorinfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->errorinfo:Ljava/util/List;

    return-object v0
.end method

.method public isCaStoreUnsafe()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->caStoreUnsafe:Z

    return v0
.end method

.method public isDeviceCracked()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceCracked:Z

    return v0
.end method

.method public isDeviceDebuggable()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceDebuggable:Z

    return v0
.end method

.method public isDeviceHooked()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceHooked:Z

    return v0
.end method

.method public isDeviceMagisked()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceMagisked:Z

    return v0
.end method

.method public isDeviceMounted()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceMounted:Z

    return v0
.end method

.method public isDeviceRooted()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceRooted:Z

    return v0
.end method

.method public isDeviceUnlocked()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceUnlocked:Z

    return v0
.end method

.method public isNetworkUnsafe()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->networkUnsafe:Z

    return v0
.end method

.method public isSeLinuxDisabled()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->seLinuxDisabled:Z

    return v0
.end method

.method public isUsbDebuggable()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->usbDebuggable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceCrackScanResult{errorinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->errorinfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceCracked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceCracked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceCrackedReason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceCrackedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", seLinuxDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->seLinuxDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", usbDebuggable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->usbDebuggable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceDebuggable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceDebuggable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceRooted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceRooted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceHooked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceHooked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", networkUnsafe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->networkUnsafe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caStoreUnsafe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->caStoreUnsafe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceMagisked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceMagisked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceMounted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceMounted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceUnlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->deviceUnlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
