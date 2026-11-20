.class public Lcom/baidu/sofire/MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyReceiver.java"


# instance fields
.field public a:Z

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    new-instance v0, Ld/a/g/b;

    invoke-direct {v0, p0}, Ld/a/g/b;-><init>(Lcom/baidu/sofire/MyReceiver;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sofire/MyReceiver;->a:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/sofire/MyReceiver;->b:J

    .line 37
    iput-wide v0, p0, Lcom/baidu/sofire/MyReceiver;->c:J

    return-void
.end method

.method public static synthetic a(Ljava/lang/ClassLoader;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 7

    .line 1193
    :try_start_0
    const-string v0, "target_class"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 1195
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1196
    const-string v1, "target_method"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1197
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/content/Intent;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 1198
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    aput-object p2, v1, v5

    aput-object p1, v1, v6

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    return-void

    .line 1199
    :catch_0
    move-exception p0

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Lcom/baidu/sofire/MyReceiver;
    .locals 2

    .line 208
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/sofire/MyReceiver;->b:J

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/sofire/MyReceiver;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 213
    :goto_0
    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 43
    if-nez p2, :cond_0

    .line 44
    return-void

    .line 49
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/sofire/MyReceiver;->a:Z

    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/sofire/MyReceiver;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 51
    return-void

    .line 54
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/sofire/MyReceiver;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 57
    return-void

    .line 59
    :cond_2
    invoke-static {p1}, Ld/a/g/i/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/sofire/MyReceiver;->c:J

    goto :goto_0

    .line 62
    :cond_3
    return-void

    .line 68
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lcom/baidu/sofire/MyReceiver;->a:Z

    .line 1076
    invoke-static {p1}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object v1

    new-instance v2, Ld/a/g/c;

    invoke-direct {v2, p2, p1, v0}, Ld/a/g/c;-><init>(Landroid/content/Intent;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ld/a/g/i/w;->a(Ljava/lang/Runnable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 69
    :catch_0
    move-exception p1

    .line 70
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 72
    return-void
.end method
