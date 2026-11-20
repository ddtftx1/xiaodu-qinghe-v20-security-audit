.class public final Ld/a/g/i/t;
.super Ljava/lang/Object;
.source "PrivacyOperationUtil.java"


# static fields
.field public static a:Lcom/baidu/sofire/ac/DeviceInfoCallback;

.field public static b:Ljava/lang/String;

.field public static c:J

.field public static d:Ljava/lang/String;

.field public static e:J

.field public static f:Ljava/lang/String;

.field public static g:J

.field public static h:Ljava/lang/String;

.field public static i:J

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Ld/a/g/i/t;->j:Z

    .line 47
    sput-boolean v0, Ld/a/g/i/t;->k:Z

    .line 48
    sput-boolean v0, Ld/a/g/i/t;->l:Z

    .line 49
    sput-boolean v0, Ld/a/g/i/t;->m:Z

    .line 50
    sput-boolean v0, Ld/a/g/i/t;->n:Z

    .line 51
    sput-boolean v0, Ld/a/g/i/t;->o:Z

    .line 52
    nop

    .line 53
    nop

    .line 54
    sput-boolean v0, Ld/a/g/i/t;->p:Z

    .line 55
    nop

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Ld/a/g/i/t;->q:Z

    return-void
.end method

.method public static a()Lcom/baidu/sofire/ac/DeviceInfoCallback;
    .locals 1

    .line 715
    sget-object v0, Ld/a/g/i/t;->a:Lcom/baidu/sofire/ac/DeviceInfoCallback;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Ld/a/g/i/t;

    monitor-enter v0

    .line 100
    if-nez p0, :cond_0

    .line 101
    monitor-exit v0

    return-void

    .line 103
    :cond_0
    :try_start_0
    sget-boolean v1, Ld/a/g/i/t;->q:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 104
    monitor-exit v0

    return-void

    .line 106
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Ld/a/g/i/t;->q:Z

    .line 107
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p0

    .line 3464
    iget-object p0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "p_s_p_c"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 108
    nop

    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {v1}, Ld/a/g/i/t;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit v0

    return-void

    .line 99
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 114
    :catch_0
    move-exception p0

    .line 115
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    monitor-exit v0

    return-void

    .line 99
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .line 82
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    :try_start_0
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p0

    .line 89
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2468
    iget-object v1, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v2, "p_s_p_c"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2469
    iget-object p0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    invoke-static {p1}, Ld/a/g/i/t;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 91
    :catch_0
    move-exception p0

    .line 92
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 95
    return-void

    .line 83
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/baidu/sofire/ac/DeviceInfoCallback;)V
    .locals 0

    .line 711
    sput-object p0, Ld/a/g/i/t;->a:Lcom/baidu/sofire/ac/DeviceInfoCallback;

    .line 712
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 5

    .line 121
    if-nez p0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x1

    const-string v1, "0"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 125
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    sput-boolean v1, Ld/a/g/i/t;->p:Z

    .line 126
    const-string v1, "1"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 127
    if-nez p0, :cond_2

    .line 128
    return-void

    .line 130
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 131
    move v3, v2

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 132
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    :cond_3
    const/16 p0, 0x1b

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 135
    sput-boolean v2, Ld/a/g/i/t;->j:Z

    goto :goto_2

    .line 137
    :cond_4
    sput-boolean v0, Ld/a/g/i/t;->j:Z

    .line 139
    :goto_2
    const/16 p0, 0x22

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 140
    goto :goto_3

    .line 142
    :cond_5
    nop

    .line 144
    :goto_3
    const/16 p0, 0x28

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 145
    sput-boolean v2, Ld/a/g/i/t;->k:Z

    goto :goto_4

    .line 147
    :cond_6
    sput-boolean v0, Ld/a/g/i/t;->k:Z

    .line 149
    :goto_4
    const/16 p0, 0x29

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 150
    goto :goto_5

    .line 152
    :cond_7
    nop

    .line 154
    :goto_5
    const/16 p0, 0x2a

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 155
    sput-boolean v2, Ld/a/g/i/t;->l:Z

    goto :goto_6

    .line 157
    :cond_8
    sput-boolean v0, Ld/a/g/i/t;->l:Z

    .line 159
    :goto_6
    const/16 p0, 0x2b

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 160
    sput-boolean v2, Ld/a/g/i/t;->n:Z

    goto :goto_7

    .line 162
    :cond_9
    sput-boolean v0, Ld/a/g/i/t;->n:Z

    .line 164
    :goto_7
    const/16 p0, 0x2c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 165
    sput-boolean v2, Ld/a/g/i/t;->m:Z

    goto :goto_8

    .line 167
    :cond_a
    sput-boolean v0, Ld/a/g/i/t;->m:Z

    .line 169
    :goto_8
    const/16 p0, 0x2d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 170
    sput-boolean v2, Ld/a/g/i/t;->o:Z

    goto :goto_9

    .line 172
    :cond_b
    sput-boolean v0, Ld/a/g/i/t;->o:Z

    .line 174
    :goto_9
    const/16 p0, 0x2e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 175
    return-void

    .line 177
    :cond_c
    nop

    .line 179
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 203
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 204
    return v0

    .line 208
    :cond_0
    sget-boolean v1, Ld/a/g/i/t;->l:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Ld/a/g/i/t;->l(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 212
    :cond_1
    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .line 217
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 218
    return v0

    .line 221
    :cond_0
    sget-boolean v1, Ld/a/g/i/t;->m:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Ld/a/g/i/t;->l(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 225
    :cond_1
    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    .line 230
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 231
    return v0

    .line 234
    :cond_0
    sget-boolean v1, Ld/a/g/i/t;->n:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Ld/a/g/i/t;->l(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 238
    :cond_1
    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    .line 243
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 244
    return v0

    .line 247
    :cond_0
    sget-boolean v1, Ld/a/g/i/t;->o:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Ld/a/g/i/t;->l(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 251
    :cond_1
    return v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 258
    const-string v0, ""

    if-eqz p0, :cond_6

    :try_start_0
    sget-boolean v1, Ld/a/g/i/t;->m:Z

    if-eqz v1, :cond_6

    invoke-static {p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 262
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ld/a/g/i/t;->i:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 263
    sget-object p0, Ld/a/g/i/t;->h:Ljava/lang/String;

    return-object p0

    .line 265
    :cond_1
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v1

    .line 267
    sget-object v2, Ld/a/g/i/t;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    invoke-virtual {v1}, Ld/a/g/h/a;->z()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ld/a/g/i/t;->h:Ljava/lang/String;

    .line 269
    nop

    .line 4417
    iget-object v2, v1, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v5, "p_s_e_c_t_t"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 269
    sput-wide v5, Ld/a/g/i/t;->i:J

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Ld/a/g/i/t;->i:J

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_2

    .line 272
    sget-object p0, Ld/a/g/i/t;->h:Ljava/lang/String;

    return-object p0

    .line 275
    :cond_2
    invoke-static {p0}, Ld/a/g/i/s;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 276
    sget-object p0, Ld/a/g/i/t;->h:Ljava/lang/String;

    return-object p0

    .line 278
    :cond_3
    invoke-static {p0}, Ld/a/g/i/t;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 280
    sget-object p0, Ld/a/g/i/t;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    .line 287
    :cond_4
    :try_start_1
    invoke-static {p0}, Ld/a/g/i/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 290
    sput-object p0, Ld/a/g/i/t;->h:Ljava/lang/String;

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Ld/a/g/i/t;->i:J

    .line 292
    sget-object p0, Ld/a/g/i/t;->h:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ld/a/g/h/a;->h(Ljava/lang/String;)V

    .line 293
    sget-wide v2, Ld/a/g/i/t;->i:J

    invoke-virtual {v1, v2, v3}, Ld/a/g/h/a;->g(J)V

    goto :goto_0

    .line 295
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Ld/a/g/i/t;->i:J

    .line 296
    sget-wide v2, Ld/a/g/i/t;->i:J

    invoke-virtual {v1, v2, v3}, Ld/a/g/h/a;->g(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    goto :goto_0

    .line 299
    :catch_0
    move-exception p0

    .line 300
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 303
    :goto_0
    sget-object p0, Ld/a/g/i/t;->h:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    .line 304
    :catch_1
    move-exception p0

    goto :goto_2

    .line 259
    :cond_6
    :goto_1
    return-object v0

    .line 305
    :goto_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 306
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 313
    const-string v0, ""

    if-eqz p0, :cond_5

    :try_start_0
    sget-boolean v1, Ld/a/g/i/t;->l:Z

    if-eqz v1, :cond_5

    .line 314
    invoke-static {p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 317
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ld/a/g/i/t;->g:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 318
    sget-object p0, Ld/a/g/i/t;->f:Ljava/lang/String;

    return-object p0

    .line 320
    :cond_1
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v1

    .line 321
    sget-object v2, Ld/a/g/i/t;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    invoke-virtual {v1}, Ld/a/g/h/a;->A()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ld/a/g/i/t;->f:Ljava/lang/String;

    .line 323
    nop

    .line 4460
    iget-object v2, v1, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v5, "p_s_s_c_t_t"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 323
    sput-wide v5, Ld/a/g/i/t;->g:J

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Ld/a/g/i/t;->g:J

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_2

    .line 325
    sget-object p0, Ld/a/g/i/t;->f:Ljava/lang/String;

    return-object p0

    .line 329
    :cond_2
    invoke-static {p0}, Ld/a/g/i/t;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 330
    sget-object p0, Ld/a/g/i/t;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    .line 336
    :cond_3
    :try_start_1
    invoke-static {p0}, Ld/a/g/i/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 337
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 338
    sput-object p0, Ld/a/g/i/t;->f:Ljava/lang/String;

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Ld/a/g/i/t;->g:J

    .line 340
    sget-object p0, Ld/a/g/i/t;->f:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ld/a/g/h/a;->i(Ljava/lang/String;)V

    .line 341
    sget-wide v2, Ld/a/g/i/t;->g:J

    invoke-virtual {v1, v2, v3}, Ld/a/g/h/a;->h(J)V

    goto :goto_0

    .line 343
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Ld/a/g/i/t;->g:J

    .line 344
    sget-wide v2, Ld/a/g/i/t;->g:J

    invoke-virtual {v1, v2, v3}, Ld/a/g/h/a;->h(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    goto :goto_0

    .line 346
    :catch_0
    move-exception p0

    .line 347
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 349
    :goto_0
    sget-object p0, Ld/a/g/i/t;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    .line 350
    :catch_1
    move-exception p0

    goto :goto_2

    .line 315
    :cond_5
    :goto_1
    return-object v0

    .line 351
    :goto_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 352
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 359
    const-string v0, ""

    if-eqz p0, :cond_8

    :try_start_0
    sget-boolean v1, Ld/a/g/i/t;->j:Z

    if-eqz v1, :cond_8

    invoke-static {p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 363
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ld/a/g/i/t;->c:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 364
    sget-object p0, Ld/a/g/i/t;->b:Ljava/lang/String;

    return-object p0

    .line 366
    :cond_1
    const-string v1, "com.baidu.input_huawei"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    return-object v0

    .line 369
    :cond_2
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v1

    .line 370
    sget-object v2, Ld/a/g/i/t;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    invoke-virtual {v1}, Ld/a/g/h/a;->x()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ld/a/g/i/t;->b:Ljava/lang/String;

    .line 372
    nop

    .line 5331
    iget-object v2, v1, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v5, "p_s_i_t_t"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 372
    sput-wide v5, Ld/a/g/i/t;->c:J

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Ld/a/g/i/t;->c:J

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_3

    .line 375
    sget-object p0, Ld/a/g/i/t;->b:Ljava/lang/String;

    return-object p0

    .line 379
    :cond_3
    invoke-static {p0}, Ld/a/g/i/s;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 380
    sget-object p0, Ld/a/g/i/t;->b:Ljava/lang/String;

    return-object p0

    .line 382
    :cond_4
    invoke-static {p0}, Ld/a/g/i/t;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 383
    sget-object p0, Ld/a/g/i/t;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    .line 386
    :cond_5
    nop

    .line 392
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_6

    .line 396
    const-string v2, "phone"

    .line 398
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 399
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 392
    :cond_6
    move-object p0, v0

    .line 402
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 403
    sput-object p0, Ld/a/g/i/t;->b:Ljava/lang/String;

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Ld/a/g/i/t;->c:J

    .line 405
    sget-object p0, Ld/a/g/i/t;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ld/a/g/h/a;->f(Ljava/lang/String;)V

    .line 406
    sget-wide v2, Ld/a/g/i/t;->c:J

    invoke-virtual {v1, v2, v3}, Ld/a/g/h/a;->e(J)V

    goto :goto_1

    .line 410
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Ld/a/g/i/t;->c:J

    .line 411
    sget-wide v2, Ld/a/g/i/t;->c:J

    invoke-virtual {v1, v2, v3}, Ld/a/g/h/a;->e(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    goto :goto_1

    .line 414
    :catch_0
    move-exception p0

    .line 415
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 417
    :goto_1
    sget-object p0, Ld/a/g/i/t;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    .line 418
    :catch_1
    move-exception p0

    goto :goto_3

    .line 360
    :cond_8
    :goto_2
    return-object v0

    .line 419
    :goto_3
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 420
    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 427
    const-string v0, ""

    if-eqz p0, :cond_5

    :try_start_0
    sget-boolean v1, Ld/a/g/i/t;->k:Z

    if-eqz v1, :cond_5

    .line 428
    invoke-static {p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 431
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ld/a/g/i/t;->e:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 432
    sget-object p0, Ld/a/g/i/t;->d:Ljava/lang/String;

    return-object p0

    .line 434
    :cond_1
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v1

    .line 435
    sget-object v2, Ld/a/g/i/t;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    invoke-virtual {v1}, Ld/a/g/h/a;->y()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ld/a/g/i/t;->d:Ljava/lang/String;

    .line 437
    nop

    .line 5374
    iget-object v2, v1, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v5, "p_s_a_i_t_t"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 437
    sput-wide v5, Ld/a/g/i/t;->e:J

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Ld/a/g/i/t;->e:J

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_2

    .line 439
    sget-object p0, Ld/a/g/i/t;->d:Ljava/lang/String;

    return-object p0

    .line 443
    :cond_2
    invoke-static {p0}, Ld/a/g/i/t;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 444
    sget-object p0, Ld/a/g/i/t;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    .line 456
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "android_id"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 459
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 460
    sput-object p0, Ld/a/g/i/t;->d:Ljava/lang/String;

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Ld/a/g/i/t;->e:J

    .line 462
    sget-object p0, Ld/a/g/i/t;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ld/a/g/h/a;->g(Ljava/lang/String;)V

    .line 463
    sget-wide v2, Ld/a/g/i/t;->e:J

    invoke-virtual {v1, v2, v3}, Ld/a/g/h/a;->f(J)V

    goto :goto_0

    .line 465
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Ld/a/g/i/t;->e:J

    .line 466
    sget-wide v2, Ld/a/g/i/t;->e:J

    invoke-virtual {v1, v2, v3}, Ld/a/g/h/a;->f(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 470
    goto :goto_0

    .line 468
    :catch_0
    move-exception p0

    .line 469
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 471
    :goto_0
    sget-object p0, Ld/a/g/i/t;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    .line 472
    :catch_1
    move-exception p0

    goto :goto_2

    .line 429
    :cond_5
    :goto_1
    return-object v0

    .line 473
    :goto_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 474
    return-object v0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 3

    .line 684
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 685
    return v0

    .line 688
    :cond_0
    sget-boolean v1, Ld/a/g/i/t;->p:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 689
    return v2

    .line 690
    :cond_1
    invoke-static {p0}, Ld/a/g/i/t;->k(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 693
    return v2

    .line 697
    :cond_2
    return v0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 4

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ld/a/g/i/t;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 185
    sget-boolean p0, Ld/a/g/i/t;->r:Z

    return p0

    .line 191
    :cond_0
    invoke-static {p0}, Ld/a/g/i/t;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ld/a/g/i/t;->n(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Ld/a/g/i/t;->r:Z

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ld/a/g/i/t;->s:J

    .line 193
    sget-boolean p0, Ld/a/g/i/t;->r:Z

    return p0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 1

    .line 198
    invoke-static {p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ld/a/g/i/t;->k(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 1

    .line 624
    :try_start_0
    const-string v0, "power"

    .line 625
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 626
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 627
    :catch_0
    move-exception p0

    .line 628
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 630
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 4

    .line 635
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 638
    if-eqz p0, :cond_1

    .line 639
    const-string v0, "activity"

    .line 640
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 642
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 644
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v2, :cond_0

    .line 647
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 648
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 649
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 650
    const/4 p0, 0x1

    return p0

    .line 653
    :cond_0
    goto :goto_0

    .line 657
    :cond_1
    goto :goto_1

    .line 655
    :catch_0
    move-exception p0

    .line 656
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 658
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
