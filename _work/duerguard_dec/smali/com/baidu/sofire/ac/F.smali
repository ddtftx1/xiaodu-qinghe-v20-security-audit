.class public Lcom/baidu/sofire/ac/F;
.super Ljava/lang/Object;
.source "F.java"

# interfaces
.implements Lcom/baidu/sofire/ac/FI;


# static fields
.field public static instance:Lcom/baidu/sofire/ac/F;

.field public static sAsc:Lcom/baidu/sofire/jni/Asc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/sofire/ac/F;
    .locals 2

    const-class v0, Lcom/baidu/sofire/ac/F;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/baidu/sofire/ac/F;->instance:Lcom/baidu/sofire/ac/F;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/baidu/sofire/ac/F;

    invoke-direct {v1}, Lcom/baidu/sofire/ac/F;-><init>()V

    sput-object v1, Lcom/baidu/sofire/ac/F;->instance:Lcom/baidu/sofire/ac/F;

    .line 48
    :cond_0
    sget-object v1, Lcom/baidu/sofire/ac/F;->instance:Lcom/baidu/sofire/ac/F;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public ad([B[B)[B
    .locals 2

    .line 225
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    array-length v1, p2

    if-lez v1, :cond_3

    if-eqz p1, :cond_3

    array-length v1, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 232
    :cond_0
    const/4 v1, 0x0

    .line 234
    :try_start_1
    invoke-static {p2, p1}, Ld/a/g/i/h;->a([B[B)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    goto :goto_0

    .line 235
    :catch_0
    move-exception p1

    .line 236
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 238
    :goto_0
    if-eqz v1, :cond_2

    array-length p1, v1

    if-nez p1, :cond_1

    goto :goto_1

    .line 241
    :cond_1
    return-object v1

    .line 239
    :cond_2
    :goto_1
    new-array p1, v0, [B

    return-object p1

    .line 226
    :cond_3
    :goto_2
    new-array p1, v0, [B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 242
    :catch_1
    move-exception p1

    .line 243
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 245
    new-array p1, v0, [B

    return-object p1
.end method

.method public ae([B[B)[B
    .locals 3

    .line 199
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    array-length v1, p2

    if-lez v1, :cond_3

    if-eqz p1, :cond_3

    array-length v1, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 206
    :cond_0
    const/4 v1, 0x0

    .line 208
    const/4 v2, 0x1

    :try_start_1
    invoke-static {p2, p1, v2}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    goto :goto_0

    .line 209
    :catch_0
    move-exception p1

    .line 210
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 212
    :goto_0
    if-eqz v1, :cond_2

    array-length p1, v1

    if-nez p1, :cond_1

    goto :goto_1

    .line 215
    :cond_1
    return-object v1

    .line 213
    :cond_2
    :goto_1
    new-array p1, v0, [B

    return-object p1

    .line 200
    :cond_3
    :goto_2
    new-array p1, v0, [B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 216
    :catch_1
    move-exception p1

    .line 217
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 219
    new-array p1, v0, [B

    return-object p1
.end method

.method public chh(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 345
    const/4 p1, 0x1

    return p1
.end method

.method public varargs cm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/sofire/ac/Callback;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 119
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 120
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v0

    .line 128
    if-nez v0, :cond_2

    .line 129
    if-eqz p4, :cond_1

    .line 130
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p4, p1}, Lcom/baidu/sofire/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1
    return-void

    .line 135
    :cond_2
    invoke-virtual {v0, p2}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object p2

    .line 136
    invoke-virtual {v0, p1}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_6

    if-nez p2, :cond_3

    goto :goto_0

    .line 145
    :cond_3
    :try_start_1
    iget-object p1, p2, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast p1, Ld/a/g/d/m;

    .line 147
    const-string p2, "com.baidu.sofire.engine.EngineImpl"

    .line 148
    invoke-virtual {p1, p2}, Ld/a/g/d/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 150
    const-string p2, "getInstance"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v1

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 151
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    invoke-virtual {p2, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 153
    nop

    .line 154
    invoke-static {p1, p3, p5, p6}, Ld/a/g/i/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 159
    if-eqz p4, :cond_4

    .line 160
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-virtual {p4, p2}, Lcom/baidu/sofire/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    :cond_4
    return-void

    .line 162
    :catch_0
    move-exception p1

    .line 166
    if-eqz p4, :cond_5

    .line 167
    :try_start_2
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p4, p1}, Lcom/baidu/sofire/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_5
    return-void

    .line 138
    :cond_6
    :goto_0
    if-eqz p4, :cond_7

    .line 139
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p4, p1}, Lcom/baidu/sofire/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_7
    return-void

    .line 121
    :cond_8
    :goto_1
    if-eqz p4, :cond_9

    .line 122
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p4, p1}, Lcom/baidu/sofire/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 124
    :cond_9
    return-void

    .line 170
    :catch_1
    move-exception p1

    .line 171
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 173
    return-void
.end method

.method public varargs cmsi(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 2
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

    .line 364
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ld/a/g/d/f;->a()Ld/a/g/d/f;

    move-result-object v1

    .line 365
    if-nez v1, :cond_0

    .line 366
    new-instance p1, Landroid/util/Pair;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 368
    :cond_0
    invoke-virtual {v1, p1, p2, p3, p4}, Ld/a/g/d/f;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 369
    :catch_0
    move-exception p1

    .line 370
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 371
    new-instance p1, Landroid/util/Pair;

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public cp(Landroid/content/Context;)Z
    .locals 0

    .line 390
    if-nez p1, :cond_0

    .line 391
    const/4 p1, 0x0

    return p1

    .line 393
    :cond_0
    invoke-static {p1}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public gct()Landroid/content/Context;
    .locals 1

    .line 483
    invoke-static {}, Ld/a/g/d/f;->a()Ld/a/g/d/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 484
    const/4 v0, 0x0

    return-object v0

    .line 486
    :cond_0
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomMutiProcessSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 0

    .line 398
    if-nez p1, :cond_0

    .line 399
    const/4 p1, 0x0

    return-object p1

    .line 401
    :cond_0
    invoke-static {p1}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p1

    .line 402
    invoke-virtual {p1, p2}, Ld/a/g/h/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 401
    return-object p1
.end method

.method public getDeviceInfoCallback()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/baidu/sofire/ac/DeviceInfoCallback;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 424
    invoke-static {}, Ld/a/g/i/t;->a()Lcom/baidu/sofire/ac/DeviceInfoCallback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 423
    return-object v0
.end method

.method public getPlatformPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 407
    if-nez p1, :cond_0

    .line 408
    const/4 p1, 0x0

    return-object p1

    .line 410
    :cond_0
    invoke-static {p1}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p1

    .line 4304
    iget-object p1, p1, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    .line 410
    return-object p1
.end method

.method public getPlatformSharedSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 415
    if-nez p1, :cond_0

    .line 416
    const/4 p1, 0x0

    return-object p1

    .line 418
    :cond_0
    invoke-static {p1}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p1

    .line 4308
    iget-object p1, p1, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    .line 418
    return-object p1
.end method

.method public gm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 430
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 434
    :cond_0
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v0

    .line 435
    if-nez v0, :cond_1

    .line 437
    const-string p1, "-2"

    return-object p1

    .line 439
    :cond_1
    invoke-virtual {v0, p1}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object p1

    .line 440
    if-nez p1, :cond_2

    .line 442
    const-string p1, "-3"

    return-object p1

    .line 444
    :cond_2
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 446
    const-string p1, "-4"

    return-object p1

    .line 448
    :cond_3
    iget-object p2, p1, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 452
    sget-object v0, Lcom/baidu/sofire/ac/U;->sRealtimeMd5Map:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 454
    sget-object v0, Lcom/baidu/sofire/ac/U;->sRealtimeMd5Map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 459
    goto :goto_0

    .line 462
    :cond_4
    move-object p1, p2

    :goto_0
    return-object p1

    .line 432
    :cond_5
    :goto_1
    const-string p1, "-1"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 463
    :catch_0
    move-exception p1

    .line 464
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 467
    const-string p1, "-5"

    return-object p1
.end method

.method public gpd()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4116
    :try_start_0
    sget-object v0, Ld/a/g/a/a;->a:Ld/a/g/a/a;

    .line 351
    nop

    .line 352
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Ld/a/g/a/a;->b()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 357
    :cond_0
    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 358
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public gs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 328
    const-string v0, ""

    :try_start_0
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v1

    .line 329
    if-nez v1, :cond_0

    .line 330
    return-object v0

    .line 332
    :cond_0
    invoke-virtual {v1, p1}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object p1

    .line 333
    if-eqz p1, :cond_1

    .line 334
    iget-object p1, p1, Lcom/baidu/sofire/core/ApkInfo;->libPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 336
    :cond_1
    return-object v0

    .line 337
    :catch_0
    move-exception p1

    .line 338
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 339
    return-object v0
.end method

.method public gta(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 377
    const-string p1, ""

    return-object p1
.end method

.method public gzd(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 382
    if-nez p1, :cond_0

    .line 383
    const-string p1, ""

    return-object p1

    .line 385
    :cond_0
    invoke-static {p1}, Ld/a/g/i/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 54
    :try_start_0
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v0

    .line 1913
    iget-object v0, v0, Ld/a/g/d/n;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/sofire/core/ApkInfo;

    .line 1914
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object p1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 57
    const-string p1, ""

    return-object p1
.end method

.method public r(Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 69
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 70
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    new-instance v1, Ld/a/g/d/o;

    invoke-direct {v1, p1, p2, p3, p4}, Ld/a/g/d/o;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ld/a/g/d/n;->a(Ld/a/g/d/o;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_1
    return-void

    .line 72
    :cond_2
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception p1

    .line 86
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 88
    return-void
.end method

.method public rd([B[B)[B
    .locals 2

    .line 277
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    array-length v1, p2

    if-lez v1, :cond_3

    if-eqz p1, :cond_3

    array-length v1, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 284
    :cond_0
    const/4 v1, 0x0

    .line 286
    :try_start_1
    invoke-static {p1, p2}, Ld/a/g/i/h;->c([B[B)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception p1

    .line 288
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 290
    :goto_0
    if-eqz v1, :cond_2

    array-length p1, v1

    if-nez p1, :cond_1

    goto :goto_1

    .line 293
    :cond_1
    return-object v1

    .line 291
    :cond_2
    :goto_1
    new-array p1, v0, [B

    return-object p1

    .line 278
    :cond_3
    :goto_2
    new-array p1, v0, [B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 294
    :catch_1
    move-exception p1

    .line 295
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 297
    new-array p1, v0, [B

    return-object p1
.end method

.method public re([B[B)[B
    .locals 2

    .line 251
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    array-length v1, p2

    if-lez v1, :cond_3

    if-eqz p1, :cond_3

    array-length v1, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 258
    :cond_0
    const/4 v1, 0x0

    .line 260
    :try_start_1
    invoke-static {p1, p2}, Ld/a/g/i/h;->b([B[B)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    goto :goto_0

    .line 261
    :catch_0
    move-exception p1

    .line 262
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 264
    :goto_0
    if-eqz v1, :cond_2

    array-length p1, v1

    if-nez p1, :cond_1

    goto :goto_1

    .line 267
    :cond_1
    return-object v1

    .line 265
    :cond_2
    :goto_1
    new-array p1, v0, [B

    return-object p1

    .line 252
    :cond_3
    :goto_2
    new-array p1, v0, [B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 268
    :catch_1
    move-exception p1

    .line 269
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 271
    new-array p1, v0, [B

    return-object p1
.end method

.method public rf(Landroid/content/Context;)V
    .locals 4

    .line 315
    if-nez p1, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    :try_start_0
    invoke-static {p1}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object v0

    new-instance v1, Lcom/baidu/sofire/ac/U;

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lcom/baidu/sofire/ac/U;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Ld/a/g/i/w;->b(Ljava/lang/Runnable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    return-void

    .line 320
    :catch_0
    move-exception p1

    .line 321
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 323
    return-void
.end method

.method public s(IZ)V
    .locals 4

    .line 2116
    :try_start_0
    sget-object v0, Ld/a/g/a/a;->a:Ld/a/g/a/a;

    .line 187
    nop

    .line 188
    if-eqz v0, :cond_1

    .line 189
    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2628
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2629
    const-string v2, "s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2631
    :try_start_1
    iget-object p2, v0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "pgn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "k="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and n=1"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2639
    return-void

    .line 2637
    :catch_0
    move-exception p1

    .line 2638
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 193
    :cond_1
    return-void

    .line 191
    :catch_1
    move-exception p1

    .line 192
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 194
    return-void
.end method

.method public sp(Ljava/lang/String;Z)V
    .locals 5

    .line 3116
    :try_start_0
    sget-object v0, Ld/a/g/a/a;->a:Ld/a/g/a/a;

    .line 303
    nop

    .line 304
    if-eqz v0, :cond_1

    .line 305
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 3805
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3806
    const-string v4, "s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 3808
    :try_start_1
    iget-object p2, v0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "pgn"

    const-string v4, "p=? and n=1"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3815
    return-void

    .line 3813
    :catch_0
    move-exception p1

    .line 3814
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 309
    :cond_1
    return-void

    .line 307
    :catch_1
    move-exception p1

    .line 308
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 310
    return-void
.end method

.method public sse(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 473
    invoke-static {p1, p2, p3, p4}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 474
    return-void
.end method

.method public sser(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 478
    invoke-static {p1, p2, p3}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 479
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 1

    .line 178
    :try_start_0
    invoke-static {}, Ld/a/g/d/f;->a()Ld/a/g/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/a/g/d/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    return-void

    .line 179
    :catch_0
    move-exception p1

    .line 180
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 182
    return-void
.end method

.method public ur(Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 94
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    new-instance v1, Ld/a/g/d/o;

    invoke-direct {v1, p1, p2, p3, p4}, Ld/a/g/d/o;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ld/a/g/d/n;->b(Ld/a/g/d/o;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_1
    return-void

    .line 96
    :cond_2
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception p1

    .line 107
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 109
    return-void
.end method
