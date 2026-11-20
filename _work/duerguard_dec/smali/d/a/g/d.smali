.class public final Ld/a/g/d;
.super Ljava/lang/Object;
.source "MyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sofire/MyService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Lcom/baidu/sofire/MyService;


# direct methods
.method public constructor <init>(Lcom/baidu/sofire/MyService;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 71
    iput-object p1, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    iput-object p2, p0, Ld/a/g/d;->a:Ljava/lang/String;

    iput-object p3, p0, Ld/a/g/d;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 76
    :try_start_0
    iget-object v0, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    invoke-static {v0}, Lcom/baidu/sofire/MyService;->a(Lcom/baidu/sofire/MyService;)I

    .line 77
    iget-object v0, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld/a/g/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    iget-object v1, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Ld/a/g/d;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/baidu/sofire/MyService;->a(Lcom/baidu/sofire/MyService;Ljava/lang/ClassLoader;Landroid/content/Intent;)V

    .line 80
    iget-object v0, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    invoke-static {v0}, Lcom/baidu/sofire/MyService;->b(Lcom/baidu/sofire/MyService;)V

    .line 81
    return-void

    .line 83
    :cond_0
    const-string v0, "teac"

    iget-object v1, p0, Ld/a/g/d;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Ld/a/g/d;->b:Landroid/content/Intent;

    const-string v1, "plugin_id"

    const v2, 0x186c9

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 87
    iget-object v1, p0, Ld/a/g/d;->b:Landroid/content/Intent;

    const-string v2, "target_method"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v0, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    invoke-static {v0}, Lcom/baidu/sofire/MyService;->b(Lcom/baidu/sofire/MyService;)V

    .line 90
    return-void

    .line 92
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Ld/a/g/d;->b:Landroid/content/Intent;

    aput-object v5, v3, v6

    invoke-static {v0, v1, v2, v4, v3}, Ld/a/g/d/l;->a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    invoke-static {v0}, Lcom/baidu/sofire/MyService;->b(Lcom/baidu/sofire/MyService;)V

    .line 100
    return-void

    .line 102
    :cond_2
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v0

    .line 103
    if-nez v0, :cond_3

    .line 104
    iget-object v0, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    invoke-static {v0}, Lcom/baidu/sofire/MyService;->b(Lcom/baidu/sofire/MyService;)V

    .line 105
    return-void

    .line 107
    :cond_3
    iget-object v1, p0, Ld/a/g/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v0

    .line 111
    if-nez v0, :cond_4

    .line 112
    iget-object v0, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    invoke-static {v0}, Lcom/baidu/sofire/MyService;->b(Lcom/baidu/sofire/MyService;)V

    .line 113
    return-void

    .line 115
    :cond_4
    iget-object v1, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Ld/a/g/d;->b:Landroid/content/Intent;

    invoke-static {v1, v0, v2}, Lcom/baidu/sofire/MyService;->a(Lcom/baidu/sofire/MyService;Ljava/lang/ClassLoader;Landroid/content/Intent;)V

    .line 116
    iget-object v0, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    invoke-static {v0}, Lcom/baidu/sofire/MyService;->b(Lcom/baidu/sofire/MyService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 119
    iget-object v0, p0, Ld/a/g/d;->c:Lcom/baidu/sofire/MyService;

    invoke-static {v0}, Lcom/baidu/sofire/MyService;->b(Lcom/baidu/sofire/MyService;)V

    .line 121
    return-void
.end method
