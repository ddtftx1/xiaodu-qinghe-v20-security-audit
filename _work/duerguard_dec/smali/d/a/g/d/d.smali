.class public final Ld/a/g/d/d;
.super Ljava/util/TimerTask;
.source "ForHostApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/g/d/e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/a/g/d/n;

.field public final synthetic b:Lcom/baidu/sofire/core/ApkInfo;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Ld/a/g/d/e;


# direct methods
.method public constructor <init>(Ld/a/g/d/e;Ld/a/g/d/n;Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;)V
    .locals 0

    .line 1614
    iput-object p1, p0, Ld/a/g/d/d;->d:Ld/a/g/d/e;

    iput-object p2, p0, Ld/a/g/d/d;->a:Ld/a/g/d/n;

    iput-object p3, p0, Ld/a/g/d/d;->b:Lcom/baidu/sofire/core/ApkInfo;

    iput-object p4, p0, Ld/a/g/d/d;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1621
    iget-object v0, p0, Ld/a/g/d/d;->a:Ld/a/g/d/n;

    iget-object v1, p0, Ld/a/g/d/d;->d:Ld/a/g/d/e;

    iget-object v1, v1, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v0

    .line 1622
    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Ld/a/g/d/d;->b:Lcom/baidu/sofire/core/ApkInfo;

    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 1623
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1628
    :cond_0
    iget-object v0, p0, Ld/a/g/d/d;->a:Ld/a/g/d/n;

    iget-object v1, p0, Ld/a/g/d/d;->d:Ld/a/g/d/e;

    iget-object v1, v1, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/a/g/d/n;->b(Ljava/lang/String;)Z

    .line 1631
    iget-object v0, p0, Ld/a/g/d/d;->d:Ld/a/g/d/e;

    iget-object v0, v0, Ld/a/g/d/e;->b:Ld/a/g/d/f;

    invoke-static {v0}, Ld/a/g/d/f;->a(Ld/a/g/d/f;)Ld/a/g/a/a;

    move-result-object v0

    iget-object v1, p0, Ld/a/g/d/d;->d:Ld/a/g/d/e;

    iget-object v1, v1, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/a/g/a/a;->a(Ljava/lang/String;)V

    .line 1632
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/c;->c(Landroid/content/Context;)V

    .line 1634
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ld/a/g/d/d;->b:Lcom/baidu/sofire/core/ApkInfo;

    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1641
    invoke-static {v0}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 1642
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1647
    :cond_1
    iget-object v0, p0, Ld/a/g/d/d;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1648
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ld/a/g/d/d;->c:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ld/a/g/d/d;->b:Lcom/baidu/sofire/core/ApkInfo;

    iget v3, v3, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld/a/g/d/d;->b:Lcom/baidu/sofire/core/ApkInfo;

    iget-object v3, v3, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1651
    invoke-static {v0}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1652
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1660
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/a/g/d/d;->d:Ld/a/g/d/e;

    iget-object v1, v1, Ld/a/g/d/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1662
    iget-object v1, p0, Ld/a/g/d/d;->d:Ld/a/g/d/e;

    iget-object v1, v1, Ld/a/g/d/e;->b:Ld/a/g/d/f;

    invoke-static {v1}, Ld/a/g/d/f;->a(Ld/a/g/d/f;)Ld/a/g/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/a/g/a/a;->b(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v1

    .line 1663
    if-eqz v1, :cond_3

    .line 1664
    iget-object v2, p0, Ld/a/g/d/d;->d:Ld/a/g/d/e;

    iget-object v2, v2, Ld/a/g/d/e;->b:Ld/a/g/d/f;

    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ld/a/g/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    :cond_3
    return-void

    .line 1624
    :cond_4
    :goto_0
    return-void
.end method
