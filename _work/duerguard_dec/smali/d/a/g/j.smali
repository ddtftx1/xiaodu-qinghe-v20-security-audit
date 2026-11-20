.class public Ld/a/g/j;
.super Landroid/os/FileObserver;
.source "MyFileObserver.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    const/16 v0, 0xfff

    invoke-direct {p0, p3, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 21
    :try_start_0
    iput-object p3, p0, Ld/a/g/j;->a:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Ld/a/g/j;->b:Ljava/lang/String;

    .line 23
    iput p2, p0, Ld/a/g/j;->c:I

    .line 24
    iput-object p1, p0, Ld/a/g/j;->d:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-void

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 33
    return-void
.end method

.method public static synthetic a(Ld/a/g/j;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Ld/a/g/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Ld/a/g/j;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Ld/a/g/j;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Ld/a/g/j;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Ld/a/g/j;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic d(Ld/a/g/j;)I
    .locals 0

    .line 12
    iget p0, p0, Ld/a/g/j;->c:I

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 37
    nop

    .line 38
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ld/a/g/j;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    return v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 45
    return v0
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 0

    .line 52
    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/16 p2, 0x40

    if-eq p1, p2, :cond_0

    const/16 p2, 0x80

    if-eq p1, p2, :cond_0

    const/16 p2, 0x200

    if-eq p1, p2, :cond_0

    const/16 p2, 0x400

    if-eq p1, p2, :cond_0

    const/16 p2, 0x800

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    :try_start_0
    iget-object p1, p0, Ld/a/g/j;->d:Landroid/content/Context;

    invoke-static {p1}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object p1

    new-instance p2, Ld/a/g/i;

    invoke-direct {p2, p0}, Ld/a/g/i;-><init>(Ld/a/g/j;)V

    invoke-virtual {p1, p2}, Ld/a/g/i/w;->a(Ljava/lang/Runnable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 99
    :catch_0
    move-exception p1

    .line 100
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 106
    :goto_0
    return-void
.end method
