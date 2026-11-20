.class public La/a/a/d/c;
.super Ljava/lang/Object;
.source "ReportCore.java"

# interfaces
.implements La/a/a/e/b;


# instance fields
.field public a:I

.field public final b:La/a/a/e/a;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ld/a/f/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/ExecutorService;

.field public final f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, La/a/a/d/c;->a:I

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, La/a/a/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, La/a/a/d/c;->d:Landroid/util/SparseArray;

    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, La/a/a/d/c;->e:Ljava/util/concurrent/ExecutorService;

    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, La/a/a/d/c;->f:Ljava/util/concurrent/ExecutorService;

    .line 13
    invoke-static {p1}, La/a/a/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v1, La/a/a/b/b;

    invoke-direct {v1, p0, p2, p1}, La/a/a/b/b;-><init>(La/a/a/e/b;Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, La/a/a/d/c;->b:La/a/a/e/a;

    .line 16
    sget p1, La/a/a/f/a;->b:I

    .line 17
    sget p2, La/a/a/f/a;->a:I

    .line 18
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "duer_guard"

    aput-object v2, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "flavor:%s;scheduleDelay:%d;period=%d"

    invoke-static {v0, v1}, La/a/a/b/e;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 22
    new-instance v3, La/a/a/d/e;

    invoke-direct {v3, p0, p1}, La/a/a/d/e;-><init>(La/a/a/e/b;I)V

    int-to-long v6, p2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v6

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    const-string v1, "thread_start"

    invoke-static {v0, v1}, La/a/a/b/e;->a(ILjava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, La/a/a/d/c;->b:La/a/a/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, La/a/a/b/b;

    :try_start_1
    invoke-virtual {v1}, La/a/a/b/b;->c()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {p0, v1}, La/a/a/d/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iput v2, p0, La/a/a/d/c;->a:I

    goto :goto_1

    .line 9
    :cond_0
    iget v1, p0, La/a/a/d/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/a/d/c;->a:I

    .line 11
    :goto_1
    iget v1, p0, La/a/a/d/c;->a:I

    sget v3, La/a/a/f/a;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v3, :cond_2

    const-string v1, "report tried timeout"

    const/4 v3, 0x5

    .line 12
    :try_start_2
    invoke-static {v3, v1}, La/a/a/b/e;->a(ILjava/lang/String;)V

    .line 13
    iget-object v1, p0, La/a/a/d/c;->b:La/a/a/e/a;

    check-cast v1, La/a/a/b/b;

    .line 14
    :goto_2
    iget-object v3, v1, La/a/a/b/b;->e:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 15
    iget-object v3, v1, La/a/a/b/b;->e:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, La/a/a/b/b;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_1
    :goto_3
    iget-object v3, v1, La/a/a/b/b;->f:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 18
    iget-object v3, v1, La/a/a/b/b;->f:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, La/a/a/b/b;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 19
    :cond_2
    sget-boolean v1, La/a/a/f/a;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 20
    :try_start_3
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x6

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, 0x7d0

    int-to-long v1, v1

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 24
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_3
    :goto_4
    iget-object v1, p0, La/a/a/d/c;->b:La/a/a/e/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    check-cast v1, La/a/a/b/b;

    :try_start_5
    invoke-virtual {v1}, La/a/a/b/b;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    nop

    .line 29
    iput v2, p0, La/a/a/d/c;->a:I

    .line 30
    iget-object v1, p0, La/a/a/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v1, "thread_end"

    .line 31
    :try_start_6
    invoke-static {v0, v1}, La/a/a/b/e;->a(ILjava/lang/String;)V

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public a(ILorg/json/JSONObject;Ljava/util/Map;ZLd/a/f/a/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ld/a/f/a/a;",
            ")V"
        }
    .end annotation

    .line 33
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "submit_content:%d"

    invoke-static {v2, v1}, La/a/a/b/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x6

    const-string v2, ""

    if-eqz p3, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 34
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, -0x1

    if-le p1, v5, :cond_1

    const-string v5, "cmdid"

    .line 36
    invoke-virtual {p2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    if-ge p1, v5, :cond_2

    goto :goto_2

    .line 40
    :cond_2
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 41
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const-string p3, "data"

    .line 44
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {v4, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 47
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {v1, p1}, La/a/a/b/e;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_2
    nop

    .line 52
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x5

    .line 53
    const-string p2, "submit_content is empty"

    invoke-static {p1, p2}, La/a/a/b/e;->a(ILjava/lang/String;)V

    return-void

    .line 54
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x2000

    if-le p1, p2, :cond_6

    .line 56
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    .line 57
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string p3, "submit data is too large[%d]"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, La/a/a/b/e;->a(ILjava/lang/String;)V

    return-void

    .line 58
    :cond_6
    invoke-virtual {p0, v2, p4, p5}, La/a/a/d/c;->a(Ljava/lang/String;ZLd/a/f/a/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZLd/a/f/a/a;)V
    .locals 2

    .line 59
    iget-object v0, p0, La/a/a/d/c;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, La/a/a/d/b;

    invoke-direct {v1, p0, p2, p1, p3}, La/a/a/d/b;-><init>(La/a/a/d/c;ZLjava/lang/String;Ld/a/f/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(ZLjava/lang/String;Ld/a/f/a/a;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, La/a/a/d/c;->d:Landroid/util/SparseArray;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, La/a/a/d/c;->d:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 134
    :cond_1
    :goto_0
    iget-object p3, p0, La/a/a/d/c;->b:La/a/a/e/a;

    check-cast p3, La/a/a/b/b;

    if-eqz p3, :cond_6

    .line 135
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 139
    iget-object v0, p3, La/a/a/b/b;->e:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 140
    :goto_1
    iget-object p2, p3, La/a/a/b/b;->e:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    const/16 v0, 0x5000

    if-lt p2, v0, :cond_4

    const/4 p2, 0x5

    .line 141
    const-string v0, "over max size,do pop"

    invoke-static {p2, v0}, La/a/a/b/e;->a(ILjava/lang/String;)V

    .line 142
    iget-object p2, p3, La/a/a/b/b;->e:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_1

    .line 145
    :cond_3
    invoke-virtual {p3, p2}, La/a/a/b/b;->b(Ljava/lang/String;)V

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 146
    invoke-virtual {p0}, La/a/a/d/c;->b()V

    :cond_5
    return-void

    :cond_6
    const/4 p1, 0x0

    .line 147
    throw p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 13

    .line 60
    sget-object v0, La/a/a/f/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, La/a/a/f/a;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, La/a/a/f/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La/a/a/f/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    nop

    .line 65
    sget-object v1, La/a/a/f/a;->i:[B

    .line 66
    invoke-static {p1, v1}, La/a/a/b/a;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 68
    const-string v0, "report encrypt error"

    invoke-static {v4, v0}, La/a/a/b/e;->a(ILjava/lang/String;)V

    move v8, v6

    goto/16 :goto_5

    .line 69
    :cond_1
    nop

    .line 70
    nop

    .line 71
    :try_start_0
    new-instance v2, La/a/a/b/d;

    invoke-direct {v2, v0}, La/a/a/b/d;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2710

    .line 72
    :try_start_1
    iget-object v7, v2, La/a/a/b/d;->a:La/a/a/c/a;

    .line 73
    iput v0, v7, La/a/a/c/a;->a:I

    const/16 v0, 0x1770

    .line 74
    iget-object v7, v2, La/a/a/b/d;->a:La/a/a/c/a;

    .line 75
    iput v0, v7, La/a/a/c/a;->b:I

    .line 76
    iget-object v0, v2, La/a/a/b/d;->a:La/a/a/c/a;

    .line 77
    iput-object v1, v0, La/a/a/c/a;->c:Ljava/lang/String;

    const-string v0, "POST"

    .line 78
    invoke-virtual {v2, v6, v0}, La/a/a/b/d;->a(ILjava/lang/String;)I

    move-result v0

    .line 79
    iget-object v1, v2, La/a/a/b/d;->a:La/a/a/c/a;

    .line 80
    iget-object v1, v1, La/a/a/c/a;->d:La/a/a/c/b;

    check-cast v1, La/a/a/c/c;

    .line 81
    iget-object v1, v1, La/a/a/c/c;->c:Ljava/lang/String;

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v8, -0x1

    const/4 v9, 0x2

    if-nez v7, :cond_4

    .line 84
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "errno"

    .line 85
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    move v10, v5

    goto :goto_1

    :cond_2
    move v10, v8

    :goto_1
    if-eqz v7, :cond_3

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "report error:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-static {v4, v7}, La/a/a/b/e;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    :cond_3
    move v8, v10

    goto :goto_2

    .line 89
    :catch_0
    move-exception v7

    const-string v10, "report error:%s,%s"

    .line 90
    :try_start_3
    new-array v11, v9, [Ljava/lang/Object;

    aput-object v1, v11, v5

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v10, v11}, La/a/a/b/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :cond_4
    move v8, v6

    :goto_2
    const-string v7, "report result:code=%d,msg=%s"

    .line 94
    :try_start_4
    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v5

    aput-object v1, v9, v6

    invoke-static {v7, v9}, La/a/a/b/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 100
    invoke-virtual {v2}, La/a/a/b/d;->a()V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move-object v2, v3

    :goto_3
    move v8, v6

    :goto_4
    const-string v1, "report error:%s"

    .line 101
    :try_start_5
    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-static {v1, v7}, La/a/a/b/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_5

    .line 105
    invoke-virtual {v2}, La/a/a/b/d;->a()V

    :cond_5
    :goto_5
    if-nez v8, :cond_6

    move v0, v6

    goto :goto_6

    :cond_6
    move v0, v5

    .line 106
    :goto_6
    iget-object v1, p0, La/a/a/d/c;->b:La/a/a/e/a;

    if-eq v8, v6, :cond_7

    move v5, v6

    :cond_7
    check-cast v1, La/a/a/b/b;

    if-eqz v1, :cond_c

    if-nez v5, :cond_8

    .line 107
    invoke-virtual {v1, p1}, La/a/a/b/b;->b(Ljava/lang/String;)V

    .line 108
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    if-eqz v0, :cond_9

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 114
    invoke-static {v2, v1}, La/a/a/b/e;->a(ILjava/lang/String;)V

    goto :goto_7

    .line 115
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v4, v1}, La/a/a/b/e;->a(ILjava/lang/String;)V

    .line 117
    :goto_7
    iget-object v1, p0, La/a/a/d/c;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 118
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 119
    iget-object v2, p0, La/a/a/d/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/a/f/a/a;

    if-eqz v2, :cond_b

    if-eqz v0, :cond_a

    .line 122
    iget-object v3, p0, La/a/a/d/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 124
    :cond_a
    invoke-interface {v2, v0}, Ld/a/f/a/a;->a(Z)V

    .line 126
    :cond_b
    monitor-exit v1

    return v0

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :cond_c
    nop

    .line 127
    throw v3

    :catchall_2
    move-exception p1

    move-object v3, v2

    :goto_8
    if-eqz v3, :cond_d

    .line 128
    invoke-virtual {v3}, La/a/a/b/d;->a()V

    .line 130
    :cond_d
    throw p1
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, La/a/a/d/c;->b:La/a/a/e/a;

    check-cast v0, La/a/a/b/b;

    .line 2
    iget-object v1, v0, La/a/a/b/b;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, La/a/a/b/b;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, La/a/a/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 4
    const-string v1, "thread_starting"

    invoke-static {v0, v1}, La/a/a/b/e;->a(ILjava/lang/String;)V

    .line 5
    iget-object v0, p0, La/a/a/d/c;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, La/a/a/d/a;

    invoke-direct {v1, p0}, La/a/a/d/a;-><init>(La/a/a/d/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
