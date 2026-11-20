.class public final Ld/a/g/i/m;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 52
    const v0, 0x1d4c0

    iput v0, p0, Ld/a/g/i/m;->d:I

    .line 53
    iput v0, p0, Ld/a/g/i/m;->e:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/a/g/i/m;->f:Z

    .line 58
    iput-object p1, p0, Ld/a/g/i/m;->a:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static b(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 383
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 384
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 385
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 389
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 390
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 3

    .line 262
    iget-object v0, p0, Ld/a/g/i/m;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/c;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 263
    return-object v1

    .line 266
    :cond_0
    if-nez p1, :cond_1

    .line 267
    return-object v1

    .line 271
    :cond_1
    nop

    .line 272
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 273
    const-string v2, "gzip"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 274
    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/a/g/i/m;->f:Z

    goto :goto_0

    .line 276
    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/a/g/i/m;->f:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-object v0

    .line 280
    :catch_0
    move-exception p1

    .line 281
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 283
    return-object v1
.end method

.method public final a([BLjava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 202
    return-object v0

    .line 204
    :cond_0
    nop

    .line 206
    const/4 v1, 0x1

    const-string v2, "gzip"

    const/4 v3, 0x0

    const/16 v4, 0xc8

    if-nez p1, :cond_3

    .line 207
    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 208
    if-ne p1, v4, :cond_2

    .line 211
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 212
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    .line 213
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 214
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 215
    iput-boolean v1, p0, Ld/a/g/i/m;->f:Z

    goto :goto_0

    .line 217
    :cond_1
    iput-boolean v3, p0, Ld/a/g/i/m;->f:Z

    .line 219
    :goto_0
    return-object p1

    .line 209
    :cond_2
    new-instance p2, Landroid/accounts/NetworkErrorException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 222
    :cond_3
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 225
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 227
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 228
    if-ne p1, v4, :cond_5

    .line 231
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 232
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 233
    iput-boolean v1, p0, Ld/a/g/i/m;->f:Z

    goto :goto_1

    .line 235
    :cond_4
    iput-boolean v3, p0, Ld/a/g/i/m;->f:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/accounts/NetworkErrorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :goto_1
    nop

    .line 248
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 252
    goto :goto_2

    .line 250
    :catch_0
    move-exception p2

    .line 237
    :goto_2
    return-object p1

    .line 229
    :cond_5
    :try_start_3
    new-instance p2, Landroid/accounts/NetworkErrorException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/accounts/NetworkErrorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :catchall_0
    move-exception p1

    move-object v0, v5

    goto :goto_6

    .line 242
    :catch_1
    move-exception p1

    move-object v0, v5

    goto :goto_3

    .line 241
    :catch_2
    move-exception p1

    move-object v0, v5

    goto :goto_4

    .line 239
    :catch_3
    move-exception p1

    move-object v0, v5

    goto :goto_5

    .line 246
    :catchall_1
    move-exception p1

    goto :goto_6

    .line 242
    :catch_4
    move-exception p1

    .line 243
    :goto_3
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 244
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 241
    :catch_5
    move-exception p1

    :goto_4
    throw p1

    .line 239
    :catch_6
    move-exception p1

    :goto_5
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 247
    :goto_6
    if-eqz v0, :cond_6

    .line 248
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_7

    .line 250
    :catch_7
    move-exception p2

    goto :goto_8

    .line 252
    :cond_6
    :goto_7
    nop

    :goto_8
    throw p1
.end method

.method public final a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 298
    if-eqz p1, :cond_3

    .line 303
    :try_start_0
    invoke-static {p1}, Ld/a/g/i/m;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 304
    if-eqz p1, :cond_2

    .line 307
    iget-boolean v0, p0, Ld/a/g/i/m;->f:Z

    if-eqz v0, :cond_0

    .line 2042
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2043
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2045
    invoke-static {v0, p1}, Ld/a/g/i/j;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2046
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 2047
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2048
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2049
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    move-object p1, v1

    .line 310
    :cond_0
    if-eqz p1, :cond_1

    .line 311
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 313
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 305
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "responseBytes"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :catch_0
    move-exception p1

    .line 316
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 317
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 299
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "InputStream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 334
    invoke-static {}, Ld/a/g/i/x;->a()V

    .line 336
    :try_start_0
    iget-object v0, p0, Ld/a/g/i/m;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/t;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    nop

    .line 340
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Ld/a/g/i/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 343
    nop

    .line 345
    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {p0}, Ld/a/g/i/m;->a()Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 346
    :try_start_2
    invoke-virtual {p0, p2, v0}, Ld/a/g/i/m;->a([BLjava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1

    .line 347
    invoke-virtual {p0, p1}, Ld/a/g/i/m;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    nop

    .line 351
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 354
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 363
    :cond_0
    invoke-static {}, Ld/a/g/i/x;->b()V

    .line 361
    return-object p2

    .line 350
    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_0
    if-eqz p1, :cond_1

    .line 351
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 354
    :cond_1
    if-eqz v0, :cond_2

    .line 355
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 356
    :cond_2
    throw p2

    .line 337
    :cond_3
    new-instance p1, Landroid/accounts/NetworkErrorException;

    const-string p2, "Not allow background connect."

    invoke-direct {p1, p2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 363
    :catchall_2
    move-exception p1

    invoke-static {}, Ld/a/g/i/x;->b()V

    throw p1
.end method

.method public final a()Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Ld/a/g/i/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Ld/a/g/i/m;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 113
    iget-object v0, p0, Ld/a/g/i/m;->b:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a/g/i/m;->b:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iput-object v1, p0, Ld/a/g/i/m;->b:Ljava/lang/String;

    .line 117
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Ld/a/g/i/m;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x0

    .line 121
    nop

    .line 123
    iget-object v3, p0, Ld/a/g/i/m;->a:Landroid/content/Context;

    invoke-static {v3}, Ld/a/g/i/c;->e(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 124
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "http.proxyHost"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    const-string v6, "http.proxyPort"

    invoke-virtual {v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    goto :goto_1

    .line 131
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    goto :goto_1

    .line 132
    :catch_0
    move-exception v3

    .line 133
    goto :goto_0

    .line 123
    :cond_2
    move v4, v5

    .line 142
    :goto_1
    if-eqz v2, :cond_3

    if-lez v4, :cond_3

    .line 143
    invoke-static {v2, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v3, v4, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 146
    invoke-virtual {v0, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 147
    goto :goto_2

    .line 148
    :cond_3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 151
    :goto_2
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 1094
    :try_start_1
    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1098
    goto :goto_3

    .line 1096
    :catch_1
    move-exception v0

    .line 1097
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 154
    :cond_4
    :goto_3
    iget-object v0, p0, Ld/a/g/i/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 157
    iget-object v3, p0, Ld/a/g/i/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 158
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 161
    :cond_5
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 162
    iget v0, p0, Ld/a/g/i/m;->d:I

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 163
    iget v0, p0, Ld/a/g/i/m;->e:I

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 166
    iget-object v0, p0, Ld/a/g/i/m;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 167
    aget-object v0, v0, v5

    .line 170
    nop

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eos"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ld/a/g/i/m;->a:Landroid/content/Context;

    .line 173
    invoke-static {v0}, Ld/a/g/i/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/3.5.9.4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v1, "User-Agent"

    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "Pragma"

    const-string v1, "no-cache"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip,deflate"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "Accept-Language"

    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Ld/a/g/i/m;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/g/i/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-device-id"

    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v2

    .line 111
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Ld/a/g/i/m;->b:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Ld/a/g/i/m;->c:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public final a(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 4

    .line 493
    nop

    .line 494
    iget-boolean v0, p0, Ld/a/g/i/m;->f:Z

    if-eqz v0, :cond_0

    .line 496
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    move-object p1, v0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 502
    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 503
    return v0

    .line 505
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 507
    const/16 p2, 0x400

    :try_start_2
    new-array p2, p2, [B

    .line 508
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 509
    invoke-virtual {v2, p2, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 510
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 519
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 522
    goto :goto_2

    .line 520
    :catch_1
    move-exception p1

    .line 521
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 512
    :goto_2
    const/4 p1, 0x1

    return p1

    .line 517
    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    .line 513
    :catch_2
    move-exception p1

    move-object v1, v2

    goto :goto_3

    .line 517
    :catchall_1
    move-exception p1

    goto :goto_5

    .line 513
    :catch_3
    move-exception p1

    .line 514
    :goto_3
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 517
    if-eqz v1, :cond_3

    .line 519
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 522
    goto :goto_4

    .line 520
    :catch_4
    move-exception p1

    .line 521
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 515
    :cond_3
    :goto_4
    return v0

    .line 517
    :goto_5
    if-eqz v1, :cond_4

    .line 519
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 522
    goto :goto_6

    .line 520
    :catch_5
    move-exception p2

    .line 521
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 522
    :cond_4
    :goto_6
    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    .line 441
    invoke-static {}, Ld/a/g/i/x;->a()V

    .line 446
    :try_start_0
    iget-object v0, p0, Ld/a/g/i/m;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/c;->f(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 484
    invoke-static {}, Ld/a/g/i/x;->b()V

    .line 447
    return v1

    .line 450
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    .line 484
    invoke-static {}, Ld/a/g/i/x;->b()V

    .line 451
    return v1

    .line 453
    :cond_1
    :try_start_2
    iget-object v0, p0, Ld/a/g/i/m;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/t;->j(Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_2

    .line 484
    invoke-static {}, Ld/a/g/i/x;->b()V

    .line 454
    return v1

    .line 459
    :cond_2
    nop

    .line 460
    nop

    .line 462
    const/4 v0, 0x0

    :try_start_3
    const-string v2, "GET"

    invoke-virtual {p0, v2, p1}, Ld/a/g/i/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Ld/a/g/i/m;->a()Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 464
    :try_start_4
    invoke-virtual {p0, p1}, Ld/a/g/i/m;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 465
    invoke-virtual {p0, v0, p2}, Ld/a/g/i/m;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 471
    if-eqz v0, :cond_3

    .line 472
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 479
    :catch_0
    move-exception p1

    goto :goto_1

    .line 475
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 476
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 480
    :goto_1
    :try_start_6
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 481
    :cond_4
    :goto_2
    nop

    .line 484
    :goto_3
    invoke-static {}, Ld/a/g/i/x;->b()V

    .line 465
    return p2

    .line 466
    :catch_1
    move-exception p2

    goto :goto_4

    .line 470
    :catchall_0
    move-exception p2

    move-object p1, v0

    goto :goto_9

    .line 466
    :catch_2
    move-exception p1

    move-object p1, v0

    .line 467
    :goto_4
    :try_start_7
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 471
    if-eqz v0, :cond_5

    .line 472
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 479
    :catch_3
    move-exception p1

    goto :goto_6

    .line 475
    :cond_5
    :goto_5
    if-eqz p1, :cond_6

    .line 476
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_7

    .line 480
    :goto_6
    :try_start_9
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_8

    .line 481
    :cond_6
    :goto_7
    nop

    .line 484
    :goto_8
    invoke-static {}, Ld/a/g/i/x;->b()V

    .line 468
    return v1

    .line 470
    :catchall_1
    move-exception p2

    .line 471
    :goto_9
    if-eqz v0, :cond_7

    .line 472
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_a

    .line 479
    :catch_4
    move-exception p1

    goto :goto_b

    .line 475
    :cond_7
    :goto_a
    if-eqz p1, :cond_8

    .line 476
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_c

    .line 480
    :goto_b
    :try_start_b
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_d

    .line 481
    :cond_8
    :goto_c
    nop

    :goto_d
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 484
    :catchall_2
    move-exception p1

    invoke-static {}, Ld/a/g/i/x;->b()V

    throw p1
.end method
