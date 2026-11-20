.class public final Ld/a/g/j/a;
.super Ljava/lang/Object;
.source "SdkFacePrivateConfig.java"


# static fields
.field public static a:Ld/a/g/j/a;


# instance fields
.field public b:Landroid/content/SharedPreferences;

.field public c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/baidu/sofire/ac/F;->getInstance()Lcom/baidu/sofire/ac/F;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sofire/ac/F;->getPlatformPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ld/a/g/j/a;->b:Landroid/content/SharedPreferences;

    .line 20
    iget-object p1, p0, Ld/a/g/j/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    .line 21
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ld/a/g/j/a;
    .locals 2

    const-class v0, Ld/a/g/j/a;

    monitor-enter v0

    .line 24
    if-nez p0, :cond_0

    .line 25
    :try_start_0
    sget-object p0, Ld/a/g/j/a;->a:Ld/a/g/j/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 27
    :cond_0
    :try_start_1
    sget-object v1, Ld/a/g/j/a;->a:Ld/a/g/j/a;

    if-nez v1, :cond_1

    .line 28
    new-instance v1, Ld/a/g/j/a;

    invoke-direct {v1, p0}, Ld/a/g/j/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld/a/g/j/a;->a:Ld/a/g/j/a;

    .line 30
    :cond_1
    sget-object p0, Ld/a/g/j/a;->a:Ld/a/g/j/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 59
    iget-object v0, p0, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lt_sssf"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    iget-object p1, p0, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    return-void
.end method
