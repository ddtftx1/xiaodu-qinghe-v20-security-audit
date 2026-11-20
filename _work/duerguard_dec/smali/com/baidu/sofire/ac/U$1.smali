.class public Lcom/baidu/sofire/ac/U$1;
.super Ljava/lang/Object;
.source "U.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sofire/ac/U;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/baidu/sofire/core/ApkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/baidu/sofire/ac/U;

.field public final synthetic val$localSetIds:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/baidu/sofire/ac/U;Ljava/util/List;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/baidu/sofire/ac/U$1;->this$0:Lcom/baidu/sofire/ac/U;

    iput-object p2, p0, Lcom/baidu/sofire/ac/U$1;->val$localSetIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/sofire/core/ApkInfo;Lcom/baidu/sofire/core/ApkInfo;)I
    .locals 4

    .line 588
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p2, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    if-eq v0, v2, :cond_0

    .line 589
    return v1

    .line 590
    :cond_0
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    if-eq v0, v2, :cond_1

    iget v0, p2, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    if-ne v0, v2, :cond_1

    .line 591
    return v2

    .line 592
    :cond_1
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    iget v3, p2, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    if-ge v0, v3, :cond_2

    .line 593
    return v2

    .line 594
    :cond_2
    if-le v0, v3, :cond_3

    .line 595
    return v1

    .line 597
    :cond_3
    nop

    .line 598
    iget-object v0, p0, Lcom/baidu/sofire/ac/U$1;->val$localSetIds:Ljava/util/List;

    if-eqz v0, :cond_4

    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 599
    iget-object v0, p0, Lcom/baidu/sofire/ac/U$1;->val$localSetIds:Ljava/util/List;

    iget p1, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 601
    :cond_4
    move p1, v2

    :goto_0
    nop

    .line 602
    iget-object v0, p0, Lcom/baidu/sofire/ac/U$1;->val$localSetIds:Ljava/util/List;

    if-eqz v0, :cond_5

    iget v3, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 603
    iget-object v0, p0, Lcom/baidu/sofire/ac/U$1;->val$localSetIds:Ljava/util/List;

    iget p2, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    goto :goto_1

    .line 605
    :cond_5
    move p2, v2

    :goto_1
    if-eq p1, v2, :cond_6

    if-ne p2, v2, :cond_6

    .line 606
    return v2

    .line 607
    :cond_6
    if-ne p1, v2, :cond_7

    if-eq p2, v2, :cond_7

    .line 608
    return v1

    .line 610
    :cond_7
    if-le p1, p2, :cond_8

    .line 611
    return v1

    .line 612
    :cond_8
    if-ge p1, p2, :cond_9

    .line 613
    return v2

    .line 617
    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 584
    check-cast p1, Lcom/baidu/sofire/core/ApkInfo;

    check-cast p2, Lcom/baidu/sofire/core/ApkInfo;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/sofire/ac/U$1;->compare(Lcom/baidu/sofire/core/ApkInfo;Lcom/baidu/sofire/core/ApkInfo;)I

    move-result p1

    return p1
.end method
