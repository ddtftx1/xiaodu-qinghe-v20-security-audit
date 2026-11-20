.class public final enum Lcom/baidu/duerguard/virusscan/VirusScanManager;
.super Ljava/lang/Enum;
.source "VirusScanManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/duerguard/virusscan/VirusScanManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/duerguard/virusscan/VirusScanManager;

.field public static final synthetic b:[Lcom/baidu/duerguard/virusscan/VirusScanManager;


# instance fields
.field public c:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Ld/a/b/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/locks/Lock;

.field public final e:Ljava/util/concurrent/locks/Condition;

.field public f:Lcom/baidu/sofire/ac/BDModuleLoadCallback;

.field public g:Ljava/lang/String;

.field public h:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lcom/baidu/duerguard/virusscan/VirusScanManager;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/duerguard/virusscan/VirusScanManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/duerguard/virusscan/VirusScanManager;

    sget-object v2, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b:[Lcom/baidu/duerguard/virusscan/VirusScanManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->c:Landroid/os/RemoteCallbackList;

    .line 57
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->d:Ljava/util/concurrent/locks/Lock;

    .line 58
    iget-object p1, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->e:Ljava/util/concurrent/locks/Condition;

    .line 60
    new-instance p1, Ld/a/b/g/a;

    invoke-direct {p1, p0}, Ld/a/b/g/a;-><init>(Lcom/baidu/duerguard/virusscan/VirusScanManager;)V

    iput-object p1, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->f:Lcom/baidu/sofire/ac/BDModuleLoadCallback;

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "/cache_file_clear"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->g:Ljava/lang/String;

    .line 164
    new-instance p1, Ld/a/b/g/b;

    iget-object p2, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->g:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Ld/a/b/g/b;-><init>(Lcom/baidu/duerguard/virusscan/VirusScanManager;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->h:Landroid/os/FileObserver;

    return-void
.end method

.method public static synthetic a(Lcom/baidu/duerguard/virusscan/VirusScanManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/duerguard/virusscan/VirusScanManager;

    .line 41
    iget-object v0, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->d:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static synthetic a(Lcom/baidu/duerguard/virusscan/VirusScanManager;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/duerguard/virusscan/VirusScanManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/baidu/duerguard/virusscan/VirusScanManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/duerguard/virusscan/VirusScanManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 41
    invoke-virtual {p0, p1}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/baidu/duerguard/virusscan/VirusScanManager;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/duerguard/virusscan/VirusScanManager;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p1}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/baidu/duerguard/virusscan/VirusScanManager;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/duerguard/virusscan/VirusScanManager;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p1}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/baidu/duerguard/virusscan/VirusScanManager;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/duerguard/virusscan/VirusScanManager;

    .line 41
    iget-object v0, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->e:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/duerguard/virusscan/VirusScanManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/duerguard/virusscan/VirusScanManager;

    return-object v0
.end method

.method public static values()[Lcom/baidu/duerguard/virusscan/VirusScanManager;
    .locals 1

    .line 41
    sget-object v0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b:[Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-virtual {v0}, [Lcom/baidu/duerguard/virusscan/VirusScanManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/duerguard/virusscan/VirusScanManager;

    return-object v0
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .param p1, "param"    # [Ljava/lang/Object;

    .line 365
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONArray;

    .line 366
    .local v0, "jsonArray":Lorg/json/JSONArray;
    new-instance v1, Ld/b/a/j;

    invoke-direct {v1}, Ld/b/a/j;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ld/a/b/g/f;

    invoke-direct {v3, p0}, Ld/a/b/g/f;-><init>(Lcom/baidu/duerguard/virusscan/VirusScanManager;)V

    .line 368
    invoke-virtual {v3}, Ld/b/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 366
    invoke-virtual {v1, v2, v3}, Ld/b/a/j;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 369
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/virus/AvpScanResult;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/model/virus/AvpScanResult;

    .line 370
    .local v3, "avpScanResult":Lcom/baidu/model/virus/AvpScanResult;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v4, "errorinfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    const-string v5, "no error."

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v3, v4}, Lcom/baidu/model/virus/AvpScanResult;->setErrorinfo(Ljava/util/List;)V

    .line 374
    .end local v3    # "avpScanResult":Lcom/baidu/model/virus/AvpScanResult;
    .end local v4    # "errorinfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 375
    :cond_0
    return-object v1
.end method

.method public a()V
    .locals 5

    .line 130
    :try_start_0
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/sofire/ac/FH;->setAgreePolicy(Landroid/content/Context;Z)V

    .line 131
    sget-boolean v0, Lcom/baidu/duerguard/BuildConfig;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "xiaodu"

    const v2, 0x186f8

    const-string v3, "VirusScanManager"

    const-string v4, "xiaodu_leaning_machine"

    if-eqz v0, :cond_1

    .line 132
    :try_start_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "xiaodu_debug:init sofire."

    invoke-static {v3, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "356887"

    const-string v3, "cf7988165ca24865db5502784845e9ec"

    iget-object v4, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->f:Lcom/baidu/sofire/ac/BDModuleLoadCallback;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/baidu/sofire/ac/FH;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V

    goto :goto_0

    .line 138
    :cond_0
    const-string v0, "inner_debug:init sofire."

    invoke-static {v3, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "356820"

    const-string v3, "7dce8597b6cf0546023bd364b28d844e"

    iget-object v4, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->f:Lcom/baidu/sofire/ac/BDModuleLoadCallback;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/baidu/sofire/ac/FH;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    const-string v0, "xiaodu_release:init sofire."

    invoke-static {v3, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "356879"

    const-string v3, "7681f020bfac443a9a1f76d49f731e15"

    iget-object v4, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->f:Lcom/baidu/sofire/ac/BDModuleLoadCallback;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/baidu/sofire/ac/FH;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V

    goto :goto_0

    .line 150
    :cond_2
    const-string v0, "inner_release:init sofire."

    invoke-static {v3, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "356821"

    const-string v3, "4d11fd2db2852fdc6a1c8c9bd5503e9b"

    iget-object v4, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->f:Lcom/baidu/sofire/ac/BDModuleLoadCallback;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/baidu/sofire/ac/FH;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_0
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->d()V

    .line 161
    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 4
    .param p1, "moduleId"    # I
    .param p2, "errorCode"    # I
    .param p3, "methodName"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "VirusScanManager"

    packed-switch p2, :pswitch_data_0

    .line 119
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 119
    const-string v0, "[methodName=%s,moduleId=%d]\u5176\u4ed6\u9519\u8bef2\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :pswitch_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 115
    const-string v0, "[methodName=%s,moduleId=%d]\u5176\u4ed6\u9519\u8bef1\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    goto/16 :goto_0

    .line 111
    :pswitch_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 111
    const-string v0, "[methodName=%s,moduleId=%d]\u672a\u540c\u610f\u9690\u79c1\u534f\u8bae\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    goto/16 :goto_0

    .line 107
    :pswitch_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 107
    const-string v0, "[methodName=%s,moduleId=%d]\u8fdb\u7a0b\u9519\u8bef\u3002\u8bf7\u5728 Provider \u914d\u7f6e\u7684\u8fdb\u7a0b\u4e2d\u8c03\u7528\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    goto/16 :goto_0

    .line 103
    :pswitch_3
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 103
    const-string v0, "[methodName=%s,moduleId=%d]\u8c03\u7528\u8fc7\u4e8e\u9891\u7e41\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    goto/16 :goto_0

    .line 99
    :pswitch_4
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 99
    const-string v0, "[methodName=%s,moduleId=%d]\u65e0\u6cd5\u83b7\u53d6\u5e94\u7528\u4fe1\u606f\u8fdb\u884c\u9274\u6743\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    goto/16 :goto_0

    .line 95
    :pswitch_5
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 95
    const-string v0, "[methodName=%s,moduleId=%d]\u52a0\u8f7d\u8fc7\u7a0b\u6355\u83b7\u5230\u5f02\u5e38\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    goto :goto_0

    .line 91
    :pswitch_6
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 91
    const-string v0, "[methodName=%s,moduleId=%d]\u4e91\u7aef\u672a\u914d\u7f6e\u8be5\u6a21\u5757\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    goto :goto_0

    .line 87
    :pswitch_7
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 87
    const-string v0, "[methodName=%s,moduleId=%d]\u6a21\u5757\u6821\u9a8c\u5931\u8d25\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    goto :goto_0

    .line 83
    :pswitch_8
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 83
    const-string v0, "[methodName=%s,moduleId=%d]\u6a21\u5757\u89e3\u5bc6\u5931\u8d25\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    goto :goto_0

    .line 79
    :pswitch_9
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 79
    const-string v0, "[methodName=%s,moduleId=%d]\u6a21\u5757\u52a0\u8f7d\u5931\u8d25\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    goto :goto_0

    .line 75
    :pswitch_a
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 75
    const-string v0, "[methodName=%s,moduleId=%d]\u7f51\u7edc\u5f02\u5e38\u3002\u8bf7\u68c0\u67e5\u7f51\u7edc\uff0c\u4ee5\u53ca\u662f\u5426\u53ef\u4ee5\u8fde\u901a\u670d\u52a1\u5668\u3002"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    nop

    .line 123
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ld/a/b/f;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cb"    # Ld/a/b/f;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "maxTimeToWaitSDKInit"    # I

    .line 287
    iget-object v0, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 288
    invoke-static {}, Ld/a/b/g/h;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ld/a/b/g/e;

    invoke-direct {v1, p0, p2, p3}, Ld/a/b/g/e;-><init>(Lcom/baidu/duerguard/virusscan/VirusScanManager;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/model/virus/AvpScanResult;",
            ">;)V"
        }
    .end annotation

    .line 421
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/virus/AvpScanResult;>;"
    if-eqz p1, :cond_3

    .line 423
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/model/virus/AvpScanResult;

    .line 424
    .local v1, "result":Lcom/baidu/model/virus/AvpScanResult;
    invoke-virtual {v1}, Lcom/baidu/model/virus/AvpScanResult;->getErrorinfo()Ljava/util/List;

    move-result-object v2

    .line 425
    .local v2, "errorInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 426
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/baidu/model/virus/AvpScanResult;->getAppname()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ld/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, "appNameBase64":Ljava/lang/String;
    const-string v5, "app_name"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v5, "package_name"

    invoke-virtual {v1}, Lcom/baidu/model/virus/AvpScanResult;->getPackagename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-virtual {v1}, Lcom/baidu/model/virus/AvpScanResult;->getVirusname()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Android.Benign"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "result"

    if-eqz v5, :cond_0

    .line 432
    :try_start_1
    const-string v5, "0"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 434
    :cond_0
    const-string v5, "1"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v5, "test_result_details"

    invoke-virtual {v1}, Lcom/baidu/model/virus/AvpScanResult;->getSummary()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :goto_1
    sget-object v5, Lcom/baidu/duerguard/report/Reporter;->a:Lcom/baidu/duerguard/report/Reporter;

    invoke-virtual {v5, v3}, Lcom/baidu/duerguard/report/Reporter;->e(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 441
    .end local v1    # "result":Lcom/baidu/model/virus/AvpScanResult;
    .end local v2    # "errorInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "appNameBase64":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 444
    :cond_2
    goto :goto_2

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void
.end method

.method public a(I)Z
    .locals 9
    .param p1, "maxTimeToWaitSDKInit"    # I

    .line 244
    const/4 v0, 0x1

    .line 245
    .local v0, "isInited":Z
    invoke-virtual {p0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->e()V

    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "tryTimes":I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 251
    add-int/lit8 v1, v1, 0x1

    .line 252
    mul-int/lit16 v2, p1, 0x3e8

    div-int/lit16 v2, v2, 0x1f4

    const/4 v3, 0x2

    const-string v4, "VirusScanManager"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v1, v2, :cond_1

    .line 253
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "sdk is not initialized,please try again later."

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b([Ljava/lang/Object;)V

    .line 256
    invoke-virtual {p0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    const-string v2, "sofire file is not exist\uff0ckill the process."

    invoke-static {v4, v2}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 261
    :cond_0
    const/4 v0, 0x0

    .line 262
    goto :goto_1

    .line 265
    :cond_1
    :try_start_0
    const-string v2, "Wait sofire sdk init..."

    invoke-static {v4, v2}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    .line 270
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "duerguard innner error:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 269
    invoke-virtual {p0, v3}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b([Ljava/lang/Object;)V

    .line 271
    const/4 v0, 0x0

    .line 279
    .end local v1    # "tryTimes":I
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 9
    .param p1, "list"    # Ljava/util/List;

    .line 390
    const-string v0, "VirusScanManager"

    const-string v1, "scanVirusScanResult"

    invoke-static {v0, v1}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0, p1}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a(Ljava/util/List;)V

    .line 392
    new-instance v1, Lcom/baidu/model/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/baidu/model/Result;-><init>(ILjava/util/List;)V

    .line 393
    .local v1, "r":Lcom/baidu/model/Result;, "Lcom/baidu/model/Result<Lcom/baidu/model/virus/AvpScanResult;>;"
    new-instance v2, Ld/a/b/g/g;

    invoke-direct {v2, p0}, Ld/a/b/g/g;-><init>(Lcom/baidu/duerguard/virusscan/VirusScanManager;)V

    .line 394
    invoke-virtual {v2}, Ld/b/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 395
    .local v2, "type":Ljava/lang/reflect/Type;
    invoke-static {v1, v2}, Lcom/baidu/model/JsonParser;->result2json(Lcom/baidu/model/Result;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 397
    .local v4, "count":I
    if-nez v4, :cond_0

    .line 398
    const-string v5, "virusScanCallback Broadcast count <= 0"

    invoke-static {v0, v5}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 400
    return-void

    .line 402
    :cond_0
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 403
    const/4 v6, 0x0

    .line 405
    .local v6, "cb":Ld/a/b/f;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "virusScanCallback broadcast index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v7, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Ld/a/b/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 407
    move-object v7, v6

    check-cast v7, Ld/a/b/f$a$a;

    .end local v6    # "cb":Ld/a/b/f;
    :try_start_1
    invoke-virtual {v7, v3}, Ld/a/b/f$a$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 410
    move-object v6, v7

    goto :goto_1

    .line 408
    .restart local v6    # "cb":Ld/a/b/f;
    :catch_0
    move-exception v7

    .line 409
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v6, :cond_1

    .line 412
    iget-object v7, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 402
    .end local v6    # "cb":Ld/a/b/f;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 417
    .end local v5    # "index":I
    :cond_2
    iget-object v0, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 418
    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)V
    .locals 3
    .param p1, "param"    # [Ljava/lang/Object;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v0, "list":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v1, "errorinfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v2, Lcom/baidu/model/virus/AvpScanResult;

    invoke-direct {v2}, Lcom/baidu/model/virus/AvpScanResult;-><init>()V

    .line 384
    .local v2, "avpScanResult":Lcom/baidu/model/virus/AvpScanResult;
    invoke-virtual {v2, v1}, Lcom/baidu/model/virus/AvpScanResult;->setErrorinfo(Ljava/util/List;)V

    .line 385
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {p0, v0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->b(Ljava/util/List;)V

    .line 387
    return-void
.end method

.method public b()Z
    .locals 9

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "result":Z
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "sofireFileDirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v2, "sofireFileDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 212
    .local v3, "tempList":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 213
    const-string v5, "100088-.*.zip"

    .line 214
    .local v5, "regex":Ljava/lang/String;
    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ld/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 215
    .local v6, "match":Z
    if-eqz v6, :cond_0

    .line 216
    const-string v7, "VirusScanManager"

    const-string v8, "sofire file is exist."

    invoke-static {v7, v8}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    const/4 v0, 0x1

    .line 218
    goto :goto_1

    .line 212
    .end local v5    # "regex":Ljava/lang/String;
    .end local v6    # "match":Z
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "sofireFileDirPath":Ljava/lang/String;
    .end local v2    # "sofireFileDir":Ljava/io/File;
    .end local v3    # "tempList":[Ljava/io/File;
    .end local v4    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method public c()Z
    .locals 4

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "result":Z
    :try_start_0
    const-string v1, "isInitFinished"

    const v2, 0x186f8

    invoke-static {v2, v1}, Lcom/baidu/sofire/ac/FH;->callSync(ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 195
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 196
    invoke-static {v2}, Lcom/baidu/sofire/ac/FH;->isInitSuc(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    goto :goto_1

    .line 198
    :cond_1
    const/4 v0, 0x0

    .line 202
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :goto_1
    goto :goto_2

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method public final d()V
    .locals 2

    .line 180
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->h:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    iget-object v1, p0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->h:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 228
    const-string v0, "VirusScanManager"

    const-string v1, "try load sofire module..."

    invoke-static {v0, v1}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ld/a/b/g/c;

    invoke-direct {v1, p0}, Ld/a/b/g/c;-><init>(Lcom/baidu/duerguard/virusscan/VirusScanManager;)V

    const v2, 0x186f8

    invoke-static {v0, v1, v2}, Lcom/baidu/sofire/ac/FH;->tryLoadModule(Landroid/content/Context;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V

    .line 241
    return-void
.end method
