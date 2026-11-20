.class Lcom/sprd/srmi/ISrmiService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISrmiService.java"

# interfaces
.implements Lcom/sprd/srmi/ISrmiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/srmi/ISrmiService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/sprd/srmi/ISrmiService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 479
    return-void
.end method


# virtual methods
.method public allocTxMessage(Ljava/lang/String;II)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 601
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 606
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 607
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 608
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sprd/srmi/ISrmiService;->allocTxMessage(Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 608
    return v3

    .line 611
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 615
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 617
    nop

    .line 618
    return v2

    .line 615
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 617
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public create(Ljava/lang/String;I)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 549
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 553
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 554
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 555
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sprd/srmi/ISrmiService;->create(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 555
    return v3

    .line 558
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 562
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 564
    nop

    .line 565
    return v2

    .line 562
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 564
    throw v2
.end method

.method public destroy(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 573
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 575
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 579
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 580
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 581
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sprd/srmi/ISrmiService;->destroy(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 582
    return-void

    .line 585
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    nop

    .line 591
    return-void

    .line 588
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    throw v2
.end method

.method public freeRxMessage(Ljava/lang/String;II)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 652
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 654
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 659
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 660
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 661
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sprd/srmi/ISrmiService;->freeRxMessage(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 662
    return-void

    .line 665
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    nop

    .line 671
    return-void

    .line 668
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    throw v2
.end method

.method public freeTxMessage(Ljava/lang/String;II)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 626
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 628
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 633
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 634
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 635
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sprd/srmi/ISrmiService;->freeTxMessage(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 636
    return-void

    .line 639
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 644
    nop

    .line 645
    return-void

    .line 642
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 644
    throw v2
.end method

.method public getByteExtra(Ljava/lang/String;III)B
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 856
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 862
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 863
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 864
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sprd/srmi/ISrmiService;->getByteExtra(Ljava/lang/String;III)B

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 864
    return v3

    .line 867
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 871
    .local v2, "_result":B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 873
    nop

    .line 874
    return v2

    .line 871
    .end local v2    # "_result":B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 873
    throw v2
.end method

.method public getIntExtra(Ljava/lang/String;III)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 911
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 914
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 920
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 921
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 922
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sprd/srmi/ISrmiService;->getIntExtra(Ljava/lang/String;III)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    return v3

    .line 925
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 926
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 929
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 931
    nop

    .line 932
    return v2

    .line 929
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 931
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 486
    const-string v0, "com.sprd.srmi.ISrmiService"

    return-object v0
.end method

.method public getShortExtra(Ljava/lang/String;III)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 891
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 892
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 893
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sprd/srmi/ISrmiService;->getShortExtra(Ljava/lang/String;III)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    return v3

    .line 896
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 897
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 900
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 902
    nop

    .line 903
    return v2

    .line 900
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 902
    throw v2
.end method

.method public getStringExtra(Ljava/lang/String;III)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 940
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 943
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 949
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 950
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 951
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sprd/srmi/ISrmiService;->getStringExtra(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 951
    return-object v3

    .line 954
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 955
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 958
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    nop

    .line 961
    return-object v2

    .line 958
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    throw v2
.end method

.method public getTLV(Ljava/lang/String;III)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 969
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 978
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 979
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 980
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sprd/srmi/ISrmiService;->getTLV(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 980
    return-object v3

    .line 983
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 984
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 987
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 989
    nop

    .line 990
    return-object v2

    .line 987
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 989
    throw v2
.end method

.method public putByteExtra(Ljava/lang/String;IIIB)I
    .locals 10
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

    .line 732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByte(B)V

    .line 742
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 743
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 744
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 745
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sprd/srmi/ISrmiService;->putByteExtra(Ljava/lang/String;IIIB)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 745
    return v3

    .line 748
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 749
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 752
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 754
    nop

    .line 755
    return v2

    .line 752
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 754
    throw v2
.end method

.method public putIntExtra(Ljava/lang/String;IIII)I
    .locals 10
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

    .line 792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 793
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 803
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 804
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 805
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sprd/srmi/ISrmiService;->putIntExtra(Ljava/lang/String;IIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    return v3

    .line 808
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 809
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 812
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 814
    nop

    .line 815
    return v2

    .line 812
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 814
    throw v2
.end method

.method public putShortExtra(Ljava/lang/String;IIII)I
    .locals 10
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

    .line 762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 763
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 766
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 773
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 774
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 775
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sprd/srmi/ISrmiService;->putShortExtra(Ljava/lang/String;IIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 775
    return v3

    .line 778
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 779
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 782
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 784
    nop

    .line 785
    return v2

    .line 782
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 784
    throw v2
.end method

.method public putStringExtra(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 10
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

    .line 822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 823
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 826
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 832
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 833
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 834
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 835
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sprd/srmi/ISrmiService;->putStringExtra(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    return v3

    .line 838
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 842
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
    nop

    .line 845
    return v2

    .line 842
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
    throw v2
.end method

.method public putTLV(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 10
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

    .line 997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 998
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1001
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1007
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1008
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1009
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1010
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sprd/srmi/ISrmiService;->putTLV(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1010
    return v3

    .line 1013
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1017
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    nop

    .line 1020
    return v2

    .line 1017
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    throw v2
.end method

.method public recvMessage(Ljava/lang/String;I)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 706
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 709
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 713
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 714
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 715
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sprd/srmi/ISrmiService;->recvMessage(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 715
    return v3

    .line 718
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 719
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 722
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 724
    nop

    .line 725
    return v2

    .line 722
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 724
    throw v2
.end method

.method public registerCallback(Lcom/sprd/srmi/ISrmiCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/sprd/srmi/ISrmiCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 491
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 493
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 494
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sprd/srmi/ISrmiCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 495
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 496
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 497
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 498
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sprd/srmi/ISrmiService;->registerCallback(Lcom/sprd/srmi/ISrmiCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    return-void

    .line 502
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 507
    nop

    .line 508
    return-void

    .line 505
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 507
    throw v2
.end method

.method public sendMessage(Ljava/lang/String;II)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 686
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 687
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 688
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sprd/srmi/ISrmiService;->sendMessage(Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 688
    return v3

    .line 691
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 695
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 697
    nop

    .line 698
    return v2

    .line 695
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 697
    throw v2
.end method

.method public unregisterCallback(Lcom/sprd/srmi/ISrmiCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/sprd/srmi/ISrmiCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 512
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 514
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprd.srmi.ISrmiService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sprd/srmi/ISrmiCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 516
    iget-object v2, p0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 517
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 518
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 519
    invoke-static {}, Lcom/sprd/srmi/ISrmiService$Stub;->getDefaultImpl()Lcom/sprd/srmi/ISrmiService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sprd/srmi/ISrmiService;->unregisterCallback(Lcom/sprd/srmi/ISrmiCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 520
    return-void

    .line 523
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    nop

    .line 529
    return-void

    .line 526
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw v2
.end method
