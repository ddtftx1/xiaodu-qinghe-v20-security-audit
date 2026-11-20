.class public Ld/a/b/c/c/c;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "LoadMoreWrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/b/c/c/e;->a(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/a/b/c/c/e;


# direct methods
.method public constructor <init>(Ld/a/b/c/c/e;)V
    .locals 0
    .param p1, "this$0"    # Ld/a/b/c/c/e;

    .line 126
    iput-object p1, p0, Ld/a/b/c/c/c;->a:Ld/a/b/c/c/e;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 129
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 130
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 136
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ld/a/b/c/c/c;->a:Ld/a/b/c/c/e;

    iget-object v1, v0, Ld/a/b/c/c/e;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Ld/a/b/c/c/e;->e:Z

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/a/b/c/c/e;->a(I)V

    .line 139
    iget-object v0, p0, Ld/a/b/c/c/c;->a:Ld/a/b/c/c/e;

    iget-object v0, v0, Ld/a/b/c/c/e;->c:Ld/a/b/c/c/e$b;

    invoke-interface {v0}, Ld/a/b/c/c/e$b;->a()V

    .line 141
    :cond_0
    return-void
.end method
