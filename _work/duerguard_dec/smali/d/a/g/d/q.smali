.class public final Ld/a/g/d/q;
.super Ljava/lang/Object;
.source "TimeoutRunner.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 6

    .line 16
    :try_start_0
    invoke-static {p0}, Ld/a/g/a/a;->a(Landroid/content/Context;)Ld/a/g/a/a;

    move-result-object v0

    .line 17
    invoke-static {p0}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    move-result-object p0

    .line 22
    invoke-virtual {v0}, Ld/a/g/a/a;->a()Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sofire/core/ApkInfo;

    .line 24
    iget v2, v1, Lcom/baidu/sofire/core/ApkInfo;->duration:I

    if-eqz v2, :cond_0

    iget-wide v2, v1, Lcom/baidu/sofire/core/ApkInfo;->startTime:J

    iget v4, v1, Lcom/baidu/sofire/core/ApkInfo;->duration:I

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 27
    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ld/a/g/d/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    goto :goto_0

    .line 32
    :cond_1
    return-void

    .line 30
    :catch_0
    move-exception p0

    .line 31
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 34
    return-void
.end method
