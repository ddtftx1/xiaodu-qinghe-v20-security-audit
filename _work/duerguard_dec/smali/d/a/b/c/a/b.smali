.class public Ld/a/b/c/a/b;
.super Ld/a/b/a/a;
.source "PrivacyRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/b/c/a/b$b;,
        Ld/a/b/c/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/a/b/a/a<",
        "Lcom/baidu/model/privacy/PrivacyRecordItem;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ld/a/b/c/a/b$a;


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

    .line 28
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/PrivacyRecordItem;>;"
    invoke-direct {p0, p1}, Ld/a/b/a/a;-><init>(Ljava/util/List;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/model/privacy/PrivacyRecordItem;)I
    .locals 1
    .param p1, "privacyRecordItem"    # Lcom/baidu/model/privacy/PrivacyRecordItem;

    .line 44
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getItemType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-virtual {p0, p1}, Ld/a/b/c/a/b;->a(Lcom/baidu/model/privacy/PrivacyRecordItem;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Ld/a/b/a/b;
    .locals 3
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

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "viewHolder":Ld/a/b/a/b;
    if-nez p2, :cond_0

    .line 35
    new-instance v1, Ld/a/b/c/a/a;

    invoke-direct {v1, p1}, Ld/a/b/c/a/a;-><init>(Landroid/view/ViewGroup;)V

    move-object v0, v1

    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Ld/a/b/c/a/b$b;

    iget-object v2, p0, Ld/a/b/c/a/b;->b:Ld/a/b/c/a/b$a;

    invoke-direct {v1, p1, v2}, Ld/a/b/c/a/b$b;-><init>(Landroid/view/ViewGroup;Ld/a/b/c/a/b$a;)V

    move-object v0, v1

    .line 39
    :goto_0
    return-object v0
.end method

.method public setOnButtonClickListener(Ld/a/b/c/a/b$a;)V
    .locals 0
    .param p1, "onItemClickListener"    # Ld/a/b/c/a/b$a;

    .line 48
    iput-object p1, p0, Ld/a/b/c/a/b;->b:Ld/a/b/c/a/b$a;

    .line 49
    return-void
.end method
