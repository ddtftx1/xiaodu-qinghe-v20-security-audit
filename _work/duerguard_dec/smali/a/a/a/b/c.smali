.class public La/a/a/b/c;
.super Ljava/lang/Object;
.source "EmptyWatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, La/a/a/g/a;->a:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, La/a/a/g/a;->b:Landroid/content/SharedPreferences;

    const-string v3, "last_forbid_day"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 4
    :cond_0
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "get LAST_FORBID_TIME[%d]\uff0cwatcherMode=%b"

    invoke-virtual {p0, v1, v0}, La/a/a/b/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, La/a/a/b/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
