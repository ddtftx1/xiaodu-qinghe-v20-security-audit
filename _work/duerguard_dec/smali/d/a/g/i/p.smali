.class public final Ld/a/g/i/p;
.super Ljava/lang/Object;
.source "NewUid.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, ""

    sput-object v0, Ld/a/g/i/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Ld/a/g/i/p;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ld/a/g/i/p;

    invoke-direct {v0}, Ld/a/g/i/p;-><init>()V

    .line 68
    invoke-static {p0}, Ld/a/g/i/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ld/a/g/i/p;->a:Ljava/lang/String;

    .line 70
    :cond_0
    sget-object p0, Ld/a/g/i/p;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 130
    :try_start_0
    invoke-static {p0}, Ld/a/g/i/t;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 133
    :cond_0
    const-string p0, ""

    return-object p0

    .line 135
    :catch_0
    move-exception p0

    .line 136
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 138
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 142
    nop

    .line 144
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    const/16 p0, 0x2000

    :try_start_1
    new-array p0, p0, [C

    .line 146
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 148
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    .line 149
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v3}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    nop

    .line 158
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 152
    :goto_1
    return-object p0

    .line 153
    :catch_1
    move-exception p0

    goto :goto_2

    .line 156
    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_5

    .line 153
    :catch_2
    move-exception p0

    move-object v1, v0

    .line 154
    :goto_2
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    if-eqz v1, :cond_1

    .line 158
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 161
    :goto_3
    goto :goto_4

    .line 159
    :catch_3
    move-exception p0

    .line 160
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_3

    .line 164
    :cond_1
    :goto_4
    return-object v0

    .line 156
    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v1, :cond_2

    .line 158
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 161
    goto :goto_6

    .line 159
    :catch_4
    move-exception v0

    .line 160
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 161
    :cond_2
    :goto_6
    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 185
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ld/a/g/i/t;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    nop

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    return p0

    .line 189
    :cond_0
    return v0

    .line 191
    :catch_0
    move-exception p0

    .line 192
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 194
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 31
    nop

    .line 32
    nop

    .line 33
    nop

    .line 34
    invoke-static {p0}, Ld/a/g/i/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 36
    nop

    .line 37
    invoke-static {p0}, Ld/a/g/i/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    nop

    .line 40
    invoke-static {p0}, Ld/a/g/i/p;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    nop

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/a/g/i/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    move-object v1, v0

    move v0, v2

    move v4, v0

    goto :goto_0

    .line 41
    :cond_0
    move-object v1, v0

    move v0, v2

    move v4, v3

    goto :goto_0

    .line 38
    :cond_1
    move-object v1, v0

    move v0, v3

    move v4, v0

    goto :goto_0

    .line 35
    :cond_2
    move-object v1, v0

    move v0, v3

    move v2, v0

    move v4, v2

    .line 48
    :goto_0
    if-nez v2, :cond_3

    invoke-static {p0}, Ld/a/g/i/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    :cond_3
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v1}, Ld/a/g/h/a;->d(Ljava/lang/String;)V

    .line 53
    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0}, Ld/a/g/i/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    :cond_5
    const-string v0, "com.q.zi.i"

    invoke-static {p0, v0, v1}, Ld/a/g/i/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    :cond_6
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Ld/a/g/i/p;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 58
    if-eqz v0, :cond_d

    if-nez v4, :cond_7

    .line 59
    invoke-static {p0}, Ld/a/g/i/p;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 60
    :cond_7
    nop

    .line 1198
    const/4 v0, 0x0

    .line 1200
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_8

    .line 1201
    goto/16 :goto_6

    .line 1203
    :cond_8
    invoke-static {p0}, Ld/a/g/i/t;->e(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 1204
    goto :goto_6

    .line 1206
    :cond_9
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v4, ".zp"

    invoke-direct {p0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1207
    new-instance v2, Ljava/io/File;

    const-string v4, ".icosc"

    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1209
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1210
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1211
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 1214
    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 1217
    :cond_b
    :goto_1
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1218
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p0}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1223
    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_4

    .line 1220
    :catch_0
    move-exception v0

    move-object v0, p0

    goto :goto_2

    .line 1223
    :catchall_1
    move-exception p0

    goto :goto_4

    .line 1220
    :catch_1
    move-exception p0

    .line 1221
    :goto_2
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1223
    if-eqz v0, :cond_d

    .line 1225
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 1228
    :goto_3
    goto :goto_6

    .line 1226
    :catch_2
    move-exception p0

    .line 1227
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_3

    .line 1223
    :goto_4
    if-eqz v0, :cond_c

    .line 1225
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 1228
    goto :goto_5

    .line 1226
    :catch_3
    move-exception v0

    .line 1227
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1228
    :cond_c
    :goto_5
    throw p0

    .line 62
    :cond_d
    :goto_6
    return-object v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 169
    nop

    .line 170
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    if-nez p0, :cond_0

    .line 172
    const/4 p0, 0x1

    return p0

    .line 174
    :cond_0
    return v0

    .line 176
    :catch_0
    move-exception p0

    .line 177
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 179
    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 79
    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ld/a/g/h/a;->o()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    return-object v1

    .line 84
    :cond_0
    nop

    .line 1640
    iget-object v1, p0, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    const-string v2, "rpnewuid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    nop

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    invoke-virtual {p0, v1}, Ld/a/g/h/a;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object v1

    .line 89
    :cond_1
    return-object v0

    .line 91
    :catch_0
    move-exception p0

    .line 92
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 94
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 100
    :try_start_0
    const-string v0, "com.q.zi.i"

    invoke-static {p0, v0}, Ld/a/g/i/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 101
    :catch_0
    move-exception p0

    .line 102
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 104
    const-string p0, ""

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 109
    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Ld/a/g/i/t;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    return-object v0

    .line 112
    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Ld/a/g/i/p;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    .line 113
    if-nez p0, :cond_1

    .line 114
    return-object v0

    .line 117
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".zp/.icosc"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    invoke-static {p0}, Ld/a/g/i/p;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 124
    :cond_2
    goto :goto_0

    .line 122
    :catch_0
    move-exception p0

    .line 123
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 125
    :goto_0
    return-object v0
.end method
