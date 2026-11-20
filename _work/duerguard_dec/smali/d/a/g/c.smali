.class public final Ld/a/g/c;
.super Ljava/lang/Object;
.source "MyReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sofire/MyReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;Z)V
    .locals 0

    .line 76
    iput-object p1, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    iput-object p2, p0, Ld/a/g/c;->b:Landroid/content/Context;

    iput-boolean p3, p0, Ld/a/g/c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 83
    const-string v0, "c"

    const-string v1, "r"

    const-string v2, "t"

    :try_start_0
    iget-object v3, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 87
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Ld/a/g/c;->b:Landroid/content/Context;

    invoke-static {v0, v4}, Ld/a/g/f;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 92
    :cond_0
    iget-object v0, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    nop

    .line 96
    iget-boolean v1, p0, Ld/a/g/c;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x3

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ld/a/g/c;->b:Landroid/content/Context;

    .line 97
    invoke-static {v1}, Ld/a/g/i/c;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/baidu/sofire/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    if-eqz v1, :cond_1

    .line 99
    nop

    .line 100
    iget-object v1, p0, Ld/a/g/c;->b:Landroid/content/Context;

    invoke-static {v1}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object v1

    new-instance v6, Lcom/baidu/sofire/ac/U;

    iget-object v7, p0, Ld/a/g/c;->b:Landroid/content/Context;

    .line 101
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v2, v5}, Lcom/baidu/sofire/ac/U;-><init>(Landroid/content/Context;IZ)V

    .line 100
    invoke-virtual {v1, v6}, Ld/a/g/i/w;->b(Ljava/lang/Runnable;)I

    move v1, v4

    goto :goto_0

    .line 104
    :cond_1
    move v1, v5

    :goto_0
    iget-boolean v6, p0, Ld/a/g/c;->c:Z

    if-eqz v6, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Ld/a/g/i/c;->a:Z

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 107
    iget-object v0, p0, Ld/a/g/c;->b:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Ld/a/g/c;->b:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object v0

    new-instance v1, Lcom/baidu/sofire/ac/U;

    iget-object v3, p0, Ld/a/g/c;->b:Landroid/content/Context;

    .line 109
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2, v5}, Lcom/baidu/sofire/ac/U;-><init>(Landroid/content/Context;IZ)V

    .line 108
    invoke-virtual {v0, v1}, Ld/a/g/i/w;->b(Ljava/lang/Runnable;)I

    .line 114
    :cond_2
    iget-boolean v0, p0, Ld/a/g/c;->c:Z

    if-eqz v0, :cond_3

    .line 115
    return-void

    .line 118
    :cond_3
    iget-object v0, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    const-string v1, "from_plugin_package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 121
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v0

    .line 122
    if-nez v0, :cond_4

    .line 123
    return-void

    .line 126
    :cond_4
    invoke-virtual {v0}, Ld/a/g/d/n;->b()Ljava/util/List;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_8

    .line 129
    move v1, v5

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sofire/core/ApkInfo;

    .line 131
    iget-object v3, v2, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_7

    .line 133
    move v3, v5

    :goto_2
    :try_start_2
    iget-object v6, v2, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 134
    iget-object v6, v2, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    .line 135
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/a/g/d/o;

    .line 136
    iget-object v7, v6, Ld/a/g/d/o;->d:Landroid/content/IntentFilter;

    iget-object v8, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    .line 137
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    .line 138
    invoke-virtual {v10}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    .line 139
    invoke-virtual {v12}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v12

    const-string v13, "PIF"

    .line 136
    invoke-virtual/range {v7 .. v13}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v7

    .line 140
    if-ltz v7, :cond_5

    .line 145
    iget-object v7, v2, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    iget-object v8, v6, Ld/a/g/d/o;->b:Ljava/lang/String;

    .line 146
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 147
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 148
    iget-object v6, v6, Ld/a/g/d/o;->c:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v5

    const-class v11, Landroid/content/Intent;

    aput-object v11, v10, v4

    .line 149
    invoke-virtual {v7, v6, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 153
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v9, p0, Ld/a/g/c;->b:Landroid/content/Context;

    .line 154
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v7, v5

    iget-object v9, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    aput-object v9, v7, v4

    .line 153
    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 160
    :cond_6
    goto :goto_3

    .line 158
    :catch_0
    move-exception v2

    .line 159
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 129
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 164
    :cond_8
    return-void

    .line 167
    :cond_9
    iget-object v1, p0, Ld/a/g/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 169
    iget-object v0, p0, Ld/a/g/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    iget-object v2, p0, Ld/a/g/c;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/sofire/MyReceiver;->a(Ljava/lang/ClassLoader;Landroid/content/Intent;Landroid/content/Context;)V

    .line 170
    return-void

    .line 173
    :cond_a
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v1

    .line 174
    if-nez v1, :cond_b

    .line 175
    return-void

    .line 178
    :cond_b
    invoke-virtual {v1, v0}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v0

    .line 179
    if-nez v0, :cond_c

    .line 180
    return-void

    .line 182
    :cond_c
    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Ld/a/g/c;->a:Landroid/content/Intent;

    iget-object v2, p0, Ld/a/g/c;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/sofire/MyReceiver;->a(Ljava/lang/ClassLoader;Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 186
    return-void

    .line 183
    :catch_1
    move-exception v0

    .line 184
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 187
    return-void
.end method
