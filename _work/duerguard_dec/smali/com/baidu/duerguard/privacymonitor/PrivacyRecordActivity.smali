.class public Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;
.super Lcom/baidu/duerguard/base/BaseActivity;
.source "PrivacyRecordActivity.java"

# interfaces
.implements Ld/a/b/c/a/b$a;
.implements Ld/a/b/c/c/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity$a;
    }
.end annotation


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/widget/ImageView;

.field public e:Ld/a/b/c/a/b;

.field public f:Ld/a/b/c/c/e;

.field public g:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/model/privacy/PrivacyRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ld/a/b/c/c/g;

.field public j:J

.field public k:Z

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/baidu/duerguard/base/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->h:Ljava/util/List;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->j:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->k:Z

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->l:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 146
    sget-object v0, Lcom/baidu/threadpool/ThreadManager;->a:Lcom/baidu/threadpool/ThreadManager;

    new-instance v1, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity$a;

    invoke-direct {v1, p0}, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity$a;-><init>(Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/threadpool/ThreadManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 147
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 67
    return-void
.end method

.method public synthetic a(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 77
    invoke-virtual {p0}, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->c()V

    return-void
.end method

.method public a(Lcom/baidu/model/privacy/PrivacyRecordItem;)V
    .locals 6
    .param p1, "privacyRecordItem"    # Lcom/baidu/model/privacy/PrivacyRecordItem;

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->j:J

    sub-long/2addr v0, v2

    .line 129
    .local v0, "duration":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->k:Z

    if-nez v2, :cond_0

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "appNameBase64":Ljava/lang/String;
    const-string v4, "one_class_page_click"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v4, "app_name"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "package_name"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getPermissionGroup()Ljava/lang/String;

    move-result-object v4

    const-string v5, "behavior_type"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "last_time"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v4, Lcom/baidu/duerguard/report/Reporter;->a:Lcom/baidu/duerguard/report/Reporter;

    invoke-virtual {v4, v2}, Lcom/baidu/duerguard/report/Reporter;->c(Ljava/util/HashMap;)V

    .line 138
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->k:Z

    .line 140
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "appNameBase64":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public b()I
    .locals 1

    .line 61
    const v0, 0x7f09001c

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->j:J

    .line 72
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 73
    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->d:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->b:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->c:Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ld/a/b/c/a;

    invoke-direct {v1, p0}, Ld/a/b/c/a;-><init>(Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->g:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 80
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->g:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 81
    new-instance v0, Ld/a/b/c/a/b;

    iget-object v3, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->h:Ljava/util/List;

    invoke-direct {v0, v3}, Ld/a/b/c/a/b;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->e:Ld/a/b/c/a/b;

    .line 82
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->e:Ld/a/b/c/a/b;

    invoke-virtual {v0, p0}, Ld/a/b/c/a/b;->setOnButtonClickListener(Ld/a/b/c/a/b$a;)V

    .line 83
    new-instance v0, Ld/a/b/c/c/e;

    iget-object v3, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->e:Ld/a/b/c/a/b;

    invoke-direct {v0, v3}, Ld/a/b/c/c/e;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->f:Ld/a/b/c/c/e;

    .line 84
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->f:Ld/a/b/c/c/e;

    invoke-virtual {v0, p0}, Ld/a/b/c/c/e;->setOnLoadmoreListener(Ld/a/b/c/c/e$b;)V

    .line 85
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->f:Ld/a/b/c/c/e;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 86
    new-instance v0, Ld/a/b/c/c/g;

    invoke-direct {v0, p0}, Ld/a/b/c/c/g;-><init>(Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;)V

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->i:Ld/a/b/c/c/g;

    .line 87
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->i:Ld/a/b/c/c/g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "savedRecordItems":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/PrivacyRecordItem;>;"
    if-eqz p1, :cond_0

    .line 92
    nop

    .line 93
    const-string v1, "save_instance_state_key_record_state_items"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    const-string v1, "save_instance_state_key_loadmore_statue"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->l:I

    .line 98
    :cond_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 103
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget v1, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->l:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 105
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->i:Ld/a/b/c/c/g;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->i:Ld/a/b/c/c/g;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 100
    :cond_3
    :goto_0
    sget-object v1, Lcom/baidu/threadpool/ThreadManager;->a:Lcom/baidu/threadpool/ThreadManager;

    new-instance v2, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity$a;

    invoke-direct {v2, p0}, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity$a;-><init>(Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;)V

    invoke-virtual {v1, v2}, Lcom/baidu/threadpool/ThreadManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 110
    :goto_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "duershow.settingui.SettingIndexActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v1, "PAGE"

    const-string v2, "PRIVACY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 169
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->c()V

    .line 158
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 175
    :try_start_0
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->a:Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    invoke-virtual {v0}, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->a()V

    .line 176
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->i:Ld/a/b/c/c/g;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->i:Ld/a/b/c/c/g;

    invoke-virtual {v0}, Ld/a/b/c/c/g;->a()V

    .line 178
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->i:Ld/a/b/c/c/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 179
    iput-object v1, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->i:Ld/a/b/c/c/g;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 187
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 151
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 152
    sget-object v0, Lcom/baidu/duerguard/report/Reporter;->a:Lcom/baidu/duerguard/report/Reporter;

    invoke-virtual {v0}, Lcom/baidu/duerguard/report/Reporter;->a()V

    .line 153
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 114
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "save_instance_state_key_record_state_items"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 117
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->f:Ld/a/b/c/c/e;

    .line 118
    invoke-virtual {v0}, Ld/a/b/c/c/e;->a()I

    move-result v0

    .line 117
    const-string v1, "save_instance_state_key_loadmore_statue"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    return-void
.end method
