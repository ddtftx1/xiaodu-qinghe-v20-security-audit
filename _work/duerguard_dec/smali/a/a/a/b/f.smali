.class public La/a/a/b/f;
.super La/a/a/a/c;
.source "ReporterImpl.java"


# static fields
.field public static final d:[B


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, La/a/a/b/f;->d:[B

    return-void

    :array_0
    .array-data 1
        0x61t
        0x2bt
        0x30t
        0x54t
        0x5dt
        0x73t
        0x2at
        0x47t
        0x77t
        0x2bt
        0x3bt
        0x63t
        0x68t
        0x71t
        0x2ft
        0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La/a/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/Map;ZLd/a/f/a/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ld/a/f/a/a;",
            ")V"
        }
    .end annotation

    .line 42
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, La/a/a/b/f;->e:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "unixtime"

    .line 43
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    iget-object v0, p0, La/a/a/a/c;->a:La/a/a/e/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    check-cast v0, La/a/a/d/c;

    move v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    :try_start_2
    invoke-virtual/range {v0 .. v5}, La/a/a/d/c;->a(ILorg/json/JSONObject;Ljava/util/Map;ZLd/a/f/a/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;IIZ)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    sput v0, La/a/a/f/a;->a:I

    .line 2
    sput v0, La/a/a/f/a;->b:I

    .line 3
    const/4 v1, 0x1

    sput-boolean v1, La/a/a/f/a;->f:Z

    .line 4
    sput p4, La/a/a/f/a;->d:I

    .line 6
    iget-object p4, p0, La/a/a/a/c;->c:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "aHR0cHM6Ly9kdWVyLWd1YXJkLXJlcG9ydC5iYWlkdS5jb20vYXBpL2RldnJlcG9ydA=="

    goto :goto_0

    :cond_0
    iget-object p4, p0, La/a/a/a/c;->c:Ljava/lang/String;

    .line 8
    :goto_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p4

    invoke-direct {v2, p4}, Ljava/lang/String;-><init>([B)V

    .line 9
    const-string p4, "productid"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 10
    const-string v3, "version"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "supply"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez p4, :cond_1

    move-object p4, v5

    :cond_1
    if-nez v3, :cond_2

    move-object v3, v5

    :cond_2
    if-nez v4, :cond_3

    move-object v4, v5

    .line 11
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "?pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&ver="

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&ch="

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 12
    sget-object v3, La/a/a/b/f;->d:[B

    .line 13
    sput-boolean p5, La/a/a/f/a;->e:Z

    .line 14
    sput p3, La/a/a/f/a;->c:I

    .line 16
    sput-object v2, La/a/a/f/a;->g:Ljava/lang/String;

    .line 17
    sput-object v3, La/a/a/f/a;->i:[B

    .line 18
    sput-object p4, La/a/a/f/a;->h:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, La/a/a/b/f;->e:Ljava/lang/String;

    .line 20
    sget-boolean p2, La/a/a/f/a;->e:Z

    .line 21
    sput-boolean p2, La/a/a/b/e;->a:Z

    .line 22
    sget-boolean p2, La/a/a/g/a;->a:Z

    if-eqz p2, :cond_4

    goto :goto_1

    .line 25
    :cond_4
    sput-boolean v1, La/a/a/g/a;->a:Z

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, La/a/a/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_SP"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    sput-object p2, La/a/a/g/a;->b:Landroid/content/SharedPreferences;

    .line 33
    :goto_1
    new-instance p2, La/a/a/d/c;

    .line 34
    iget-object p3, p0, La/a/a/a/c;->b:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p3

    goto :goto_2

    :cond_5
    new-instance p3, Ljava/io/File;

    iget-object p4, p0, La/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    :goto_2
    invoke-direct {p2, p1, p3}, La/a/a/d/c;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object p2, p0, La/a/a/a/c;->a:La/a/a/e/b;

    .line 36
    new-instance p1, La/a/a/b/c;

    invoke-direct {p1}, La/a/a/b/c;-><init>()V

    .line 37
    nop

    .line 40
    iget-object p1, p0, La/a/a/a/c;->a:La/a/a/e/b;

    check-cast p1, La/a/a/d/c;

    .line 41
    iget-object p1, p1, La/a/a/d/c;->b:La/a/a/e/a;

    check-cast p1, La/a/a/a/b;

    invoke-virtual {p1, v1}, La/a/a/a/b;->a(Z)V

    return-void
.end method
