.class public final Ld/a/g/b/a;
.super Ljava/lang/Object;
.source "ReportConfigInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ld/a/g/b/a;
    .locals 2

    .line 30
    new-instance v0, Ld/a/g/b/a;

    invoke-direct {v0}, Ld/a/g/b/a;-><init>()V

    .line 32
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    const-string p0, "0"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Ld/a/g/b/a;->a:Ljava/lang/String;

    .line 34
    const-string p0, "1"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Ld/a/g/b/a;->c:Ljava/lang/String;

    .line 35
    const-string p0, "2"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Ld/a/g/b/a;->d:Ljava/lang/String;

    .line 36
    const-string p0, "3"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Ld/a/g/b/a;->e:Ljava/lang/String;

    .line 37
    const-string p0, "4"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Ld/a/g/b/a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    nop

    .line 43
    return-object v0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 40
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ld/a/g/b/a;)Ljava/lang/String;
    .locals 3

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    :try_start_0
    const-string v1, "0"

    iget-object v2, p0, Ld/a/g/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "1"

    iget-object v2, p0, Ld/a/g/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v1, "2"

    iget-object v2, p0, Ld/a/g/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "3"

    iget-object v2, p0, Ld/a/g/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v1, "4"

    iget-object p0, p0, Ld/a/g/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 26
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 58
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 59
    return v0

    .line 61
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 62
    return v1

    .line 64
    :cond_1
    const-class v2, Ld/a/g/b/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 65
    return v1

    .line 67
    :cond_2
    check-cast p1, Ld/a/g/b/a;

    .line 68
    iget-object v2, p0, Ld/a/g/b/a;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 69
    iget-object v2, p1, Ld/a/g/b/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 70
    return v1

    .line 72
    :cond_3
    iget-object v3, p1, Ld/a/g/b/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 73
    return v1

    .line 75
    :cond_4
    iget-object v2, p0, Ld/a/g/b/a;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 76
    iget-object v2, p1, Ld/a/g/b/a;->e:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 77
    return v1

    .line 79
    :cond_5
    iget-object v3, p1, Ld/a/g/b/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 80
    return v1

    .line 82
    :cond_6
    iget-object v2, p0, Ld/a/g/b/a;->b:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 83
    iget-object p1, p1, Ld/a/g/b/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 84
    return v1

    .line 86
    :cond_7
    iget-object p1, p1, Ld/a/g/b/a;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 87
    return v1

    .line 89
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 50
    iget-object v0, p0, Ld/a/g/b/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ld/a/g/b/a;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ld/a/g/b/a;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    .line 53
    return v0
.end method
