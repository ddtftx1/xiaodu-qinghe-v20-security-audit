.class public Lcom/baidu/sofire/ac/FH;
.super Ljava/lang/Object;
.source "FH.java"


# static fields
.field public static final INVOKE_METHOD_ERROR_DEFULT:I = -0x1

.field public static final INVOKE_METHOD_ERROR_ILLGEAL_METHOD_NAME:I = -0x3

.field public static final INVOKE_METHOD_ERROR_JSON:I = -0x2

.field public static final INVOKE_METHOD_ERROR_METHOD_NOT_FOUND:I = -0x4

.field public static final INVOKE_METHOD_ERROR_MUTI_METHOD:I = -0x5

.field public static final INVOKE_METHOD_ERROR_PARAM_MISMATCH:I = -0x6

.field public static final INVOKE_METHOD_SUCCESS:I = 0x0

.field public static final TYPE_VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static bc(Landroid/content/Context;Z)V
    .locals 0

    .line 201
    invoke-static {p0, p1}, Ld/a/g/d/l;->a(Landroid/content/Context;Z)V

    .line 202
    return-void
.end method

.method public static call(ILjava/lang/String;)Z
    .locals 1

    .line 69
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/baidu/sofire/ac/FH;->call(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;)Z

    move-result p0

    return p0
.end method

.method public static call(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;)Z
    .locals 2

    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/baidu/sofire/ac/FH;->call(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs call(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/baidu/sofire/ac/Callback;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 109
    invoke-static {p0, p1, p2, p3, p4}, Ld/a/g/d/l;->a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs call(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/baidu/sofire/ac/FH;->call(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static callSync(ILjava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/baidu/sofire/ac/FH;->callSync(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static varargs callSync(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3}, Ld/a/g/d/l;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static gd(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 188
    const-string p0, ""

    return-object p0
.end method

.method public static gel()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 569
    invoke-static {}, Ld/a/g/d/l;->a()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static getPInfo(II)Ljava/lang/Object;
    .locals 3

    .line 131
    const-string v0, ""

    :try_start_0
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    if-eqz v1, :cond_9

    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 132
    invoke-static {v1}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 135
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 162
    return-object v0

    .line 137
    :cond_1
    if-gtz p0, :cond_2

    .line 138
    return-object v0

    .line 140
    :cond_2
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object p1

    .line 141
    if-nez p1, :cond_3

    .line 142
    return-object v0

    .line 144
    :cond_3
    invoke-virtual {p1}, Ld/a/g/d/n;->b()Ljava/util/List;

    move-result-object p1

    .line 145
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_4

    goto :goto_1

    .line 148
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sofire/core/ApkInfo;

    .line 149
    iget v2, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    if-ne v2, p0, :cond_6

    .line 150
    iget-object p0, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_5

    .line 151
    return-object v0

    .line 153
    :cond_5
    return-object p0

    .line 156
    :cond_6
    goto :goto_0

    .line 157
    :cond_7
    return-object v0

    .line 146
    :cond_8
    :goto_1
    return-object v0

    .line 133
    :cond_9
    :goto_2
    return-object v0

    .line 163
    :catch_0
    move-exception p0

    .line 164
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 165
    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 171
    const-string p0, "3.5.9.4"

    return-object p0
.end method

.method public static gt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 193
    invoke-static {p0, p1, p2, p3, p4}, Ld/a/g/d/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static gz(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 183
    invoke-static {p0}, Ld/a/g/d/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static gzfi(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 179
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ld/a/g/d/l;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static gzfi(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 175
    invoke-static {p0, p1, p2, p3}, Ld/a/g/d/l;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V
    .locals 6

    .line 44
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Ld/a/g/d/l;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V

    .line 45
    return-void
.end method

.method public static varargs init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Ld/a/g/d/l;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V

    .line 40
    return-void
.end method

.method public static initDelay(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V
    .locals 0

    .line 55
    invoke-static/range {p0 .. p5}, Ld/a/g/d/l;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V

    .line 56
    return-void
.end method

.method public static varargs initDelay(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Ld/a/g/d/l;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V

    .line 50
    return-void
.end method

.method public static invokeMethod(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    move-object/from16 v0, p0

    const-string v1, "callSync"

    const/4 v2, -0x1

    const/4 v3, -0x6

    const-string v4, ""

    if-nez v0, :cond_0

    .line 224
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 226
    :cond_0
    invoke-static/range {p0 .. p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 227
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 231
    :cond_1
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    nop

    .line 239
    :try_start_2
    const-string v6, "f"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "init"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "initDelay"

    .line 241
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "call"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_4

    .line 244
    :cond_2
    const-class v7, Lcom/baidu/sofire/ac/FH;

    .line 245
    nop

    .line 246
    const-string v8, "p"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 247
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eqz v8, :cond_6

    .line 248
    sget-object v8, Ld/a/g/d/f;->b:Landroid/content/Context;

    if-nez v8, :cond_3

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sput-object v8, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 251
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v13, :cond_4

    .line 252
    new-array v8, v13, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v14

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v12
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const-string v9, "callSync"

    :try_start_3
    invoke-virtual {v7, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    goto/16 :goto_2

    .line 253
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v8, v13, :cond_5

    .line 254
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 256
    :cond_5
    new-array v8, v9, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v14

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v12

    const-class v9, [Ljava/lang/Class;

    aput-object v9, v8, v13

    const-class v9, [Ljava/lang/Object;

    aput-object v9, v8, v11
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    const-string v9, "callSync"

    :try_start_4
    invoke-virtual {v7, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    goto/16 :goto_2

    .line 259
    :cond_6
    const-string v8, "gzfi"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 260
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v13, :cond_7

    .line 261
    new-array v8, v11, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v14

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v12

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v13
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    const-string v9, "gzfi"

    :try_start_5
    invoke-virtual {v7, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    goto :goto_2

    .line 263
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v11, :cond_8

    .line 264
    new-array v8, v9, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v14

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v12

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v13

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v11
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    const-string v9, "gzfi"

    :try_start_6
    invoke-virtual {v7, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    goto :goto_2

    .line 267
    :cond_8
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 270
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 271
    nop

    .line 272
    array-length v8, v7

    move-object v12, v10

    move v9, v14

    move v11, v9

    :goto_0
    if-ge v9, v8, :cond_c

    aget-object v15, v7, v9

    .line 273
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 275
    if-nez v12, :cond_a

    .line 276
    goto :goto_1

    .line 275
    :cond_a
    move-object v15, v12

    .line 278
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-object v12, v15

    .line 272
    :cond_b
    add-int/lit8 v9, v9, 0x1

    const/4 v3, -0x6

    goto :goto_0

    .line 281
    :cond_c
    if-lez v11, :cond_13

    if-nez v12, :cond_d

    goto :goto_3

    .line 283
    :cond_d
    if-lt v11, v13, :cond_e

    .line 284
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 283
    :cond_e
    move-object v7, v12

    .line 288
    :goto_2
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 289
    invoke-static {v6, v0, v5, v14, v3}, Lcom/baidu/sofire/ac/FH;->parseParams(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONArray;I[Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 290
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 291
    nop

    .line 292
    invoke-virtual {v7, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 293
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_10

    .line 294
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 295
    if-nez v0, :cond_f

    .line 296
    new-instance v0, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 298
    :cond_f
    new-instance v1, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 301
    :cond_10
    new-instance v1, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v1, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 304
    :cond_11
    invoke-virtual {v7, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 305
    if-nez v0, :cond_12

    .line 306
    new-instance v0, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 308
    :cond_12
    new-instance v1, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 282
    :cond_13
    :goto_3
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 242
    :cond_14
    :goto_4
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 234
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    return-object v0

    .line 315
    :catch_1
    move-exception v0

    .line 316
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 318
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 312
    :catch_2
    move-exception v0

    .line 313
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 314
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isInitSuc(I)Z
    .locals 1

    .line 123
    sget-object v0, Ld/a/g/d/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p0}, Ld/a/g/i/c;->a(I)Z

    move-result p0

    return p0

    .line 124
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 440
    const-string v0, "T"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const/4 p0, 0x1

    return p0

    .line 442
    :cond_0
    const-string v0, "F"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    const/4 p0, 0x0

    return p0

    .line 445
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse boolean fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseByte(Ljava/lang/String;)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 451
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 452
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    .line 455
    int-to-byte p0, v0

    return p0

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parse byte fail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse byte fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseChar(Ljava/lang/String;)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 464
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parse char fail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse char fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseClassArray(Ljava/lang/String;)[Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 522
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 523
    new-array v1, v0, [Ljava/lang/Class;

    .line 524
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 525
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x46

    if-eq v3, v4, :cond_5

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_4

    const/16 v4, 0x49

    if-eq v3, v4, :cond_3

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x53

    if-eq v3, v4, :cond_1

    const/16 v4, 0x54

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parse classArray fail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :pswitch_0
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 549
    goto :goto_1

    .line 533
    :pswitch_1
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 534
    goto :goto_1

    .line 530
    :pswitch_2
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 531
    goto :goto_1

    .line 551
    :cond_0
    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 552
    goto :goto_1

    .line 536
    :cond_1
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 537
    goto :goto_1

    .line 542
    :cond_2
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 543
    goto :goto_1

    .line 539
    :cond_3
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 540
    goto :goto_1

    .line 527
    :cond_4
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 528
    goto :goto_1

    .line 545
    :cond_5
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    nop

    .line 524
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 557
    :cond_6
    return-object v1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse classArray fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 512
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse double fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 503
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse float fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 485
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse int fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 494
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse long fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseParams(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONArray;I[Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 326
    :try_start_0
    const-string v0, "callSync"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 328
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    array-length v1, p4

    goto :goto_1

    .line 329
    :cond_1
    :goto_0
    move v1, v0

    .line 333
    :goto_1
    new-array v2, v1, [Ljava/lang/Object;

    .line 335
    nop

    .line 336
    const/4 v3, 0x0

    move-object v4, v3

    :goto_2
    if-ge v0, v1, :cond_25

    .line 337
    if-eqz p4, :cond_24

    .line 340
    aget-object v5, p4, v0

    .line 341
    const-class v6, Landroid/content/Context;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 342
    if-eqz p1, :cond_2

    .line 343
    aput-object p1, v2, v0

    goto/16 :goto_b

    .line 344
    :cond_2
    sget-object v5, Ld/a/g/d/f;->b:Landroid/content/Context;

    if-eqz v5, :cond_3

    .line 345
    sget-object v5, Ld/a/g/d/f;->b:Landroid/content/Context;

    aput-object v5, v2, v0

    goto/16 :goto_b

    .line 347
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "method request context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 351
    :cond_4
    if-eqz p2, :cond_23

    .line 354
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 355
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_a

    .line 361
    :cond_5
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-class v7, Ljava/lang/Byte;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_9

    .line 367
    :cond_6
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 368
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 371
    invoke-static {v6}, Lcom/baidu/sofire/ac/FH;->parseChar(Ljava/lang/String;)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v2, v0

    .line 372
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_b

    .line 369
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "char not support null String"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 373
    :cond_8
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    const-class v7, Ljava/lang/Short;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto/16 :goto_8

    .line 379
    :cond_9
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto/16 :goto_7

    .line 385
    :cond_a
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    const-class v7, Ljava/lang/Long;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto/16 :goto_6

    .line 391
    :cond_b
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-class v7, Ljava/lang/Float;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto/16 :goto_5

    .line 397
    :cond_c
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    const-class v7, Ljava/lang/Double;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_4

    .line 403
    :cond_d
    const-class v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 404
    aput-object v6, v2, v0

    .line 405
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_b

    .line 406
    :cond_e
    const-class v7, [Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 407
    if-eqz p0, :cond_10

    .line 410
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 411
    nop

    .line 412
    aput-object v3, v2, v0

    move-object v4, v3

    goto :goto_3

    .line 414
    :cond_f
    invoke-static {v6}, Lcom/baidu/sofire/ac/FH;->parseClassArray(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v4

    .line 415
    aput-object v4, v2, v0

    .line 417
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_b

    .line 408
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "only callSync support Class[]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 418
    :cond_11
    const-class v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 419
    if-eqz p0, :cond_13

    .line 422
    if-nez v4, :cond_12

    .line 423
    aput-object v3, v2, v0

    goto/16 :goto_b

    .line 426
    :cond_12
    const-string v5, ""

    invoke-static {v5, p1, p2, p3, v4}, Lcom/baidu/sofire/ac/FH;->parseParams(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONArray;I[Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v0

    goto/16 :goto_b

    .line 420
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "only callSync support Object[]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 398
    :cond_14
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 401
    invoke-static {v6}, Lcom/baidu/sofire/ac/FH;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v0

    .line 402
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_b

    .line 399
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "double not support null String"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 392
    :cond_16
    :goto_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 395
    invoke-static {v6}, Lcom/baidu/sofire/ac/FH;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v0

    .line 396
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_b

    .line 393
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "float not support null String"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 386
    :cond_18
    :goto_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 389
    invoke-static {v6}, Lcom/baidu/sofire/ac/FH;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v0

    .line 390
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    .line 387
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "long not support null String"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 380
    :cond_1a
    :goto_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 383
    invoke-static {v6}, Lcom/baidu/sofire/ac/FH;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    .line 384
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    .line 381
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "int not support null String"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_1c
    :goto_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 377
    invoke-static {v6}, Lcom/baidu/sofire/ac/FH;->parseShort(Ljava/lang/String;)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v2, v0

    .line 378
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    .line 375
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "short not support null String"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 362
    :cond_1e
    :goto_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 365
    invoke-static {v6}, Lcom/baidu/sofire/ac/FH;->parseByte(Ljava/lang/String;)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v0

    .line 366
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    .line 363
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byte not support null String"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_20
    :goto_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 359
    invoke-static {v6}, Lcom/baidu/sofire/ac/FH;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v0

    .line 360
    add-int/lit8 p3, p3, 0x1

    .line 336
    :cond_21
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 357
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "boolean not support null String"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 352
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "request params but get null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 338
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parameterTypes null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_25
    return-object v2

    .line 434
    :catch_0
    move-exception p0

    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 435
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseShort(Ljava/lang/String;)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 476
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse short fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAgreePolicy(Landroid/content/Context;Z)V
    .locals 0

    .line 205
    invoke-static {p0, p1}, Ld/a/g/d/l;->b(Landroid/content/Context;Z)V

    .line 206
    return-void
.end method

.method public static setDeviceInfoCallback(Lcom/baidu/sofire/ac/DeviceInfoCallback;)V
    .locals 0

    .line 565
    invoke-static {p0}, Ld/a/g/i/t;->a(Lcom/baidu/sofire/ac/DeviceInfoCallback;)V

    .line 566
    return-void
.end method

.method public static setDid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 209
    invoke-static {p0, p1}, Ld/a/g/d/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static tryLoadModule(Landroid/content/Context;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V
    .locals 1

    .line 59
    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0}, Ld/a/g/d/l;->a(Landroid/content/Context;ILcom/baidu/sofire/ac/BDModuleLoadCallback;Z)V

    .line 60
    return-void
.end method

.method public static xgz(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 197
    invoke-static {p0, p1}, Ld/a/g/d/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
