.class public final Ld/a/f/a/b;
.super Ljava/lang/Object;
.source "ReportLib.java"


# static fields
.field public static final a:La/a/a/a/c;

.field public static volatile b:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/a/a/b/f;

    invoke-direct {v0}, La/a/a/b/f;-><init>()V

    sput-object v0, Ld/a/f/a/b;->a:La/a/a/a/c;

    return-void
.end method

.method public static a(ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Ld/a/f/a/b;->b:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Ld/a/f/a/b;->a:La/a/a/a/c;

    check-cast v0, La/a/a/b/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p0, p1, v1, v2}, La/a/a/b/f;->a(ILjava/util/Map;ZLd/a/f/a/a;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "call init first"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(ILjava/util/Map;Ld/a/f/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ld/a/f/a/a;",
            ")V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Ld/a/f/a/b;->b:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Ld/a/f/a/b;->a:La/a/a/a/c;

    check-cast v0, La/a/a/b/f;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p0, p1, v1, p2}, La/a/a/b/f;->a(ILjava/util/Map;ZLd/a/f/a/a;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "call init first"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;IIZ)V
    .locals 7

    .line 9
    sget-boolean v0, Ld/a/f/a/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    :try_start_0
    sget-object v1, Ld/a/f/a/b;->a:La/a/a/a/c;

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    move v6, p4

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, La/a/a/a/c;->a(Landroid/content/Context;Lorg/json/JSONObject;IIZ)V

    .line 15
    sput-boolean v0, Ld/a/f/a/b;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 17
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    .line 18
    invoke-static {p1, p0}, La/a/a/b/e;->a(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ld/a/f/a/b;->a:La/a/a/a/c;

    .line 2
    iput-object p0, v0, La/a/a/a/c;->c:Ljava/lang/String;

    .line 3
    iput-object p1, v0, La/a/a/a/c;->b:Ljava/lang/String;

    return-void
.end method
