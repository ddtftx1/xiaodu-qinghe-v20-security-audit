.class public final Ld/a/g/h/b;
.super Ljava/lang/Object;
.source "SharedPreferencesEditorWarpper.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field public a:Landroid/content/SharedPreferences$Editor;

.field public b:Landroid/content/Context;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ld/a/g/h/b;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    .line 34
    iput p5, p0, Ld/a/g/h/b;->c:I

    .line 35
    iput-object p3, p0, Ld/a/g/h/b;->d:Ljava/lang/String;

    .line 36
    iput-boolean p4, p0, Ld/a/g/h/b;->e:Z

    .line 37
    iput-object p6, p0, Ld/a/g/h/b;->f:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 277
    :try_start_0
    const-string v0, "pref_name"

    iget-object v1, p0, Ld/a/g/h/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-boolean v0, p0, Ld/a/g/h/b;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "CallPreferences"

    if-eqz v0, :cond_1

    .line 280
    :try_start_1
    iget-object v0, p0, Ld/a/g/h/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Ld/a/g/h/b;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Ld/a/g/i/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 286
    :cond_0
    iget-object v0, p0, Ld/a/g/h/b;->b:Landroid/content/Context;

    iget-object v2, p0, Ld/a/g/h/b;->f:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Ld/a/g/i/v;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 292
    :cond_1
    iget-object v0, p0, Ld/a/g/h/b;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Ld/a/g/i/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 295
    :catch_0
    move-exception p1

    .line 296
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 298
    const/4 p1, 0x0

    return-object p1
.end method

.method public final apply()V
    .locals 2

    .line 257
    iget v0, p0, Ld/a/g/h/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ld/a/g/h/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/b;->f:Ljava/lang/String;

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    :cond_1
    return-void
.end method

.method public final clear()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This editor not allow to call clear."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final commit()Z
    .locals 2

    .line 244
    iget v0, p0, Ld/a/g/h/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ld/a/g/h/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/b;->f:Ljava/lang/String;

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    .line 251
    :cond_1
    return v1
.end method

.method public final putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 196
    :try_start_0
    iget v0, p0, Ld/a/g/h/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ld/a/g/h/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/b;->f:Ljava/lang/String;

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    :cond_0
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 200
    return-object p0

    .line 206
    :cond_1
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 211
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    const-string v1, "operation"

    const-string v2, "putBoolean"

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    invoke-virtual {p0, v0}, Ld/a/g/h/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_3
    goto :goto_0

    .line 224
    :catch_0
    move-exception p1

    .line 225
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 227
    :goto_0
    return-object p0
.end method

.method public final putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 159
    :try_start_0
    iget v0, p0, Ld/a/g/h/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ld/a/g/h/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/b;->f:Ljava/lang/String;

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    :cond_0
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 163
    return-object p0

    .line 169
    :cond_1
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 174
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    const-string v1, "operation"

    const-string v2, "putFloat"

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 185
    invoke-virtual {p0, v0}, Ld/a/g/h/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_3
    goto :goto_0

    .line 187
    :catch_0
    move-exception p1

    .line 188
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 190
    :goto_0
    return-object p0
.end method

.method public final putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 85
    :try_start_0
    iget v0, p0, Ld/a/g/h/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ld/a/g/h/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/b;->f:Ljava/lang/String;

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_0
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 89
    return-object p0

    .line 95
    :cond_1
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    const-string v1, "operation"

    const-string v2, "putInt"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p0, v0}, Ld/a/g/h/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_3
    goto :goto_0

    .line 113
    :catch_0
    move-exception p1

    .line 114
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 116
    :goto_0
    return-object p0
.end method

.method public final putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 122
    :try_start_0
    iget v0, p0, Ld/a/g/h/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ld/a/g/h/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/b;->f:Ljava/lang/String;

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    :cond_0
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 126
    return-object p0

    .line 132
    :cond_1
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 137
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    const-string v1, "operation"

    const-string v2, "putLong"

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string p1, "value"

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 148
    invoke-virtual {p0, v0}, Ld/a/g/h/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_3
    goto :goto_0

    .line 150
    :catch_0
    move-exception p1

    .line 151
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 153
    :goto_0
    return-object p0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 43
    :try_start_0
    iget v0, p0, Ld/a/g/h/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ld/a/g/h/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/g/h/b;->f:Ljava/lang/String;

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    :cond_0
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 47
    return-object p0

    .line 53
    :cond_1
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Ld/a/g/h/b;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v1, "operation"

    const-string v2, "putString"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v0}, Ld/a/g/h/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_3
    goto :goto_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 74
    :goto_0
    return-object p0
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 79
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This editor not allow to call putStringSet."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 232
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This editor not allow to call remove."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
