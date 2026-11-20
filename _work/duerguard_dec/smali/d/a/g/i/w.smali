.class public Ld/a/g/i/w;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/g/i/w$a;
    }
.end annotation


# static fields
.field public static final a:I

.field public static volatile b:Ld/a/g/i/w;

.field public static final c:I

.field public static d:J


# instance fields
.field public e:Ljava/util/concurrent/ThreadPoolExecutor;

.field public f:Ljava/util/concurrent/ThreadPoolExecutor;

.field public g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Ld/a/g/i/w;->a:I

    .line 30
    sget v0, Ld/a/g/i/w;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Ld/a/g/i/w;->c:I

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Ld/a/g/i/w;->d:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 21

    .line 47
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, v0, Ld/a/g/i/w;->g:Ljava/util/concurrent/BlockingQueue;

    .line 40
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, v0, Ld/a/g/i/w;->h:Ljava/util/concurrent/BlockingQueue;

    .line 49
    sget v1, Ld/a/g/i/w;->a:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 50
    if-eqz p1, :cond_0

    invoke-static {}, Ld/a/g/i/c;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static/range {p1 .. p1}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v2

    .line 2289
    iget-object v2, v2, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const/4 v3, -0x1

    const-string v4, "s_t_p_c_s"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 52
    nop

    .line 53
    if-lez v2, :cond_0

    .line 54
    move v4, v2

    goto :goto_0

    .line 58
    :cond_0
    move v4, v1

    :goto_0
    sget v1, Ld/a/g/i/w;->a:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 64
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v6, 0xa

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v9, v0, Ld/a/g/i/w;->g:Ljava/util/concurrent/BlockingQueue;

    new-instance v10, Ld/a/g/i/w$a;

    const/4 v3, 0x5

    const-string v11, "sofire_pool_thread_"

    invoke-direct {v10, v11, v3}, Ld/a/g/i/w$a;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v11}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, v0, Ld/a/g/i/w;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v13, 0x2

    sget v14, Ld/a/g/i/w;->c:I

    const-wide/16 v15, 0xa

    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, v0, Ld/a/g/i/w;->h:Ljava/util/concurrent/BlockingQueue;

    new-instance v4, Ld/a/g/i/w$a;

    const/4 v5, 0x6

    const-string v6, "sofire_pool_core_thread_"

    invoke-direct {v4, v6, v5}, Ld/a/g/i/w$a;-><init>(Ljava/lang/String;I)V

    new-instance v20, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move-object v12, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v12 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, v0, Ld/a/g/i/w;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    iget-object v1, v0, Ld/a/g/i/w;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 79
    iget-object v1, v0, Ld/a/g/i/w;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 81
    return-void
.end method

.method public static a(Landroid/content/Context;)Ld/a/g/i/w;
    .locals 2

    .line 152
    sget-object v0, Ld/a/g/i/w;->b:Ld/a/g/i/w;

    if-nez v0, :cond_1

    .line 154
    :try_start_0
    const-class v0, Ld/a/g/i/w;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    sget-object v1, Ld/a/g/i/w;->b:Ld/a/g/i/w;

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Ld/a/g/i/w;

    invoke-direct {v1, p0}, Ld/a/g/i/w;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld/a/g/i/w;->b:Ld/a/g/i/w;

    .line 158
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 164
    :cond_1
    :goto_0
    sget-object v0, Ld/a/g/i/w;->b:Ld/a/g/i/w;

    if-eqz v0, :cond_2

    sget-object v0, Ld/a/g/i/w;->b:Ld/a/g/i/w;

    iget-object v0, v0, Ld/a/g/i/w;->i:Landroid/content/Context;

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    .line 165
    sget-object v0, Ld/a/g/i/w;->b:Ld/a/g/i/w;

    iput-object p0, v0, Ld/a/g/i/w;->i:Landroid/content/Context;

    .line 167
    :cond_2
    sget-object p0, Ld/a/g/i/w;->b:Ld/a/g/i/w;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)I
    .locals 6

    .line 88
    const-string v0, ""

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Ld/a/g/i/w;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Ld/a/g/i/w;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return v1

    .line 92
    :cond_0
    const/4 p1, -0x2

    return p1

    .line 98
    :catch_0
    move-exception p1

    .line 99
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 100
    const/4 p1, -0x3

    return p1

    .line 94
    :catch_1
    move-exception p1

    .line 95
    nop

    .line 3110
    :try_start_1
    iget-object v2, p0, Ld/a/g/i/w;->i:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 3111
    goto :goto_0

    .line 3114
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ld/a/g/i/w;->d:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 3115
    goto :goto_0

    .line 3117
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3118
    const-string v3, "0"

    sget v4, Ld/a/g/i/w;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3119
    const-string v3, "1"

    iget-object v4, p0, Ld/a/g/i/w;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3120
    const-string v3, "2"

    iget-object v4, p0, Ld/a/g/i/w;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    const-string v3, "3"

    .line 3122
    invoke-static {p1}, Ld/a/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v4, "\n"

    .line 3124
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "\t"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "\r"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3121
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3125
    iget-object p1, p0, Ld/a/g/i/w;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "1003147"

    invoke-static {p1, v0, v2, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 3127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ld/a/g/i/w;->d:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 3130
    goto :goto_0

    .line 3128
    :catch_2
    move-exception p1

    .line 3129
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 96
    :goto_0
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 97
    const/4 p1, -0x1

    return p1
.end method

.method public final b(Ljava/lang/Runnable;)I
    .locals 1

    .line 139
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ld/a/g/i/w;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Ld/a/g/i/w;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 p1, 0x1

    return p1

    .line 145
    :catch_0
    move-exception p1

    .line 146
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 147
    const/4 p1, -0x3

    return p1

    .line 143
    :cond_0
    const/4 p1, -0x2

    return p1
.end method
