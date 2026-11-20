.class public final Le/a/e/k;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/k$b;,
        Le/a/e/k$d;,
        Le/a/e/k$a;,
        Le/a/e/k$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final b:Z

.field public final c:Le/a/e/k$b;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Le/a/e/q;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Z

.field public final i:Ljava/util/concurrent/ScheduledExecutorService;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Le/a/e/u;

.field public l:Z

.field public m:J

.field public n:J

.field public o:Le/a/e/v;

.field public final p:Le/a/e/v;

.field public q:Z

.field public final r:Ljava/net/Socket;

.field public final s:Le/a/e/r;

.field public final t:Le/a/e/k$d;

.field public final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 61
    nop

    .line 81
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    .line 83
    const-string v7, "OkHttp Http2Connection"

    invoke-static {v7, v0}, Le/a/e;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Le/a/e/k;->a:Ljava/util/concurrent/ExecutorService;

    .line 81
    return-void
.end method

.method public constructor <init>(Le/a/e/k$a;)V
    .locals 21
    .param p1, "builder"    # Le/a/e/k$a;

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Le/a/e/k;->d:Ljava/util/Map;

    .line 116
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Le/a/e/k;->m:J

    .line 125
    new-instance v2, Le/a/e/v;

    invoke-direct {v2}, Le/a/e/v;-><init>()V

    iput-object v2, v0, Le/a/e/k;->o:Le/a/e/v;

    .line 129
    new-instance v2, Le/a/e/v;

    invoke-direct {v2}, Le/a/e/v;-><init>()V

    iput-object v2, v0, Le/a/e/k;->p:Le/a/e/v;

    .line 131
    const/4 v2, 0x0

    iput-boolean v2, v0, Le/a/e/k;->q:Z

    .line 831
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Le/a/e/k;->u:Ljava/util/Set;

    .line 139
    iget-object v3, v1, Le/a/e/k$a;->f:Le/a/e/u;

    iput-object v3, v0, Le/a/e/k;->k:Le/a/e/u;

    .line 140
    iget-boolean v3, v1, Le/a/e/k$a;->g:Z

    iput-boolean v3, v0, Le/a/e/k;->b:Z

    .line 141
    iget-object v4, v1, Le/a/e/k$a;->e:Le/a/e/k$b;

    iput-object v4, v0, Le/a/e/k;->c:Le/a/e/k$b;

    .line 143
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput v3, v0, Le/a/e/k;->g:I

    .line 144
    iget-boolean v3, v1, Le/a/e/k$a;->g:Z

    if-eqz v3, :cond_1

    .line 145
    iget v3, v0, Le/a/e/k;->g:I

    add-int/2addr v3, v4

    iput v3, v0, Le/a/e/k;->g:I

    .line 152
    :cond_1
    iget-boolean v3, v1, Le/a/e/k$a;->g:Z

    const/4 v4, 0x7

    if-eqz v3, :cond_2

    .line 153
    iget-object v3, v0, Le/a/e/k;->o:Le/a/e/v;

    const/high16 v6, 0x1000000

    invoke-virtual {v3, v4, v6}, Le/a/e/v;->a(II)Le/a/e/v;

    .line 156
    :cond_2
    iget-object v3, v1, Le/a/e/k$a;->b:Ljava/lang/String;

    iput-object v3, v0, Le/a/e/k;->e:Ljava/lang/String;

    .line 158
    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Le/a/e/k;->e:Ljava/lang/String;

    aput-object v7, v6, v2

    .line 159
    const-string v7, "OkHttp %s Writer"

    invoke-static {v7, v6}, Le/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Le/a/e;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Le/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 160
    iget v3, v1, Le/a/e/k$a;->h:I

    if-eqz v3, :cond_3

    .line 161
    iget-object v6, v0, Le/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Le/a/e/k$c;

    invoke-direct {v7, v0, v2, v2, v2}, Le/a/e/k$c;-><init>(Le/a/e/k;ZII)V

    iget v3, v1, Le/a/e/k$a;->h:I

    int-to-long v8, v3

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 166
    :cond_3
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-wide/16 v16, 0x3c

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v19, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Le/a/e/k;->e:Ljava/lang/String;

    aput-object v7, v6, v2

    .line 168
    const-string v2, "OkHttp %s Push Observer"

    invoke-static {v2, v6}, Le/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Le/a/e;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v20

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Le/a/e/k;->j:Ljava/util/concurrent/ExecutorService;

    .line 169
    iget-object v2, v0, Le/a/e/k;->p:Le/a/e/v;

    const v3, 0xffff

    invoke-virtual {v2, v4, v3}, Le/a/e/v;->a(II)Le/a/e/v;

    .line 170
    iget-object v2, v0, Le/a/e/k;->p:Le/a/e/v;

    const/4 v3, 0x5

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Le/a/e/v;->a(II)Le/a/e/v;

    .line 171
    iget-object v2, v0, Le/a/e/k;->p:Le/a/e/v;

    invoke-virtual {v2}, Le/a/e/v;->c()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Le/a/e/k;->n:J

    .line 172
    iget-object v2, v1, Le/a/e/k$a;->a:Ljava/net/Socket;

    iput-object v2, v0, Le/a/e/k;->r:Ljava/net/Socket;

    .line 173
    new-instance v2, Le/a/e/r;

    iget-object v3, v1, Le/a/e/k$a;->d:Lf/g;

    iget-boolean v4, v0, Le/a/e/k;->b:Z

    invoke-direct {v2, v3, v4}, Le/a/e/r;-><init>(Lf/g;Z)V

    iput-object v2, v0, Le/a/e/k;->s:Le/a/e/r;

    .line 175
    new-instance v2, Le/a/e/k$d;

    new-instance v3, Le/a/e/p;

    iget-object v4, v1, Le/a/e/k$a;->c:Lf/h;

    iget-boolean v5, v0, Le/a/e/k;->b:Z

    invoke-direct {v3, v4, v5}, Le/a/e/p;-><init>(Lf/h;Z)V

    invoke-direct {v2, v0, v3}, Le/a/e/k$d;-><init>(Le/a/e/k;Le/a/e/p;)V

    iput-object v2, v0, Le/a/e/k;->t:Le/a/e/k$d;

    .line 176
    return-void
.end method

.method public static synthetic a(Le/a/e/k;)V
    .locals 0
    .param p0, "x0"    # Le/a/e/k;

    .line 61
    invoke-virtual {p0}, Le/a/e/k;->j()V

    return-void
.end method

.method public static synthetic a(Le/a/e/k;Z)Z
    .locals 0
    .param p0, "x0"    # Le/a/e/k;
    .param p1, "x1"    # Z

    .line 61
    iput-boolean p1, p0, Le/a/e/k;->l:Z

    return p1
.end method

.method public static synthetic b(Le/a/e/k;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Le/a/e/k;

    .line 61
    iget-object v0, p0, Le/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static synthetic i()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 61
    sget-object v0, Le/a/e/k;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(I)Le/a/e/q;
    .locals 2
    .param p1, "id"    # I

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Le/a/e/k;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Le/a/e/k;
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(ILjava/util/List;Z)Le/a/e/q;
    .locals 11
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Le/a/e/a;",
            ">;Z)",
            "Le/a/e/q;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    xor-int/lit8 v0, p3, 0x1

    .line 237
    .local v0, "outFinished":Z
    const/4 v7, 0x0

    .line 242
    .local v7, "inFinished":Z
    iget-object v8, p0, Le/a/e/k;->s:Le/a/e/r;

    monitor-enter v8

    .line 243
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 244
    :try_start_1
    iget v1, p0, Le/a/e/k;->g:I

    const v2, 0x3fffffff    # 1.9999999f

    if-le v1, v2, :cond_0

    .line 245
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->e:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v1}, Le/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;)V

    .line 247
    :cond_0
    iget-boolean v1, p0, Le/a/e/k;->h:Z

    if-nez v1, :cond_7

    .line 250
    iget v1, p0, Le/a/e/k;->g:I

    move v9, v1

    .line 251
    .local v9, "streamId":I
    iget v1, p0, Le/a/e/k;->g:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Le/a/e/k;->g:I

    .line 252
    new-instance v10, Le/a/e/q;

    const/4 v6, 0x0

    move-object v1, v10

    move v2, v9

    move-object v3, p0

    move v4, v0

    move v5, v7

    invoke-direct/range {v1 .. v6}, Le/a/e/q;-><init>(ILe/a/e/k;ZZLe/x;)V

    move-object v1, v10

    .line 253
    .local v1, "stream":Le/a/e/q;
    if-eqz p3, :cond_2

    iget-wide v2, p0, Le/a/e/k;->n:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, v1, Le/a/e/q;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 254
    .local v2, "flushHeaders":Z
    :goto_1
    invoke-virtual {v1}, Le/a/e/q;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p0, Le/a/e/k;->d:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    if-nez p1, :cond_4

    .line 259
    :try_start_2
    iget-object v3, p0, Le/a/e/k;->s:Le/a/e/r;

    invoke-virtual {v3, v0, v9, p1, p2}, Le/a/e/r;->a(ZIILjava/util/List;)V

    goto :goto_2

    .line 260
    :cond_4
    iget-boolean v3, p0, Le/a/e/k;->b:Z

    if-nez v3, :cond_6

    .line 263
    iget-object v3, p0, Le/a/e/k;->s:Le/a/e/r;

    invoke-virtual {v3, p1, v9, p2}, Le/a/e/r;->a(IILjava/util/List;)V

    .line 265
    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 267
    if-eqz v2, :cond_5

    .line 268
    iget-object v3, p0, Le/a/e/k;->s:Le/a/e/r;

    invoke-virtual {v3}, Le/a/e/r;->flush()V

    .line 271
    :cond_5
    return-object v1

    .line 261
    :cond_6
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outFinished":Z
    .end local v7    # "inFinished":Z
    .end local p1    # "associatedStreamId":I
    .end local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    .end local p3    # "out":Z
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    .end local v1    # "stream":Le/a/e/q;
    .end local v2    # "flushHeaders":Z
    .end local v9    # "streamId":I
    .restart local v0    # "outFinished":Z
    .restart local v7    # "inFinished":Z
    .restart local p1    # "associatedStreamId":I
    .restart local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    .restart local p3    # "out":Z
    :cond_7
    :try_start_4
    new-instance v1, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v1}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    .end local v0    # "outFinished":Z
    .end local v7    # "inFinished":Z
    .end local p1    # "associatedStreamId":I
    .end local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    .end local p3    # "out":Z
    throw v1

    .line 257
    .restart local v0    # "outFinished":Z
    .restart local v7    # "inFinished":Z
    .restart local p1    # "associatedStreamId":I
    .restart local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    .restart local p3    # "out":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "outFinished":Z
    .end local v7    # "inFinished":Z
    .end local p1    # "associatedStreamId":I
    .end local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    .end local p3    # "out":Z
    :try_start_5
    throw v1

    .line 265
    .restart local v0    # "outFinished":Z
    .restart local v7    # "inFinished":Z
    .restart local p1    # "associatedStreamId":I
    .restart local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    .restart local p3    # "out":Z
    :catchall_1
    move-exception v1

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public a(Ljava/util/List;Z)Le/a/e/q;
    .locals 1
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/e/a;",
            ">;Z)",
            "Le/a/e/q;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Le/a/e/k;->a(ILjava/util/List;Z)Le/a/e/q;

    move-result-object v0

    return-object v0
.end method

.method public a(IJ)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .line 347
    :try_start_0
    iget-object v0, p0, Le/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Le/a/e/f;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/a/e/k;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Le/a/e/f;-><init>(Le/a/e/k;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 347
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 360
    :goto_0
    return-void
.end method

.method public a(ILf/h;IZ)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "source"    # Lf/h;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    .line 890
    .local v0, "buffer":Lf/f;
    int-to-long v1, p3

    invoke-interface {p2, v1, v2}, Lf/h;->e(J)V

    .line 891
    int-to-long v1, p3

    invoke-interface {p2, v0, v1, v2}, Lf/x;->b(Lf/f;J)J

    .line 892
    invoke-virtual {v0}, Lf/f;->size()J

    move-result-wide v1

    int-to-long v3, p3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 893
    new-instance v9, Le/a/e/i;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/a/e/k;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v3, "OkHttp %s Push Data[%s]"

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Le/a/e/i;-><init>(Le/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILf/f;IZ)V

    invoke-virtual {p0, v9}, Le/a/e/k;->a(Le/a/b;)V

    .line 907
    return-void

    .line 892
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lf/f;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(ILjava/util/List;)V
    .locals 8
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Le/a/e/a;",
            ">;)V"
        }
    .end annotation

    .line 834
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    monitor-enter p0

    .line 835
    :try_start_0
    iget-object v0, p0, Le/a/e/k;->u:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->b:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, v0}, Le/a/e/k;->c(ILokhttp3/internal/http2/ErrorCode;)V

    .line 837
    monitor-exit p0

    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Le/a/e/k;->u:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 840
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    :try_start_1
    new-instance v0, Le/a/e/g;

    const-string v4, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/a/e/k;->e:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Le/a/e/g;-><init>(Le/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Le/a/e/k;->a(Le/a/b;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 858
    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    .line 859
    :goto_0
    return-void

    .line 840
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .line 910
    new-instance v6, Le/a/e/j;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Le/a/e/k;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v2, "OkHttp %s Push Reset[%s]"

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/e/j;-><init>(Le/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-virtual {p0, v6}, Le/a/e/k;->a(Le/a/b;)V

    .line 918
    return-void
.end method

.method public a(IZLf/f;J)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lf/f;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 294
    iget-object v0, p0, Le/a/e/k;->s:Le/a/e/r;

    invoke-virtual {v0, p2, p1, p3, v3}, Le/a/e/r;->a(ZILf/f;I)V

    .line 295
    return-void

    .line 298
    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    .line 300
    monitor-enter p0

    .line 302
    :goto_1
    :try_start_0
    iget-wide v4, p0, Le/a/e/k;->n:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    .line 305
    iget-object v2, p0, Le/a/e/k;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 306
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "streamId":I
    .end local p2    # "outFinished":Z
    .end local p3    # "buffer":Lf/f;
    .end local p4    # "byteCount":J
    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .restart local p1    # "streamId":I
    .restart local p2    # "outFinished":Z
    .restart local p3    # "buffer":Lf/f;
    .restart local p4    # "byteCount":J
    :cond_2
    nop

    .line 315
    :try_start_1
    iget-wide v4, p0, Le/a/e/k;->n:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 316
    .local v2, "toWrite":I
    iget-object v4, p0, Le/a/e/k;->s:Le/a/e/r;

    invoke-virtual {v4}, Le/a/e/r;->j()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    .line 317
    iget-wide v4, p0, Le/a/e/k;->n:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Le/a/e/k;->n:J

    .line 318
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 321
    iget-object v4, p0, Le/a/e/k;->s:Le/a/e/r;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Le/a/e/r;->a(ZILf/f;I)V

    .line 322
    .end local v2    # "toWrite":I
    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 312
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .end local p1    # "streamId":I
    .end local p2    # "outFinished":Z
    .end local p3    # "buffer":Lf/f;
    .end local p4    # "byteCount":J
    throw v1

    .line 318
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p1    # "streamId":I
    .restart local p2    # "outFinished":Z
    .restart local p3    # "buffer":Lf/f;
    .restart local p4    # "byteCount":J
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 323
    :cond_4
    return-void
.end method

.method public final declared-synchronized a(Le/a/b;)V
    .locals 1
    .param p1, "namedRunnable"    # Le/a/b;

    monitor-enter p0

    .line 921
    :try_start_0
    invoke-virtual {p0}, Le/a/e/k;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Le/a/e/k;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    .end local p0    # "this":Le/a/e/k;
    :cond_0
    monitor-exit p0

    return-void

    .line 920
    .end local p1    # "namedRunnable":Le/a/b;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 4
    .param p1, "statusCode"    # Lokhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Le/a/e/k;->s:Le/a/e/r;

    monitor-enter v0

    .line 424
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 425
    :try_start_1
    iget-boolean v1, p0, Le/a/e/k;->h:Z

    if-eqz v1, :cond_0

    .line 426
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 428
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Le/a/e/k;->h:Z

    .line 429
    iget v1, p0, Le/a/e/k;->f:I

    .line 430
    .local v1, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    :try_start_4
    iget-object v2, p0, Le/a/e/k;->s:Le/a/e/r;

    sget-object v3, Le/a/e;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Le/a/e/r;->a(ILokhttp3/internal/http2/ErrorCode;[B)V

    .line 434
    .end local v1    # "lastGoodStreamId":I
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 435
    return-void

    .line 430
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p1    # "statusCode":Lokhttp3/internal/http2/ErrorCode;
    :try_start_6
    throw v1

    .line 434
    .restart local p1    # "statusCode":Lokhttp3/internal/http2/ErrorCode;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    .locals 6
    .param p1, "connectionCode"    # Lokhttp3/internal/http2/ErrorCode;
    .param p2, "streamCode"    # Lokhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    nop

    .line 447
    const/4 v0, 0x0

    .line 449
    .local v0, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0, p1}, Le/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 454
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v1, 0x0

    .line 455
    .local v1, "streamsToClose":[Le/a/e/q;
    monitor-enter p0

    .line 456
    :try_start_1
    iget-object v2, p0, Le/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    iget-object v2, p0, Le/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Le/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Le/a/e/q;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Le/a/e/q;

    move-object v1, v2

    .line 458
    iget-object v2, p0, Le/a/e/k;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 460
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    if-eqz v1, :cond_2

    .line 463
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 465
    .local v4, "stream":Le/a/e/q;
    :try_start_2
    invoke-virtual {v4, p2}, Le/a/e/q;->a(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 468
    goto :goto_2

    .line 466
    :catch_1
    move-exception v5

    .line 467
    .local v5, "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    move-object v0, v5

    .line 463
    .end local v4    # "stream":Le/a/e/q;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 474
    :cond_2
    :try_start_3
    iget-object v2, p0, Le/a/e/k;->s:Le/a/e/r;

    invoke-virtual {v2}, Le/a/e/r;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 477
    goto :goto_3

    .line 475
    :catch_2
    move-exception v2

    .line 476
    .local v2, "e":Ljava/io/IOException;
    if-nez v0, :cond_3

    move-object v0, v2

    .line 481
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    :try_start_4
    iget-object v2, p0, Le/a/e/k;->r:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 484
    goto :goto_4

    .line 482
    :catch_3
    move-exception v2

    .line 483
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v0, v2

    .line 487
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    iget-object v2, p0, Le/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 488
    iget-object v2, p0, Le/a/e/k;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 490
    if-nez v0, :cond_4

    .line 491
    return-void

    .line 490
    :cond_4
    throw v0

    .line 460
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2
.end method

.method public a(Z)V
    .locals 6
    .param p1, "sendConnectionPreface"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    if-eqz p1, :cond_0

    .line 514
    iget-object v0, p0, Le/a/e/k;->s:Le/a/e/r;

    invoke-virtual {v0}, Le/a/e/r;->i()V

    .line 515
    iget-object v0, p0, Le/a/e/k;->s:Le/a/e/r;

    iget-object v1, p0, Le/a/e/k;->o:Le/a/e/v;

    invoke-virtual {v0, v1}, Le/a/e/r;->b(Le/a/e/v;)V

    .line 516
    iget-object v0, p0, Le/a/e/k;->o:Le/a/e/v;

    invoke-virtual {v0}, Le/a/e/v;->c()I

    move-result v0

    .line 517
    .local v0, "windowSize":I
    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 518
    iget-object v2, p0, Le/a/e/k;->s:Le/a/e/r;

    const/4 v3, 0x0

    sub-int v1, v0, v1

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Le/a/e/r;->a(IJ)V

    .line 521
    .end local v0    # "windowSize":I
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Le/a/e/k;->t:Le/a/e/k$d;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 522
    return-void
.end method

.method public a(ZII)V
    .locals 2
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .line 380
    if-nez p1, :cond_0

    .line 382
    monitor-enter p0

    .line 383
    :try_start_0
    iget-boolean v0, p0, Le/a/e/k;->l:Z

    .line 384
    .local v0, "failedDueToMissingPong":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Le/a/e/k;->l:Z

    .line 385
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Le/a/e/k;->j()V

    .line 388
    return-void

    .line 385
    .end local v0    # "failedDueToMissingPong":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 393
    :cond_0
    :try_start_2
    iget-object v0, p0, Le/a/e/k;->s:Le/a/e/r;

    invoke-virtual {v0, p1, p2, p3}, Le/a/e/r;->a(ZII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Le/a/e/k;->j()V

    .line 397
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public b(ILjava/util/List;Z)V
    .locals 8
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Le/a/e/a;",
            ">;Z)V"
        }
    .end annotation

    .line 864
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    :try_start_0
    new-instance v7, Le/a/e/h;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Le/a/e/k;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v7

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Le/a/e/h;-><init>(Le/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-virtual {p0, v7}, Le/a/e/k;->a(Le/a/b;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    goto :goto_0

    .line 878
    :catch_0
    move-exception v0

    .line 881
    :goto_0
    return-void
.end method

.method public b(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lokhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Le/a/e/k;->s:Le/a/e/r;

    invoke-virtual {v0, p1, p2}, Le/a/e/r;->a(ILokhttp3/internal/http2/ErrorCode;)V

    .line 343
    return-void
.end method

.method public b(I)Z
    .locals 1
    .param p1, "streamId"    # I

    .line 827
    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized c(I)Le/a/e/q;
    .locals 2
    .param p1, "streamId"    # I

    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Le/a/e/k;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e/q;

    .line 196
    .local v0, "stream":Le/a/e/q;
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-object v0

    .line 194
    .end local v0    # "stream":Le/a/e/q;
    .end local p0    # "this":Le/a/e/k;
    .end local p1    # "streamId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .line 327
    :try_start_0
    iget-object v0, p0, Le/a/e/k;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Le/a/e/e;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/a/e/k;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Le/a/e/e;-><init>(Le/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 339
    :goto_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->a:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->f:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Le/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V

    .line 443
    return-void
.end method

.method public declared-synchronized f(J)V
    .locals 4
    .param p1, "read"    # J

    monitor-enter p0

    .line 205
    :try_start_0
    iget-wide v0, p0, Le/a/e/k;->m:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Le/a/e/k;->m:J

    .line 206
    iget-wide v0, p0, Le/a/e/k;->m:J

    iget-object v2, p0, Le/a/e/k;->o:Le/a/e/v;

    invoke-virtual {v2}, Le/a/e/v;->c()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    iget-wide v1, p0, Le/a/e/k;->m:J

    invoke-virtual {p0, v0, v1, v2}, Le/a/e/k;->a(IJ)V

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le/a/e/k;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local p0    # "this":Le/a/e/k;
    :cond_0
    monitor-exit p0

    return-void

    .line 204
    .end local p1    # "read":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Le/a/e/k;->s:Le/a/e/r;

    invoke-virtual {v0}, Le/a/e/r;->flush()V

    .line 414
    return-void
.end method

.method public final j()V
    .locals 2

    .line 495
    :try_start_0
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->b:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->b:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Le/a/e/k;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 498
    :goto_0
    return-void
.end method

.method public declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    .line 538
    :try_start_0
    iget-boolean v0, p0, Le/a/e/k;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Le/a/e/k;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()I
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Le/a/e/k;->p:Le/a/e/v;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Le/a/e/v;->b(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Le/a/e/k;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le/a/e/k;->a(Z)V

    .line 506
    return-void
.end method
