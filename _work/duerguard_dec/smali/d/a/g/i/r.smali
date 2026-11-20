.class public Ld/a/g/i/r;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"


# static fields
.field public static final a:[B

.field public static b:Le/C;


# instance fields
.field public c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Ld/a/g/i/r;->a:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ld/a/g/i/r;->c:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.baidu.searchbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 203
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 202
    return p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 3

    .line 179
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 180
    return v0

    .line 182
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 186
    :goto_0
    sget-object p1, Ld/a/g/i/r;->a:[B

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 187
    sget-object v2, Ld/a/g/i/r;->a:[B

    invoke-virtual {v1, v2, v0, p1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 188
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 189
    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 192
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    const/4 p0, 0x1

    return p0

    .line 194
    :catch_0
    move-exception p0

    .line 195
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 198
    return v0
.end method


# virtual methods
.method public final a()Le/C;
    .locals 5

    .line 53
    sget-object v0, Ld/a/g/i/r;->b:Le/C;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Ld/a/g/i/r;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Ld/a/g/i/r;->b:Le/C;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Le/C$a;

    invoke-direct {v1}, Le/C$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    nop

    .line 1046
    :try_start_1
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v2}, Le/C$a;->a(Ljavax/net/ssl/HostnameVerifier;)Le/C$a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    goto :goto_0

    .line 1047
    :catch_0
    move-exception v2

    .line 1048
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 58
    :goto_0
    const-wide/32 v2, 0x1d4c0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Le/C$a;->a(JLjava/util/concurrent/TimeUnit;)Le/C$a;

    .line 59
    new-instance v2, Ld/a/g/i/q;

    invoke-direct {v2, p0}, Ld/a/g/i/q;-><init>(Ld/a/g/i/r;)V

    invoke-virtual {v1, v2}, Le/C$a;->a(Le/z;)Le/C$a;

    .line 73
    invoke-virtual {v1}, Le/C$a;->a()Le/C;

    move-result-object v1

    sput-object v1, Ld/a/g/i/r;->b:Le/C;

    .line 75
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 77
    :cond_1
    :goto_1
    sget-object v0, Ld/a/g/i/r;->b:Le/C;

    return-object v0
.end method

.method public final a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 116
    :try_start_0
    iget-object v0, p0, Ld/a/g/i/r;->c:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/t;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0, p1, p2}, Ld/a/g/i/r;->b(Ljava/lang/String;[B)Le/F;

    move-result-object p1

    .line 120
    invoke-virtual {p0}, Ld/a/g/i/r;->a()Le/C;

    move-result-object p2

    invoke-virtual {p2, p1}, Le/C;->a(Le/F;)Le/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, Le/E;

    :try_start_1
    invoke-virtual {p1}, Le/E;->c()Le/I;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Le/I;->k()I

    move-result p2

    .line 122
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 125
    invoke-virtual {p1}, Le/I;->i()Le/K;

    move-result-object p1

    invoke-virtual {p1}, Le/K;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :cond_0
    new-instance p1, Landroid/accounts/NetworkErrorException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_1
    new-instance p1, Landroid/accounts/NetworkErrorException;

    const-string p2, "Not allow background connect."

    invoke-direct {p1, p2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :catch_0
    move-exception p1

    .line 128
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 131
    const-string p1, ""

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 156
    :try_start_0
    iget-object v0, p0, Ld/a/g/i/r;->c:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/t;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Le/F$a;

    invoke-direct {v0}, Le/F$a;-><init>()V

    invoke-virtual {v0, p1}, Le/F$a;->b(Ljava/lang/String;)Le/F$a;

    invoke-virtual {v0}, Le/F$a;->a()Le/F;

    move-result-object p1

    .line 160
    invoke-virtual {p0}, Ld/a/g/i/r;->a()Le/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/C;->a(Le/F;)Le/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, Le/E;

    :try_start_1
    invoke-virtual {p1}, Le/E;->c()Le/I;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Le/I;->k()I

    move-result v0

    .line 162
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 165
    invoke-virtual {p1}, Le/I;->i()Le/K;

    move-result-object p1

    invoke-virtual {p1}, Le/K;->i()Ljava/io/InputStream;

    move-result-object p1

    .line 166
    invoke-static {p1, p2}, Ld/a/g/i/r;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p2

    .line 167
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 168
    return p2

    .line 163
    :cond_0
    new-instance p1, Landroid/accounts/NetworkErrorException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_1
    new-instance p1, Landroid/accounts/NetworkErrorException;

    const-string p2, "Not allow background connect."

    invoke-direct {p1, p2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :catch_0
    move-exception p1

    .line 171
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 174
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;[B)Le/F;
    .locals 5

    .line 82
    const-string v0, "/"

    :try_start_0
    const-string v1, "application/x-www-form-urlencoded; charset=utf-8"

    .line 83
    invoke-static {v1}, Le/A;->b(Ljava/lang/String;)Le/A;

    move-result-object v1

    .line 86
    iget-object v2, p0, Ld/a/g/i/r;->c:Landroid/content/Context;

    invoke-static {v2}, Ld/a/g/i/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 90
    const-string v3, "eos"

    .line 93
    new-instance v4, Le/F$a;

    invoke-direct {v4}, Le/F$a;-><init>()V

    invoke-virtual {v4, p1}, Le/F$a;->b(Ljava/lang/String;)Le/F$a;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    invoke-static {v1, p2}, Le/H;->a(Le/A;[B)Le/H;

    move-result-object p1

    invoke-virtual {v4, p1}, Le/F$a;->a(Le/H;)Le/F$a;

    .line 98
    :cond_0
    const-string p1, "User-Agent"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ld/a/g/i/r;->c:Landroid/content/Context;

    .line 99
    invoke-static {v0}, Ld/a/g/i/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/3.5.9.4"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-virtual {v4, p1, p2}, Le/F$a;->a(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    const-string p1, "Pragma"

    const-string p2, "no-cache"

    .line 101
    invoke-virtual {v4, p1, p2}, Le/F$a;->a(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    const-string p1, "Accept"

    const-string p2, "*/*"

    .line 102
    invoke-virtual {v4, p1, p2}, Le/F$a;->a(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    const-string p1, "Accept-Language"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {v4, p1, p2}, Le/F$a;->a(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    const-string p1, "x-device-id"

    iget-object p2, p0, Ld/a/g/i/r;->c:Landroid/content/Context;

    .line 105
    invoke-static {p2}, Ld/a/g/i/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ld/a/g/i/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Le/F$a;->a(Ljava/lang/String;Ljava/lang/String;)Le/F$a;

    .line 106
    invoke-virtual {v4}, Le/F$a;->a()Le/F;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-object p1

    .line 108
    :catch_0
    move-exception p1

    .line 109
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 111
    const/4 p1, 0x0

    return-object p1
.end method
