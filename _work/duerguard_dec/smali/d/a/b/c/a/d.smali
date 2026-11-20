.class public Ld/a/b/c/a/d;
.super Ld/a/b/a/a;
.source "SingleAppPrivacyRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/b/c/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/a/b/a/a<",
        "Lcom/baidu/model/privacy/PrivacyRecordItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/model/privacy/PrivacyRecordItem;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/PrivacyRecordItem;>;"
    invoke-direct {p0, p1}, Ld/a/b/a/a;-><init>(Ljava/util/List;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/model/privacy/PrivacyRecordItem;)I
    .locals 1
    .param p1, "privacyRecordItem"    # Lcom/baidu/model/privacy/PrivacyRecordItem;

    .line 39
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getItemType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-virtual {p0, p1}, Ld/a/b/c/a/d;->a(Lcom/baidu/model/privacy/PrivacyRecordItem;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Ld/a/b/a/b;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Ld/a/b/a/b<",
            "Lcom/baidu/model/privacy/PrivacyRecordItem;",
            ">;"
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "viewHolder":Ld/a/b/a/b;
    if-nez p2, :cond_0

    .line 30
    new-instance v1, Ld/a/b/c/a/a;

    invoke-direct {v1, p1}, Ld/a/b/c/a/a;-><init>(Landroid/view/ViewGroup;)V

    move-object v0, v1

    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Ld/a/b/c/a/d$a;

    invoke-direct {v1, p1}, Ld/a/b/c/a/d$a;-><init>(Landroid/view/ViewGroup;)V

    move-object v0, v1

    .line 34
    :goto_0
    return-object v0
.end method
