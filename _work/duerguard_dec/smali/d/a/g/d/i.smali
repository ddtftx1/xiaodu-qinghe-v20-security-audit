.class public final Ld/a/g/d/i;
.super Ljava/lang/Object;
.source "MethodImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/g/d/l;->a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/sofire/ac/Callback;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:[Ljava/lang/Class;

.field public final synthetic e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/baidu/sofire/ac/Callback;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0

    .line 340
    iput-object p1, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    iput p2, p0, Ld/a/g/d/i;->b:I

    iput-object p3, p0, Ld/a/g/d/i;->c:Ljava/lang/String;

    iput-object p4, p0, Ld/a/g/d/i;->d:[Ljava/lang/Class;

    iput-object p5, p0, Ld/a/g/d/i;->e:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 344
    :try_start_0
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 345
    const-wide/16 v1, 0x32

    const/16 v3, 0x14

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 346
    move-object v6, v0

    move v0, v5

    :goto_0
    if-ge v0, v3, :cond_0

    .line 348
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 351
    goto :goto_1

    .line 349
    :catch_0
    move-exception v6

    .line 350
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 352
    :goto_1
    sget-object v6, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 353
    if-nez v6, :cond_0

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    if-nez v6, :cond_2

    .line 361
    iget-object v0, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x4

    .line 363
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 362
    invoke-virtual {v0, v1}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_1
    return-void

    .line 368
    :cond_2
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 369
    iget-object v0, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    new-array v1, v4, [Ljava/lang/Object;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-void

    .line 372
    :cond_3
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 373
    invoke-static {v0, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Z)Z

    move-result v0

    .line 375
    const/16 v6, 0xb

    if-nez v0, :cond_5

    .line 379
    iget-object v0, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    if-eqz v0, :cond_4

    .line 380
    iget-object v0, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_4
    return-void

    .line 384
    :cond_5
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 385
    invoke-static {v0}, Ld/a/g/i/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 389
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 391
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v0}, Ld/a/g/i/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 392
    iget-object v0, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    if-eqz v0, :cond_6

    .line 393
    iget-object v0, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x5

    .line 394
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 393
    invoke-virtual {v0, v1}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_6
    return-void

    .line 402
    :cond_7
    invoke-static {}, Ld/a/g/d/f;->a()Ld/a/g/d/f;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 403
    if-nez v0, :cond_c

    .line 404
    move-object v7, v0

    move v0, v5

    :goto_2
    if-ge v0, v3, :cond_9

    .line 406
    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 409
    goto :goto_3

    .line 407
    :catch_1
    move-exception v7

    .line 408
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 410
    :goto_3
    invoke-static {}, Ld/a/g/d/f;->a()Ld/a/g/d/f;

    move-result-object v7

    .line 411
    if-nez v7, :cond_8

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 411
    :cond_8
    move-object v0, v7

    goto :goto_4

    .line 404
    :cond_9
    move-object v0, v7

    .line 415
    :goto_4
    if-nez v0, :cond_b

    .line 416
    iget-object v0, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    if-eqz v0, :cond_a

    .line 417
    iget-object v0, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    new-array v1, v4, [Ljava/lang/Object;

    .line 418
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 417
    invoke-virtual {v0, v1}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_a
    return-void

    .line 415
    :cond_b
    move-object v1, v0

    goto :goto_5

    .line 403
    :cond_c
    move-object v1, v0

    .line 423
    :goto_5
    iget v2, p0, Ld/a/g/d/i;->b:I

    iget-object v3, p0, Ld/a/g/d/i;->c:Ljava/lang/String;

    iget-object v4, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    iget-object v5, p0, Ld/a/g/d/i;->d:[Ljava/lang/Class;

    iget-object v6, p0, Ld/a/g/d/i;->e:[Ljava/lang/Object;

    invoke-virtual/range {v1 .. v6}, Ld/a/g/d/f;->a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 425
    return-void

    .line 428
    :cond_d
    invoke-static {v0}, Ld/a/g/i/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 433
    sget-object v7, Ld/a/g/d/f;->b:Landroid/content/Context;

    iget v8, p0, Ld/a/g/d/i;->b:I

    iget-object v9, p0, Ld/a/g/d/i;->c:Ljava/lang/String;

    iget-object v10, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    iget-object v11, p0, Ld/a/g/d/i;->d:[Ljava/lang/Class;

    iget-object v12, p0, Ld/a/g/d/i;->e:[Ljava/lang/Object;

    invoke-static/range {v7 .. v12}, Ld/a/g/d/l;->a(Landroid/content/Context;ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void

    .line 441
    :cond_e
    invoke-static {}, Ld/a/g/d/f;->a()Ld/a/g/d/f;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 442
    if-nez v0, :cond_13

    .line 443
    move-object v7, v0

    move v0, v5

    :goto_6
    if-ge v0, v3, :cond_10

    .line 445
    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 448
    goto :goto_7

    .line 446
    :catch_2
    move-exception v7

    .line 447
    :try_start_6
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 449
    :goto_7
    invoke-static {}, Ld/a/g/d/f;->a()Ld/a/g/d/f;

    move-result-object v7

    .line 450
    if-nez v7, :cond_f

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 450
    :cond_f
    move-object v0, v7

    goto :goto_8

    .line 443
    :cond_10
    move-object v0, v7

    .line 454
    :goto_8
    if-nez v0, :cond_12

    .line 455
    iget-object v0, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    if-eqz v0, :cond_11

    .line 456
    iget-object v0, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    new-array v1, v4, [Ljava/lang/Object;

    .line 457
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 456
    invoke-virtual {v0, v1}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_11
    return-void

    .line 454
    :cond_12
    move-object v1, v0

    goto :goto_9

    .line 442
    :cond_13
    move-object v1, v0

    .line 462
    :goto_9
    iget v2, p0, Ld/a/g/d/i;->b:I

    iget-object v3, p0, Ld/a/g/d/i;->c:Ljava/lang/String;

    iget-object v4, p0, Ld/a/g/d/i;->a:Lcom/baidu/sofire/ac/Callback;

    iget-object v5, p0, Ld/a/g/d/i;->d:[Ljava/lang/Class;

    iget-object v6, p0, Ld/a/g/d/i;->e:[Ljava/lang/Object;

    invoke-virtual/range {v1 .. v6}, Ld/a/g/d/f;->a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 469
    return-void

    .line 467
    :catch_3
    move-exception v0

    .line 468
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 470
    return-void
.end method
