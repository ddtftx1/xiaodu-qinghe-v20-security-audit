.class public Lcom/sprd/srmi/SrmiManager$SrmiCallback;
.super Ljava/lang/Object;
.source "SrmiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/srmi/SrmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SrmiCallback"
.end annotation


# instance fields
.field private mMgr:Lcom/sprd/srmi/SrmiManager;


# direct methods
.method public constructor <init>(Lcom/sprd/srmi/SrmiManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/sprd/srmi/SrmiManager;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/sprd/srmi/SrmiManager$SrmiCallback;->mMgr:Lcom/sprd/srmi/SrmiManager;

    .line 285
    return-void
.end method


# virtual methods
.method public onSrmiCallback(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I

    .line 288
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager$SrmiCallback;->mMgr:Lcom/sprd/srmi/SrmiManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sprd/srmi/SrmiManager;->onSrmiCallback(Ljava/lang/String;II)V

    .line 289
    return-void
.end method
