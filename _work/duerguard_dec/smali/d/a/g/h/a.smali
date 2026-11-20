.class public final Ld/a/g/h/a;
.super Ljava/lang/Object;
.source "SharedPreferenceManager.java"


# static fields
.field public static a:Ld/a/g/h/a;


# instance fields
.field public b:Landroid/content/SharedPreferences;

.field public c:Landroid/content/SharedPreferences$Editor;

.field public d:Landroid/content/SharedPreferences;

.field public e:Landroid/content/SharedPreferences$Editor;

.field public f:Landroid/content/SharedPreferences;

.field public g:Landroid/content/SharedPreferences$Editor;

.field public h:Landroid/content/Context;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Ld/a/g/h/a;->j:Ljava/lang/String;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ld/a/g/h/a;->k:Ljava/util/Map;

    .line 91
    iput-object p1, p0, Ld/a/g/h/a;->h:Landroid/content/Context;

    .line 92
    invoke-static {p1}, Ld/a/g/i/c;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Ld/a/g/h/a;->i:I

    .line 97
    const-string v1, "sofire"

    const-string v2, "SOFIRE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    nop

    .line 2287
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2288
    nop

    .line 2289
    const-string v4, "operation"

    const-string v5, "querySharedHandler"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    iget-object v4, p0, Ld/a/g/h/a;->h:Landroid/content/Context;

    const-string v5, "CallPreferences"

    const-string v6, "3.5.8.0"

    invoke-static {v4, v5, v3, v6}, Ld/a/g/i/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2294
    if-eqz v3, :cond_0

    .line 2295
    nop

    .line 2296
    const-string v4, "handle_platform"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ld/a/g/h/a;->j:Ljava/lang/String;

    .line 102
    :cond_0
    nop

    .line 103
    iget v3, p0, Ld/a/g/h/a;->i:I

    const/4 v4, 0x0

    const-string v5, "leroadcfg"

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 104
    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    goto :goto_0

    .line 103
    :cond_1
    move-object v3, v0

    .line 107
    :goto_0
    new-instance v7, Ld/a/g/h/c;

    iget-object v8, p0, Ld/a/g/h/a;->h:Landroid/content/Context;

    iget v9, p0, Ld/a/g/h/a;->i:I

    invoke-direct {v7, v8, v3, v5, v9}, Ld/a/g/h/c;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v7, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    .line 109
    iget-object v3, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    iput-object v1, p0, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    .line 113
    iget-object v1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    iput-object v1, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 115
    :cond_2
    nop

    .line 117
    iget v1, p0, Ld/a/g/h/a;->i:I

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Ld/a/g/h/a;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    .line 122
    :cond_3
    move-object v9, v0

    :goto_1
    new-instance v1, Ld/a/g/h/c;

    iget-object v8, p0, Ld/a/g/h/a;->h:Landroid/content/Context;

    const/4 v11, 0x1

    iget v12, p0, Ld/a/g/h/a;->i:I

    iget-object v13, p0, Ld/a/g/h/a;->j:Ljava/lang/String;

    const-string v10, "leroadcfg"

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Ld/a/g/h/c;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ZILjava/lang/String;)V

    iput-object v1, p0, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    .line 124
    iget-object v1, p0, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    .line 127
    :goto_2
    nop

    .line 128
    iget v1, p0, Ld/a/g/h/a;->i:I

    const-string v2, "re_po_rt"

    if-ne v1, v6, :cond_4

    .line 129
    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    :cond_4
    new-instance p1, Ld/a/g/h/c;

    iget-object v1, p0, Ld/a/g/h/a;->h:Landroid/content/Context;

    iget v3, p0, Ld/a/g/h/a;->i:I

    invoke-direct {p1, v1, v0, v2, v3}, Ld/a/g/h/c;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object p1, p0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    .line 134
    iget-object p1, p0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    .line 135
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ld/a/g/h/a;
    .locals 2

    const-class v0, Ld/a/g/h/a;

    monitor-enter v0

    .line 139
    if-nez p0, :cond_0

    .line 140
    :try_start_0
    sget-object p0, Ld/a/g/h/a;->a:Ld/a/g/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 142
    :cond_0
    :try_start_1
    sget-object v1, Ld/a/g/h/a;->a:Ld/a/g/h/a;

    if-nez v1, :cond_1

    .line 143
    new-instance v1, Ld/a/g/h/a;

    invoke-direct {v1, p0}, Ld/a/g/h/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld/a/g/h/a;->a:Ld/a/g/h/a;

    .line 145
    :cond_1
    sget-object p0, Ld/a/g/h/a;->a:Ld/a/g/h/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 138
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 5

    .line 1445
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "p_s_s_c_t"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    nop

    .line 1447
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1448
    return-object v1

    .line 1451
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0xa

    .line 1452
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1451
    invoke-static {v3, v0}, Ld/a/g/i/h;->a([B[B)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    move-object v1, v2

    goto :goto_0

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1456
    :goto_0
    return-object v1
.end method

.method public final a(II)I
    .locals 2

    .line 868
    nop

    .line 869
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 874
    :cond_0
    const-string p1, "suetfite"

    goto :goto_0

    .line 871
    :cond_1
    nop

    .line 872
    const-string p1, "sustfits"

    .line 879
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    const/4 p1, -0x1

    return p1

    .line 882
    :cond_2
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 6

    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    return-object v1

    .line 324
    :cond_0
    :try_start_0
    iget-object v0, p0, Ld/a/g/h/a;->k:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :try_start_1
    iget-object v2, p0, Ld/a/g/h/a;->k:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    .line 327
    if-nez v2, :cond_2

    .line 328
    nop

    .line 329
    iget v2, p0, Ld/a/g/h/a;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 330
    iget-object v2, p0, Ld/a/g/h/a;->h:Landroid/content/Context;

    const/4 v3, 0x0

    .line 331
    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0

    .line 329
    :cond_1
    move-object v2, v1

    .line 333
    :goto_0
    new-instance v3, Ld/a/g/h/c;

    iget-object v4, p0, Ld/a/g/h/a;->h:Landroid/content/Context;

    iget v5, p0, Ld/a/g/h/a;->i:I

    invoke-direct {v3, v4, v2, p1, v5}, Ld/a/g/h/c;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 336
    iget-object v2, p0, Ld/a/g/h/a;->k:Ljava/util/Map;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 338
    :cond_2
    monitor-exit v0

    return-object v2

    .line 339
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 340
    :catch_0
    move-exception p1

    .line 341
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 343
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 13

    .line 152
    const-string v0, "getString"

    const-string v1, "leroadcfg"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "operation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    return-object v2

    .line 156
    :cond_0
    const-string v4, "querySharedHandler"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 158
    const-string v0, "handle_platform"

    const-string v1, "sofire"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object p1

    .line 163
    :cond_1
    const-string v4, "pref_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    return-object v2

    .line 168
    :cond_2
    const-string v5, "key"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 170
    return-object v2

    .line 177
    :cond_3
    nop

    .line 3273
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3274
    iget-object v1, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 3275
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3276
    iget-object v1, p0, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 3277
    :cond_5
    const-string v1, "re_po_rt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3278
    iget-object v1, p0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 3281
    :cond_6
    invoke-virtual {p0, v4}, Ld/a/g/h/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 177
    :goto_0
    nop

    .line 179
    const-string v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v4, :cond_f

    .line 180
    const-string v4, "defult_value"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 183
    return-object v2

    .line 190
    :cond_7
    if-nez v1, :cond_8

    .line 191
    return-object v2

    .line 193
    :cond_8
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 194
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_9
    goto :goto_1

    :sswitch_0
    const-string v0, "getFloat"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v6, v9

    goto :goto_2

    :sswitch_1
    const-string v0, "getBoolean"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v6, v8

    goto :goto_2

    :sswitch_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :sswitch_3
    const-string v0, "getLong"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v6, v10

    goto :goto_2

    :sswitch_4
    const-string v0, "getInt"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_9

    move v6, v11

    goto :goto_2

    :goto_1
    move v6, v7

    :goto_2
    const-string v0, "result"

    if-eqz v6, :cond_e

    if-eq v6, v11, :cond_d

    if-eq v6, v10, :cond_c

    if-eq v6, v9, :cond_b

    if-eq v6, v8, :cond_a

    goto :goto_3

    .line 213
    :cond_a
    nop

    .line 214
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v1, v5, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 215
    nop

    .line 216
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 209
    :cond_b
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-interface {v1, v5, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    .line 210
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 211
    goto :goto_3

    .line 205
    :cond_c
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 206
    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 207
    goto :goto_3

    .line 201
    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, v5, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 202
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    goto :goto_3

    .line 196
    :cond_e
    invoke-interface {v1, v5, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    nop

    .line 198
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    nop

    .line 221
    :goto_3
    return-object v4

    .line 222
    :cond_f
    const-string v0, "put"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 224
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :cond_10
    goto :goto_4

    :sswitch_5
    const-string v1, "putFloat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v6, v9

    goto :goto_5

    :sswitch_6
    const-string v1, "putBoolean"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v6, v8

    goto :goto_5

    :sswitch_7
    const-string v1, "putLong"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v6, v10

    goto :goto_5

    :sswitch_8
    const-string v1, "putString"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5

    :sswitch_9
    const-string v1, "putInt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_10

    move v6, v11

    goto :goto_5

    :goto_4
    move v6, v7

    :goto_5
    const-string v1, "value"

    if-eqz v6, :cond_15

    if-eq v6, v11, :cond_14

    if-eq v6, v10, :cond_13

    if-eq v6, v9, :cond_12

    if-eq v6, v8, :cond_11

    goto :goto_6

    .line 252
    :cond_11
    nop

    .line 253
    :try_start_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 254
    invoke-interface {v0, v5, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    .line 247
    :cond_12
    nop

    .line 248
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    .line 249
    invoke-interface {v0, v5, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 250
    goto :goto_6

    .line 242
    :cond_13
    nop

    .line 243
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 244
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 245
    goto :goto_6

    .line 237
    :cond_14
    nop

    .line 238
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 239
    invoke-interface {v0, v5, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 240
    goto :goto_6

    .line 231
    :cond_15
    nop

    .line 232
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-interface {v0, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    nop

    .line 260
    :goto_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    :cond_16
    goto :goto_7

    .line 263
    :catch_0
    move-exception p1

    .line 264
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 266
    :goto_7
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a77b747 -> :sswitch_4
        -0x47dd10e -> :sswitch_3
        0x2fec8307 -> :sswitch_2
        0x41a8a7f2 -> :sswitch_1
        0x746dc8a6 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3a3aa1a0 -> :sswitch_9
        -0x1b98c800 -> :sswitch_8
        -0xd1831d5 -> :sswitch_7
        0x1c849219 -> :sswitch_6
        0x69bc108d -> :sswitch_5
    .end sparse-switch
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    .line 1615
    iget-object v0, p0, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    const-string v1, "xytk"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 445
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "wi_fa_pu_ap"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 446
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    return-void
.end method

.method public final a(III)V
    .locals 2

    .line 849
    nop

    .line 850
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 855
    :cond_0
    const-string p1, "suetfite"

    goto :goto_0

    .line 852
    :cond_1
    nop

    .line 853
    const-string p1, "sustfits"

    .line 860
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 861
    return-void

    .line 863
    :cond_2
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 864
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 865
    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 840
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "slruct"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 841
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 842
    return-void
.end method

.method public final a(Ld/a/g/b/a;)V
    .locals 4

    .line 916
    iget-object v0, p0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v1, "re_con"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    iget-object v2, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "||"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ld/a/g/b/a;->a(Ld/a/g/b/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 918
    iget-object p1, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 920
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 734
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "glspk"

    if-nez v0, :cond_0

    .line 735
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v0, ""

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 737
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 739
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 740
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 741
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 744
    :cond_2
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 746
    :goto_1
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 747
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1222
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "s_c_c"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1223
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1224
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final varargs a([I)V
    .locals 4

    .line 700
    const-string v0, "hcpk"

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 703
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 705
    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 706
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 707
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 710
    :cond_2
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 701
    :cond_3
    :goto_1
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 712
    :goto_2
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 713
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 376
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "svi_n"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 2

    .line 454
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mo_fa_pu_ap"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 455
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 456
    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 1031
    iget-object v0, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v1, "re_last_ofline_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1032
    iget-object p1, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1033
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 528
    iget-object v0, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    const-string v1, "xyus"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 529
    iget-object p1, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 530
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 1244
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "se_fg_s"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1245
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1246
    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 519
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mo_ae_fa_ct"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 520
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 521
    return-void
.end method

.method public final c(J)V
    .locals 2

    .line 1141
    iget-object v0, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v1, "re_day_len"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1142
    iget-object p1, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1143
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 537
    iget-object v0, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    const-string v1, "xyusec"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 538
    iget-object p1, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 539
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 1253
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_a_c_b"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1254
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1255
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 404
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "bka"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 4

    .line 436
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "pu_ap_fd"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 437
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 438
    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 795
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "appal_daa"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 796
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 797
    return-void
.end method

.method public final d(J)V
    .locals 2

    .line 1150
    iget-object v0, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v1, "re_day_b_t"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1151
    iget-object p1, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1152
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 5

    .line 664
    const-string v0, "UTF-8"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "rpnewuidn"

    if-eqz v1, :cond_0

    .line 665
    iget-object p1, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    const-string v0, ""

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 666
    iget-object p1, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 667
    return-void

    .line 671
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 672
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v4, 0x1

    .line 671
    invoke-static {v3, p1, v4}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object p1

    const/16 v3, 0xa

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    nop

    .line 677
    iget-object p1, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 678
    iget-object p1, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 679
    return-void

    .line 673
    :catch_0
    move-exception p1

    .line 674
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 675
    return-void
.end method

.method public final e()I
    .locals 3

    .line 441
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "wi_fa_pu_ap"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1164
    iget-object v0, p0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "al_da"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)V
    .locals 2

    .line 804
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "appal_te"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 805
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 806
    return-void
.end method

.method public final e(J)V
    .locals 2

    .line 1311
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "p_s_i_t_t"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1312
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1313
    return-void
.end method

.method public final f()I
    .locals 3

    .line 450
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "mo_fa_pu_ap"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final f(I)V
    .locals 2

    .line 822
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sustfd"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 823
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 824
    return-void
.end method

.method public final f(J)V
    .locals 2

    .line 1354
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "p_s_a_i_t_t"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1355
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1356
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 5

    .line 1293
    const-string v0, "UTF-8"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "p_s_i_t"

    if-eqz v1, :cond_0

    .line 1294
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v0, ""

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1295
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1296
    return-void

    .line 1300
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1301
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v4, 0x1

    .line 1300
    invoke-static {v3, p1, v4}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object p1

    const/16 v3, 0xa

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    nop

    .line 1306
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1307
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1308
    return-void

    .line 1302
    :catch_0
    move-exception p1

    .line 1303
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1304
    return-void
.end method

.method public final g()V
    .locals 4

    .line 469
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "pu_cl_fd"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 470
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    return-void
.end method

.method public final g(I)V
    .locals 2

    .line 831
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sufzfd"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 832
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 833
    return-void
.end method

.method public final g(J)V
    .locals 2

    .line 1397
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "p_s_e_c_t_t"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1398
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1399
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 5

    .line 1335
    const-string v0, "UTF-8"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "p_s_a_i_t"

    if-eqz v1, :cond_0

    .line 1336
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v0, ""

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1337
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1338
    return-void

    .line 1342
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1343
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v4, 0x1

    .line 1342
    invoke-static {v3, p1, v4}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object p1

    const/16 v3, 0xa

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    nop

    .line 1349
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1350
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1351
    return-void

    .line 1345
    :catch_0
    move-exception p1

    .line 1346
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1347
    return-void
.end method

.method public final h()V
    .locals 4

    .line 483
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "se_ae_fd"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 484
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 485
    return-void
.end method

.method public final h(I)V
    .locals 2

    .line 1217
    iget-object v0, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v1, "g_r_d_d_n"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1218
    iget-object p1, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1219
    return-void
.end method

.method public final h(J)V
    .locals 2

    .line 1440
    iget-object v0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "p_s_s_c_t_t"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1441
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1442
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 5

    .line 1378
    const-string v0, "UTF-8"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "p_s_e_c_t"

    if-eqz v1, :cond_0

    .line 1379
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v0, ""

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1380
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1381
    return-void

    .line 1385
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1386
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v4, 0x1

    .line 1385
    invoke-static {v3, p1, v4}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object p1

    const/16 v3, 0xa

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    nop

    .line 1392
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1393
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1394
    return-void

    .line 1388
    :catch_0
    move-exception p1

    .line 1389
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1390
    return-void
.end method

.method public final i()I
    .locals 3

    .line 488
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "wi_fa_pu_cl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 5

    .line 1421
    const-string v0, "UTF-8"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "p_s_s_c_t"

    if-eqz v1, :cond_0

    .line 1422
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v0, ""

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1423
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1424
    return-void

    .line 1428
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1429
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v4, 0x1

    .line 1428
    invoke-static {v3, p1, v4}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object p1

    const/16 v3, 0xa

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    nop

    .line 1435
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1436
    iget-object p1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1437
    return-void

    .line 1431
    :catch_0
    move-exception p1

    .line 1432
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1433
    return-void
.end method

.method public final j()I
    .locals 3

    .line 506
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "mo_fa_pu_cl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 3

    .line 515
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "mo_ae_fa_ct"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 524
    iget-object v0, p0, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    const-string v1, "xyus"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    .line 533
    iget-object v0, p0, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    const-string v1, "xyusec"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 5

    .line 556
    iget-object v0, p0, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "xyglsn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    nop

    .line 558
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    return-object v1

    .line 562
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0xa

    .line 563
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 562
    invoke-static {v3, v0}, Ld/a/g/i/h;->a([B[B)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    move-object v1, v2

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 567
    :goto_0
    return-object v1
.end method

.method public final o()Ljava/lang/String;
    .locals 5

    .line 649
    iget-object v0, p0, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "rpnewuidn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    nop

    .line 651
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 652
    return-object v1

    .line 655
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0xa

    .line 656
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 655
    invoke-static {v3, v0}, Ld/a/g/i/h;->a([B[B)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    move-object v1, v2

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 660
    :goto_0
    return-object v1
.end method

.method public final p()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 683
    iget-object v1, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v2, "hcpk"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 686
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 687
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 689
    :try_start_0
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    goto :goto_1

    .line 691
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    invoke-static {}, Ld/a/g/g;->a()V

    .line 687
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    :cond_0
    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 717
    iget-object v1, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v2, "glspk"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 719
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 720
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 721
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 723
    :try_start_0
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    goto :goto_1

    .line 725
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    invoke-static {}, Ld/a/g/g;->a()V

    .line 721
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 730
    :cond_0
    return-object v0
.end method

.method public final r()I
    .locals 3

    .line 827
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "sustfd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 3

    .line 836
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "sufzfd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final t()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld/a/g/b/a;",
            ">;"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v1, "re_con"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    const/4 v0, 0x0

    return-object v0

    .line 954
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 955
    const-string v2, "\\|\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 956
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 960
    invoke-static {v4}, Ld/a/g/b/a;->a(Ljava/lang/String;)Ld/a/g/b/a;

    move-result-object v4

    .line 961
    if-eqz v4, :cond_1

    .line 965
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 967
    :cond_2
    return-object v1
.end method

.method public final u()I
    .locals 3

    .line 991
    iget-object v0, p0, Ld/a/g/h/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baidu.BaiduMap.meizu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "re_net_hr"

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const/16 v2, 0x18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 994
    :cond_0
    iget-object v0, p0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1012
    return v0
.end method

.method public final v()I
    .locals 3

    .line 1074
    iget-object v0, p0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v1, "up_nu_li"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 3

    .line 1231
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "s_c_c"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final x()Ljava/lang/String;
    .locals 5

    .line 1316
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "p_s_i_t"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    nop

    .line 1318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    return-object v1

    .line 1322
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0xa

    .line 1323
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1322
    invoke-static {v3, v0}, Ld/a/g/i/h;->a([B[B)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    move-object v1, v2

    goto :goto_0

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1327
    :goto_0
    return-object v1
.end method

.method public final y()Ljava/lang/String;
    .locals 5

    .line 1359
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "p_s_a_i_t"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1360
    nop

    .line 1361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1362
    return-object v1

    .line 1365
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0xa

    .line 1366
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1365
    invoke-static {v3, v0}, Ld/a/g/i/h;->a([B[B)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    move-object v1, v2

    goto :goto_0

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1370
    :goto_0
    return-object v1
.end method

.method public final z()Ljava/lang/String;
    .locals 5

    .line 1402
    iget-object v0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "p_s_e_c_t"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1403
    nop

    .line 1404
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1405
    return-object v1

    .line 1408
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0xa

    .line 1409
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1408
    invoke-static {v3, v0}, Ld/a/g/i/h;->a([B[B)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    move-object v1, v2

    goto :goto_0

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1413
    :goto_0
    return-object v1
.end method
