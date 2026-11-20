.class public Lcom/baidu/sofire/ac/U$UpgradeResult;
.super Ljava/lang/Object;
.source "U.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sofire/ac/U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpgradeResult"
.end annotation


# instance fields
.field public networkId:I

.field public resultId:I

.field public final synthetic this$0:Lcom/baidu/sofire/ac/U;


# direct methods
.method public constructor <init>(Lcom/baidu/sofire/ac/U;II)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/baidu/sofire/ac/U$UpgradeResult;->this$0:Lcom/baidu/sofire/ac/U;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p2, p0, Lcom/baidu/sofire/ac/U$UpgradeResult;->networkId:I

    .line 148
    iput p3, p0, Lcom/baidu/sofire/ac/U$UpgradeResult;->resultId:I

    .line 149
    return-void
.end method
