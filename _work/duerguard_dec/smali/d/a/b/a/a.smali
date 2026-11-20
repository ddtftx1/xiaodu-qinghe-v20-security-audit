.class public abstract Ld/a/b/a/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Ld/a/b/a/b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 12
    .local p0, "this":Ld/a/b/a/a;, "Lcom/baidu/duerguard/base/BaseAdapter<TT;>;"
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 13
    iput-object p1, p0, Ld/a/b/a/a;->a:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Ld/a/b/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Ld/a/b/a/b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a(Ld/a/b/a/b;I)V
    .locals 1
    .param p1    # Ld/a/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/b/a/b<",
            "TT;>;I)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Ld/a/b/a/a;, "Lcom/baidu/duerguard/base/BaseAdapter<TT;>;"
    .local p1, "holder":Ld/a/b/a/b;, "Lcom/baidu/duerguard/base/BaseViewHolder<TT;>;"
    invoke-virtual {p0, p2}, Ld/a/b/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ld/a/b/a/b;->a(Ljava/lang/Object;I)V

    .line 34
    return-void
.end method

.method public a(Ld/a/b/a/b;ILjava/util/List;)V
    .locals 1
    .param p1    # Ld/a/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/b/a/b<",
            "TT;>;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Ld/a/b/a/a;, "Lcom/baidu/duerguard/base/BaseAdapter<TT;>;"
    .local p1, "holder":Ld/a/b/a/b;, "Lcom/baidu/duerguard/base/BaseViewHolder<TT;>;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0, p1, p2}, Ld/a/b/a/a;->a(Ld/a/b/a/b;I)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, p2}, Ld/a/b/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ld/a/b/a/b;->b(Ljava/lang/Object;I)V

    .line 29
    :goto_0
    return-void
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 37
    .local p0, "this":Ld/a/b/a/a;, "Lcom/baidu/duerguard/base/BaseAdapter<TT;>;"
    iget-object v0, p0, Ld/a/b/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 51
    .local p0, "this":Ld/a/b/a/a;, "Lcom/baidu/duerguard/base/BaseAdapter<TT;>;"
    iget-object v0, p0, Ld/a/b/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 42
    .local p0, "this":Ld/a/b/a/a;, "Lcom/baidu/duerguard/base/BaseAdapter<TT;>;"
    iget-object v0, p0, Ld/a/b/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/a/b/a/a;->a(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    .local p0, "this":Ld/a/b/a/a;, "Lcom/baidu/duerguard/base/BaseAdapter<TT;>;"
    check-cast p1, Ld/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Ld/a/b/a/a;->a(Ld/a/b/a/b;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    .local p0, "this":Ld/a/b/a/a;, "Lcom/baidu/duerguard/base/BaseAdapter<TT;>;"
    check-cast p1, Ld/a/b/a/b;

    invoke-virtual {p0, p1, p2, p3}, Ld/a/b/a/a;->a(Ld/a/b/a/b;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 9
    .local p0, "this":Ld/a/b/a/a;, "Lcom/baidu/duerguard/base/BaseAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Ld/a/b/a/a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ld/a/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ld/a/b/a/b;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Ld/a/b/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 19
    .local p0, "this":Ld/a/b/a/a;, "Lcom/baidu/duerguard/base/BaseAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Ld/a/b/a/a;->a(Landroid/view/ViewGroup;I)Ld/a/b/a/b;

    move-result-object v0

    return-object v0
.end method
