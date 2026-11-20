.class Lcom/sprd/srmi/SrmiManager$MyService;
.super Lcom/sprd/srmi/ISrmiService$Stub;
.source "SrmiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/srmi/SrmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyService"
.end annotation


# instance fields
.field private mMgr:Lcom/sprd/srmi/SrmiManager;

.field final synthetic this$0:Lcom/sprd/srmi/SrmiManager;


# direct methods
.method public constructor <init>(Lcom/sprd/srmi/SrmiManager;Lcom/sprd/srmi/SrmiManager;)V
    .locals 0
    .param p2, "mgr"    # Lcom/sprd/srmi/SrmiManager;

    .line 90
    iput-object p1, p0, Lcom/sprd/srmi/SrmiManager$MyService;->this$0:Lcom/sprd/srmi/SrmiManager;

    invoke-direct {p0}, Lcom/sprd/srmi/ISrmiService$Stub;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    .line 92
    return-void
.end method


# virtual methods
.method public allocTxMessage(Ljava/lang/String;II)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I

    .line 120
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[allocTxMessage] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v1, p3

    invoke-static {v0, p1, p2, v1}, Lcom/sprd/srmi/SrmiManager;->access$500(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;IS)I

    move-result v0

    return v0
.end method

.method public create(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I

    .line 106
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[create] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    invoke-static {v0, p1, p2}, Lcom/sprd/srmi/SrmiManager;->access$300(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public destroy(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I

    .line 113
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[destroy] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    invoke-static {v0, p1, p2}, Lcom/sprd/srmi/SrmiManager;->access$400(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;I)V

    .line 116
    return-void
.end method

.method public freeRxMessage(Ljava/lang/String;II)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I

    .line 138
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[freeRxMessage] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v1, p3

    invoke-static {v0, p1, p2, v1}, Lcom/sprd/srmi/SrmiManager;->access$700(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;IS)V

    .line 143
    return-void
.end method

.method public freeTxMessage(Ljava/lang/String;II)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I

    .line 129
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[freeTxMessage] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v1, p3

    invoke-static {v0, p1, p2, v1}, Lcom/sprd/srmi/SrmiManager;->access$600(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;IS)V

    .line 134
    return-void
.end method

.method public getByteExtra(Ljava/lang/String;III)B
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I

    .line 222
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getByteExtra] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v1, p3

    int-to-short v2, p4

    invoke-static {v0, p1, p2, v1, v2}, Lcom/sprd/srmi/SrmiManager;->access$1500(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISS)B

    move-result v0

    return v0
.end method

.method public getIntExtra(Ljava/lang/String;III)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I

    .line 244
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getIntExtra] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v1, p3

    int-to-short v2, p4

    invoke-static {v0, p1, p2, v1, v2}, Lcom/sprd/srmi/SrmiManager;->access$1700(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISS)I

    move-result v0

    return v0
.end method

.method public getShortExtra(Ljava/lang/String;III)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I

    .line 233
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getShortExtra] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v1, p3

    int-to-short v2, p4

    invoke-static {v0, p1, p2, v1, v2}, Lcom/sprd/srmi/SrmiManager;->access$1600(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISS)S

    move-result v0

    return v0
.end method

.method public getStringExtra(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I

    .line 254
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getStringExtra] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v1, p3

    int-to-short v2, p4

    invoke-static {v0, p1, p2, v1, v2}, Lcom/sprd/srmi/SrmiManager;->access$1800(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISS)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getStringExtra] return String = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-object v0
.end method

.method public getTLV(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I

    .line 267
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTLV] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v1, p3

    int-to-short v2, p4

    invoke-static {v0, p1, p2, v1, v2}, Lcom/sprd/srmi/SrmiManager;->access$1900(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISS)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getTLV] return TLV = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-object v0
.end method

.method public putByteExtra(Ljava/lang/String;IIIB)I
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .param p5, "value"    # B

    .line 164
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[putByteExtra] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v5, p3

    int-to-short v6, p4

    move-object v3, p1

    move v4, p2

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/sprd/srmi/SrmiManager;->access$1000(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISSB)I

    move-result v0

    return v0
.end method

.method public putIntExtra(Ljava/lang/String;IIII)I
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .param p5, "value"    # I

    .line 188
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[putIntExtra] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v5, p3

    int-to-short v6, p4

    move-object v3, p1

    move v4, p2

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/sprd/srmi/SrmiManager;->access$1200(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISSI)I

    move-result v0

    return v0
.end method

.method public putShortExtra(Ljava/lang/String;IIII)I
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .param p5, "value"    # I

    .line 176
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[putShortExtra] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v5, p3

    int-to-short v6, p4

    int-to-short v7, p5

    move-object v3, p1

    move v4, p2

    invoke-static/range {v2 .. v7}, Lcom/sprd/srmi/SrmiManager;->access$1100(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISSS)I

    move-result v0

    return v0
.end method

.method public putStringExtra(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .param p5, "value"    # Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[putStringExtra] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v5, p3

    int-to-short v6, p4

    move-object v3, p1

    move v4, p2

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/sprd/srmi/SrmiManager;->access$1300(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISSLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public putTLV(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I
    .param p4, "attr"    # I
    .param p5, "value"    # Ljava/lang/String;

    .line 210
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[putTLV] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v5, p3

    int-to-short v6, p4

    move-object v3, p1

    move v4, p2

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/sprd/srmi/SrmiManager;->access$1400(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISSLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public recvMessage(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I

    .line 156
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[recvMessage] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    invoke-static {v0, p1, p2}, Lcom/sprd/srmi/SrmiManager;->access$900(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;I)S

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/sprd/srmi/ISrmiCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sprd/srmi/ISrmiCallback;

    .line 96
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    invoke-static {v0, p1}, Lcom/sprd/srmi/SrmiManager;->access$000(Lcom/sprd/srmi/SrmiManager;Lcom/sprd/srmi/ISrmiCallback;)V

    .line 97
    return-void
.end method

.method public sendMessage(Ljava/lang/String;II)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I

    .line 147
    invoke-static {}, Lcom/sprd/srmi/SrmiManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendMessage] name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", srmiCommType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    int-to-short v1, p3

    invoke-static {v0, p1, p2, v1}, Lcom/sprd/srmi/SrmiManager;->access$800(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;IS)I

    move-result v0

    return v0
.end method

.method public unregisterCallback(Lcom/sprd/srmi/ISrmiCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sprd/srmi/ISrmiCallback;

    .line 101
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$MyService;->mMgr:Lcom/sprd/srmi/SrmiManager;

    invoke-static {v0, p1}, Lcom/sprd/srmi/SrmiManager;->access$100(Lcom/sprd/srmi/SrmiManager;Lcom/sprd/srmi/ISrmiCallback;)V

    .line 102
    return-void
.end method
