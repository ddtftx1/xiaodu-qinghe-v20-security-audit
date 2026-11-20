.class public Ld/a/b/c/a/a;
.super Ld/a/b/a/b;
.source "DaySegmentHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/a/b/a/b<",
        "Lcom/baidu/model/privacy/PrivacyRecordItem;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/FrameLayout;

.field public c:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 26
    const v0, 0x7f090020

    invoke-direct {p0, p1, v0}, Ld/a/b/a/b;-><init>(Landroid/view/ViewGroup;I)V

    .line 27
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld/a/b/c/a/a;->a:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ld/a/b/c/a/a;->b:Landroid/widget/FrameLayout;

    .line 29
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ld/a/b/c/a/a;->c:Landroid/widget/FrameLayout;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/model/privacy/PrivacyRecordItem;I)V
    .locals 3
    .param p1, "data"    # Lcom/baidu/model/privacy/PrivacyRecordItem;
    .param p2, "position"    # I

    .line 34
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_0

    .line 35
    iget-object v2, p0, Ld/a/b/c/a/a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Ld/a/b/c/a/a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v2, p0, Ld/a/b/c/a/a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 39
    iget-object v1, p0, Ld/a/b/c/a/a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 41
    :goto_0
    iget-object v0, p0, Ld/a/b/c/a/a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-virtual {p0, p1, p2}, Ld/a/b/c/a/a;->a(Lcom/baidu/model/privacy/PrivacyRecordItem;I)V

    return-void
.end method
