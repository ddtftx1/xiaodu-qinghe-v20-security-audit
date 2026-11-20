.class public final Ld/a/g/h/c;
.super Ljava/lang/Object;
.source "SharedPreferencesWarpper.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/Context;

.field public c:I

.field public d:Landroid/content/SharedPreferences$Editor;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 7

    .line 29
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Ld/a/g/h/c;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ZILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Ld/a/g/h/c;->b:Landroid/content/Context;

    .line 36
    iput p5, p0, Ld/a/g/h/c;->c:I

    .line 37
    iput-object p2, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    .line 38
    new-instance p5, Ld/a/g/h/b;

    if-eqz p2, :cond_0

    .line 39
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v2, p2

    iget v5, p0, Ld/a/g/h/c;->c:I

    move-object v0, p5

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ld/a/g/h/b;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;ZILjava/lang/String;)V

    iput-object p5, p0, Ld/a/g/h/c;->d:Landroid/content/SharedPreferences$Editor;

    .line 41
    iput-boolean p4, p0, Ld/a/g/h/c;->e:Z

    .line 42
    iput-object p3, p0, Ld/a/g/h/c;->f:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Ld/a/g/h/c;->g:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 285
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 286
    const-string v1, "operation"

    .line 287
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string p1, "pref_name"

    iget-object v1, p0, Ld/a/g/h/c;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string p1, "key"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string p1, "defult_value"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-boolean p1, p0, Ld/a/g/h/c;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "CallPreferences"

    if-eqz p1, :cond_1

    .line 297
    :try_start_1
    iget-object p1, p0, Ld/a/g/h/c;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Ld/a/g/h/c;->b:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Ld/a/g/i/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 303
    :cond_0
    iget-object p1, p0, Ld/a/g/h/c;->b:Landroid/content/Context;

    iget-object p3, p0, Ld/a/g/h/c;->g:Ljava/lang/String;

    invoke-static {p1, p2, v0, p3}, Ld/a/g/i/v;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 309
    :cond_1
    iget-object p1, p0, Ld/a/g/h/c;->b:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Ld/a/g/i/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 312
    :catch_0
    move-exception p1

    .line 313
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 315
    const/4 p1, 0x0

    return-object p1
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 1

    .line 241
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This preference not allow to call contains."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 246
    iget-object v0, p0, Ld/a/g/h/c;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 247
    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0

    .line 251
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This preference not allow to call getAll."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 205
    :try_start_0
    iget v0, p0, Ld/a/g/h/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ld/a/g/h/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/c;->g:Ljava/lang/String;

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    :cond_0
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 209
    return p2

    .line 215
    :cond_1
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 218
    :cond_2
    const-string v0, "getBoolean"

    .line 220
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p0, v0, p1, v1}, Ld/a/g/h/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 221
    if-eqz p1, :cond_3

    .line 226
    const-string v0, "result"

    .line 227
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    return p1

    .line 234
    :cond_3
    goto :goto_0

    .line 232
    :catch_0
    move-exception p1

    .line 233
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 235
    :goto_0
    return p2
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 169
    :try_start_0
    iget v0, p0, Ld/a/g/h/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ld/a/g/h/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/c;->g:Ljava/lang/String;

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :cond_0
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 173
    return p2

    .line 179
    :cond_1
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    .line 182
    :cond_2
    const-string v0, "getFloat"

    .line 184
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {p0, v0, p1, v1}, Ld/a/g/h/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 185
    if-eqz p1, :cond_3

    .line 190
    const-string v0, "result"

    .line 191
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    return p1

    .line 198
    :cond_3
    goto :goto_0

    .line 196
    :catch_0
    move-exception p1

    .line 197
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 199
    :goto_0
    return p2
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 2

    .line 97
    :try_start_0
    iget v0, p0, Ld/a/g/h/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ld/a/g/h/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/c;->g:Ljava/lang/String;

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    :cond_0
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 101
    return p2

    .line 107
    :cond_1
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 110
    :cond_2
    const-string v0, "getInt"

    .line 112
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p0, v0, p1, v1}, Ld/a/g/h/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 113
    if-eqz p1, :cond_3

    .line 118
    const-string v0, "result"

    .line 119
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return p1

    .line 126
    :cond_3
    goto :goto_0

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 127
    :goto_0
    return p2
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 2

    .line 133
    :try_start_0
    iget v0, p0, Ld/a/g/h/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ld/a/g/h/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/c;->g:Ljava/lang/String;

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    :cond_0
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 137
    return-wide p2

    .line 143
    :cond_1
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .line 146
    :cond_2
    const-string v0, "getLong"

    .line 148
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {p0, v0, p1, v1}, Ld/a/g/h/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 149
    if-eqz p1, :cond_3

    .line 154
    const-string v0, "result"

    .line 155
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-wide p1

    .line 162
    :cond_3
    goto :goto_0

    .line 160
    :catch_0
    move-exception p1

    .line 161
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 163
    :goto_0
    return-wide p2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 55
    :try_start_0
    iget v0, p0, Ld/a/g/h/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ld/a/g/h/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/c;->g:Ljava/lang/String;

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    :cond_0
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 59
    return-object p2

    .line 65
    :cond_1
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :cond_2
    const-string v0, "getString"

    .line 69
    invoke-virtual {p0, v0, p1, p2}, Ld/a/g/h/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 71
    if-eqz p1, :cond_3

    .line 76
    const-string v0, "result"

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-object p1

    .line 84
    :cond_3
    goto :goto_0

    .line 82
    :catch_0
    move-exception p1

    .line 83
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 85
    :goto_0
    return-object p2
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This preference not allow to call getStringSet."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 259
    :try_start_0
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    return-void

    .line 262
    :catch_0
    move-exception p1

    .line 263
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 265
    return-void
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 271
    :try_start_0
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Ld/a/g/h/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_0
    return-void

    .line 274
    :catch_0
    move-exception p1

    .line 275
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 277
    return-void
.end method
