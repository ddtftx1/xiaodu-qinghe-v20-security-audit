.class public final Ld/a/a/e;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "a"

    const-string v11, "b"

    const-string v12, "c"

    const-string v13, "d"

    const-string v14, "e"

    const-string v15, "f"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/a/a/e;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # B

    .line 40
    move v0, p0

    .line 41
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 42
    add-int/lit16 v0, v0, 0x100

    .line 44
    :cond_0
    div-int/lit8 v1, v0, 0x10

    .line 45
    .local v1, "d1":I
    rem-int/lit8 v2, v0, 0x10

    .line 46
    .local v2, "d2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ld/a/a/e;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ld/a/a/e;->a:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .line 87
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 92
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 93
    .local v2, "md":Ljava/security/MessageDigest;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 94
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 95
    .local v3, "buffer":[B
    const/4 v4, -0x1

    move v5, v4

    .line 96
    .local v5, "length":I
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v5, v6

    if-eq v6, v4, :cond_1

    .line 97
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Ld/a/a/e;->b([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {v1}, Ld/a/a/f;->a(Ljava/io/Closeable;)V

    .line 99
    return-object v0

    .line 104
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "buffer":[B
    .end local v5    # "length":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    nop

    .line 104
    invoke-static {v1}, Ld/a/a/f;->a(Ljava/io/Closeable;)V

    .line 102
    return-object v0

    .line 104
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v1}, Ld/a/a/f;->a(Ljava/io/Closeable;)V

    .line 105
    throw v0

    .line 88
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "origin"    # Ljava/lang/String;

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    .local v0, "resultString":Ljava/lang/String;
    move-object v0, p0

    .line 64
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 65
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Ld/a/a/e;->a([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 68
    .end local v1    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, "resultSb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 52
    aget-byte v2, p0, v1

    invoke-static {v2}, Ld/a/a/e;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static b([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .line 124
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 126
    .local v0, "hexDigits":[C
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 127
    .local v1, "temp":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 128
    aget-byte v3, p0, v2

    .line 129
    .local v3, "b":B
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 130
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 127
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
