.class public Ld/a/b/c/c/b;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "LoadMoreWrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/b/c/c/e;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field public final synthetic b:Ld/a/b/c/c/e;


# direct methods
.method public constructor <init>(Ld/a/b/c/c/e;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Ld/a/b/c/c/e;

    .line 113
    iput-object p1, p0, Ld/a/b/c/c/b;->b:Ld/a/b/c/c/e;

    iput-object p2, p0, Ld/a/b/c/c/b;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .param p1, "position"    # I

    .line 116
    iget-object v0, p0, Ld/a/b/c/c/b;->b:Ld/a/b/c/c/e;

    invoke-virtual {v0}, Ld/a/b/c/c/e;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 117
    iget-object v0, p0, Ld/a/b/c/c/b;->a:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0

    .line 119
    :cond_0
    return v1
.end method
