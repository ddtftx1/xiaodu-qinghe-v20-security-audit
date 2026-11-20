.class public Ld/a/b/c/c/e;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LoadMoreWrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/b/c/c/e$b;,
        Ld/a/b/c/c/e$a;
    }
.end annotation


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView$Adapter;

.field public b:Landroid/view/View;

.field public c:Ld/a/b/c/c/e$b;

.field public d:Landroid/support/v7/widget/RecyclerView;

.field public e:Z

.field public f:Ld/a/b/c/c/e;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/a/b/c/c/e;->e:Z

    .line 35
    iput-object p1, p0, Ld/a/b/c/c/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 36
    iput-object p0, p0, Ld/a/b/c/c/e;->f:Ld/a/b/c/c/e;

    .line 37
    new-instance v0, Ld/a/b/c/c/a;

    invoke-direct {v0, p0}, Ld/a/b/c/c/a;-><init>(Ld/a/b/c/c/e;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 74
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 191
    iget v0, p0, Ld/a/b/c/c/e;->g:I

    return v0
.end method

.method public a(I)V
    .locals 8
    .param p1, "loadMoreStatus"    # I

    .line 150
    iput p1, p0, Ld/a/b/c/c/e;->g:I

    .line 151
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 152
    invoke-virtual {p0, v0}, Ld/a/b/c/c/e;->a(Z)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0, v1}, Ld/a/b/c/c/e;->a(Z)V

    .line 156
    :goto_0
    iget-object v3, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 157
    const v4, 0x7f07005b

    const v5, 0x7f07005a

    const v6, 0x7f07005c

    const/16 v7, 0x8

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 177
    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 171
    goto :goto_1

    .line 160
    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 126
    new-instance v0, Ld/a/b/c/c/c;

    invoke-direct {v0, p0}, Ld/a/b/c/c/c;-><init>(Ld/a/b/c/c/e;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 143
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "loadMoreEnable"    # Z

    .line 187
    iput-boolean p1, p0, Ld/a/b/c/c/e;->e:Z

    .line 188
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Ld/a/b/c/c/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 100
    invoke-virtual {p0}, Ld/a/b/c/c/e;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 101
    const/16 v0, 0x271a

    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Ld/a/b/c/c/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 109
    iput-object p1, p0, Ld/a/b/c/c/e;->d:Landroid/support/v7/widget/RecyclerView;

    .line 110
    invoke-virtual {p0, p1}, Ld/a/b/c/c/e;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 111
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 112
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 113
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    new-instance v2, Ld/a/b/c/c/b;

    invoke-direct {v2, p0, v0}, Ld/a/b/c/c/b;-><init>(Ld/a/b/c/c/e;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .line 88
    invoke-virtual {p0}, Ld/a/b/c/c/e;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_0

    .line 89
    iget-object v0, p0, Ld/a/b/c/c/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 91
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I

    .line 78
    const/16 v0, 0x271a

    if-ne v0, p2, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    .line 80
    new-instance v0, Ld/a/b/c/c/e$a;

    iget-object v1, p0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Ld/a/b/c/c/e$a;-><init>(Ld/a/b/c/c/e;Landroid/view/View;)V

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Ld/a/b/c/c/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setOnLoadmoreListener(Ld/a/b/c/c/e$b;)V
    .locals 0
    .param p1, "onLoadmoreListener"    # Ld/a/b/c/c/e$b;

    .line 146
    iput-object p1, p0, Ld/a/b/c/c/e;->c:Ld/a/b/c/c/e$b;

    .line 147
    return-void
.end method
