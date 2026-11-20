.class public Ld/a/b/c/a/d$a;
.super Ld/a/b/a/b;
.source "SingleAppPrivacyRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/b/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/a/b/a/b<",
        "Lcom/baidu/model/privacy/PrivacyRecordItem;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/FrameLayout;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/support/constraint/ConstraintLayout;

.field public f:Landroid/support/constraint/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 51
    const v0, 0x7f090021

    invoke-direct {p0, p1, v0}, Ld/a/b/a/b;-><init>(Landroid/view/ViewGroup;I)V

    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld/a/b/c/a/d$a;->a:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld/a/b/c/a/d$a;->b:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f070061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ld/a/b/c/a/d$a;->c:Landroid/widget/FrameLayout;

    .line 55
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld/a/b/c/a/d$a;->d:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Ld/a/b/c/a/d$a;->e:Landroid/support/constraint/ConstraintLayout;

    .line 57
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Ld/a/b/c/a/d$a;->f:Landroid/support/constraint/ConstraintLayout;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/model/privacy/PrivacyRecordItem;I)V
    .locals 7
    .param p1, "data"    # Lcom/baidu/model/privacy/PrivacyRecordItem;
    .param p2, "position"    # I

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Ld/a/b/c/a/d$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Ld/a/b/c/a/d$a;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    iget-object v0, p0, Ld/a/b/c/a/d$a;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getPermissionGroup()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Ld/a/b/c/a/d$a;->c:Landroid/widget/FrameLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Ld/a/b/c/a/d$a;->d:Landroid/widget/TextView;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 73
    :cond_1
    iget-object v0, p0, Ld/a/b/c/a/d$a;->c:Landroid/widget/FrameLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v0, p0, Ld/a/b/c/a/d$a;->d:Landroid/widget/TextView;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_1
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050069

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 78
    .local v0, "paddingRight":I
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05006e

    .line 79
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 80
    .local v1, "normalPaddingTopBottom":I
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05006d

    .line 81
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 82
    .local v2, "largePaddingTopBottom":I
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getItemType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    goto :goto_2

    .line 96
    :cond_2
    iget-object v3, p0, Ld/a/b/c/a/d$a;->f:Landroid/support/constraint/ConstraintLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f060081

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v3, p0, Ld/a/b/c/a/d$a;->e:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v5, v2, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 98
    goto :goto_2

    .line 92
    :cond_3
    iget-object v3, p0, Ld/a/b/c/a/d$a;->f:Landroid/support/constraint/ConstraintLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f060080

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v3, p0, Ld/a/b/c/a/d$a;->e:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v5, v1, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 94
    goto :goto_2

    .line 88
    :cond_4
    iget-object v3, p0, Ld/a/b/c/a/d$a;->f:Landroid/support/constraint/ConstraintLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f06007f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v3, p0, Ld/a/b/c/a/d$a;->e:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v5, v1, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 90
    goto :goto_2

    .line 84
    :cond_5
    iget-object v3, p0, Ld/a/b/c/a/d$a;->f:Landroid/support/constraint/ConstraintLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f060082

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v3, p0, Ld/a/b/c/a/d$a;->e:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v5, v2, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    nop

    .line 105
    .end local v0    # "paddingRight":I
    .end local v1    # "normalPaddingTopBottom":I
    .end local v2    # "largePaddingTopBottom":I
    :goto_2
    goto :goto_3

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 42
    check-cast p1, Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-virtual {p0, p1, p2}, Ld/a/b/c/a/d$a;->a(Lcom/baidu/model/privacy/PrivacyRecordItem;I)V

    return-void
.end method
