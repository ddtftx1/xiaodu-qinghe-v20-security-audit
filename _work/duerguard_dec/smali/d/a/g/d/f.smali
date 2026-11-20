.class public final Ld/a/g/d/f;
.super Ljava/lang/Object;
.source "ForHostApp.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static a:Ld/a/g/d/f;

.field public static b:Landroid/content/Context;

.field public static c:I

.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile e:Z

.field public f:Ld/a/g/h/a;

.field public g:Ld/a/g/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/4 v0, 0x0

    sput v0, Ld/a/g/d/f;->c:I

    .line 82
    nop

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ld/a/g/d/f;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/a/g/d/f;->e:Z

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 118
    sget-object p1, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {p1}, Ld/a/g/a/a;->a(Landroid/content/Context;)Ld/a/g/a/a;

    move-result-object p1

    iput-object p1, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    .line 119
    sget-object p1, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {p1}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p1

    iput-object p1, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    .line 120
    iget-object p1, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    .line 2308
    iget-object p1, p1, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    .line 121
    nop

    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 125
    :cond_0
    return-void
.end method

.method public static synthetic a(Ld/a/g/d/f;)Ld/a/g/a/a;
    .locals 0

    .line 59
    iget-object p0, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    return-object p0
.end method

.method public static a()Ld/a/g/d/f;
    .locals 1

    .line 128
    sget-object v0, Ld/a/g/d/f;->a:Ld/a/g/d/f;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ld/a/g/d/f;
    .locals 2

    const-class v0, Ld/a/g/d/f;

    monitor-enter v0

    .line 179
    :try_start_0
    sget-object v1, Ld/a/g/d/f;->a:Ld/a/g/d/f;

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Ld/a/g/d/f;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Ld/a/g/d/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld/a/g/d/f;->a:Ld/a/g/d/f;

    .line 182
    :cond_0
    sget-object p0, Ld/a/g/d/f;->a:Ld/a/g/d/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 178
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(I)V
    .locals 1

    .line 1732
    sget v0, Ld/a/g/d/f;->c:I

    if-nez v0, :cond_0

    .line 1733
    sput p0, Ld/a/g/d/f;->c:I

    .line 1735
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 7

    .line 1483
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    return-void

    .line 1487
    :cond_0
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v0

    .line 1488
    if-nez v0, :cond_1

    .line 1489
    return-void

    .line 1492
    :cond_1
    invoke-virtual {v0, p0}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v1

    .line 1493
    if-nez v1, :cond_2

    .line 1495
    return-void

    .line 1498
    :cond_2
    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v1, Ld/a/g/d/m;

    .line 1500
    const-string v2, "com.baidu.sofire.engine.EngineImpl"

    .line 1501
    invoke-virtual {v1, v2}, Ld/a/g/d/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1503
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1504
    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ld/a/g/d/f;->b:Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1506
    if-nez v1, :cond_3

    .line 1507
    return-void

    .line 1510
    :cond_3
    const-string v2, "unload"

    const/4 v3, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Ld/a/g/i/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    invoke-virtual {v0, p0}, Ld/a/g/d/n;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    return-void

    .line 1517
    :catch_0
    move-exception p0

    .line 1523
    return-void
.end method


# virtual methods
.method public final varargs a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1334
    move-object/from16 v1, p0

    move/from16 v0, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1335
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v3, p2

    goto :goto_0

    :cond_0
    const-string v3, " "

    :goto_0
    const-string v4, "1"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    const-string v3, "2"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    sget-object v3, Ld/a/g/d/f;->b:Landroid/content/Context;

    const/4 v5, 0x1

    const-string v6, "1003136"

    invoke-static {v3, v6, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1340
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v6, 0x0

    const-string v7, "1003141"

    const-string v8, "3"

    if-eqz v3, :cond_1

    .line 1341
    invoke-interface {v2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 1343
    invoke-static {v0, v7, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1345
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1347
    :cond_1
    nop

    .line 1350
    const/4 v3, 0x5

    const/16 v4, 0xa

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x2

    :try_start_0
    iget-object v12, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v12, v0}, Ld/a/g/a/a;->d(I)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1355
    if-eqz v12, :cond_2

    .line 1356
    nop

    .line 1357
    :try_start_1
    new-instance v3, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1440
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v7, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1446
    goto :goto_1

    .line 1444
    :catch_0
    move-exception v0

    .line 1357
    :goto_1
    return-object v3

    .line 1438
    :catchall_0
    move-exception v0

    move-object v3, v0

    move/from16 v14, v16

    goto/16 :goto_d

    .line 1360
    :cond_2
    :try_start_3
    iget-boolean v12, v1, Ld/a/g/d/f;->e:Z
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v12, :cond_3

    .line 1362
    nop

    .line 1363
    :try_start_4
    new-instance v3, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1440
    :try_start_5
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v7, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 1446
    goto :goto_2

    .line 1444
    :catch_1
    move-exception v0

    .line 1363
    :goto_2
    return-object v3

    .line 1438
    :catchall_1
    move-exception v0

    move-object v3, v0

    move v14, v15

    goto/16 :goto_d

    .line 1367
    :cond_3
    :try_start_6
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v12
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1368
    if-nez v12, :cond_4

    .line 1369
    nop

    .line 1370
    :try_start_7
    new-instance v3, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1440
    :try_start_8
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v7, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 1446
    goto :goto_3

    .line 1444
    :catch_2
    move-exception v0

    .line 1370
    :goto_3
    return-object v3

    .line 1438
    :catchall_2
    move-exception v0

    move-object v3, v0

    move v14, v13

    goto/16 :goto_d

    .line 1373
    :cond_4
    nop

    .line 1376
    :try_start_9
    iget-object v11, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v11, v0}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v0

    .line 1377
    if-eqz v0, :cond_5

    .line 1378
    iget-object v11, v0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v11
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v11, :cond_5

    .line 1379
    move v11, v5

    goto :goto_4

    .line 1383
    :cond_5
    move v11, v14

    :goto_4
    if-nez v11, :cond_6

    .line 1384
    nop

    .line 1385
    :try_start_a
    new-instance v11, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v11, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1440
    :try_start_b
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v7, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 1446
    goto :goto_5

    .line 1444
    :catch_3
    move-exception v0

    .line 1385
    :goto_5
    return-object v11

    .line 1438
    :catchall_3
    move-exception v0

    move v14, v3

    goto :goto_6

    .line 1388
    :cond_6
    :try_start_c
    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v0

    .line 1390
    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Ld/a/g/d/m;

    .line 1392
    const-string v3, "com.baidu.sofire.engine.EngineImpl"

    .line 1393
    invoke-virtual {v0, v3}, Ld/a/g/d/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1395
    const-string v3, "getInstance"

    new-array v11, v5, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v14

    invoke-virtual {v0, v3, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1396
    new-array v11, v5, [Ljava/lang/Object;

    sget-object v12, Ld/a/g/d/f;->b:Landroid/content/Context;

    aput-object v12, v11, v14

    invoke-virtual {v3, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1398
    move-object/from16 v3, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static {v0, v3, v11, v12}, Ld/a/g/i/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1406
    new-instance v3, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v3, v11, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    return-object v3

    .line 1438
    :catchall_4
    move-exception v0

    :goto_6
    move-object v3, v0

    goto/16 :goto_d

    .line 1431
    :catch_4
    move-exception v0

    .line 1432
    nop

    .line 1436
    :try_start_d
    new-instance v3, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1440
    :try_start_e
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v7, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 1446
    goto :goto_7

    .line 1444
    :catch_5
    move-exception v0

    .line 1436
    :goto_7
    return-object v3

    .line 1438
    :catchall_5
    move-exception v0

    goto :goto_b

    .line 1425
    :catch_6
    move-exception v0

    .line 1426
    nop

    .line 1430
    :try_start_f
    new-instance v3, Landroid/util/Pair;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1440
    :try_start_10
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v7, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 1446
    goto :goto_8

    .line 1444
    :catch_7
    move-exception v0

    .line 1430
    :goto_8
    return-object v3

    .line 1438
    :catchall_6
    move-exception v0

    move-object v3, v0

    move v14, v9

    goto :goto_d

    .line 1419
    :catch_8
    move-exception v0

    .line 1420
    nop

    .line 1424
    :try_start_11
    new-instance v3, Landroid/util/Pair;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 1440
    :try_start_12
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v7, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    .line 1446
    goto :goto_9

    .line 1444
    :catch_9
    move-exception v0

    .line 1424
    :goto_9
    return-object v3

    .line 1438
    :catchall_7
    move-exception v0

    move-object v3, v0

    move v14, v10

    goto :goto_d

    .line 1413
    :catch_a
    move-exception v0

    .line 1414
    nop

    .line 1418
    :try_start_13
    new-instance v3, Landroid/util/Pair;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1440
    const/4 v4, 0x7

    :try_start_14
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v7, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_b

    .line 1446
    goto :goto_a

    .line 1444
    :catch_b
    move-exception v0

    .line 1418
    :goto_a
    return-object v3

    .line 1438
    :catchall_8
    move-exception v0

    const/4 v4, 0x7

    :goto_b
    move-object v3, v0

    move v14, v4

    goto :goto_d

    .line 1407
    :catch_c
    move-exception v0

    .line 1408
    nop

    .line 1412
    :try_start_15
    new-instance v3, Landroid/util/Pair;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 1440
    const/16 v17, 0x6

    :try_start_16
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v7, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_d

    .line 1446
    goto :goto_c

    .line 1444
    :catch_d
    move-exception v0

    .line 1412
    :goto_c
    return-object v3

    .line 1438
    :catchall_9
    move-exception v0

    const/16 v17, 0x6

    move-object v3, v0

    move/from16 v14, v17

    .line 1439
    :goto_d
    if-eqz v14, :cond_7

    .line 1440
    :try_start_17
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v7, v2, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_e

    goto :goto_e

    .line 1444
    :catch_e
    move-exception v0

    goto :goto_f

    .line 1446
    :cond_7
    :goto_e
    nop

    :goto_f
    throw v3
.end method

.method public final varargs a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/baidu/sofire/ac/Callback;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1149
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p3

    const-string v3, "0"

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1150
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    const-string v5, "1"

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v6, p2

    goto :goto_0

    :cond_0
    const-string v6, " "

    :goto_0
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    const-string v5, "2"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v3, Ld/a/g/d/f;->b:Landroid/content/Context;

    const-string v5, "1003136"

    const/4 v6, 0x0

    invoke-static {v3, v5, v4, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1154
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9

    const-string v5, "1003141"

    const-string v7, "3"

    const/4 v8, 0x1

    if-eqz v3, :cond_2

    .line 1155
    if-eqz v2, :cond_1

    .line 1156
    :try_start_1
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {v2, v0}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    :cond_1
    const-string v0, "11"

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v5, v4, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9

    .line 1161
    return-void

    .line 1163
    :cond_2
    nop

    .line 1165
    const/16 v3, 0xd

    const/16 v9, 0xc

    const/16 v10, 0x12

    const/16 v11, 0x11

    const/4 v15, 0x3

    const/16 v16, 0x2

    if-eqz v2, :cond_3

    .line 1166
    :try_start_2
    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v14}, Lcom/baidu/sofire/ac/Callback;->onBegin([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    :cond_3
    iget-object v14, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v14, v0}, Ld/a/g/a/a;->d(I)Z

    move-result v14

    .line 1175
    if-eqz v14, :cond_4

    .line 1176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1177
    :goto_1
    iget-object v14, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v14, v0}, Ld/a/g/a/a;->d(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v17

    const-wide/16 v21, 0x2710

    cmp-long v14, v19, v21

    if-gez v14, :cond_4

    .line 1182
    const-wide/16 v19, 0x12c

    invoke-static/range {v19 .. v20}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 1189
    :cond_4
    iget-object v14, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v14, v0}, Ld/a/g/a/a;->d(I)Z

    move-result v14
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v14, :cond_6

    .line 1190
    nop

    .line 1191
    if-eqz v2, :cond_5

    .line 1192
    :try_start_3
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {v2, v0}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1312
    :catchall_0
    move-exception v0

    move-object v2, v0

    move v10, v9

    goto/16 :goto_b

    .line 1314
    :cond_5
    :goto_2
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v5, v4, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1320
    return-void

    .line 1318
    :catch_0
    move-exception v0

    .line 1194
    return-void

    .line 1196
    :cond_6
    :try_start_5
    iget-boolean v9, v1, Ld/a/g/d/f;->e:Z

    if-nez v9, :cond_7

    .line 1198
    invoke-static {v15}, Ld/a/g/d/f;->a(I)V

    .line 1199
    nop

    .line 5195
    invoke-virtual/range {p0 .. p0}, Ld/a/g/d/f;->b()V

    .line 1203
    :cond_7
    sget-object v9, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 1205
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Ld/a/g/d/n;->a(Landroid/content/Context;)Ld/a/g/d/n;

    move-result-object v9

    .line 1207
    nop

    .line 1208
    const/4 v14, 0x0

    .line 1210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1211
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v17

    const-wide/16 v21, 0x3a98

    cmp-long v19, v19, v21

    if-gtz v19, :cond_b

    .line 1216
    iget-object v14, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v14, v0}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v14

    .line 1217
    if-eqz v14, :cond_a

    .line 1218
    iget-object v13, v14, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 1219
    nop

    .line 1220
    move v0, v8

    goto :goto_5

    .line 1221
    :cond_8
    iget v13, v14, Lcom/baidu/sofire/core/ApkInfo;->initStatus:I

    const/4 v12, -0x1

    if-eq v13, v12, :cond_9

    goto :goto_4

    :cond_9
    move v0, v6

    goto :goto_5

    .line 1225
    :cond_a
    :goto_4
    const-wide/16 v12, 0x3e8

    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 1211
    :cond_b
    move v0, v6

    .line 1228
    :goto_5
    if-nez v0, :cond_d

    .line 1229
    nop

    .line 1230
    if-eqz v2, :cond_c

    .line 1231
    :try_start_6
    new-array v0, v8, [Ljava/lang/Object;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v6

    invoke-virtual {v2, v0}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    .line 1312
    :catchall_1
    move-exception v0

    move-object v2, v0

    move v10, v3

    goto/16 :goto_b

    .line 1314
    :cond_c
    :goto_6
    :try_start_7
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v5, v4, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 1320
    return-void

    .line 1318
    :catch_1
    move-exception v0

    .line 1234
    return-void

    .line 1237
    :cond_d
    :try_start_8
    iget-object v0, v14, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v0

    .line 1239
    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Ld/a/g/d/m;

    .line 1241
    const-string v3, "com.baidu.sofire.engine.EngineImpl"

    invoke-virtual {v0, v3}, Ld/a/g/d/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1244
    const-string v3, "getInstance"

    new-array v9, v8, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v9, v6

    invoke-virtual {v0, v3, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1245
    new-array v9, v8, [Ljava/lang/Object;

    sget-object v12, Ld/a/g/d/f;->b:Landroid/content/Context;

    aput-object v12, v9, v6

    invoke-virtual {v3, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1254
    nop

    .line 1255
    move-object/from16 v3, p2

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-static {v0, v3, v9, v12}, Ld/a/g/i/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1264
    if-eqz v2, :cond_e

    .line 1265
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Lcom/baidu/sofire/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1320
    :cond_e
    return-void

    .line 1312
    :catchall_2
    move-exception v0

    move-object v2, v0

    move v10, v6

    goto/16 :goto_b

    .line 1303
    :catch_2
    move-exception v0

    .line 1304
    nop

    .line 1308
    if-eqz v2, :cond_f

    .line 1309
    :try_start_9
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {v2, v0}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_7

    .line 1312
    :catchall_3
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    .line 1314
    :cond_f
    :goto_7
    :try_start_a
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v5, v4, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 1320
    return-void

    .line 1318
    :catch_3
    move-exception v0

    .line 1321
    return-void

    .line 1294
    :catch_4
    move-exception v0

    .line 1295
    nop

    .line 1300
    if-eqz v2, :cond_10

    .line 1301
    :try_start_b
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {v2, v0}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_8

    .line 1312
    :catchall_4
    move-exception v0

    move-object v2, v0

    move v10, v11

    goto :goto_b

    .line 1314
    :cond_10
    :goto_8
    :try_start_c
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v5, v4, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    .line 1320
    return-void

    .line 1285
    :catch_5
    move-exception v0

    .line 1286
    nop

    .line 1291
    if-eqz v2, :cond_11

    .line 1292
    :try_start_d
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {v2, v0}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_9

    .line 1312
    :catchall_5
    move-exception v0

    move-object v2, v0

    const/16 v10, 0x10

    goto :goto_b

    .line 1314
    :cond_11
    :goto_9
    const/16 v2, 0x10

    :try_start_e
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v5, v4, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3

    .line 1320
    return-void

    .line 1276
    :catch_6
    move-exception v0

    .line 1277
    nop

    .line 1282
    if-eqz v2, :cond_12

    .line 1283
    :try_start_f
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {v2, v0}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_a

    .line 1312
    :catchall_6
    move-exception v0

    move-object v2, v0

    const/16 v10, 0xf

    goto :goto_b

    .line 1314
    :cond_12
    :goto_a
    const/16 v2, 0xf

    :try_start_10
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v5, v4, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3

    .line 1320
    return-void

    .line 1267
    :catch_7
    move-exception v0

    .line 1268
    nop

    .line 1273
    if-eqz v2, :cond_14

    .line 1274
    :try_start_11
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {v2, v0}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_e

    .line 1312
    :catchall_7
    move-exception v0

    move-object v2, v0

    const/16 v10, 0xe

    .line 1313
    :goto_b
    if-eqz v10, :cond_13

    .line 1314
    :try_start_12
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v5, v4, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_c

    .line 1318
    :catch_8
    move-exception v0

    goto :goto_d

    .line 1320
    :cond_13
    :goto_c
    nop

    :goto_d
    :try_start_13
    throw v2
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 1314
    :cond_14
    :goto_e
    const/16 v2, 0xe

    :try_start_14
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0, v5, v4, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3

    .line 1320
    return-void

    .line 1322
    :catch_9
    move-exception v0

    .line 1323
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1326
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 8

    .line 449
    const-string v0, "-"

    :try_start_0
    iget-object v1, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v1, p1}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v1

    .line 450
    if-eqz v1, :cond_3

    .line 451
    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 452
    invoke-static {p2, v1}, Ld/a/g/i/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 453
    return-void

    .line 455
    :cond_0
    nop

    .line 3834
    :try_start_1
    iget-object v1, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v1, p1}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v1

    .line 3835
    if-nez v1, :cond_1

    .line 3836
    goto :goto_0

    .line 3838
    :cond_1
    iget-object v2, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v2, p1}, Ld/a/g/a/a;->h(I)V

    .line 3839
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3845
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3846
    invoke-static {v2}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 3847
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3854
    :cond_2
    goto :goto_0

    .line 3852
    :catch_0
    move-exception v1

    .line 3853
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 459
    :cond_3
    goto :goto_0

    .line 457
    :catch_1
    move-exception v1

    .line 458
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 460
    :goto_0
    nop

    .line 461
    nop

    .line 462
    nop

    .line 464
    const/4 v1, 0x0

    :try_start_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 465
    new-instance v2, Ljava/io/File;

    sget-object v3, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 467
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 470
    :cond_4
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 471
    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 472
    :try_start_5
    sget-object v4, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 474
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 476
    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_5

    .line 477
    invoke-virtual {v2, v4, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 479
    :cond_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 481
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ld/a/g/i/c;->a(Ljava/lang/String;Z)V

    .line 483
    invoke-static {v3}, Ld/a/g/i/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 484
    if-eqz v4, :cond_b

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    goto/16 :goto_2

    .line 488
    :cond_6
    new-instance p3, Lcom/baidu/sofire/core/ApkInfo;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p3, p1, p2, v6}, Lcom/baidu/sofire/core/ApkInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 489
    iput-object v4, p3, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 490
    iput v5, p3, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 491
    iget-object v4, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v4, p3}, Ld/a/g/a/a;->a(Lcom/baidu/sofire/core/ApkInfo;)J

    .line 493
    iget-object p3, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {p3, p1}, Ld/a/g/a/a;->g(I)I

    move-result p3

    .line 494
    nop

    .line 495
    const/4 v4, 0x3

    if-ne p3, v4, :cond_7

    .line 499
    move v5, v7

    .line 501
    :cond_7
    iget-object p3, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    invoke-virtual {p3}, Ld/a/g/h/a;->c()Z

    move-result p3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v4, ".b"

    if-eqz p3, :cond_a

    if-eqz v5, :cond_a

    .line 502
    :try_start_6
    new-instance p3, Ljava/io/File;

    sget-object v5, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {p3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_8

    .line 504
    invoke-virtual {p3}, Ljava/io/File;->mkdir()Z

    .line 507
    :cond_8
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    invoke-static {v4}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 509
    invoke-static {v3, v4}, Ld/a/g/i/c;->a(Ljava/io/File;Ljava/io/File;)V

    .line 511
    :cond_9
    sget-object p3, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 512
    invoke-static {p3, p1, v3, v4}, Ld/a/g/h;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 513
    goto :goto_4

    .line 515
    :cond_a
    new-instance p3, Ljava/io/File;

    sget-object v5, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {p3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 517
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 518
    invoke-static {v4}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 519
    invoke-static {v4}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 520
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 485
    :cond_b
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 547
    nop

    .line 549
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 551
    goto :goto_3

    .line 550
    :catch_2
    move-exception p1

    .line 555
    :goto_3
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 557
    return-void

    .line 556
    :catch_3
    move-exception p1

    .line 486
    return-void

    .line 538
    :catch_4
    move-exception p2

    goto/16 :goto_8

    :catch_5
    move-exception p2

    move-object v2, v1

    goto :goto_8

    .line 464
    :cond_c
    move-object v2, v1

    move-object v3, v2

    .line 526
    :cond_d
    :goto_4
    :try_start_9
    iget-object p3, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {p3, p1}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object p3

    .line 527
    if-eqz p3, :cond_11

    iget-object p3, p3, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-static {p3}, Ld/a/g/i/c;->c(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_e

    goto :goto_6

    .line 531
    :cond_e
    invoke-virtual {p0, p1, p2, p4}, Ld/a/g/d/f;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z

    move-result p3

    .line 532
    if-eqz p3, :cond_f

    .line 533
    sget-object p3, Ld/a/g/d/f;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object p3, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    .line 4609
    iget-object p4, p3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "g_l_l_p_v_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4610
    iget-object p2, p3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 547
    :cond_f
    if-eqz v1, :cond_10

    .line 549
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 551
    goto :goto_5

    .line 550
    :catch_6
    move-exception p1

    .line 553
    :cond_10
    :goto_5
    if-eqz v2, :cond_18

    .line 555
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 557
    return-void

    .line 556
    :catch_7
    move-exception p1

    .line 557
    return-void

    .line 547
    :cond_11
    :goto_6
    if-eqz v1, :cond_12

    .line 549
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 551
    goto :goto_7

    .line 550
    :catch_8
    move-exception p1

    .line 553
    :cond_12
    :goto_7
    if-eqz v2, :cond_13

    .line 555
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 557
    return-void

    .line 556
    :catch_9
    move-exception p1

    .line 528
    :cond_13
    return-void

    .line 547
    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_b

    .line 538
    :catch_a
    move-exception p2

    move-object v2, v1

    move-object v3, v2

    .line 539
    :goto_8
    :try_start_e
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 540
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 541
    invoke-static {v3}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 542
    iget-object p2, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {p2, p1}, Ld/a/g/a/a;->h(I)V

    .line 543
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 547
    if-eqz v1, :cond_14

    .line 549
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 551
    goto :goto_9

    .line 550
    :catch_b
    move-exception p1

    .line 553
    :cond_14
    :goto_9
    if-eqz v2, :cond_15

    .line 555
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 557
    return-void

    .line 556
    :catch_c
    move-exception p1

    .line 544
    :cond_15
    return-void

    .line 547
    :cond_16
    if-eqz v1, :cond_17

    .line 549
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 551
    goto :goto_a

    .line 550
    :catch_d
    move-exception p1

    .line 553
    :cond_17
    :goto_a
    if-eqz v2, :cond_18

    .line 555
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 557
    return-void

    .line 561
    :cond_18
    return-void

    .line 547
    :catchall_1
    move-exception p1

    :goto_b
    if-eqz v1, :cond_19

    .line 549
    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 551
    goto :goto_c

    .line 550
    :catch_e
    move-exception p2

    .line 553
    :cond_19
    :goto_c
    if-eqz v2, :cond_1a

    .line 555
    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    .line 557
    goto :goto_d

    .line 556
    :catch_f
    move-exception p2

    .line 557
    :cond_1a
    :goto_d
    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1532
    :try_start_0
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object v0

    new-instance v1, Ld/a/g/d/e;

    invoke-direct {v1, p0, p1}, Ld/a/g/d/e;-><init>(Ld/a/g/d/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ld/a/g/i/w;->a(Ljava/lang/Runnable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1723
    return-void

    .line 1721
    :catch_0
    move-exception p1

    .line 1722
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1725
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 859
    :try_start_0
    iget-object v0, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v0, p1}, Ld/a/g/a/a;->a(Ljava/lang/String;)V

    .line 860
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 866
    invoke-static {p1}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 867
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :cond_0
    return-void

    .line 873
    :catch_0
    move-exception p1

    .line 874
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 876
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 16

    .line 367
    move-object/from16 v0, p1

    const-string v1, "t"

    const-string v2, "n"

    const-string v3, "l"

    if-nez v0, :cond_0

    .line 368
    return-void

    .line 370
    :cond_0
    :try_start_0
    const-string v4, "6"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 371
    if-nez v4, :cond_1

    .line 372
    return-void

    .line 374
    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v7, 0x0

    if-ge v6, v0, :cond_b

    .line 375
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 376
    const-string v8, "errno"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 377
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 378
    const/4 v10, 0x1

    if-ne v8, v10, :cond_a

    .line 381
    :try_start_1
    const-string v8, "detail"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 382
    new-instance v8, Landroid/content/pm/PackageInfo;

    invoke-direct {v8}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 383
    const-string v10, "p"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 384
    const-string v10, "v"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 385
    new-instance v10, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 386
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 387
    iget-object v11, v10, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const-string v12, "."

    if-nez v11, :cond_2

    :try_start_2
    iget-object v11, v10, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 388
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 389
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 391
    :cond_2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 392
    iput-object v10, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 393
    const-string v10, "a"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 394
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 395
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 396
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-ge v13, v0, :cond_5

    .line 398
    :try_start_3
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_4

    .line 400
    new-instance v14, Landroid/content/pm/ActivityInfo;

    invoke-direct {v14}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 401
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 402
    iget-object v15, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    iget-object v15, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 403
    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 404
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 406
    :cond_3
    iget-object v5, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v5, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 407
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Landroid/content/pm/ActivityInfo;->theme:I

    .line 408
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v14, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 409
    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 410
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 415
    :cond_4
    goto :goto_2

    .line 413
    :catch_0
    move-exception v0

    .line 414
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 396
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 417
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 418
    nop

    .line 419
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/ActivityInfo;

    .line 420
    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 426
    :cond_6
    move-object v7, v8

    goto :goto_3

    .line 423
    :catch_1
    move-exception v0

    .line 424
    nop

    .line 425
    :try_start_5
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 427
    :goto_3
    sget-object v0, Ld/a/g/i/c;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 428
    sget-object v0, Ld/a/g/i/c;->q:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sofire/core/ApkInfo;

    .line 429
    if-eqz v0, :cond_8

    if-eqz v7, :cond_8

    iget-object v5, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 430
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 431
    iget v5, v0, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget-object v8, v0, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v9, p0

    :try_start_6
    invoke-virtual {v9, v5, v8, v0, v7}, Ld/a/g/d/f;->a(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    goto :goto_4

    .line 430
    :cond_7
    move-object/from16 v9, p0

    goto :goto_4

    .line 429
    :cond_8
    move-object/from16 v9, p0

    goto :goto_4

    .line 427
    :cond_9
    move-object/from16 v9, p0

    goto :goto_4

    .line 378
    :cond_a
    move-object/from16 v9, p0

    .line 374
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 437
    :cond_b
    move-object/from16 v9, p0

    sget-object v0, Ld/a/g/i/c;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    .line 438
    sget-object v0, Ld/a/g/i/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 439
    sput-object v7, Ld/a/g/i/c;->q:Ljava/util/HashMap;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 443
    :cond_c
    return-void

    .line 441
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v9, p0

    .line 442
    :goto_5
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 444
    return-void
.end method

.method public final declared-synchronized a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z
    .locals 1

    monitor-enter p0

    .line 565
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Ld/a/g/d/f;->a(ILjava/lang/String;ZLandroid/content/pm/PackageInfo;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ILjava/lang/String;ZLandroid/content/pm/PackageInfo;)Z
    .locals 11

    monitor-enter p0

    .line 584
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 586
    :try_start_0
    iget-object v2, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v2, p1}, Ld/a/g/a/a;->c(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v0, :cond_0

    .line 587
    monitor-exit p0

    return v1

    .line 591
    :cond_0
    :try_start_1
    iget-object v2, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v2, p1}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v2

    .line 592
    if-nez v2, :cond_2

    .line 597
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 598
    const-string v2, "0"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v0, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string p1, "2"

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    if-nez p3, :cond_1

    .line 602
    sget-object p1, Ld/a/g/d/f;->b:Landroid/content/Context;

    const-string p2, "1003105"

    invoke-static {p1, p2, p4, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    :cond_1
    monitor-exit p0

    return v1

    .line 628
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-static {v3}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_4

    .line 637
    iget-object p4, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {p4, p1}, Ld/a/g/a/a;->f(I)V

    .line 639
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 640
    const-string v0, "0"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v0, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string p1, "2"

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    if-nez p3, :cond_3

    .line 645
    sget-object p1, Ld/a/g/d/f;->b:Landroid/content/Context;

    const-string p2, "1003105"

    invoke-static {p1, p2, p4, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 648
    :cond_3
    monitor-exit p0

    return v1

    .line 650
    :cond_4
    if-eqz p4, :cond_5

    .line 651
    :try_start_3
    iput-object p4, v2, Lcom/baidu/sofire/core/ApkInfo;->cloudPkgInfo:Landroid/content/pm/PackageInfo;

    .line 653
    :cond_5
    sget-object p4, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 654
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Ld/a/g/d/n;->a(Landroid/content/Context;)Ld/a/g/d/n;

    move-result-object p4

    .line 658
    invoke-virtual {p4, v2, v1}, Ld/a/g/d/n;->a(Lcom/baidu/sofire/core/ApkInfo;Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 659
    iget-object v0, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v0, p1}, Ld/a/g/a/a;->f(I)V

    .line 663
    iget-object v0, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ld/a/g/d/n;->a(Ljava/lang/String;)Z

    .line 665
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 666
    const-string v0, "0"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string v0, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const-string p1, "2"

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    if-nez p3, :cond_6

    .line 670
    sget-object p1, Ld/a/g/d/f;->b:Landroid/content/Context;

    const-string p2, "1003105"

    invoke-static {p1, p2, p4, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 675
    :cond_6
    monitor-exit p0

    return v1

    .line 681
    :cond_7
    :try_start_4
    sget-object v3, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v3}, Ld/a/g/i/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 684
    const/4 v5, 0x2

    if-eqz v3, :cond_8

    array-length v6, v3

    if-ne v6, v5, :cond_8

    aget-object v6, v3, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    aget-object v6, v3, v0

    .line 685
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 686
    aget-object v6, v3, v1

    .line 687
    aget-object v3, v3, v0

    goto :goto_0

    .line 689
    :cond_8
    sget-object v6, Ld/a/g/i/c;->e:Ljava/lang/String;

    .line 690
    sget-object v3, Ld/a/g/i/c;->f:Ljava/lang/String;

    .line 696
    :goto_0
    iget-object v7, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {p4, v7}, Ld/a/g/d/n;->c(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v2

    .line 698
    iget-object v7, v2, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v7, Ld/a/g/d/m;

    .line 700
    const-string v8, "com.baidu.sofire.engine.EngineImpl"

    .line 701
    invoke-virtual {v7, v8}, Ld/a/g/d/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 703
    if-nez v8, :cond_a

    .line 707
    const-string v0, "java.lang.String"

    invoke-virtual {v7, v0}, Ld/a/g/d/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 709
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 710
    const-string v4, "0"

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v4, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v4, "2"

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "classloader="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",StringClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 715
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\n"

    const-string v6, ""

    .line 718
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\t"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\r"

    const-string v6, ""

    .line 719
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    if-nez p3, :cond_9

    .line 721
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    const-string v4, "1003105"

    invoke-static {v0, v4, v3, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 724
    :cond_9
    iget-object v0, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v0, p1}, Ld/a/g/a/a;->f(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 725
    monitor-exit p0

    return v1

    .line 728
    :cond_a
    :try_start_5
    const-string v7, "getInstance"

    new-array v9, v0, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v1

    invoke-virtual {v8, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 729
    new-array v9, v0, [Ljava/lang/Object;

    sget-object v10, Ld/a/g/d/f;->b:Landroid/content/Context;

    aput-object v10, v9, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 735
    :try_start_6
    const-string v8, "setSecurityVerifyInfo"

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v1

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v0

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v6, v10, v1

    aput-object v3, v10, v0

    .line 736
    invoke-static {v7, v8, v9, v10}, Ld/a/g/i/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 741
    goto :goto_1

    .line 739
    :catch_0
    move-exception v3

    .line 740
    :try_start_7
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 743
    :goto_1
    const-string v3, "init"

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v0

    new-array v5, v5, [Ljava/lang/Object;

    .line 745
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v0

    .line 743
    invoke-static {v7, v3, v6, v5}, Ld/a/g/i/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    .line 747
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 748
    const-string v3, "0"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string v3, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    const-string v3, "2"

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    if-nez p3, :cond_b

    .line 752
    sget-object v3, Ld/a/g/d/f;->b:Landroid/content/Context;

    const-string v4, "1003105"

    invoke-static {v3, v4, v0, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 755
    :cond_b
    iget-object v0, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v0, p1}, Ld/a/g/a/a;->f(I)V

    .line 759
    iget-object v0, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ld/a/g/d/n;->a(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 766
    monitor-exit p0

    return v1

    .line 799
    :cond_c
    nop

    .line 801
    :try_start_8
    iput v0, v2, Lcom/baidu/sofire/core/ApkInfo;->initStatus:I

    .line 802
    iput v0, v2, Lcom/baidu/sofire/core/ApkInfo;->apkParseSuc:I

    .line 803
    iget-object p4, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {p4, v2}, Ld/a/g/a/a;->a(Lcom/baidu/sofire/core/ApkInfo;)J

    .line 807
    iget-object p4, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    iget v3, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {p4, v3}, Ld/a/g/a/a;->g(I)I

    move-result p4

    .line 811
    if-ge p4, v4, :cond_d

    const/4 v3, -0x1

    if-eq p4, v3, :cond_d

    .line 812
    iget-object v3, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    iget v2, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    add-int/2addr p4, v0

    invoke-virtual {v3, v2, p4}, Ld/a/g/a/a;->b(II)V

    .line 815
    :cond_d
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 816
    const-string v2, "0"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v2, "1"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string p1, "2"

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    if-nez p3, :cond_e

    .line 820
    sget-object p1, Ld/a/g/d/f;->b:Landroid/content/Context;

    const-string p2, "1003105"

    invoke-static {p1, p2, p4, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 823
    :cond_e
    sget-object p1, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {p1}, Ld/a/g/i/c;->c(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 825
    monitor-exit p0

    return v0

    .line 769
    :catch_1
    move-exception v0

    .line 774
    :try_start_9
    iget-object v3, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v3, p1}, Ld/a/g/a/a;->f(I)V

    .line 777
    invoke-static {v0}, Ld/a/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 778
    sget-object v3, Ld/a/g/d/f;->b:Landroid/content/Context;

    iget-object v4, v2, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 779
    invoke-static {v3, v0, v4}, Ld/a/g/i/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    iget-object v2, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ld/a/g/d/n;->a(Ljava/lang/String;)Z

    .line 783
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 784
    const-string v2, "0"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string v2, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string p1, "2"

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string p1, "3"

    .line 788
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\n"

    const-string v2, ""

    .line 789
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\t"

    const-string v2, ""

    .line 790
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\r"

    const-string v2, ""

    .line 791
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 787
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    if-nez p3, :cond_f

    .line 793
    sget-object p1, Ld/a/g/d/f;->b:Landroid/content/Context;

    const-string p2, "1003105"

    invoke-static {p1, p2, p4, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 797
    :cond_f
    goto :goto_2

    .line 795
    :catch_2
    move-exception p1

    .line 796
    :try_start_a
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 798
    :goto_2
    monitor-exit p0

    return v1

    .line 583
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 826
    :catch_3
    move-exception p1

    .line 827
    :try_start_b
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 828
    monitor-exit p0

    return v1

    .line 583
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 1747
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ld/a/g/d/n;->a(Landroid/content/Context;)Ld/a/g/d/n;

    move-result-object p1

    .line 1748
    if-nez p1, :cond_0

    .line 1749
    return v0

    .line 1751
    :cond_0
    invoke-virtual {p1, p2}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v1

    .line 1752
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1753
    return v2

    .line 1755
    :cond_1
    iget-object v1, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    if-nez v1, :cond_2

    .line 1756
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v1}, Ld/a/g/a/a;->a(Landroid/content/Context;)Ld/a/g/a/a;

    move-result-object v1

    iput-object v1, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    .line 1758
    :cond_2
    iget-object v1, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v1, p2}, Ld/a/g/a/a;->b(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v1

    .line 1762
    if-eqz v1, :cond_6

    .line 1763
    iget-object v3, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    invoke-virtual {v3}, Ld/a/g/h/a;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1764
    new-instance v3, Ljava/io/File;

    sget-object v4, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ".b"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1765
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1766
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 1769
    :cond_3
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1770
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1772
    invoke-static {v5}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1773
    invoke-static {v4, v5}, Ld/a/g/i/c;->a(Ljava/io/File;Ljava/io/File;)V

    .line 1775
    :cond_4
    sget-object v3, Ld/a/g/d/f;->b:Landroid/content/Context;

    iget v6, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 1776
    invoke-static {v3, v6, v4, v5}, Ld/a/g/h;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 1779
    :cond_5
    iget v3, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v4}, Ld/a/g/d/f;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1780
    return v2

    .line 1783
    :cond_6
    invoke-virtual {p1, p2}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    if-nez p1, :cond_7

    .line 1785
    return v0

    .line 1787
    :cond_7
    return v2

    .line 1788
    :catch_0
    move-exception p1

    .line 1789
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1790
    return v0
.end method

.method public final a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;)Z
    .locals 23

    .line 890
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "\r"

    const-string v4, "\t"

    const-string v5, "\n"

    const-string v6, "3"

    const-string v7, "1003106"

    const-string v8, "2"

    const-string v9, "1"

    const-string v10, "0"

    const-string v11, ""

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-nez v2, :cond_0

    .line 891
    return v12

    .line 893
    :cond_0
    new-instance v14, Ljava/io/File;

    iget-object v0, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 895
    const/4 v15, 0x1

    :try_start_0
    invoke-static {v14}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 900
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 901
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    iget-object v13, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "nowTime:"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    move-object/from16 v18, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v15, v18

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", nowFileInfo: path="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", exists="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", canRead="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->canRead()Z

    move-result v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isFile="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",length"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " - "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 912
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 905
    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    .line 913
    invoke-virtual {v12, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 914
    invoke-virtual {v12, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 904
    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v12, Ld/a/g/d/f;->b:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v12, v7, v0, v13}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 918
    return v13

    .line 921
    :cond_1
    iget-object v0, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    iget v12, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v0, v12}, Ld/a/g/a/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 922
    iget-object v0, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v0, v2}, Ld/a/g/a/a;->a(Lcom/baidu/sofire/core/ApkInfo;)J

    .line 925
    :cond_2
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 926
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/a/g/d/n;->a(Landroid/content/Context;)Ld/a/g/d/n;

    move-result-object v0

    .line 929
    iget-object v12, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    iget v15, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    move-object/from16 v18, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v15, v13}, Ld/a/g/a/a;->a(II)I

    .line 930
    iget-object v12, v2, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v12}, Ld/a/g/d/f;->c(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0, v2, v13}, Ld/a/g/d/n;->a(Lcom/baidu/sofire/core/ApkInfo;Z)Z

    move-result v12

    const/4 v13, 0x2

    if-nez v12, :cond_3

    .line 933
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 934
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget-object v12, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v12, Ld/a/g/d/f;->b:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v12, v7, v0, v13}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 942
    invoke-static {v14}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 944
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 947
    iget v0, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget-object v12, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-virtual {v1, v0, v12, v15, v13}, Ld/a/g/d/f;->a(ILjava/lang/String;ZLandroid/content/pm/PackageInfo;)Z

    .line 948
    iget-object v0, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    iget v12, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Ld/a/g/a/a;->a(II)I

    .line 949
    return v13

    .line 952
    :cond_3
    sget-object v12, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v12}, Ld/a/g/i/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v12

    .line 955
    if-eqz v12, :cond_4

    array-length v15, v12

    if-ne v15, v13, :cond_4

    const/4 v15, 0x0

    aget-object v19, v12, v15

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    const/16 v17, 0x1

    aget-object v19, v12, v17

    .line 956
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 957
    const/4 v15, 0x0

    aget-object v19, v12, v15

    .line 958
    aget-object v12, v12, v17

    goto :goto_0

    .line 960
    :cond_4
    sget-object v19, Ld/a/g/i/c;->e:Ljava/lang/String;

    .line 961
    sget-object v12, Ld/a/g/i/c;->f:Ljava/lang/String;

    .line 964
    :goto_0
    iget-object v15, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ld/a/g/d/n;->c(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v2

    .line 965
    if-nez v2, :cond_5

    .line 966
    const/4 v2, 0x0

    return v2

    .line 968
    :cond_5
    iget-object v0, v2, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Ld/a/g/d/m;

    .line 970
    const-string v15, "com.baidu.sofire.engine.EngineImpl"

    .line 971
    invoke-virtual {v0, v15}, Ld/a/g/d/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 972
    if-nez v15, :cond_6

    .line 976
    const-string v12, "java.lang.String"

    invoke-virtual {v0, v12}, Ld/a/g/d/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 978
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 979
    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v20, v10

    :try_start_1
    iget v10, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v13, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    iget-object v10, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v13, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "classloader="

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",StringClass="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 984
    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 988
    invoke-virtual {v0, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 983
    invoke-interface {v13, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v0, v7, v13, v10}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 991
    invoke-static {v14}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 992
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 993
    iget-object v0, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    iget v10, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v12}, Ld/a/g/a/a;->a(II)I

    .line 994
    return v12

    .line 997
    :cond_6
    move-object/from16 v20, v10

    move-object v0, v15

    const-string v10, "getInstance"

    const/4 v15, 0x1

    new-array v13, v15, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    const/16 v21, 0x0

    aput-object v15, v13, v21

    invoke-virtual {v0, v10, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 998
    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    sget-object v13, Ld/a/g/d/f;->b:Landroid/content/Context;

    const/16 v21, 0x0

    aput-object v13, v15, v21

    invoke-virtual {v10, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 1000
    :try_start_2
    const-string v0, "setSecurityVerifyInfo"

    const/4 v15, 0x2

    new-array v13, v15, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v15, v13, v21

    const-class v21, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v21, v13, v17
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v22, v6

    const/4 v15, 0x2

    :try_start_3
    new-array v6, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v19, v6, v15

    aput-object v12, v6, v17

    .line 1001
    invoke-static {v10, v0, v13, v6}, Ld/a/g/i/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1006
    goto :goto_2

    .line 1004
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v22, v6

    .line 1005
    :goto_1
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1008
    :goto_2
    const-string v0, "init"

    const/4 v6, 0x2

    new-array v12, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1010
    const/4 v13, 0x0

    aput-object v18, v6, v13

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v6, v13

    .line 1008
    invoke-static {v10, v0, v12, v6}, Ld/a/g/i/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1017
    invoke-static {v14}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 1019
    iget-object v0, v2, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ld/a/g/d/f;->c(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 1023
    iget v0, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget-object v6, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v12, 0x1

    invoke-virtual {v1, v0, v6, v12, v10}, Ld/a/g/d/f;->a(ILjava/lang/String;ZLandroid/content/pm/PackageInfo;)Z

    .line 1024
    iget-object v0, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    iget v6, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v10}, Ld/a/g/a/a;->a(II)I

    .line 1026
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1027
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v10, v20

    :try_start_5
    invoke-interface {v0, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    iget-object v6, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v6, Ld/a/g/d/f;->b:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v6, v7, v0, v12}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1032
    return v12

    .line 1034
    :cond_7
    move-object/from16 v10, v20

    iget-boolean v0, v2, Lcom/baidu/sofire/core/ApkInfo;->isMem:Z

    if-eqz v0, :cond_8

    .line 1035
    invoke-static {v14}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 1036
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 1037
    iget-object v0, v2, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 1038
    sget-object v0, Ld/a/g/d/n;->d:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 1039
    sget-object v0, Ld/a/g/d/n;->d:Ljava/util/List;

    iget v6, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 1071
    :cond_8
    nop

    .line 1078
    :try_start_6
    iget-object v0, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    iget v3, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v0, v3}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v0

    .line 1082
    nop

    .line 1083
    if-eqz v0, :cond_9

    iget-object v3, v0, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    iget-object v4, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1084
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v3

    goto :goto_3

    .line 1087
    :cond_9
    const/16 v16, 0x0

    :goto_3
    const/4 v3, 0x1

    iput v3, v2, Lcom/baidu/sofire/core/ApkInfo;->initStatus:I

    .line 1088
    iput v3, v2, Lcom/baidu/sofire/core/ApkInfo;->apkParseSuc:I

    .line 1089
    iget-object v0, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v0, v2}, Ld/a/g/a/a;->a(Lcom/baidu/sofire/core/ApkInfo;)J

    move-result-wide v3

    .line 1090
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_a

    .line 1091
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1092
    invoke-static/range {v16 .. v16}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 1093
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 1100
    :cond_a
    iget-object v0, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    iget v3, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ld/a/g/a/a;->a(II)I

    .line 1106
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/c;->c(Landroid/content/Context;)V

    .line 1108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1109
    move-object/from16 v3, v18

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    iget-object v2, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v7, v0, v3}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 1115
    goto :goto_4

    .line 1113
    :catch_2
    move-exception v0

    .line 1114
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1117
    :goto_4
    const/4 v2, 0x1

    return v2

    .line 1042
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v22, v6

    :goto_5
    move-object/from16 v10, v20

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v22, v6

    .line 1048
    :goto_6
    :try_start_7
    invoke-static {v14}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 1050
    iget-object v6, v2, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Ld/a/g/d/f;->c(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 1054
    iget v6, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget-object v12, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v1, v6, v12, v14, v13}, Ld/a/g/d/f;->a(ILjava/lang/String;ZLandroid/content/pm/PackageInfo;)Z

    .line 1055
    iget-object v6, v1, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    iget v12, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Ld/a/g/a/a;->a(II)I

    .line 1057
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1058
    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    iget-object v2, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v6, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    nop

    .line 1063
    invoke-static {v0}, Ld/a/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1065
    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    move-object/from16 v2, v22

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v7, v6, v2}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1069
    goto :goto_7

    .line 1067
    :catch_7
    move-exception v0

    .line 1068
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1070
    :goto_7
    const/4 v2, 0x0

    return v2
.end method

.method public final declared-synchronized b()V
    .locals 8

    monitor-enter p0

    .line 200
    :try_start_0
    iget-boolean v0, p0, Ld/a/g/d/f;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 205
    monitor-exit p0

    return-void

    .line 207
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ld/a/g/d/f;->e:Z

    .line 208
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v1}, Ld/a/g/i/t;->a(Landroid/content/Context;)V

    .line 209
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v1}, Ld/a/g/i/c;->m(Landroid/content/Context;)V

    .line 210
    iget-object v1, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    invoke-virtual {v1, v0}, Ld/a/g/h/a;->a(Z)V

    .line 212
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v1}, Ld/a/g/i/c;->n(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 213
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v2}, Ld/a/g/i/c;->d(Landroid/content/Context;)V

    .line 218
    iget-object v2, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    const-string v3, "3.5.9.4"

    .line 2759
    iget-object v4, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v5, "ssv"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2760
    iget-object v2, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sofire/rp/Report;->getInstance(Landroid/content/Context;)Lcom/baidu/sofire/rp/Report;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sofire/rp/Report;->n()V

    .line 222
    iget-object v2, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v2}, Ld/a/g/a/a;->a()Ljava/util/List;

    move-result-object v2

    .line 223
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/sofire/core/ApkInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    nop

    .line 226
    :try_start_2
    sget-object v5, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 227
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    goto :goto_1

    .line 228
    :catch_0
    move-exception v5

    .line 229
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 231
    :goto_1
    if-eqz v4, :cond_1

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/lib"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v3}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 237
    goto :goto_0

    .line 238
    :cond_2
    iget-object v2, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v2}, Ld/a/g/a/a;->d()V

    .line 244
    iget-object v2, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    .line 3367
    iget-object v2, v2, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v3, "iio"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 244
    if-nez v2, :cond_3

    .line 245
    iget-object v2, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    .line 3371
    iget-object v3, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v4, "iio"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3372
    iget-object v2, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    goto :goto_2

    .line 247
    :cond_3
    iget-object v2, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    .line 3776
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3777
    const-string v6, "n"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3780
    :try_start_4
    iget-object v2, v2, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "pgn"

    const-string v7, "n=-1"

    invoke-virtual {v2, v6, v3, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3784
    goto :goto_2

    .line 3782
    :catch_1
    move-exception v2

    .line 3783
    :try_start_5
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 249
    :goto_2
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v2}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object v2

    new-instance v3, Lcom/baidu/sofire/ac/U;

    sget-object v4, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/baidu/sofire/ac/U;-><init>(Landroid/content/Context;IZLorg/json/JSONObject;)V

    .line 250
    invoke-virtual {v2, v3}, Ld/a/g/i/w;->b(Ljava/lang/Runnable;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 254
    :catch_2
    move-exception v0

    .line 255
    :try_start_6
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 199
    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 1739
    iget-object v0, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v0}, Ld/a/g/a/a;->d()V

    .line 1740
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/a/g/d/f;->e:Z

    .line 1741
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Ld/a/g/d/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 1742
    return p1
.end method

.method public final c()V
    .locals 10

    .line 262
    :try_start_0
    iget-object v0, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    invoke-virtual {v0}, Ld/a/g/a/a;->a()Ljava/util/List;

    move-result-object v0

    .line 266
    iget-object v1, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    invoke-virtual {v1}, Ld/a/g/h/a;->q()Ljava/util/List;

    move-result-object v1

    .line 267
    iget-object v2, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    invoke-virtual {v2}, Ld/a/g/h/a;->p()Ljava/util/List;

    move-result-object v2

    .line 269
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 270
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 271
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    :cond_1
    new-instance v2, Ld/a/g/d/c;

    invoke-direct {v2, p0, v1}, Ld/a/g/d/c;-><init>(Ld/a/g/d/f;Ljava/util/List;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sofire/core/ApkInfo;

    .line 312
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v2

    .line 313
    nop

    .line 314
    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 315
    iget-object v5, v1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v2

    goto :goto_2

    .line 314
    :cond_3
    move-object v2, v4

    .line 317
    :goto_2
    if-nez v2, :cond_2

    .line 321
    iget-object v2, p0, Ld/a/g/d/f;->g:Ld/a/g/a/a;

    iget v5, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v2, v5}, Ld/a/g/a/a;->g(I)I

    move-result v2

    .line 322
    nop

    .line 323
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    .line 327
    move v2, v3

    goto :goto_3

    .line 323
    :cond_4
    const/4 v2, 0x1

    .line 329
    :goto_3
    iget-object v5, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    invoke-virtual {v5}, Ld/a/g/h/a;->c()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "-"

    const-string v7, ".b"

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    .line 330
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v5, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 332
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 335
    :cond_5
    new-instance v5, Ljava/io/File;

    iget-object v7, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    invoke-static {v7}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 338
    invoke-static {v5, v7}, Ld/a/g/i/c;->a(Ljava/io/File;Ljava/io/File;)V

    .line 340
    :cond_6
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    iget v6, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 341
    invoke-static {v2, v6, v5, v7}, Ld/a/g/h;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 342
    goto :goto_4

    .line 344
    :cond_7
    new-instance v2, Ljava/io/File;

    sget-object v5, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 346
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    invoke-static {v5}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 348
    invoke-static {v5}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 349
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 358
    :cond_8
    :goto_4
    iget v2, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v4}, Ld/a/g/d/f;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    goto/16 :goto_1

    .line 362
    :cond_9
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 363
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 93
    if-eqz p2, :cond_1

    .line 94
    :try_start_0
    const-string p1, "xytk"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    invoke-virtual {p1}, Ld/a/g/h/a;->a()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ld/a/g/d/l;->a:Ljava/lang/String;

    .line 100
    :cond_0
    const-string p1, "xyus"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    invoke-virtual {p1}, Ld/a/g/h/a;->l()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 111
    return-void

    .line 109
    :cond_1
    :goto_0
    return-void
.end method
