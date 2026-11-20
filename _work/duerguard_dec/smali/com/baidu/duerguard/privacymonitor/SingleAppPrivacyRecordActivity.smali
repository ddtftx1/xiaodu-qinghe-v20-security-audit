.class public Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;
.super Lcom/baidu/duerguard/base/BaseActivity;
.source "SingleAppPrivacyRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ld/a/b/c/c/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/model/privacy/PrivacyRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/support/v7/widget/RecyclerView;

.field public d:Ld/a/b/c/a/d;

.field public e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/TextView;

.field public l:Ld/a/b/c/c/h;

.field public m:Ld/a/b/c/c/e;

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/baidu/duerguard/base/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->b:Ljava/util/List;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->n:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "intent_key_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 201
    sget-object v0, Lcom/baidu/threadpool/ThreadManager;->a:Lcom/baidu/threadpool/ThreadManager;

    new-instance v1, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity$a;

    iget-object v2, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->a:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity$a;-><init>(Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/threadpool/ThreadManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 202
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 78
    const-string v0, "intent_key_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->a:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public b()I
    .locals 1

    .line 73
    const v0, 0x7f09001d

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 84
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->i:Landroid/widget/LinearLayout;

    .line 85
    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->j:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->h:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->k:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0700a3

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->f:Landroid/widget/TextView;

    .line 90
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ld/a/a/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->k:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :goto_0
    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->g:Landroid/widget/ImageView;

    .line 100
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 101
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 102
    new-instance v1, Ld/a/b/c/a/d;

    iget-object v4, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->b:Ljava/util/List;

    invoke-direct {v1, v4}, Ld/a/b/c/a/d;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->d:Ld/a/b/c/a/d;

    .line 103
    new-instance v1, Ld/a/b/c/c/e;

    iget-object v4, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->d:Ld/a/b/c/a/d;

    invoke-direct {v1, v4}, Ld/a/b/c/c/e;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->m:Ld/a/b/c/c/e;

    .line 104
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->m:Ld/a/b/c/c/e;

    invoke-virtual {v1, p0}, Ld/a/b/c/c/e;->setOnLoadmoreListener(Ld/a/b/c/c/e$b;)V

    .line 105
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->m:Ld/a/b/c/c/e;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 106
    new-instance v1, Ld/a/b/c/c/h;

    invoke-direct {v1, p0}, Ld/a/b/c/c/h;-><init>(Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;)V

    iput-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->l:Ld/a/b/c/c/h;

    .line 107
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->l:Ld/a/b/c/c/h;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "savedAppRecordItems":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/PrivacyRecordItem;>;"
    if-eqz p1, :cond_1

    .line 112
    nop

    .line 113
    const-string v2, "save_instance_state_key_record_state_items"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 114
    const-string v2, "save_instance_state_key_loadmore_statue"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->n:I

    .line 118
    :cond_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 123
    iget-object v2, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget v2, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->n:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 125
    iget-object v2, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->l:Ld/a/b/c/c/h;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 127
    :cond_3
    iget-object v2, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->l:Ld/a/b/c/c/h;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 120
    :cond_4
    :goto_1
    sget-object v2, Lcom/baidu/threadpool/ThreadManager;->a:Lcom/baidu/threadpool/ThreadManager;

    new-instance v3, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity$a;

    iget-object v4, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->a:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity$a;-><init>(Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/baidu/threadpool/ThreadManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 130
    :goto_2
    return-void
.end method

.method public c()V
    .locals 7

    .line 179
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ld/a/a/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const v1, 0x7f0b002a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "authority_management_click"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v0}, Ld/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "appNameBase64":Ljava/lang/String;
    const-string v3, "authority_management_app_name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v3, Lcom/baidu/duerguard/report/Reporter;->a:Lcom/baidu/duerguard/report/Reporter;

    invoke-virtual {v3, v1}, Lcom/baidu/duerguard/report/Reporter;->a(Ljava/util/HashMap;)V

    .line 189
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v4, "package"

    iget-object v5, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 193
    :catch_0
    move-exception v3

    .line 194
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "appNameBase64":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070020

    if-eq v0, v1, :cond_1

    const v1, 0x7f07006f

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->c()V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 168
    nop

    .line 173
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->l:Ld/a/b/c/c/h;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->l:Ld/a/b/c/c/h;

    invoke-virtual {v0}, Ld/a/b/c/c/h;->a()V

    .line 152
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->l:Ld/a/b/c/c/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 153
    iput-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->l:Ld/a/b/c/c/h;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 135
    sget-object v0, Lcom/baidu/duerguard/report/Reporter;->a:Lcom/baidu/duerguard/report/Reporter;

    invoke-virtual {v0}, Lcom/baidu/duerguard/report/Reporter;->b()V

    .line 136
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 140
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "save_instance_state_key_record_state_items"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 143
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->m:Ld/a/b/c/c/e;

    .line 144
    invoke-virtual {v0}, Ld/a/b/c/c/e;->a()I

    move-result v0

    .line 143
    const-string v1, "save_instance_state_key_loadmore_statue"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    return-void
.end method
