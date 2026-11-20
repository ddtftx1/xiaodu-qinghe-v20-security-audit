.class public abstract La/a/a/a/b;
.super Ljava/lang/Object;
.source "BaseCache.java"

# interfaces
.implements La/a/a/e/a;


# instance fields
.field public final a:Ljava/io/File;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/a/a/e/b;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "rpt_cache"

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, La/a/a/a/b;->a:Ljava/io/File;

    return-void
.end method

.method public static synthetic a(La/a/a/a/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, La/a/a/a/b;->b(Z)V

    return-void
.end method

.method private synthetic b(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, La/a/a/a/b;->b()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 12

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/b;->b:Ljava/lang/String;

    .line 32
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    const/4 v3, 0x0

    if-ne v1, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 35
    const-string v1, ""

    iput-object v1, p0, La/a/a/a/b;->b:Ljava/lang/String;

    .line 37
    :cond_1
    array-length v1, v0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_8

    .line 39
    aget-object v5, v0, v4

    if-nez p1, :cond_2

    add-int/lit8 v6, v1, -0x1

    if-ne v4, v6, :cond_2

    .line 43
    iput-object v5, p0, La/a/a/a/b;->b:Ljava/lang/String;

    goto/16 :goto_6

    .line 44
    :cond_2
    sget-object v6, La/a/a/f/a;->i:[B

    .line 45
    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    if-eqz v5, :cond_4

    .line 46
    array-length v8, v5

    if-eqz v8, :cond_4

    if-nez v6, :cond_3

    goto :goto_2

    .line 51
    :cond_3
    const/16 v8, 0x10

    :try_start_0
    new-array v9, v8, [B

    .line 52
    array-length v10, v5

    sub-int/2addr v10, v8

    new-array v10, v10, [B

    .line 56
    invoke-static {v5, v3, v9, v3, v8}, La/a/a/b/a;->a([BI[BII)V

    .line 57
    array-length v11, v5

    sub-int/2addr v11, v8

    invoke-static {v5, v8, v10, v3, v11}, La/a/a/b/a;->a([BI[BII)V

    const-string v5, "AES/CBC/PKCS7Padding"

    .line 59
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 60
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    invoke-direct {v8, v6, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 61
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, v7, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 63
    invoke-virtual {v5, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 64
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 66
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    const-string v6, ""

    .line 67
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x6

    .line 68
    const-string v6, "encrypt cache item error"

    invoke-static {v5, v6}, La/a/a/b/e;->a(ILjava/lang/String;)V

    goto :goto_5

    .line 69
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const v7, 0x8000

    if-le v5, v7, :cond_6

    .line 71
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v5, "cache is too large[%d], continued"

    invoke-static {v5, v6}, La/a/a/b/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 74
    :cond_6
    move-object v5, p0

    check-cast v5, La/a/a/b/b;

    .line 75
    monitor-enter v5

    .line 76
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const-string v9, "pushCache:%s"

    .line 81
    :try_start_2
    new-array v10, v2, [Ljava/lang/Object;

    aput-object v8, v10, v3

    invoke-static {v9, v10}, La/a/a/b/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget v8, v5, La/a/a/b/b;->g:I

    add-int/2addr v8, v7

    int-to-long v8, v8

    const-wide/32 v10, 0x8000

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 83
    invoke-virtual {v5}, La/a/a/b/b;->d()V

    .line 85
    :cond_7
    iget v8, v5, La/a/a/b/b;->g:I

    add-int/2addr v8, v7

    iput v8, v5, La/a/a/b/b;->g:I

    .line 86
    iget-object v7, v5, La/a/a/b/b;->d:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v5

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_8
    :goto_6
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 5

    .line 2
    const/4 v0, 0x5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, La/a/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, La/a/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 5
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, La/a/a/a/b;->a:Ljava/io/File;

    const-string v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_1

    const-wide/16 v3, 0x0

    .line 7
    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, La/a/a/a/b;->a:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    const-string p2, "UTF-8"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 23
    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    .line 17
    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 18
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    .line 19
    invoke-static {p2, p1}, La/a/a/b/e;->a(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_2

    .line 20
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 17
    :catch_2
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {v0, p1}, La/a/a/b/e;->a(ILjava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :catchall_2
    move-exception p1

    :goto_3
    if-eqz v1, :cond_3

    .line 24
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 26
    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {v0, p2}, La/a/a/b/e;->a(ILjava/lang/String;)V

    .line 28
    :cond_3
    :goto_4
    throw p1
.end method

.method public a(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, La/a/a/a/a;

    invoke-direct {v1, p0, p1}, La/a/a/a/a;-><init>(La/a/a/a/b;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .locals 7

    .line 2
    iget-object v0, p0, La/a/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 3
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "begin load cache file=%d"

    invoke-static {v4, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4, v3}, La/a/a/b/e;->a(ILjava/lang/String;)V

    const-wide/32 v3, 0x400000

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, La/a/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 6
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "cache file was corrupted,del=%b"

    invoke-static {v0, v1}, La/a/a/b/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, La/a/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x3

    .line 11
    const-string v1, "empty cache file"

    invoke-static {v0, v1}, La/a/a/b/e;->a(ILjava/lang/String;)V

    return-void

    :cond_2
    nop

    .line 12
    const-string v0, ""

    iput-object v0, p0, La/a/a/a/b;->b:Ljava/lang/String;

    .line 14
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, La/a/a/a/b;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 15
    const v1, 0x8000

    new-array v2, v1, [B

    .line 17
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_4

    if-eq v3, v1, :cond_3

    .line 19
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 21
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v3}, La/a/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 25
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report loadCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 26
    invoke-static {v1, v0}, La/a/a/b/e;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_2
    invoke-virtual {p0}, La/a/a/a/b;->a()V

    return-void

    :goto_3
    invoke-virtual {p0}, La/a/a/a/b;->a()V

    .line 28
    throw v0
.end method
