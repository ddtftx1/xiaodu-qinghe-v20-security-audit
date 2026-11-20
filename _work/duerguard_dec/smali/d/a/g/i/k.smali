.class public final Ld/a/g/i/k;
.super Ljava/lang/Object;
.source "GdUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/g/i/k$d;,
        Ld/a/g/i/k$b;,
        Ld/a/g/i/k$a;,
        Ld/a/g/i/k$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static d:Ld/a/g/i/k$c;


# instance fields
.field public e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    .line 49
    invoke-static {v2}, Ld/a/g/i/k$b;->a([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Ld/a/g/i/k;->a:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/String;

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    .line 52
    invoke-static {v1}, Ld/a/g/i/k$b;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Ld/a/g/i/k;->b:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ld/a/g/i/k;->a:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ld/a/g/i/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/a/g/i/k;->c:Ljava/lang/String;

    .line 53
    return-void

    :array_0
    .array-data 1
        0x4dt
        0x7at
        0x41t
        0x79t
        0x4dt
        0x54t
        0x49t
        0x78t
        0x4dt
        0x44t
        0x49t
        0x3dt
    .end array-data

    :array_1
    .array-data 1
        0x5at
        0x47t
        0x6ct
        0x6at
        0x64t
        0x57t
        0x52t
        0x70t
        0x59t
        0x57t
        0x49t
        0x3dt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Ld/a/g/i/k;->e:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 104
    :try_start_0
    invoke-static {p0}, Ld/a/g/i/k;->b(Landroid/content/Context;)Ld/a/g/i/k$c;

    move-result-object p0

    .line 105
    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0}, Ld/a/g/i/k$c;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 110
    :cond_0
    goto :goto_0

    .line 108
    :catch_0
    move-exception p0

    .line 109
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 111
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 77
    nop

    .line 79
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    const/16 p0, 0x2000

    :try_start_1
    new-array p0, p0, [C

    .line 81
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 83
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    .line 84
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v3}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    nop

    .line 93
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 87
    :goto_1
    return-object p0

    .line 88
    :catch_1
    move-exception p0

    goto :goto_2

    .line 91
    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_5

    .line 88
    :catch_2
    move-exception p0

    move-object v1, v0

    .line 89
    :goto_2
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    if-eqz v1, :cond_1

    .line 93
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 96
    :goto_3
    goto :goto_4

    .line 94
    :catch_3
    move-exception p0

    .line 95
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_3

    .line 99
    :cond_1
    :goto_4
    return-object v0

    .line 91
    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v1, :cond_2

    .line 93
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 96
    goto :goto_6

    .line 94
    :catch_4
    move-exception v0

    .line 95
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 96
    :cond_2
    :goto_6
    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ld/a/g/i/k$c;
    .locals 2

    const-class v0, Ld/a/g/i/k;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Ld/a/g/i/k;->d:Ld/a/g/i/k$c;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Ld/a/g/i/k;

    invoke-direct {v1, p0}, Ld/a/g/i/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ld/a/g/i/k;->a()Ld/a/g/i/k$c;

    move-result-object p0

    sput-object p0, Ld/a/g/i/k;->d:Ld/a/g/i/k$c;

    .line 118
    :cond_0
    sget-object p0, Ld/a/g/i/k;->d:Ld/a/g/i/k$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 114
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 282
    nop

    .line 283
    nop

    .line 2291
    const-string v0, "0"

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2292
    const-string v0, ""

    goto :goto_0

    .line 2294
    :cond_0
    nop

    .line 283
    :goto_0
    nop

    .line 284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    goto :goto_1

    .line 284
    :cond_1
    move-object p0, v0

    .line 287
    :goto_1
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 298
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 p0, 0x0

    return-object p0

    .line 302
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ld/a/g/i/k;->c:Ljava/lang/String;

    sget-object v2, Ld/a/g/i/k;->c:Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Ld/a/g/i/k$b;->a([B)[B

    move-result-object p0

    invoke-static {v1, v2, p0}, Ld/a/g/i/k$a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    return-object v0

    .line 304
    :catch_0
    move-exception p0

    .line 305
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 307
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final a()Ld/a/g/i/k$c;
    .locals 5

    .line 122
    nop

    .line 124
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ld/a/g/i/k;->e:Landroid/content/Context;

    .line 125
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "K5j7Snuat7HHCaEg62XaRa41Ukv_4vtSH9Z4FqXi1Fs="

    invoke-static {v3}, Ld/a/g/i/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    nop

    .line 128
    invoke-static {v1}, Ld/a/g/i/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/a/g/i/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/a/g/i/k$c;->a(Ljava/lang/String;)Ld/a/g/i/k$c;

    move-result-object v0

    .line 130
    :cond_0
    if-eqz v0, :cond_1

    .line 131
    return-object v0

    .line 134
    :cond_1
    const-string v1, "FLI7RPHK558lhmIMdK5V1-nh-gfSlVAFvUdffcjh8sgAXO2nb2l_YXWA6lX6geWt"

    .line 136
    invoke-static {v1}, Ld/a/g/i/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ld/a/g/i/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v1}, Ld/a/g/i/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Ld/a/g/i/k$c;->a(Ljava/lang/String;)Ld/a/g/i/k$c;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    return-object v0

    .line 141
    :cond_2
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 142
    nop

    .line 1311
    iget-object v2, p0, Ld/a/g/i/k;->e:Landroid/content/Context;

    .line 1312
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 1313
    if-nez v1, :cond_3

    .line 1314
    const/4 v1, 0x1

    goto :goto_0

    .line 1316
    :cond_3
    const/4 v1, 0x0

    .line 142
    :goto_0
    nop

    .line 143
    if-eqz v1, :cond_4

    .line 144
    invoke-virtual {p0}, Ld/a/g/i/k;->b()Ld/a/g/i/k$c;

    move-result-object v0

    .line 147
    :cond_4
    if-eqz v0, :cond_5

    .line 148
    return-object v0

    .line 151
    :cond_5
    invoke-virtual {p0}, Ld/a/g/i/k;->c()Ld/a/g/i/k$c;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_6

    .line 153
    return-object v0

    .line 156
    :cond_6
    if-eqz v1, :cond_7

    .line 157
    const-string v1, ""

    invoke-static {v1}, Ld/a/g/i/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p0, v1}, Ld/a/g/i/k;->b(Ljava/lang/String;)Ld/a/g/i/k$c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_7
    goto :goto_1

    .line 161
    :catch_0
    move-exception v1

    .line 162
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 164
    :goto_1
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 65
    :try_start_0
    iget-object v0, p0, Ld/a/g/i/k;->e:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/t;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Ld/a/g/i/k;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 68
    :cond_0
    const-string p1, ""

    return-object p1

    .line 70
    :catch_0
    move-exception p1

    .line 71
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 73
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Ld/a/g/i/k$c;
    .locals 5

    .line 170
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ld/a/g/i/k;->e:Landroid/content/Context;

    invoke-static {v1}, Ld/a/g/i/t;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    return-object v0

    .line 173
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_99uIeWLLYgYWnfdVm4xmTNMy58crLVzIq1_1xd6OaXaqNsyUOaKaQPHeL9hMa2J"

    .line 174
    invoke-static {v4}, Ld/a/g/i/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "idzo8hWEQF2c4tBTa5WOlQMU8UU8Wq-86X4X9ljayiU="

    .line 175
    invoke-static {v4}, Ld/a/g/i/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-static {v1}, Ld/a/g/i/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    .line 180
    :try_start_1
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ld/a/g/i/k;->c:Ljava/lang/String;

    sget-object v4, Ld/a/g/i/k;->c:Ljava/lang/String;

    .line 182
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ld/a/g/i/k$b;->a([B)[B

    move-result-object v1

    .line 181
    invoke-static {v3, v4, v1}, Ld/a/g/i/k$a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 180
    invoke-static {v2}, Ld/a/g/i/k$c;->a(Ljava/lang/String;)Ld/a/g/i/k$c;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 190
    :cond_1
    goto :goto_0

    .line 188
    :catch_1
    move-exception v1

    .line 189
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 191
    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ld/a/g/i/k$c;
    .locals 9

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    return-object v0

    .line 199
    :cond_0
    iget-object v2, p0, Ld/a/g/i/k;->e:Landroid/content/Context;

    invoke-static {v2}, Ld/a/g/i/t;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    return-object v0

    .line 202
    :cond_1
    const-string v2, ""

    .line 203
    new-instance v3, Ljava/io/File;

    .line 204
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    const-string v6, "u_lhldj5Nkwulw6YvIU2wr_ieZRcYQnQZ7zSlbUYnYY="

    invoke-static {v6}, Ld/a/g/i/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v7, "u2fjUEpcZJL7IE6RlBqIRmFJW_FjZrNApjdMKDgt7FM="

    invoke-static {v7}, Ld/a/g/i/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 208
    new-instance v3, Ljava/io/File;

    .line 209
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    const-string v8, "_99uIeWLLYgYWnfdVm4xmTNMy58crLVzIq1_1xd6OaXaqNsyUOaKaQPHeL9hMa2J"

    invoke-static {v8}, Ld/a/g/i/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {v7}, Ld/a/g/i/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 215
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 219
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 223
    new-instance v3, Ljava/lang/String;

    sget-object v5, Ld/a/g/i/k;->c:Ljava/lang/String;

    sget-object v6, Ld/a/g/i/k;->c:Ljava/lang/String;

    .line 225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Ld/a/g/i/k$b;->a([B)[B

    move-result-object v4

    .line 224
    invoke-static {v5, v6, v4}, Ld/a/g/i/k$a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 226
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 227
    if-eqz v3, :cond_6

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 228
    const/4 v4, 0x1

    if-eqz v1, :cond_4

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 229
    aget-object v2, v3, v4

    goto :goto_3

    .line 230
    :cond_4
    if-nez v1, :cond_6

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 232
    aget-object p1, v3, v4

    .line 234
    :cond_5
    aget-object v2, v3, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 237
    :catch_0
    move-exception v3

    goto :goto_2

    .line 239
    :cond_6
    :goto_1
    goto :goto_3

    .line 238
    :goto_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 240
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 241
    new-instance v0, Ld/a/g/i/k$c;

    invoke-direct {v0, v1}, Ld/a/g/i/k$c;-><init>(B)V

    .line 242
    iput-object v2, v0, Ld/a/g/i/k$c;->a:Ljava/lang/String;

    .line 243
    iput-object p1, v0, Ld/a/g/i/k$c;->b:Ljava/lang/String;

    .line 244
    return-object v0

    .line 246
    :cond_7
    return-object v0
.end method

.method public final c()Ld/a/g/i/k$c;
    .locals 4

    .line 251
    :try_start_0
    const-string v0, "FLI7RPHK558lhmIMdK5V18TV2libLOeHJlQPRa8lKBaxRs4pujQo1mXKtiCUFVkg"

    invoke-static {v0}, Ld/a/g/i/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/a/g/i/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string v1, "ARQJ8IArCy4jLSUJ6i4PbDdNue2ww1CwfUTDQn8F4ug="

    invoke-static {v1}, Ld/a/g/i/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ld/a/g/i/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    const-string v1, ""

    invoke-static {v1}, Ld/a/g/i/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    iget-object v0, p0, Ld/a/g/i/k;->e:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/t;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "q6R8gqLUgHDSsH6dbL27xN7Qr9sa0MxMqXTV66AWUUE="

    .line 259
    invoke-static {v3}, Ld/a/g/i/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 258
    invoke-static {v0}, Ld/a/g/i/k$d;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Ld/a/g/i/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    new-instance v2, Ld/a/g/i/k$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ld/a/g/i/k$c;-><init>(B)V

    .line 267
    iput-object v0, v2, Ld/a/g/i/k$c;->a:Ljava/lang/String;

    .line 268
    iput-object v1, v2, Ld/a/g/i/k$c;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-object v2

    .line 273
    :cond_2
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 274
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
