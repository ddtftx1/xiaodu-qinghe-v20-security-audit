.class public final Ld/a/g/g/a;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/g/g/a$a;
    }
.end annotation


# static fields
.field public static a:J


# instance fields
.field public b:Ld/a/g/g/a$a;

.field public c:Ld/a/g/h/a;

.field public d:Landroid/content/Context;

.field public e:Ld/a/g/f/a;

.field public f:Lcom/baidu/sofire/rp/receiver/Receiver;

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-wide/16 v0, 0x0

    sput-wide v0, Ld/a/g/g/a;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/a/g/g/a;->g:J

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    .line 65
    new-instance p1, Ld/a/g/g/a$a;

    invoke-static {}, Ld/a/g/i/l;->a()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ld/a/g/g/a$a;-><init>(Ld/a/g/g/a;Landroid/os/Looper;)V

    iput-object p1, p0, Ld/a/g/g/a;->b:Ld/a/g/g/a$a;

    .line 66
    iget-object p1, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {p1}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p1

    iput-object p1, p0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    .line 67
    new-instance p1, Ld/a/g/f/a;

    iget-object v0, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-direct {p1, v0}, Ld/a/g/f/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ld/a/g/g/a;->e:Ld/a/g/f/a;

    .line 68
    return-void
.end method

.method public static synthetic a(Ld/a/g/g/a;J)J
    .locals 0

    .line 34
    iput-wide p1, p0, Ld/a/g/g/a;->g:J

    return-wide p1
.end method

.method public static synthetic a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0}, Ld/a/g/g/a;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ld/a/g/g/a;)V
    .locals 8

    .line 34
    nop

    .line 7273
    iget-object v0, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v0

    .line 7274
    invoke-virtual {v0}, Ld/a/g/h/a;->u()I

    move-result v1

    .line 7278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7279
    nop

    .line 8036
    iget-object v4, v0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v5, "re_last_ofline_time"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 7279
    nop

    .line 7280
    sub-long/2addr v2, v4

    .line 7281
    const v4, 0x36ee80

    mul-int/2addr v1, v4

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 7282
    iget-object v1, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {v1}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object v1

    invoke-virtual {v1}, Ld/a/g/i/d;->c()V

    .line 7283
    iget-object p0, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {p0, v4, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;J)V

    .line 7284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ld/a/g/h/a;->b(J)V

    return-void

    .line 7286
    :cond_0
    iget-object p0, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    sub-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;J)V

    .line 34
    return-void
.end method

.method public static synthetic a(Ld/a/g/g/a;II)V
    .locals 18

    .line 9298
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_0

    .line 9302
    return-void

    .line 9304
    :cond_0
    invoke-static {}, Ld/a/g/g/a;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 9311
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 9312
    iget-object v6, v0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {v6}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object v6

    invoke-virtual {v6}, Ld/a/g/c/a;->a()Ljava/util/List;

    move-result-object v6

    .line 9313
    goto :goto_0

    .line 9318
    :cond_1
    if-ne v1, v4, :cond_2

    .line 9319
    iget-object v6, v0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {v6}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Ld/a/g/c/a;->a(ZI)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .line 9320
    :cond_2
    const/4 v6, 0x4

    if-ne v1, v6, :cond_3

    .line 9321
    iget-object v6, v0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {v6}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Ld/a/g/c/a;->a(ZI)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .line 9326
    :cond_3
    iget-object v6, v0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {v6}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object v6

    invoke-virtual {v6, v2}, Ld/a/g/c/a;->a(I)Ljava/util/List;

    move-result-object v6

    .line 9328
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 9331
    iget-object v7, v0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    .line 10146
    iget-object v7, v7, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-wide/16 v8, 0x0

    const-string v10, "re_day_len"

    invoke-interface {v7, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 9331
    nop

    .line 9332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 9333
    iget-object v7, v0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    .line 10155
    iget-object v7, v7, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v14, "re_day_b_t"

    invoke-interface {v7, v14, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 9333
    nop

    .line 9334
    iget-object v7, v0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    .line 11107
    iget-object v7, v7, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const/16 v5, 0x32

    const-string v3, "re_net_dy_lt"

    invoke-interface {v7, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 9334
    nop

    .line 9336
    cmp-long v5, v14, v8

    if-nez v5, :cond_4

    .line 9337
    iget-object v5, v0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    invoke-virtual {v5, v12, v13}, Ld/a/g/h/a;->d(J)V

    .line 9338
    move-wide v14, v12

    .line 9345
    :cond_4
    sub-long v14, v12, v14

    const-wide/32 v16, 0x5265c00

    cmp-long v5, v14, v16

    if-gez v5, :cond_6

    .line 9346
    if-ne v1, v4, :cond_5

    .line 9347
    iget-object v4, v0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    .line 11213
    iget-object v4, v4, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v5, "g_r_d_d_n"

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 9347
    nop

    .line 9348
    const/4 v5, 0x5

    if-ge v4, v5, :cond_a

    .line 9351
    iget-object v5, v0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    const/4 v7, 0x1

    add-int/2addr v4, v7

    invoke-virtual {v5, v4}, Ld/a/g/h/a;->h(I)V

    .line 9355
    :cond_5
    const/high16 v4, 0x100000

    mul-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, v10, v3

    if-lez v3, :cond_7

    .line 9359
    return-void

    .line 9362
    :cond_6
    iget-object v3, v0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    invoke-virtual {v3, v8, v9}, Ld/a/g/h/a;->c(J)V

    .line 9363
    iget-object v3, v0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    invoke-virtual {v3, v12, v13}, Ld/a/g/h/a;->d(J)V

    .line 9364
    if-ne v1, v4, :cond_7

    .line 9365
    iget-object v3, v0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ld/a/g/h/a;->h(I)V

    .line 9369
    :cond_7
    invoke-virtual {v0, v6, v2, v10, v11}, Ld/a/g/g/a;->a(Ljava/util/List;IJ)V

    .line 9370
    invoke-static {}, Ld/a/g/g/a;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 9377
    if-nez v1, :cond_9

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    goto :goto_2

    .line 9382
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_a

    .line 9386
    invoke-virtual/range {p0 .. p2}, Ld/a/g/g/a;->a(II)Ljava/util/List;

    move-result-object v3

    .line 9387
    :goto_1
    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_a

    .line 9388
    invoke-virtual {v0, v3, v2, v10, v11}, Ld/a/g/g/a;->a(Ljava/util/List;IJ)V

    .line 9390
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v4, :cond_a

    .line 9393
    invoke-static {}, Ld/a/g/g/a;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 9399
    invoke-virtual/range {p0 .. p2}, Ld/a/g/g/a;->a(II)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 9378
    :cond_9
    :goto_2
    return-void

    .line 34
    :cond_a
    return-void
.end method

.method public static a()Z
    .locals 6

    .line 408
    sget-wide v0, Ld/a/g/g/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Ld/a/g/g/a;->a:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 413
    const/4 v0, 0x0

    return v0

    .line 415
    :cond_0
    sput-wide v2, Ld/a/g/g/a;->a:J

    .line 421
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 257
    const-string v0, "12"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 258
    return-object v1

    .line 260
    :cond_0
    :try_start_0
    const-string v2, "Common_section"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 261
    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 262
    :cond_2
    :goto_0
    return-object v1

    .line 266
    :catch_0
    move-exception p0

    .line 267
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 269
    return-object v1
.end method

.method public static synthetic b(Ld/a/g/g/a;)V
    .locals 5

    .line 34
    nop

    .line 8549
    iget-object v0, p0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    invoke-virtual {v0}, Ld/a/g/h/a;->t()Ljava/util/List;

    move-result-object v0

    .line 8550
    if-eqz v0, :cond_1

    .line 8554
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/a/g/b/a;

    .line 8556
    iget-object v2, p0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    .line 9182
    iget-object v2, v2, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v3, "li_pk_s"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8556
    nop

    .line 8558
    iget-object v3, v1, Ld/a/g/b/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ld/a/g/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8559
    invoke-virtual {p0, v1}, Ld/a/g/g/a;->a(Ld/a/g/b/a;)V

    .line 8561
    :cond_0
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public static synthetic c(Ld/a/g/g/a;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Ld/a/g/g/a;->g:J

    return-wide v0
.end method

.method public static synthetic d(Ld/a/g/g/a;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic e(Ld/a/g/g/a;)Ld/a/g/f/a;
    .locals 0

    .line 34
    iget-object p0, p0, Ld/a/g/g/a;->e:Ld/a/g/f/a;

    return-object p0
.end method


# virtual methods
.method public final a(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ld/a/g/e/a;",
            ">;"
        }
    .end annotation

    .line 425
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 426
    return-object v0

    .line 429
    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    .line 430
    return-object v0

    .line 433
    :cond_1
    iget-object p1, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {p1}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Ld/a/g/c/a;->a(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/os/Message;)V
    .locals 1

    .line 102
    iget-object v0, p0, Ld/a/g/g/a;->b:Ld/a/g/g/a$a;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    return-void
.end method

.method public final declared-synchronized a(Ld/a/g/b/a;)V
    .locals 5

    monitor-enter p0

    .line 591
    :try_start_0
    iget-object v0, p0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    iget-object v1, p1, Ld/a/g/b/a;->d:Ljava/lang/String;

    .line 6122
    iget-object v0, v0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "re_net_ali2_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    nop

    .line 592
    invoke-static {}, Ld/a/g/i/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 594
    monitor-exit p0

    return-void

    .line 596
    :cond_0
    :try_start_1
    iget-object v0, p0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    iget-object v2, p1, Ld/a/g/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ld/a/g/h/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    new-instance v2, Ld/a/g/e/a;

    invoke-direct {v2}, Ld/a/g/e/a;-><init>()V

    .line 599
    iget-object v3, p1, Ld/a/g/b/a;->d:Ljava/lang/String;

    iput-object v3, v2, Ld/a/g/e/a;->b:Ljava/lang/String;

    .line 600
    const/4 v3, 0x0

    iput v3, v2, Ld/a/g/e/a;->g:I

    .line 601
    const/4 v3, 0x2

    iput v3, v2, Ld/a/g/e/a;->c:I

    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Ld/a/g/e/a;->e:J

    .line 603
    const/4 v3, 0x1

    iput v3, v2, Ld/a/g/e/a;->f:I

    .line 604
    const/4 v4, 0x5

    iput v4, v2, Ld/a/g/e/a;->i:I

    .line 605
    iget-object v4, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {v4, p1, v0, v3}, Ld/a/g/i/c;->a(Landroid/content/Context;Ld/a/g/b/a;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ld/a/g/e/a;->d:Ljava/lang/String;

    .line 607
    iget-object v0, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Ld/a/g/c/a;->a(Ld/a/g/e/a;)J

    .line 628
    iget-object v0, p0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    iget-object p1, p1, Ld/a/g/b/a;->d:Ljava/lang/String;

    .line 7117
    iget-object v2, v0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "re_net_ali2_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7118
    iget-object p1, v0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    monitor-exit p0

    return-void

    .line 590
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/List;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/a/g/e/a;",
            ">;IJ)V"
        }
    .end annotation

    .line 437
    nop

    .line 438
    iget-object v0, p0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    .line 2095
    iget-object v0, v0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v1, "re_net_one_lt"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 438
    nop

    .line 440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/a/g/e/a;

    .line 446
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, v5, Ld/a/g/e/a;->d:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 450
    nop

    .line 452
    iget-object v7, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {v7, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 455
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    nop

    .line 461
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 463
    add-int/2addr v6, v4

    const/high16 v8, 0x100000

    mul-int/2addr v8, v0

    if-ge v6, v8, :cond_0

    .line 472
    nop

    .line 473
    iget v4, v5, Ld/a/g/e/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v4, Ld/a/g/e/b;

    iget-object v8, v5, Ld/a/g/e/a;->j:Ljava/lang/String;

    iget v5, v5, Ld/a/g/e/a;->a:I

    invoke-direct {v4, v7, v8, v5}, Ld/a/g/e/b;-><init>(Lorg/json/JSONObject;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    move v4, v6

    goto :goto_0

    .line 456
    :catch_0
    move-exception v5

    .line 457
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 458
    goto :goto_0

    .line 447
    :catch_1
    move-exception v5

    .line 448
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 449
    goto :goto_0

    .line 477
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 480
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 481
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 482
    nop

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 483
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/a/g/e/b;

    .line 484
    if-eqz v6, :cond_5

    .line 488
    nop

    .line 3026
    iget-object v7, v6, Ld/a/g/e/b;->b:Ljava/lang/String;

    .line 488
    nop

    .line 489
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 490
    nop

    .line 4018
    iget-object v7, v6, Ld/a/g/e/b;->a:Lorg/json/JSONObject;

    .line 490
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 491
    nop

    .line 4034
    iget v6, v6, Ld/a/g/e/b;->c:I

    .line 491
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 493
    :cond_1
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 494
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONArray;

    .line 495
    if-nez v8, :cond_2

    .line 496
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 498
    :cond_2
    nop

    .line 5018
    iget-object v9, v6, Ld/a/g/e/b;->a:Lorg/json/JSONObject;

    .line 498
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 499
    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    goto :goto_2

    .line 501
    :cond_3
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 502
    nop

    .line 6018
    iget-object v9, v6, Ld/a/g/e/b;->a:Lorg/json/JSONObject;

    .line 502
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 503
    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :goto_2
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 507
    if-nez v8, :cond_4

    .line 508
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 510
    :cond_4
    nop

    .line 6034
    iget v6, v6, Ld/a/g/e/b;->c:I

    .line 510
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 514
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 515
    iget-object v2, p0, Ld/a/g/g/a;->e:Ld/a/g/f/a;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ld/a/g/f/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 516
    iget-object v1, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {v1}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object v1

    invoke-virtual {v1, v5}, Ld/a/g/c/a;->a(Ljava/util/List;)I

    goto :goto_4

    .line 518
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Ld/a/g/g/a;->a:J

    .line 525
    :cond_8
    :goto_4
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 526
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 527
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 528
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 529
    iget-object v5, p0, Ld/a/g/g/a;->e:Ld/a/g/f/a;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ld/a/g/f/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 530
    iget-object v3, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {v3}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3, v2}, Ld/a/g/c/a;->a(Ljava/util/List;)I

    goto :goto_5

    .line 532
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Ld/a/g/g/a;->a:J

    .line 538
    :cond_a
    goto :goto_5

    .line 541
    :cond_b
    iget-object p1, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {p1}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object p1

    invoke-virtual {p1}, Ld/a/g/c/a;->c()I

    .line 543
    const/4 p1, 0x2

    if-eq p1, p2, :cond_c

    .line 544
    iget-object p1, p0, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    int-to-long v0, v4

    add-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Ld/a/g/h/a;->c(J)V

    .line 546
    :cond_c
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 565
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 566
    return v1

    .line 569
    :cond_0
    iget-object v0, p0, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 570
    return v2

    .line 573
    :cond_1
    nop

    .line 574
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 576
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 577
    move p1, v1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 578
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 579
    nop

    .line 580
    move v1, v2

    goto :goto_1

    .line 577
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 585
    :cond_3
    goto :goto_1

    .line 583
    :catch_0
    move-exception p1

    .line 587
    :cond_4
    :goto_1
    return v1
.end method
