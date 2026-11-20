.class public Lcom/baidu/sofire/ac/U$2;
.super Ljava/util/TimerTask;
.source "U.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sofire/ac/U;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/baidu/sofire/ac/U;

.field public final synthetic val$pluginNeedDelayUpdate:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/baidu/sofire/ac/U;Ljava/util/List;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/baidu/sofire/ac/U$2;->this$0:Lcom/baidu/sofire/ac/U;

    iput-object p2, p0, Lcom/baidu/sofire/ac/U$2;->val$pluginNeedDelayUpdate:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/baidu/sofire/ac/U$2;->val$pluginNeedDelayUpdate:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 684
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sofire/core/ApkInfo;

    .line 685
    iget-object v2, p0, Lcom/baidu/sofire/ac/U$2;->this$0:Lcom/baidu/sofire/ac/U;

    invoke-static {v2, v1}, Lcom/baidu/sofire/ac/U;->access$000(Lcom/baidu/sofire/ac/U;Lcom/baidu/sofire/core/ApkInfo;)V

    .line 686
    goto :goto_0

    .line 688
    :cond_0
    return-void
.end method
