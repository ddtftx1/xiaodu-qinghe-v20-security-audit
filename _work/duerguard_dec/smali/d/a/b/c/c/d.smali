.class public Ld/a/b/c/c/d;
.super Ljava/lang/Object;
.source "LoadMoreWrapAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/b/c/c/e$a;-><init>(Ld/a/b/c/c/e;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/a/b/c/c/e$a;


# direct methods
.method public constructor <init>(Ld/a/b/c/c/e$a;Ld/a/b/c/c/e;)V
    .locals 0
    .param p1, "this$1"    # Ld/a/b/c/c/e$a;

    .line 204
    iput-object p1, p0, Ld/a/b/c/c/d;->a:Ld/a/b/c/c/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 208
    iget-object v0, p0, Ld/a/b/c/c/d;->a:Ld/a/b/c/c/e$a;

    iget-object v0, v0, Ld/a/b/c/c/e$a;->b:Ld/a/b/c/c/e;

    iget-object v1, v0, Ld/a/b/c/c/e;->c:Ld/a/b/c/c/e$b;

    if-eqz v1, :cond_0

    .line 209
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/a/b/c/c/e;->a(I)V

    .line 210
    iget-object v0, p0, Ld/a/b/c/c/d;->a:Ld/a/b/c/c/e$a;

    iget-object v0, v0, Ld/a/b/c/c/e$a;->b:Ld/a/b/c/c/e;

    iget-object v0, v0, Ld/a/b/c/c/e;->c:Ld/a/b/c/c/e$b;

    invoke-interface {v0}, Ld/a/b/c/c/e$b;->a()V

    .line 211
    iget-object v0, p0, Ld/a/b/c/c/d;->a:Ld/a/b/c/c/e$a;

    iget-object v0, v0, Ld/a/b/c/c/e$a;->b:Ld/a/b/c/c/e;

    iget-object v2, v0, Ld/a/b/c/c/e;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ld/a/b/c/c/e;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 213
    :cond_0
    return-void
.end method
