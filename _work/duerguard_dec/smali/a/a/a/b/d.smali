.class public La/a/a/b/d;
.super Ljava/lang/Object;
.source "HttpClient.java"


# instance fields
.field public final a:La/a/a/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, La/a/a/c/a;->a(Ljava/lang/String;)La/a/a/c/a;

    move-result-object p1

    iput-object p1, p0, La/a/a/b/d;->a:La/a/a/c/a;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 13

    .line 12
    iget-object v0, p0, La/a/a/b/d;->a:La/a/a/c/a;

    .line 13
    iget-object v1, v0, La/a/a/c/a;->d:La/a/a/c/b;

    .line 14
    iget v2, v0, La/a/a/c/a;->a:I

    if-lez v2, :cond_0

    .line 15
    move-object v3, v1

    check-cast v3, La/a/a/c/c;

    .line 16
    iput v2, v3, La/a/a/c/c;->f:I

    .line 17
    :cond_0
    iget v2, v0, La/a/a/c/a;->b:I

    if-lez v2, :cond_1

    .line 18
    move-object v3, v1

    check-cast v3, La/a/a/c/c;

    .line 19
    iput v2, v3, La/a/a/c/c;->g:I

    .line 20
    :cond_1
    iget-object v2, v0, La/a/a/c/a;->c:Ljava/lang/String;

    const-string v3, "UTF-8"

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 21
    move-object v5, v1

    check-cast v5, La/a/a/c/c;

    if-eqz v5, :cond_2

    .line 22
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v5, La/a/a/c/c;->b:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    nop

    .line 25
    throw v4

    .line 26
    :cond_3
    :goto_0
    iget-object v2, v0, La/a/a/c/a;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 27
    iget-object v6, v0, La/a/a/c/a;->e:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v7, v1

    check-cast v7, La/a/a/c/c;

    if-eqz v7, :cond_6

    .line 28
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    .line 31
    :cond_5
    iget-object v7, v7, La/a/a/c/c;->k:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    nop

    .line 32
    throw v4

    .line 33
    :cond_7
    check-cast v1, La/a/a/c/c;

    .line 34
    iget-object v0, v1, La/a/a/c/c;->h:Ljava/net/URL;

    .line 35
    iget-object v2, v1, La/a/a/c/c;->i:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v6, v2

    move-object v2, v0

    move v0, v5

    :goto_2
    add-int/lit8 v7, v0, 0x1

    const/4 v8, 0x5

    if-ge v0, v8, :cond_14

    .line 41
    iget-boolean v0, v1, La/a/a/c/c;->j:Z

    const-string v8, "Host"

    if-eqz v0, :cond_a

    .line 42
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 43
    invoke-virtual {v0, v8, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, v4

    goto :goto_3

    .line 47
    :cond_8
    sget-object v8, La/a/a/c/c;->a:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/HostnameVerifier;

    if-nez v8, :cond_9

    .line 49
    new-instance v8, La/a/a/c/c$a;

    invoke-direct {v8, v6}, La/a/a/c/c$a;-><init>(Ljava/lang/String;)V

    .line 50
    sget-object v9, La/a/a/c/c;->a:Ljava/util/Map;

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_9
    :goto_3
    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_4

    .line 54
    :cond_a
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 55
    invoke-virtual {v0, v8, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_4
    iget v6, v1, La/a/a/c/c;->f:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 59
    iget v6, v1, La/a/a/c/c;->g:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 60
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 64
    iget-object v6, v1, La/a/a/c/c;->k:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 68
    :cond_b
    iget-object v6, v1, La/a/a/c/c;->b:[B

    const/4 v8, 0x1

    if-eqz v6, :cond_d

    .line 69
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v6

    if-nez v6, :cond_c

    .line 70
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 72
    :cond_c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 73
    iget-object v9, v1, La/a/a/c/c;->b:[B

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 74
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 77
    :cond_d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 78
    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    .line 79
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v12, "httpCode=%d, redirect=%d"

    invoke-static {v11, v12, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11, v10}, La/a/a/b/e;->a(ILjava/lang/String;)V

    const/16 v10, 0x12d

    if-eq v6, v10, :cond_13

    const/16 v10, 0x12e

    if-eq v6, v10, :cond_13

    const/16 v10, 0x12f

    if-eq v6, v10, :cond_13

    const/16 v10, 0x133

    if-ne v6, v10, :cond_e

    goto :goto_a

    .line 80
    :cond_e
    :try_start_1
    iput-object v0, v1, La/a/a/c/c;->d:Ljava/net/HttpURLConnection;

    .line 81
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, v1, La/a/a/c/c;->e:Ljava/io/InputStream;

    const/4 v2, -0x1

    const/16 v4, 0x1000

    if-ne p1, v9, :cond_10

    .line 82
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    new-array v1, v4, [B

    .line 85
    :goto_6
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v2, :cond_f

    .line 86
    invoke-virtual {p1, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    .line 88
    :cond_f
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 89
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_9

    :cond_10
    if-ne p1, v8, :cond_12

    .line 90
    :try_start_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    new-array v4, v4, [B

    .line 93
    :goto_7
    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v2, :cond_11

    .line 94
    invoke-virtual {p1, v4, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_7

    :cond_11
    nop

    .line 96
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception p1

    .line 100
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string p2, ""

    .line 101
    :goto_8
    :try_start_4
    iput-object p2, v1, La/a/a/c/c;->c:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    .line 104
    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 107
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 110
    :cond_12
    :goto_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move v5, v6

    goto :goto_b

    :cond_13
    :goto_a
    nop

    .line 111
    const-string v6, "Location"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 113
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v2, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 116
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v5

    aput-object v2, v9, v8

    const-string v6, "location=%s,host=%s"

    invoke-static {v6, v9}, La/a/a/b/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v6, v2

    move v0, v7

    move-object v2, v10

    goto/16 :goto_2

    :cond_14
    nop

    :goto_b
    return v5
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, La/a/a/b/d;->a:La/a/a/c/a;

    .line 2
    iget-object v0, v0, La/a/a/c/a;->d:La/a/a/c/b;

    check-cast v0, La/a/a/c/c;

    .line 3
    iget-object v1, v0, La/a/a/c/c;->e:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    iget-object v0, v0, La/a/a/c/c;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void
.end method
