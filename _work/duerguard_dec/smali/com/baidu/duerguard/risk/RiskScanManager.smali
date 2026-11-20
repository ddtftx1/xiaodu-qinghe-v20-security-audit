.class public final enum Lcom/baidu/duerguard/risk/RiskScanManager;
.super Ljava/lang/Enum;
.source "RiskScanManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/duerguard/risk/RiskScanManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/duerguard/risk/RiskScanManager;

.field public static final b:Le/A;

.field public static c:Le/C;

.field public static final synthetic d:[Lcom/baidu/duerguard/risk/RiskScanManager;


# instance fields
.field public e:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Ld/a/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Lcom/baidu/duerguard/risk/RiskScanManager;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/duerguard/risk/RiskScanManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/duerguard/risk/RiskScanManager;->a:Lcom/baidu/duerguard/risk/RiskScanManager;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/duerguard/risk/RiskScanManager;

    sget-object v2, Lcom/baidu/duerguard/risk/RiskScanManager;->a:Lcom/baidu/duerguard/risk/RiskScanManager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/duerguard/risk/RiskScanManager;->d:[Lcom/baidu/duerguard/risk/RiskScanManager;

    .line 52
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Le/A;->b(Ljava/lang/String;)Le/A;

    move-result-object v0

    sput-object v0, Lcom/baidu/duerguard/risk/RiskScanManager;->b:Le/A;

    .line 54
    new-instance v0, Le/C$a;

    invoke-direct {v0}, Le/C$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Le/C$a;->a(JLjava/util/concurrent/TimeUnit;)Le/C$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 56
    invoke-virtual {v0, v2, v3, v1}, Le/C$a;->c(JLjava/util/concurrent/TimeUnit;)Le/C$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    invoke-virtual {v0, v2, v3, v1}, Le/C$a;->b(JLjava/util/concurrent/TimeUnit;)Le/C$a;

    .line 58
    invoke-virtual {v0}, Le/C$a;->a()Le/C;

    move-result-object v0

    sput-object v0, Lcom/baidu/duerguard/risk/RiskScanManager;->c:Le/C;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/baidu/duerguard/risk/RiskScanManager;->e:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public static synthetic a()Le/A;
    .locals 1

    .line 43
    sget-object v0, Lcom/baidu/duerguard/risk/RiskScanManager;->b:Le/A;

    return-object v0
.end method

.method public static synthetic a(Lcom/baidu/duerguard/risk/RiskScanManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/duerguard/risk/RiskScanManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/duerguard/risk/RiskScanManager;->a(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/baidu/duerguard/risk/RiskScanManager;Ld/a/b/e;Lcom/baidu/model/risk/RiskScanResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/duerguard/risk/RiskScanManager;
    .param p1, "x1"    # Ld/a/b/e;
    .param p2, "x2"    # Lcom/baidu/model/risk/RiskScanResult;

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/baidu/duerguard/risk/RiskScanManager;->a(Ld/a/b/e;Lcom/baidu/model/risk/RiskScanResult;)V

    return-void
.end method

.method public static synthetic b()Le/C;
    .locals 1

    .line 43
    sget-object v0, Lcom/baidu/duerguard/risk/RiskScanManager;->c:Le/C;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/duerguard/risk/RiskScanManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lcom/baidu/duerguard/risk/RiskScanManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/duerguard/risk/RiskScanManager;

    return-object v0
.end method

.method public static values()[Lcom/baidu/duerguard/risk/RiskScanManager;
    .locals 1

    .line 43
    sget-object v0, Lcom/baidu/duerguard/risk/RiskScanManager;->d:[Lcom/baidu/duerguard/risk/RiskScanManager;

    invoke-virtual {v0}, [Lcom/baidu/duerguard/risk/RiskScanManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/duerguard/risk/RiskScanManager;

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "riskCode"    # I
    .param p2, "riskSubCode"    # I
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 156
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "result"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "risk_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {p3}, Ld/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "appNameBase64":Ljava/lang/String;
    const-string v2, "app_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v2, "package_name"

    invoke-virtual {v0, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v2, Lcom/baidu/duerguard/report/Reporter;->a:Lcom/baidu/duerguard/report/Reporter;

    invoke-virtual {v2, v0}, Lcom/baidu/duerguard/report/Reporter;->d(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "appNameBase64":Ljava/lang/String;
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final declared-synchronized a(Ld/a/b/e;Lcom/baidu/model/risk/RiskScanResult;)V
    .locals 11
    .param p1, "callback"    # Ld/a/b/e;
    .param p2, "riskScanResult"    # Lcom/baidu/model/risk/RiskScanResult;

    monitor-enter p0

    .line 170
    :try_start_0
    const-string v0, "RiskScanManager"

    const-string v1, "riskScanResultCallback"

    invoke-static {v0, v1}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/risk/RiskScanResult;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/baidu/model/Result;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/baidu/model/Result;-><init>(ILjava/util/List;)V

    .line 174
    .local v1, "r":Lcom/baidu/model/Result;, "Lcom/baidu/model/Result<Lcom/baidu/model/risk/RiskScanResult;>;"
    new-instance v2, Ld/a/b/e/b;

    invoke-direct {v2, p0}, Ld/a/b/e/b;-><init>(Lcom/baidu/duerguard/risk/RiskScanManager;)V

    .line 175
    invoke-virtual {v2}, Ld/b/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 176
    .local v2, "type":Ljava/lang/reflect/Type;
    invoke-static {v1, v2}, Lcom/baidu/model/JsonParser;->result2json(Lcom/baidu/model/Result;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/duerguard/risk/RiskScanManager;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 178
    iget-object v4, p0, Lcom/baidu/duerguard/risk/RiskScanManager;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 179
    .local v4, "count":I
    if-nez v4, :cond_0

    .line 180
    const-string v5, "RiskScanManager"

    const-string v6, "riskScanResultCallback Broadcast count <= 0"

    invoke-static {v5, v6}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local p0    # "this":Lcom/baidu/duerguard/risk/RiskScanManager;
    :cond_0
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 183
    const/4 v6, 0x0

    .line 185
    .local v6, "cb":Ld/a/b/e;
    :try_start_1
    const-string v7, "RiskScanManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "riskScanResultCallback broadcast index : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v7, p0, Lcom/baidu/duerguard/risk/RiskScanManager;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Ld/a/b/e;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v7

    .line 187
    move-object v7, v6

    check-cast v7, Ld/a/b/e$a$a;

    :try_start_2
    invoke-virtual {v7, v3}, Ld/a/b/e$a$a;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    nop

    .line 189
    :try_start_3
    iget-object v8, p0, Lcom/baidu/duerguard/risk/RiskScanManager;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v7}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    goto :goto_2

    .line 193
    .end local v6    # "cb":Ld/a/b/e;
    :catch_0
    move-exception v6

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    goto :goto_1

    .restart local v6    # "cb":Ld/a/b/e;
    :catch_1
    move-exception v7

    .line 194
    .local v7, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .end local v6    # "cb":Ld/a/b/e;
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 197
    .end local v5    # "index":I
    :cond_1
    iget-object v5, p0, Lcom/baidu/duerguard/risk/RiskScanManager;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/risk/RiskScanResult;>;"
    .end local v1    # "r":Lcom/baidu/model/Result;, "Lcom/baidu/model/Result<Lcom/baidu/model/risk/RiskScanResult;>;"
    .end local v2    # "type":Ljava/lang/reflect/Type;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "count":I
    goto :goto_3

    .line 169
    .end local p1    # "callback":Ld/a/b/e;
    .end local p2    # "riskScanResult":Lcom/baidu/model/risk/RiskScanResult;
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 198
    .restart local p1    # "callback":Ld/a/b/e;
    .restart local p2    # "riskScanResult":Lcom/baidu/model/risk/RiskScanResult;
    :catch_2
    move-exception v0

    .line 199
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 201
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3
    monitor-exit p0

    return-void

    .line 169
    .end local p1    # "callback":Ld/a/b/e;
    .end local p2    # "riskScanResult":Lcom/baidu/model/risk/RiskScanResult;
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public a(Ld/a/b/e;Ljava/lang/String;)V
    .locals 2
    .param p1, "cb"    # Ld/a/b/e;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/baidu/threadpool/ThreadManager;->a:Lcom/baidu/threadpool/ThreadManager;

    new-instance v1, Ld/a/b/e/a;

    invoke-direct {v1, p0, p2, p1}, Ld/a/b/e/a;-><init>(Lcom/baidu/duerguard/risk/RiskScanManager;Ljava/lang/String;Ld/a/b/e;)V

    invoke-virtual {v0, v1}, Lcom/baidu/threadpool/ThreadManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 152
    return-void
.end method
