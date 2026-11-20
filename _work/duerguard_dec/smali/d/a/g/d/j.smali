.class public final Ld/a/g/d/j;
.super Lcom/baidu/sofire/ac/Callback;
.source "MethodImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/g/d/l;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lcom/baidu/sofire/core/CallArgs;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/baidu/sofire/core/CallArgs;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 0

    .line 867
    iput-object p1, p0, Ld/a/g/d/j;->a:Landroid/os/Bundle;

    iput-object p2, p0, Ld/a/g/d/j;->b:Lcom/baidu/sofire/core/CallArgs;

    iput-object p3, p0, Ld/a/g/d/j;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/baidu/sofire/ac/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 871
    :try_start_0
    iget-object v0, p0, Ld/a/g/d/j;->a:Landroid/os/Bundle;

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 872
    iget-object v0, p0, Ld/a/g/d/j;->b:Lcom/baidu/sofire/core/CallArgs;

    aget-object p1, p1, v2

    iput-object p1, v0, Lcom/baidu/sofire/core/CallArgs;->f:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 876
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 873
    :catch_0
    move-exception p1

    .line 874
    :try_start_1
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    :goto_0
    iget-object p1, p0, Ld/a/g/d/j;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 877
    nop

    .line 878
    const/4 p1, 0x0

    return-object p1

    .line 876
    :goto_1
    iget-object v0, p0, Ld/a/g/d/j;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public final varargs onError([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 884
    :try_start_0
    iget-object v0, p0, Ld/a/g/d/j;->a:Landroid/os/Bundle;

    const-string v1, "status"

    const/4 v2, 0x0

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    .line 885
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 884
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 893
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 890
    :catch_0
    move-exception p1

    .line 891
    :try_start_1
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :goto_0
    iget-object p1, p0, Ld/a/g/d/j;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 894
    nop

    .line 895
    const/4 p1, 0x0

    return-object p1

    .line 893
    :goto_1
    iget-object v0, p0, Ld/a/g/d/j;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method
