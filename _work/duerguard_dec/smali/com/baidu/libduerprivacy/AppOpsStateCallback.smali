.class public Lcom/baidu/libduerprivacy/AppOpsStateCallback;
.super Landroid/os/baidu/IAppOpsStateCallback$Stub;
.source "AppOpsStateCallback.java"


# instance fields
.field public privacyManager:Lcom/baidu/libduerprivacy/PrivacyManager;


# direct methods
.method public constructor <init>(Lcom/baidu/libduerprivacy/PrivacyManager;)V
    .locals 0
    .param p1, "privacyManager"    # Lcom/baidu/libduerprivacy/PrivacyManager;

    .line 10
    invoke-direct {p0}, Landroid/os/baidu/IAppOpsStateCallback$Stub;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/baidu/libduerprivacy/AppOpsStateCallback;->privacyManager:Lcom/baidu/libduerprivacy/PrivacyManager;

    .line 12
    return-void
.end method


# virtual methods
.method public onAppApplyOperation(ILjava/lang/String;IIII)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "op"    # I
    .param p4, "mode"    # I
    .param p5, "operationType"    # I
    .param p6, "uidState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/baidu/libduerprivacy/PrivacyManager;->TARGET_OPS:Ljava/util/Set;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    return-void

    .line 23
    :cond_0
    const/16 v0, 0x1b

    move/from16 v9, p3

    if-ne v9, v0, :cond_1

    if-nez p5, :cond_1

    .line 24
    return-void

    .line 27
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v10

    .line 28
    .local v10, "operation":Ljava/lang/String;
    sget-object v0, Lcom/baidu/libduerprivacy/PrivacyManager;->OP_TYPE_STR:[Ljava/lang/String;

    aget-object v11, v0, p5

    .line 29
    .local v11, "operationDesc":Ljava/lang/String;
    move-object v12, p0

    iget-object v0, v12, Lcom/baidu/libduerprivacy/AppOpsStateCallback;->privacyManager:Lcom/baidu/libduerprivacy/PrivacyManager;

    iget-object v0, v0, Lcom/baidu/libduerprivacy/PrivacyManager;->appOpsCallback:Lcom/baidu/libduerprivacy/IAppOpsCallback;

    if-eqz v0, :cond_2

    .line 30
    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object v4, v10

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v11

    move/from16 v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/baidu/libduerprivacy/IAppOpsCallback;->onResult(ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;I)V

    .line 33
    :cond_2
    return-void
.end method
