.class public Ld/a/b/c/c/a;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "LoadMoreWrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/b/c/c/e;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
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

    .line 37
    iput-object p1, p0, Ld/a/b/c/c/a;->a:Ld/a/b/c/c/e;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 41
    iget-object v0, p0, Ld/a/b/c/c/a;->a:Ld/a/b/c/c/e;

    iget-object v0, v0, Ld/a/b/c/c/e;->f:Ld/a/b/c/c/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 46
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 47
    iget-object v0, p0, Ld/a/b/c/c/a;->a:Ld/a/b/c/c/e;

    iget-object v0, v0, Ld/a/b/c/c/e;->f:Ld/a/b/c/c/e;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 48
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Ld/a/b/c/c/a;->a:Ld/a/b/c/c/e;

    iget-object v0, v0, Ld/a/b/c/c/e;->f:Ld/a/b/c/c/e;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 58
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 59
    iget-object v0, p0, Ld/a/b/c/c/a;->a:Ld/a/b/c/c/e;

    iget-object v0, v0, Ld/a/b/c/c/e;->f:Ld/a/b/c/c/e;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 60
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 71
    iget-object v0, p0, Ld/a/b/c/c/a;->a:Ld/a/b/c/c/e;

    iget-object v0, v0, Ld/a/b/c/c/e;->f:Ld/a/b/c/c/e;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 72
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 65
    iget-object v0, p0, Ld/a/b/c/c/a;->a:Ld/a/b/c/c/e;

    iget-object v0, v0, Ld/a/b/c/c/e;->f:Ld/a/b/c/c/e;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 66
    return-void
.end method
