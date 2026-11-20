.class public Ld/a/b/c/c/h;
.super Landroid/os/Handler;
.source "SingleAppPrivacyRecordUiHandler.java"


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;

    .line 24
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ld/a/b/c/c/h;->a:Ljava/lang/ref/WeakReference;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 83
    :try_start_0
    iget-object v0, p0, Ld/a/b/c/c/h;->b:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Ld/a/b/c/c/h;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 85
    iget-object v0, p0, Ld/a/b/c/c/h;->b:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 86
    iput-object v1, p0, Ld/a/b/c/c/h;->b:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "loadingIv"    # Landroid/widget/ImageView;

    .line 74
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Ld/a/b/c/c/h;->b:Landroid/graphics/drawable/AnimationDrawable;

    .line 75
    iget-object v0, p0, Ld/a/b/c/c/h;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final a(Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;

    .line 63
    iget-object v0, p1, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 64
    iget-object v0, p1, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Ld/a/b/c/c/h;->a()V

    .line 67
    iget-object v0, p1, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->g:Landroid/widget/ImageView;

    sget-object v1, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->a:Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    .line 68
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v2, v3}, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p1, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->m:Ld/a/b/c/c/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 30
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 32
    :try_start_0
    iget-object v0, p0, Ld/a/b/c/c/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;

    .line 33
    .local v0, "activity":Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 34
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0, v0}, Ld/a/b/c/c/h;->a(Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;)V

    .line 45
    iget-object v1, v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->m:Ld/a/b/c/c/e;

    invoke-virtual {v1, v2}, Ld/a/b/c/c/e;->a(I)V

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    iget-object v1, v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->i:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    invoke-virtual {p0}, Ld/a/b/c/c/h;->a()V

    .line 51
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0, v0}, Ld/a/b/c/c/h;->a(Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;)V

    .line 41
    iget-object v1, v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->m:Ld/a/b/c/c/e;

    invoke-virtual {v1, v4}, Ld/a/b/c/c/e;->a(I)V

    .line 42
    goto :goto_0

    .line 36
    :cond_3
    iget-object v1, v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    iget-object v1, v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Ld/a/b/c/c/h;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "activity":Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;
    :cond_4
    :goto_0
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
