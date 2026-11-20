.class public Lcom/sprd/srmi/ISrmiService$Default;
.super Ljava/lang/Object;
.source "ISrmiService.java"

# interfaces
.implements Lcom/sprd/srmi/ISrmiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/srmi/ISrmiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocTxMessage(Ljava/lang/String;II)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public create(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public destroy(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public freeRxMessage(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public freeTxMessage(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public getByteExtra(Ljava/lang/String;III)B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getIntExtra(Ljava/lang/String;III)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getShortExtra(Ljava/lang/String;III)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getStringExtra(Ljava/lang/String;III)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTLV(Ljava/lang/String;III)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public putByteExtra(Ljava/lang/String;IIIB)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .param p5, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public putIntExtra(Ljava/lang/String;IIII)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .param p5, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public putShortExtra(Ljava/lang/String;IIII)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .param p5, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public putStringExtra(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public putTLV(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public recvMessage(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public registerCallback(Lcom/sprd/srmi/ISrmiCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sprd/srmi/ISrmiCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public sendMessage(Ljava/lang/String;II)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterCallback(Lcom/sprd/srmi/ISrmiCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sprd/srmi/ISrmiCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
