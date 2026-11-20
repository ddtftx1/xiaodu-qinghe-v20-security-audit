.class public final Ld/a/g/i/b;
.super Ljava/lang/Object;
.source "CertUtil.java"


# direct methods
.method public static a(Landroid/content/pm/Signature;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 49
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 51
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    .line 53
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 10

    .line 63
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    return-object v0

    .line 67
    :cond_0
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 68
    nop

    .line 69
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    move-object v3, v0

    .line 72
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    .line 73
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 74
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 77
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 78
    const-string v7, "META-INF/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    invoke-static {v2, v4, v1}, Ld/a/g/i/b;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 85
    if-eqz v4, :cond_9

    array-length v6, v4

    if-gtz v6, :cond_2

    goto :goto_5

    .line 88
    :cond_2
    if-nez v3, :cond_3

    .line 89
    move-object v3, v4

    goto :goto_0

    .line 91
    :cond_3
    move v6, v5

    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_8

    .line 92
    nop

    .line 93
    move v7, v5

    :goto_2
    array-length v8, v4

    if-ge v7, v8, :cond_5

    .line 94
    aget-object v8, v3, v6

    if-eqz v8, :cond_4

    aget-object v8, v3, v6

    aget-object v9, v4, v7

    .line 95
    invoke-virtual {v8, v9}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 96
    nop

    .line 97
    const/4 v7, 0x1

    goto :goto_3

    .line 93
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move v7, v5

    .line 100
    :goto_3
    if-eqz v7, :cond_7

    array-length v7, v3

    array-length v8, v4

    if-eq v7, v8, :cond_6

    goto :goto_4

    .line 91
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 101
    :cond_7
    :goto_4
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 102
    return-object v0

    .line 106
    :cond_8
    goto :goto_0

    .line 86
    :cond_9
    :goto_5
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 87
    return-object v0

    .line 108
    :cond_a
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 110
    if-eqz v3, :cond_b

    array-length p0, v3

    if-lez p0, :cond_b

    .line 111
    aget-object p0, v3, v5

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-object p0

    .line 114
    :cond_b
    return-object v0

    .line 117
    :catch_0
    move-exception p0

    .line 118
    return-object v0
.end method

.method public static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 3

    .line 25
    nop

    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :cond_0
    const/16 p0, 0x2000

    :try_start_1
    invoke-virtual {v2, p2, v0, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 33
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-array p0, v0, [Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    goto :goto_1

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 33
    :goto_1
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_5

    .line 34
    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_2

    .line 37
    :catchall_1
    move-exception p0

    goto :goto_5

    .line 34
    :catch_2
    move-exception p0

    .line 35
    :goto_2
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    if-eqz v1, :cond_2

    .line 39
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 42
    :goto_3
    goto :goto_4

    .line 40
    :catch_3
    move-exception p0

    .line 41
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_3

    .line 45
    :cond_2
    :goto_4
    new-array p0, v0, [Ljava/security/cert/Certificate;

    return-object p0

    .line 37
    :goto_5
    if-eqz v1, :cond_3

    .line 39
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 42
    goto :goto_6

    .line 40
    :catch_4
    move-exception p1

    .line 41
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 42
    :cond_3
    :goto_6
    throw p0
.end method
