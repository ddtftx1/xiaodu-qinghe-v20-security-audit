.class public final enum Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;
.super Ljava/lang/Enum;
.source "DeviceCrackScanManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

.field public static final synthetic b:[Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;


# instance fields
.field public c:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Ld/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    sget-object v2, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a:Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->b:[Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->c:Landroid/os/RemoteCallbackList;

    .line 40
    return-void
.end method

.method public static synthetic a(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    .line 33
    iget-object v0, p0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->c:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public static synthetic a(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;[Ljava/lang/Object;)Lcom/baidu/model/devicecrack/DeviceCrackScanResult;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 33
    invoke-virtual {p0, p1}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a([Ljava/lang/Object;)Lcom/baidu/model/devicecrack/DeviceCrackScanResult;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;J)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;
    .param p1, "x1"    # J

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a(J)V

    return-void
.end method

.method public static synthetic a(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;Lcom/baidu/model/devicecrack/DeviceCrackScanResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;
    .param p1, "x1"    # Lcom/baidu/model/devicecrack/DeviceCrackScanResult;

    .line 33
    invoke-virtual {p0, p1}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a(Lcom/baidu/model/devicecrack/DeviceCrackScanResult;)V

    return-void
.end method

.method public static synthetic b(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;Lcom/baidu/model/devicecrack/DeviceCrackScanResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;
    .param p1, "x1"    # Lcom/baidu/model/devicecrack/DeviceCrackScanResult;

    .line 33
    invoke-virtual {p0, p1}, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->b(Lcom/baidu/model/devicecrack/DeviceCrackScanResult;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    return-object v0
.end method

.method public static values()[Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->b:[Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    invoke-virtual {v0}, [Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    return-object v0
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Lcom/baidu/model/devicecrack/DeviceCrackScanResult;
    .locals 2
    .param p1, "param"    # [Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "errorinfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;

    invoke-direct {v1, v0}, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;-><init>(Ljava/util/List;)V

    .line 126
    .local v1, "result":Lcom/baidu/model/devicecrack/DeviceCrackScanResult;
    return-object v1
.end method

.method public final a(J)V
    .locals 5
    .param p1, "delay"    # J

    .line 90
    :try_start_0
    const-string v0, "com.baidu.duerguard.BuildConfig"

    invoke-static {v0}, Ld/a/a/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "DeviceCrackManager"

    const-string v1, "duerguard process will be killed in %d seconds to improve performance."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/baidu/threadpool/TimeThreadManager;->a:Lcom/baidu/threadpool/TimeThreadManager;

    new-instance v1, Ld/a/b/b/c;

    invoke-direct {v1, p0}, Ld/a/b/b/c;-><init>(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/baidu/threadpool/TimeThreadManager;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final a(Lcom/baidu/model/devicecrack/DeviceCrackScanResult;)V
    .locals 5
    .param p1, "result"    # Lcom/baidu/model/devicecrack/DeviceCrackScanResult;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->isDeviceCracked()Z

    move-result v1

    .line 111
    .local v1, "deviceCracked":Z
    invoke-virtual {p1}, Lcom/baidu/model/devicecrack/DeviceCrackScanResult;->getDeviceCrackedReason()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "deviceCrackedReason":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    const-string v4, "device_cracking"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    const-string v3, "device_cracking_detail"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1
    sget-object v3, Lcom/baidu/duerguard/report/Reporter;->a:Lcom/baidu/duerguard/report/Reporter;

    invoke-virtual {v3, v0}, Lcom/baidu/duerguard/report/Reporter;->b(Ljava/util/HashMap;)V

    .line 119
    return-void
.end method

.method public a(Ld/a/b/c;)V
    .locals 2
    .param p1, "cb"    # Ld/a/b/c;

    .line 43
    invoke-static {}, Ld/a/b/b/a/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ld/a/b/b/b;

    invoke-direct {v1, p0, p1}, Ld/a/b/b/b;-><init>(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;Ld/a/b/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public final b(Lcom/baidu/model/devicecrack/DeviceCrackScanResult;)V
    .locals 7
    .param p1, "result"    # Lcom/baidu/model/devicecrack/DeviceCrackScanResult;

    .line 130
    const-string v0, "DeviceCrackManager"

    const-string v1, "scanDeviceCrackResult"

    invoke-static {v0, v1}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v1, Ld/b/a/j;

    invoke-direct {v1}, Ld/b/a/j;-><init>()V

    invoke-virtual {v1, p1}, Ld/b/a/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 133
    .local v2, "count":I
    if-nez v2, :cond_0

    .line 134
    const-string v3, "deviceCrackScanCallback Broadcast count <= 0"

    invoke-static {v0, v3}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 136
    return-void

    .line 138
    :cond_0
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 139
    const/4 v4, 0x0

    .line 141
    .local v4, "cb":Ld/a/b/c;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceCrackScanCallback broadcast index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v5, p0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Ld/a/b/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 143
    move-object v5, v4

    check-cast v5, Ld/a/b/c$a$a;

    .end local v4    # "cb":Ld/a/b/c;
    :try_start_1
    invoke-virtual {v5, v1}, Ld/a/b/c$a$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    move-object v4, v5

    goto :goto_1

    .line 144
    .restart local v4    # "cb":Ld/a/b/c;
    :catch_0
    move-exception v5

    .line 145
    .local v5, "t":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v4, :cond_1

    .line 148
    iget-object v5, p0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 138
    .end local v4    # "cb":Ld/a/b/c;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "index":I
    :cond_2
    iget-object v0, p0, Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 154
    return-void
.end method
