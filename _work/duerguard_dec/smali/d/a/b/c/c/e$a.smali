.class public Ld/a/b/c/c/e$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LoadMoreWrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/b/c/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public final synthetic b:Ld/a/b/c/c/e;


# direct methods
.method public constructor <init>(Ld/a/b/c/c/e;Landroid/view/View;)V
    .locals 2
    .param p2, "itemView"    # Landroid/view/View;

    .line 199
    iput-object p1, p0, Ld/a/b/c/c/e$a;->b:Ld/a/b/c/c/e;

    .line 200
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 201
    const v0, 0x7f07005a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 202
    const v0, 0x7f07005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 203
    const v0, 0x7f07005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ld/a/b/c/c/e$a;->a:Landroid/widget/LinearLayout;

    .line 204
    iget-object v0, p0, Ld/a/b/c/c/e$a;->a:Landroid/widget/LinearLayout;

    new-instance v1, Ld/a/b/c/c/d;

    invoke-direct {v1, p0, p1}, Ld/a/b/c/c/d;-><init>(Ld/a/b/c/c/e$a;Ld/a/b/c/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-void
.end method
