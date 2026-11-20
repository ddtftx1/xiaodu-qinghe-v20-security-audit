.class public final Ld/a/g/f;
.super Ljava/lang/Object;
.source "AwakeReceiver.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 35
    :try_start_0
    invoke-static {p0}, Ld/a/g/i/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    new-array v5, v3, [I

    const v6, 0x186bc

    aput v6, v5, v1

    invoke-static {p0, v1, v2, v4, v5}, Ld/a/g/d/l;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V

    .line 41
    move v2, v1

    .line 43
    :cond_0
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 44
    add-int/2addr v2, v3

    .line 48
    const/16 v4, 0x3c

    if-le v2, v4, :cond_1

    .line 49
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 50
    const-string v4, "0"

    const-string v5, "152"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v4, "1"

    aget-object v0, v0, v1

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "1014115"

    invoke-static {v0, v4, v2, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 57
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v4

    .line 61
    if-eqz v4, :cond_0

    .line 68
    const-string v5, "com.baidu.sofire.x24"

    invoke-virtual {v4, v5}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v4

    .line 70
    if-eqz v4, :cond_0

    .line 77
    :goto_0
    const-string v0, "onReceiveAwakeMessage"

    new-instance v2, Ld/a/g/e;

    invoke-direct {v2}, Ld/a/g/e;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v1

    const-class v7, Landroid/content/Intent;

    aput-object v7, v5, v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object p1, v4, v3

    invoke-static {v6, v0, v2, v5, v4}, Ld/a/g/d/l;->a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 84
    :catch_0
    move-exception p0

    .line 88
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 91
    return-void
.end method
