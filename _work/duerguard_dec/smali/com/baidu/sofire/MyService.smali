.class public Lcom/baidu/sofire/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# static fields
.field public static a:J


# instance fields
.field public volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/sofire/MyService;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/sofire/MyService;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/baidu/sofire/MyService;)I
    .locals 2

    .line 20
    iget v0, p0, Lcom/baidu/sofire/MyService;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/sofire/MyService;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/baidu/sofire/MyService;Ljava/lang/ClassLoader;Landroid/content/Intent;)V
    .locals 7

    .line 1148
    :try_start_0
    const-string v0, "target_class"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1150
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1155
    const-string v1, "target_method"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/content/Intent;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1161
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v1, v5

    aput-object p2, v1, v6

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    return-void

    .line 1162
    :catch_0
    move-exception p0

    .line 20
    return-void
.end method

.method public static synthetic b(Lcom/baidu/sofire/MyService;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/baidu/sofire/MyService;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 133
    :try_start_0
    iget v0, p0, Lcom/baidu/sofire/MyService;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/sofire/MyService;->b:I

    .line 134
    iget v0, p0, Lcom/baidu/sofire/MyService;->b:I

    if-gtz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/sofire/MyService;->b:I

    .line 139
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 144
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 171
    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 29
    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 30
    return p2

    .line 32
    :cond_0
    :try_start_0
    const-string p3, "bundle"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    .line 33
    if-eqz p3, :cond_1

    .line 34
    const-string v0, "appkey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "key"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 36
    const-string v2, "delay"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 37
    if-eqz v0, :cond_1

    array-length v2, v0

    if-ne v2, p2, :cond_1

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    .line 38
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    aget-object v4, v0, v2

    aget-object v0, v0, v3

    new-array v3, v3, [I

    aput v1, v3, v2

    invoke-static {p1, p3, v4, v0, v3}, Ld/a/g/d/l;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V

    .line 40
    return p2

    .line 44
    :cond_1
    const-string p3, "from_plugin_package"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 45
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/baidu/sofire/MyService;->a()V

    goto :goto_0

    .line 48
    :cond_2
    sget-wide v0, Lcom/baidu/sofire/MyService;->a:J

    .line 49
    const-string v2, "teac"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/sofire/MyService;->a:J

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xbb8

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    .line 52
    return p2

    .line 56
    :cond_3
    sget-wide v0, Ld/a/g/i/c;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 57
    sget-wide v0, Lcom/baidu/sofire/MyService;->a:J

    sget-wide v2, Ld/a/g/i/c;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 62
    return p2

    .line 71
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object v0

    new-instance v1, Ld/a/g/d;

    invoke-direct {v1, p0, p3, p1}, Ld/a/g/d;-><init>(Lcom/baidu/sofire/MyService;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ld/a/g/i/w;->a(Ljava/lang/Runnable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 127
    :goto_0
    return p2
.end method
