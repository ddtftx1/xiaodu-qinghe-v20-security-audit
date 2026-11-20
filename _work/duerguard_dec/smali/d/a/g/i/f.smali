.class public final Ld/a/g/i/f;
.super Ljava/lang/Object;
.source "DoubleListUtil.java"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, -0x1

    sput v0, Ld/a/g/i/f;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 14

    .line 48
    const-string v0, "s_r_d_l_f"

    const-string v1, ""

    :try_start_0
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v2

    .line 49
    nop

    .line 2642
    iget-object v3, v2, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 50
    if-nez v3, :cond_5

    .line 51
    nop

    .line 3024
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v3

    .line 3025
    nop

    .line 3635
    iget-object v4, v3, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    const-string v5, "rpandid"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3636
    iget-object v4, v3, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3026
    nop

    .line 4593
    iget-object v4, v3, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    const-string v5, "rpiiem"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4594
    iget-object v4, v3, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3027
    nop

    .line 4613
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    const-string v5, "rpiiemn"

    const/16 v6, 0xa

    const-string v7, "MzAyMTIxMDJkaWN1ZGlhYg=="

    const/4 v8, 0x1

    const-string v9, "UTF-8"

    if-eqz v4, :cond_0

    .line 4614
    :try_start_1
    iget-object v4, v3, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4615
    iget-object v4, v3, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 4616
    goto :goto_0

    .line 4620
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 4621
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 4620
    invoke-static {v10, v11, v8}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object v10

    invoke-static {v10, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v10

    invoke-direct {v4, v10, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 4625
    nop

    .line 4626
    :try_start_3
    iget-object v10, v3, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4627
    iget-object v4, v3, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 4622
    :catch_0
    move-exception v4

    .line 4623
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 4624
    nop

    .line 3028
    :goto_0
    nop

    .line 5473
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    const-string v5, "p_s_o_d_t"

    if-eqz v4, :cond_1

    .line 5474
    :try_start_4
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5475
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 5476
    goto :goto_1

    .line 5480
    :cond_1
    :try_start_5
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 5481
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 5480
    invoke-static {v10, v11, v8}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object v10

    invoke-static {v10, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v10

    invoke-direct {v4, v10, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 5485
    nop

    .line 5486
    :try_start_6
    iget-object v10, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5487
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 5482
    :catch_1
    move-exception v4

    .line 5483
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 5484
    nop

    .line 3029
    :goto_1
    nop

    .line 5491
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v5, "p_s_o_d_t_t"

    const-wide/16 v10, 0x0

    invoke-interface {v4, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5492
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3030
    nop

    .line 5515
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    const-string v5, "p_s_s_o_t"

    if-eqz v4, :cond_2

    .line 5516
    :try_start_7
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5517
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 5518
    goto :goto_2

    .line 5522
    :cond_2
    :try_start_8
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 5523
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 5522
    invoke-static {v12, v13, v8}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object v12

    invoke-static {v12, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v12

    invoke-direct {v4, v12, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 5528
    nop

    .line 5529
    :try_start_9
    iget-object v12, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v12, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5530
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 5525
    :catch_2
    move-exception v4

    .line 5526
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 5527
    nop

    .line 3031
    :goto_2
    nop

    .line 5534
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v5, "p_s_s_o_t_t"

    invoke-interface {v4, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5535
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3032
    nop

    .line 5559
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    const-string v5, "p_s_n_o_t"

    if-eqz v4, :cond_3

    .line 5560
    :try_start_a
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5561
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 5562
    goto :goto_3

    .line 5566
    :cond_3
    :try_start_b
    new-instance v4, Ljava/lang/String;

    .line 5567
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 5568
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 5567
    invoke-static {v7, v12, v8}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-direct {v4, v6, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 5574
    nop

    .line 5575
    :try_start_c
    iget-object v6, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5576
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 5571
    :catch_3
    move-exception v4

    .line 5572
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 5573
    nop

    .line 3033
    :goto_3
    nop

    .line 5580
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v5, "p_s_n_o_t_t"

    invoke-interface {v4, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5581
    iget-object v4, v3, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3034
    invoke-static {p0}, Ld/a/g/i/f;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3035
    invoke-virtual {v3, v1}, Ld/a/g/h/a;->h(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {v3, v10, v11}, Ld/a/g/h/a;->g(J)V

    .line 3037
    invoke-virtual {v3, v1}, Ld/a/g/h/a;->i(Ljava/lang/String;)V

    .line 3038
    invoke-virtual {v3, v10, v11}, Ld/a/g/h/a;->h(J)V

    .line 3039
    invoke-virtual {v3, v1}, Ld/a/g/h/a;->g(Ljava/lang/String;)V

    .line 3040
    invoke-virtual {v3, v10, v11}, Ld/a/g/h/a;->f(J)V

    .line 3041
    invoke-virtual {v3, v1}, Ld/a/g/h/a;->f(Ljava/lang/String;)V

    .line 3042
    invoke-virtual {v3, v10, v11}, Ld/a/g/h/a;->e(J)V

    .line 52
    :cond_4
    invoke-static {p0}, Ld/a/g/i/e;->b(Landroid/content/Context;)V

    .line 53
    nop

    .line 5637
    iget-object p0, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v0, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5638
    iget-object p0, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 57
    :cond_5
    return-void

    .line 55
    :catch_4
    move-exception p0

    .line 56
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 58
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Ld/a/g/i/f;

    monitor-enter v0

    .line 61
    :try_start_0
    sget v1, Ld/a/g/i/f;->a:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    .line 62
    sget p0, Ld/a/g/i/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v4, :cond_0

    monitor-exit v0

    return v4

    :cond_0
    monitor-exit v0

    return v3

    .line 64
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 66
    monitor-exit v0

    return v3

    .line 71
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "baidu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    nop

    .line 76
    sput v4, Ld/a/g/i/f;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v4

    .line 60
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
