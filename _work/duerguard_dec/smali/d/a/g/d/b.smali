.class public final Ld/a/g/d/b;
.super Ljava/lang/Object;
.source "ErrorNote.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-string v0, ""

    sput-object v0, Ld/a/g/d/b;->a:Ljava/lang/String;

    .line 22
    const/4 v1, -0x1

    sput v1, Ld/a/g/d/b;->b:I

    .line 23
    sput-object v0, Ld/a/g/d/b;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    const-string v0, ""

    .line 37
    :try_start_0
    sget-object v1, Ld/a/g/d/b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    sget-object v1, Ld/a/g/d/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 37
    :cond_0
    move-object v1, v0

    .line 43
    :goto_0
    new-instance v2, Landroid/util/Pair;

    sget v3, Ld/a/g/d/b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 44
    :catch_0
    move-exception v1

    .line 45
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 47
    new-instance v1, Landroid/util/Pair;

    sget v2, Ld/a/g/d/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(I)V
    .locals 0

    .line 55
    sput p0, Ld/a/g/d/b;->b:I

    .line 56
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 51
    sput-object p0, Ld/a/g/d/b;->a:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static b(I)V
    .locals 3

    .line 64
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    const-string v1, "0"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string p0, "1"

    sget-object v1, Ld/a/g/d/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ld/a/g/d/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 68
    :catch_0
    move-exception p0

    .line 69
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 71
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 59
    sput-object p0, Ld/a/g/d/b;->c:Ljava/lang/String;

    .line 60
    return-void
.end method
