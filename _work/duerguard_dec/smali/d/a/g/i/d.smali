.class public final Ld/a/g/i/d;
.super Ljava/lang/Object;
.source "CtrlUtil.java"


# static fields
.field public static a:Ld/a/g/i/d;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Ld/a/g/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Ld/a/g/i/d;->a:Ld/a/g/i/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ld/a/g/i/d;->b:Landroid/content/Context;

    .line 24
    new-instance v0, Ld/a/g/g/a;

    invoke-direct {v0, p1}, Ld/a/g/g/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld/a/g/i/d;->c:Ld/a/g/g/a;

    .line 25
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ld/a/g/i/d;
    .locals 2

    const-class v0, Ld/a/g/i/d;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Ld/a/g/i/d;->a:Ld/a/g/i/d;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Ld/a/g/i/d;

    invoke-direct {v1, p0}, Ld/a/g/i/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld/a/g/i/d;->a:Ld/a/g/i/d;

    .line 31
    :cond_0
    sget-object p0, Ld/a/g/i/d;->a:Ld/a/g/i/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 35
    iget-object v0, p0, Ld/a/g/i/d;->c:Ld/a/g/g/a;

    .line 1072
    nop

    .line 1086
    const-string v1, "tvshield"

    const-string v2, "sofire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1089
    iget-object v1, v0, Ld/a/g/g/a;->f:Lcom/baidu/sofire/rp/receiver/Receiver;

    if-nez v1, :cond_0

    .line 1090
    new-instance v1, Lcom/baidu/sofire/rp/receiver/Receiver;

    invoke-direct {v1}, Lcom/baidu/sofire/rp/receiver/Receiver;-><init>()V

    iput-object v1, v0, Ld/a/g/g/a;->f:Lcom/baidu/sofire/rp/receiver/Receiver;

    .line 1092
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1093
    const-string v2, "com.b.r.p"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ld/a/g/g/a;->d:Landroid/content/Context;

    .line 1097
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".permission.sofire.RECEIVE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1098
    iget-object v3, v0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Ld/a/g/g/a;->f:Lcom/baidu/sofire/rp/receiver/Receiver;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1073
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1074
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1075
    invoke-virtual {v0, v1}, Ld/a/g/g/a;->a(Landroid/os/Message;)V

    .line 36
    return-void
.end method

.method public final b()V
    .locals 3

    .line 39
    iget-object v0, p0, Ld/a/g/i/d;->c:Ld/a/g/g/a;

    .line 2079
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2080
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2081
    invoke-virtual {v0, v1}, Ld/a/g/g/a;->a(Landroid/os/Message;)V

    .line 40
    return-void
.end method

.method public final c()V
    .locals 2

    .line 60
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 61
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 63
    iget-object v1, p0, Ld/a/g/i/d;->c:Ld/a/g/g/a;

    invoke-virtual {v1, v0}, Ld/a/g/g/a;->a(Landroid/os/Message;)V

    .line 64
    return-void
.end method
