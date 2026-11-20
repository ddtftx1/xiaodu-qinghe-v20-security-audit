.class public final Ld/a/g/d/e;
.super Ljava/lang/Object;
.source "ForHostApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/g/d/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld/a/g/d/f;


# direct methods
.method public constructor <init>(Ld/a/g/d/f;Ljava/lang/String;)V
    .locals 0

    .line 1532
    iput-object p1, p0, Ld/a/g/d/e;->b:Ld/a/g/d/f;

    iput-object p2, p0, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1536
    :try_start_0
    iget-object v0, p0, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    return-void

    .line 1540
    :cond_0
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 1542
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/a/g/d/n;->a(Landroid/content/Context;)Ld/a/g/d/n;

    move-result-object v0

    .line 1546
    if-nez v0, :cond_1

    .line 1547
    return-void

    .line 1549
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 1550
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".b"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1551
    iget-object v2, p0, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    const-string v3, "-"

    if-nez v2, :cond_5

    .line 1556
    :try_start_1
    iget-object v0, p0, Ld/a/g/d/e;->b:Ld/a/g/d/f;

    invoke-static {v0}, Ld/a/g/d/f;->a(Ld/a/g/d/f;)Ld/a/g/a/a;

    move-result-object v0

    iget-object v2, p0, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ld/a/g/a/a;->b(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v0

    .line 1557
    if-nez v0, :cond_2

    .line 1558
    return-void

    .line 1560
    :cond_2
    iget-object v2, p0, Ld/a/g/d/e;->b:Ld/a/g/d/f;

    iget-object v4, p0, Ld/a/g/d/e;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ld/a/g/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1563
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1566
    invoke-static {v2}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1567
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1576
    :cond_3
    nop

    .line 1577
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 1578
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1581
    invoke-static {v1}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 1582
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 1583
    invoke-virtual {v1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1584
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1582
    invoke-static {v0}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1590
    iget-object v1, p0, Ld/a/g/d/e;->b:Ld/a/g/d/f;

    invoke-static {v1}, Ld/a/g/d/f;->a(Ld/a/g/d/f;)Ld/a/g/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/a/g/a/a;->b(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v1

    .line 1591
    if-eqz v1, :cond_4

    .line 1592
    iget-object v2, p0, Ld/a/g/d/e;->b:Ld/a/g/d/f;

    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ld/a/g/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    :cond_4
    return-void

    .line 1597
    :cond_5
    iget-object v4, v2, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v4, Ld/a/g/d/m;

    .line 1599
    const-string v5, "com.baidu.sofire.engine.EngineImpl"

    invoke-virtual {v4, v5}, Ld/a/g/d/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1602
    const-string v5, "getInstance"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1603
    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Ld/a/g/d/f;->b:Landroid/content/Context;

    aput-object v7, v6, v9

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1608
    if-nez v4, :cond_6

    .line 1609
    return-void

    .line 1614
    :cond_6
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    new-instance v6, Ld/a/g/d/d;

    invoke-direct {v6, p0, v0, v2, v1}, Ld/a/g/d/d;-><init>(Ld/a/g/d/e;Ld/a/g/d/n;Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;)V

    const-wide/32 v7, 0x927c0

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1669
    const-string v5, "unload"

    const/4 v6, 0x0

    new-array v7, v9, [Ljava/lang/Object;

    .line 1670
    invoke-static {v4, v5, v6, v7}, Ld/a/g/i/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    iget-object v4, p0, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ld/a/g/d/n;->b(Ljava/lang/String;)Z

    .line 1680
    iget-object v0, p0, Ld/a/g/d/e;->b:Ld/a/g/d/f;

    invoke-static {v0}, Ld/a/g/d/f;->a(Ld/a/g/d/f;)Ld/a/g/a/a;

    move-result-object v0

    iget-object v4, p0, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ld/a/g/a/a;->a(Ljava/lang/String;)V

    .line 1681
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/c;->c(Landroid/content/Context;)V

    .line 1683
    new-instance v0, Ljava/io/File;

    iget-object v4, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1689
    invoke-static {v0}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 1690
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1695
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1696
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1699
    invoke-static {v0}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1700
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1708
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1710
    iget-object v1, p0, Ld/a/g/d/e;->b:Ld/a/g/d/f;

    invoke-static {v1}, Ld/a/g/d/f;->a(Ld/a/g/d/f;)Ld/a/g/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/a/g/a/a;->b(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v1

    .line 1711
    if-eqz v1, :cond_9

    .line 1712
    iget-object v2, p0, Ld/a/g/d/e;->b:Ld/a/g/d/f;

    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ld/a/g/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1718
    :cond_9
    return-void

    .line 1714
    :catch_0
    move-exception v0

    .line 1719
    return-void
.end method
