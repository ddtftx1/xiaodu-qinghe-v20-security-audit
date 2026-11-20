.class public Lcom/baidu/sofire/rp/Report;
.super Ljava/lang/Object;
.source "Report.java"


# static fields
.field public static a:Lcom/baidu/sofire/rp/Report;


# instance fields
.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/sofire/rp/Report;->b:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/sofire/rp/Report;
    .locals 2

    const-class v0, Lcom/baidu/sofire/rp/Report;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/baidu/sofire/rp/Report;->a:Lcom/baidu/sofire/rp/Report;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/baidu/sofire/rp/Report;

    invoke-direct {v1, p0}, Lcom/baidu/sofire/rp/Report;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/baidu/sofire/rp/Report;->a:Lcom/baidu/sofire/rp/Report;

    .line 24
    :cond_0
    sget-object p0, Lcom/baidu/sofire/rp/Report;->a:Lcom/baidu/sofire/rp/Report;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public fr()V
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/baidu/sofire/rp/Report;->b:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object v0

    .line 1103
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1104
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1106
    iget-object v0, v0, Ld/a/g/i/d;->c:Ld/a/g/g/a;

    invoke-virtual {v0, v1}, Ld/a/g/g/a;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 107
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/baidu/sofire/rp/Report;->b:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-void

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 43
    return-void
.end method

.method public n()V
    .locals 3

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/baidu/sofire/rp/Report;->b:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object v0

    .line 1096
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1097
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1099
    iget-object v0, v0, Ld/a/g/i/d;->c:Ld/a/g/g/a;

    invoke-virtual {v0, v1}, Ld/a/g/g/a;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 99
    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 74
    :try_start_0
    iget-object p1, p0, Lcom/baidu/sofire/rp/Report;->b:Landroid/content/Context;

    invoke-static {p1}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object p1

    invoke-virtual {p1}, Ld/a/g/i/d;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 75
    :catch_0
    move-exception p1

    .line 76
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 78
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-static {}, Ld/a/g/i/c;->f()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sofire/rp/Report;->s(Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method public s(Ljava/lang/String;Z)V
    .locals 1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/baidu/sofire/rp/Report;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 59
    return-void
.end method

.method public sr(Ljava/lang/String;)V
    .locals 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/baidu/sofire/rp/Report;->b:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object v0

    .line 1080
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1081
    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1082
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1084
    iget-object p1, v0, Ld/a/g/i/d;->c:Ld/a/g/g/a;

    invoke-virtual {p1, v1}, Ld/a/g/g/a;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 70
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/baidu/sofire/rp/Report;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 88
    :catch_0
    move-exception p1

    .line 89
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 91
    return-void
.end method
