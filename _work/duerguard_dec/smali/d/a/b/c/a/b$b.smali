.class public Ld/a/b/c/a/b$b;
.super Ld/a/b/a/b;
.source "PrivacyRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/b/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/FrameLayout;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/support/constraint/ConstraintLayout;

.field public h:Landroid/support/constraint/ConstraintLayout;

.field public i:Ld/a/b/c/a/b$a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ld/a/b/c/a/b$a;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "onItemClickListener"    # Ld/a/b/c/a/b$a;

    .line 67
    const v0, 0x7f09001f

    invoke-direct {p0, p1, v0}, Ld/a/b/a/b;-><init>(Landroid/view/ViewGroup;I)V

    .line 68
    iput-object p2, p0, Ld/a/b/c/a/b$b;->i:Ld/a/b/c/a/b$a;

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld/a/b/c/a/b$b;->a:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld/a/b/c/a/b$b;->b:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld/a/b/c/a/b$b;->c:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ld/a/b/c/a/b$b;->d:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f070061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ld/a/b/c/a/b$b;->e:Landroid/widget/FrameLayout;

    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld/a/b/c/a/b$b;->f:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Ld/a/b/c/a/b$b;->g:Landroid/support/constraint/ConstraintLayout;

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Ld/a/b/c/a/b$b;->h:Landroid/support/constraint/ConstraintLayout;

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/model/privacy/PrivacyRecordItem;I)V
    .locals 8
    .param p1, "data"    # Lcom/baidu/model/privacy/PrivacyRecordItem;
    .param p2, "position"    # I

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Ld/a/b/c/a/b$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Ld/a/b/c/a/b$b;->a:Landroid/widget/TextView;

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

    .line 87
    :goto_0
    iget-object v0, p0, Ld/a/b/c/a/b$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Ld/a/b/c/a/b$b;->c:Landroid/widget/TextView;

    sget-object v1, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getPermissionGroup()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->a:Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Ld/a/b/c/a/b$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Ld/a/b/c/a/b$b;->e:Landroid/widget/FrameLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060086

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v1, p0, Ld/a/b/c/a/b$b;->f:Landroid/widget/TextView;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object v1, p0, Ld/a/b/c/a/b$b;->e:Landroid/widget/FrameLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060087

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v1, p0, Ld/a/b/c/a/b$b;->f:Landroid/widget/TextView;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b002f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_1
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050069

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 100
    .local v1, "paddingRight":I
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05006c

    .line 101
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 102
    .local v2, "normalPaddingTopBottom":I
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05006b

    .line 103
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 104
    .local v3, "largePaddingTopBottom":I
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getItemType()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    goto :goto_2

    .line 118
    :cond_2
    iget-object v4, p0, Ld/a/b/c/a/b$b;->h:Landroid/support/constraint/ConstraintLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f060081

    invoke-virtual {v5, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v4, p0, Ld/a/b/c/a/b$b;->g:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v4, v6, v3, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 120
    goto :goto_2

    .line 114
    :cond_3
    iget-object v4, p0, Ld/a/b/c/a/b$b;->h:Landroid/support/constraint/ConstraintLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f060080

    invoke-virtual {v5, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v4, p0, Ld/a/b/c/a/b$b;->g:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v4, v6, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 116
    goto :goto_2

    .line 110
    :cond_4
    iget-object v4, p0, Ld/a/b/c/a/b$b;->h:Landroid/support/constraint/ConstraintLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f06007f

    invoke-virtual {v5, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v4, p0, Ld/a/b/c/a/b$b;->g:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v4, v6, v2, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 112
    goto :goto_2

    .line 106
    :cond_5
    iget-object v4, p0, Ld/a/b/c/a/b$b;->h:Landroid/support/constraint/ConstraintLayout;

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f060082

    invoke-virtual {v5, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v4, p0, Ld/a/b/c/a/b$b;->g:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v4, v6, v3, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 108
    nop

    .line 125
    :goto_2
    iget-object v4, p0, Ld/a/b/c/a/b$b;->h:Landroid/support/constraint/ConstraintLayout;

    new-instance v5, Ld/a/b/c/a/c;

    invoke-direct {v5, p0, p1}, Ld/a/b/c/a/c;-><init>(Ld/a/b/c/a/b$b;Lcom/baidu/model/privacy/PrivacyRecordItem;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "paddingRight":I
    .end local v2    # "normalPaddingTopBottom":I
    .end local v3    # "largePaddingTopBottom":I
    goto :goto_3

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 55
    check-cast p1, Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-virtual {p0, p1, p2}, Ld/a/b/c/a/b$b;->a(Lcom/baidu/model/privacy/PrivacyRecordItem;I)V

    return-void
.end method
