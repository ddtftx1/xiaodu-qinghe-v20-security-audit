.class public final Ld/a/g/i;
.super Ljava/lang/Object;
.source "MyFileObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/g/j;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/a/g/j;


# direct methods
.method public constructor <init>(Ld/a/g/j;)V
    .locals 0

    .line 62
    iput-object p1, p0, Ld/a/g/i;->a:Ld/a/g/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 70
    :try_start_0
    const-class v0, Ld/a/g/j;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :try_start_1
    iget-object v1, p0, Ld/a/g/i;->a:Ld/a/g/j;

    invoke-static {v1}, Ld/a/g/j;->a(Ld/a/g/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/a/g/i/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Ld/a/g/i;->a:Ld/a/g/j;

    invoke-static {v1}, Ld/a/g/j;->b(Ld/a/g/j;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ld/a/g/i;->a:Ld/a/g/j;

    invoke-static {v2}, Ld/a/g/j;->a(Ld/a/g/j;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld/a/g/i/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Ld/a/g/i;->a:Ld/a/g/j;

    invoke-static {v1}, Ld/a/g/j;->a(Ld/a/g/j;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ld/a/g/i/c;->a(Ljava/lang/String;Z)V

    .line 79
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ld/a/g/i;->a:Ld/a/g/j;

    .line 80
    invoke-static {v2}, Ld/a/g/j;->a(Ld/a/g/j;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 81
    iget-object v1, p0, Ld/a/g/i;->a:Ld/a/g/j;

    .line 82
    invoke-static {v1}, Ld/a/g/j;->c(Ld/a/g/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ld/a/g/i;->a:Ld/a/g/j;

    invoke-static {v2}, Ld/a/g/j;->d(Ld/a/g/j;)I

    move-result v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Ld/a/g/i;->a:Ld/a/g/j;

    .line 83
    invoke-static {v4}, Ld/a/g/j;->a(Ld/a/g/j;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Ld/a/g/i;->a:Ld/a/g/j;

    .line 84
    invoke-static {v5}, Ld/a/g/j;->b(Ld/a/g/j;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {v1, v2, v3, v4}, Ld/a/g/h;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 90
    iget-object v1, p0, Ld/a/g/i;->a:Ld/a/g/j;

    invoke-static {v1}, Ld/a/g/j;->c(Ld/a/g/j;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld/a/g/a/a;->a(Landroid/content/Context;)Ld/a/g/a/a;

    move-result-object v1

    iget-object v2, p0, Ld/a/g/i;->a:Ld/a/g/j;

    invoke-static {v2}, Ld/a/g/j;->d(Ld/a/g/j;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ld/a/g/a/a;->b(II)V

    .line 93
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 97
    return-void
.end method
