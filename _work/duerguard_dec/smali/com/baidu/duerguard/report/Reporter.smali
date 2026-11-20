.class public final enum Lcom/baidu/duerguard/report/Reporter;
.super Ljava/lang/Enum;
.source "Reporter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/duerguard/report/Reporter;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/duerguard/report/Reporter;

.field public static b:Ld/a/a/d;

.field public static final synthetic c:[Lcom/baidu/duerguard/report/Reporter;


# instance fields
.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/baidu/duerguard/report/Reporter;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/duerguard/report/Reporter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/duerguard/report/Reporter;->a:Lcom/baidu/duerguard/report/Reporter;

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/duerguard/report/Reporter;

    sget-object v2, Lcom/baidu/duerguard/report/Reporter;->a:Lcom/baidu/duerguard/report/Reporter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/duerguard/report/Reporter;->c:[Lcom/baidu/duerguard/report/Reporter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/duerguard/report/Reporter;->d:Z

    .line 33
    iput-boolean p1, p0, Lcom/baidu/duerguard/report/Reporter;->e:Z

    return-void
.end method

.method public static synthetic a(Lcom/baidu/duerguard/report/Reporter;IJI[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/duerguard/report/Reporter;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # [Ljava/lang/Object;

    .line 27
    invoke-virtual/range {p0 .. p5}, Lcom/baidu/duerguard/report/Reporter;->a(IJI[Ljava/lang/Object;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/duerguard/report/Reporter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/baidu/duerguard/report/Reporter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/duerguard/report/Reporter;

    return-object v0
.end method

.method public static values()[Lcom/baidu/duerguard/report/Reporter;
    .locals 1

    .line 27
    sget-object v0, Lcom/baidu/duerguard/report/Reporter;->c:[Lcom/baidu/duerguard/report/Reporter;

    invoke-virtual {v0}, [Lcom/baidu/duerguard/report/Reporter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/duerguard/report/Reporter;

    return-object v0
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v0, "pack":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 323
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p1, v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "value":Ljava/lang/String;
    :goto_1
    aget-object v3, p1, v1

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .end local v2    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 326
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 8

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "one_class_page_show"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v2, 0x1f40

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/duerguard/report/Reporter;->a(IZJILjava/util/HashMap;)V

    .line 169
    return-void
.end method

.method public final varargs a(IJI[Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdID"    # I
    .param p2, "period"    # J
    .param p4, "rate"    # I
    .param p5, "args"    # [Ljava/lang/Object;

    .line 244
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/duerguard/report/Reporter;->a(IJI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0, p5}, Lcom/baidu/duerguard/report/Reporter;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 246
    .local v0, "pack":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lcom/baidu/duerguard/report/Reporter;->a(ILjava/util/Map;)V

    .line 247
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ld/a/f/a/b;->a(ILjava/util/Map;Ld/a/f/a/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v0    # "pack":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final a(ILjava/util/Map;)V
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/baidu/duerguard/report/Reporter;->e:Z

    if-nez v0, :cond_0

    .line 331
    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "begin-----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporter"

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 335
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Reporting %s:%s"

    invoke-static {v1, v4, v3}, Ld/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 337
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "end-------------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public final a(IZJILjava/util/HashMap;)V
    .locals 1
    .param p1, "cmdID"    # I
    .param p2, "isLimit"    # Z
    .param p3, "period"    # J
    .param p5, "rate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZJI",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 221
    :try_start_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/baidu/duerguard/report/Reporter;->a(IJI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0, p1, p6}, Lcom/baidu/duerguard/report/Reporter;->a(ILjava/util/Map;)V

    .line 223
    invoke-static {p1, p6}, Ld/a/f/a/b;->a(ILjava/util/Map;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0, p1, p6}, Lcom/baidu/duerguard/report/Reporter;->a(ILjava/util/Map;)V

    .line 227
    invoke-static {p1, p6}, Ld/a/f/a/b;->a(ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    :goto_0
    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .line 73
    iget-boolean v0, p0, Lcom/baidu/duerguard/report/Reporter;->d:Z

    if-eqz v0, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/duerguard/report/Reporter;->d:Z

    .line 77
    const-string v1, "duerguard_report_sp"

    invoke-static {p1, v1}, Ld/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Ld/a/a/d;

    move-result-object v1

    sput-object v1, Lcom/baidu/duerguard/report/Reporter;->b:Ld/a/a/d;

    .line 79
    const-string v1, "com.baidu.duerguard.BuildConfig"

    invoke-static {v1}, Ld/a/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "channel":Ljava/lang/String;
    const-string v3, "test_channel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/baidu/duerguard/report/Reporter;->e:Z

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Reporter"

    invoke-static {v4, v3}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "productid"

    invoke-static {}, Ld/a/a/i;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v5, "version"

    invoke-static {p1}, Ld/a/a/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v5, "supply"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v5, "m"

    invoke-static {}, Ld/a/a/i;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v5, "sn"

    invoke-static {}, Ld/a/a/i;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v5

    .line 90
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    iget-boolean v5, p0, Lcom/baidu/duerguard/report/Reporter;->e:Z

    if-eqz v5, :cond_1

    .line 94
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "reportCachePath":Ljava/lang/String;
    const-string v5, ""

    invoke-static {v5, v4}, Ld/a/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v5, 0x3

    const/16 v6, 0x14

    invoke-static {p1, v3, v5, v6, v0}, Ld/a/f/a/b;->a(Landroid/content/Context;Lorg/json/JSONObject;IIZ)V

    .line 101
    invoke-static {v1}, Ld/a/a/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p0, v0}, Lcom/baidu/duerguard/report/Reporter;->a(Z)V

    goto :goto_1

    .line 108
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/duerguard/report/Reporter;->a(Z)V

    .line 110
    :goto_1
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x1f43

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/duerguard/report/Reporter;->a(IZJILjava/util/HashMap;)V

    .line 186
    return-void
.end method

.method public final a(Z)V
    .locals 7
    .param p1, "hasAppFullFeature"    # Z

    .line 114
    sget-object v0, Lcom/baidu/threadpool/TimeThreadManager;->a:Lcom/baidu/threadpool/TimeThreadManager;

    new-instance v1, Ld/a/b/d/a;

    invoke-direct {v1, p0, p1}, Ld/a/b/d/a;-><init>(Lcom/baidu/duerguard/report/Reporter;Z)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x18

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/threadpool/TimeThreadManager;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    .line 132
    return-void
.end method

.method public final a(IJI)Z
    .locals 17
    .param p1, "cmdID"    # I
    .param p2, "period"    # J
    .param p4, "rate"    # I

    .line 264
    sget-object v0, Lcom/baidu/duerguard/report/Reporter;->b:Ld/a/a/d;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ld/a/a/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 266
    .local v1, "str":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 267
    .local v2, "oldTime":J
    const/4 v4, 0x0

    .line 269
    .local v4, "count":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "count"

    const-string v6, "time"

    const-string v7, "Reporter"

    if-nez v0, :cond_2

    .line 271
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "object":Lorg/json/JSONObject;
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 273
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v2, v8

    .line 275
    :cond_0
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 276
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v8

    .line 280
    .end local v0    # "object":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 284
    .local v0, "isNeedReport":Z
    const/4 v8, 0x0

    .line 286
    .local v8, "isNeedUpdateTime":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 287
    .local v9, "now":J
    sub-long v11, v9, v2

    cmp-long v11, v11, p2

    if-lez v11, :cond_3

    .line 288
    const/4 v0, 0x1

    .line 289
    const/4 v8, 0x1

    move-object/from16 v12, p0

    move/from16 v11, p4

    move v13, v8

    move v8, v0

    goto :goto_1

    .line 292
    :cond_3
    move/from16 v11, p4

    if-ge v4, v11, :cond_4

    .line 293
    const/4 v0, 0x1

    move-object/from16 v12, p0

    move v13, v8

    move v8, v0

    goto :goto_1

    .line 295
    :cond_4
    move-object/from16 v12, p0

    iget-boolean v13, v12, Lcom/baidu/duerguard/report/Reporter;->e:Z

    if-eqz v13, :cond_5

    .line 296
    const-string v13, "ignore the report, exceeding the reporting frequency limit"

    invoke-static {v7, v13}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_5
    move v13, v8

    move v8, v0

    .end local v0    # "isNeedReport":Z
    .local v8, "isNeedReport":Z
    .local v13, "isNeedUpdateTime":Z
    :goto_1
    if-eqz v8, :cond_8

    .line 302
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 303
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz v13, :cond_6

    move-wide v14, v9

    goto :goto_2

    :cond_6
    move-wide v14, v2

    :goto_2
    invoke-virtual {v0, v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 304
    if-eqz v13, :cond_7

    const/4 v6, 0x1

    move/from16 v16, v6

    move v6, v4

    move/from16 v4, v16

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v6, v4

    .end local v4    # "count":I
    .local v6, "count":I
    :goto_3
    :try_start_2
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 305
    sget-object v4, Lcom/baidu/duerguard/report/Reporter;->b:Ld/a/a/d;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ld/a/a/d;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    move v4, v6

    goto :goto_5

    .line 306
    :catch_1
    move-exception v0

    move v4, v6

    goto :goto_4

    .end local v6    # "count":I
    .restart local v4    # "count":I
    :catch_2
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    return v8
.end method

.method public b()V
    .locals 8

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "second_class_page_show"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/16 v2, 0x1f42

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/duerguard/report/Reporter;->a(IZJILjava/util/HashMap;)V

    .line 181
    return-void
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x1770

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/duerguard/report/Reporter;->a(IZJILjava/util/HashMap;)V

    .line 162
    return-void
.end method

.method public c(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x1f41

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/duerguard/report/Reporter;->a(IZJILjava/util/HashMap;)V

    .line 174
    return-void
.end method

.method public d(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x2328

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/duerguard/report/Reporter;->a(IZJILjava/util/HashMap;)V

    .line 191
    return-void
.end method

.method public e(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x1388

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/duerguard/report/Reporter;->a(IZJILjava/util/HashMap;)V

    .line 157
    return-void
.end method
