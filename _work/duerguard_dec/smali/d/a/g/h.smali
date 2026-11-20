.class public final Ld/a/g/h;
.super Ljava/lang/Object;
.source "FileDeleteObserverUtils.java"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ld/a/g/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ld/a/g/h;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V
    .locals 2

    .line 16
    if-eqz p2, :cond_3

    :try_start_0
    invoke-static {p2}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p3}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-static {p2, p3}, Ld/a/g/i/c;->a(Ljava/io/File;Ljava/io/File;)V

    .line 26
    :cond_1
    sget-object v0, Ld/a/g/h;->a:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    return-void

    .line 30
    :cond_2
    new-instance v0, Ld/a/g/j;

    .line 31
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p0, p1, v1, p3}, Ld/a/g/j;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 35
    sget-object p0, Ld/a/g/h;->a:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-void

    .line 36
    :catch_0
    move-exception p0

    .line 37
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 39
    return-void

    .line 17
    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 2

    .line 44
    if-nez p0, :cond_0

    .line 45
    return-void

    .line 51
    :cond_0
    :try_start_0
    sget-object v0, Ld/a/g/h;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/a/g/j;

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 54
    sget-object v1, Ld/a/g/h;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v0}, Ld/a/g/j;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    return-void

    .line 57
    :catch_0
    move-exception p0

    .line 58
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 60
    return-void
.end method
