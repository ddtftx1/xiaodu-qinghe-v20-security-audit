.class public final Ld/a/g/i/h;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# static fields
.field public static a:Lcom/baidu/sofire/jni/Asc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/baidu/sofire/jni/Asc;

    invoke-direct {v0}, Lcom/baidu/sofire/jni/Asc;-><init>()V

    sput-object v0, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;[B)I
    .locals 2

    .line 179
    const/4 v0, -0x1

    if-eqz p2, :cond_2

    :try_start_0
    array-length v1, p2

    if-lez v1, :cond_2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    sget-object v1, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    if-eqz v1, :cond_1

    .line 183
    sget-object v1, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, p2}, Lcom/baidu/sofire/jni/Asc;->df(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 187
    :cond_1
    goto :goto_0

    .line 185
    :catch_0
    move-exception p0

    .line 186
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 188
    :goto_0
    return v0

    .line 180
    :cond_2
    :goto_1
    return v0
.end method

.method public static a([B[B)[B
    .locals 2

    .line 104
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    array-length v1, p0

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    sget-object v1, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    if-eqz v1, :cond_1

    .line 110
    sget-object v1, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    invoke-virtual {v1, p1, p0}, Lcom/baidu/sofire/jni/Asc;->dc([B[B)[B

    move-result-object p0

    .line 114
    if-eqz p0, :cond_1

    array-length p1, p0

    if-lez p1, :cond_1

    .line 115
    return-object p0

    .line 120
    :cond_1
    goto :goto_1

    .line 105
    :cond_2
    :goto_0
    new-array p0, v0, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 118
    :catch_0
    move-exception p0

    .line 119
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 121
    :goto_1
    new-array p0, v0, [B

    return-object p0
.end method

.method public static a([B[BZ)[B
    .locals 2

    .line 37
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    array-length v1, p0

    if-lez v1, :cond_3

    if-eqz p1, :cond_3

    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    sget-object v1, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    if-eqz v1, :cond_2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    sget-object p2, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    invoke-virtual {p2, p1, p0}, Lcom/baidu/sofire/jni/Asc;->ac([B[B)[B

    move-result-object p0

    goto :goto_0

    .line 45
    :cond_1
    sget-object p2, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    invoke-virtual {p2, p1, p0}, Lcom/baidu/sofire/jni/Asc;->acn([B[B)[B

    move-result-object p0

    .line 47
    :goto_0
    if-eqz p0, :cond_2

    array-length p1, p0

    if-lez p1, :cond_2

    .line 48
    return-object p0

    .line 54
    :cond_2
    goto :goto_2

    .line 38
    :cond_3
    :goto_1
    new-array p0, v0, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 55
    :goto_2
    new-array p0, v0, [B

    return-object p0
.end method

.method public static b([B[B)[B
    .locals 2

    .line 193
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_2

    if-eqz p0, :cond_2

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    sget-object v1, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    if-eqz v1, :cond_1

    .line 197
    sget-object v1, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    invoke-virtual {v1, p0, p1}, Lcom/baidu/sofire/jni/Asc;->ar([B[B)[B

    move-result-object p0

    .line 198
    if-eqz p0, :cond_1

    array-length p1, p0

    if-lez p1, :cond_1

    .line 199
    return-object p0

    .line 205
    :cond_1
    goto :goto_1

    .line 194
    :cond_2
    :goto_0
    new-array p0, v0, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 202
    :catch_0
    move-exception p0

    .line 203
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 206
    :goto_1
    new-array p0, v0, [B

    return-object p0
.end method

.method public static c([B[B)[B
    .locals 2

    .line 211
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_2

    if-eqz p0, :cond_2

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    sget-object v1, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    if-eqz v1, :cond_1

    .line 215
    sget-object v1, Ld/a/g/i/h;->a:Lcom/baidu/sofire/jni/Asc;

    invoke-virtual {v1, p0, p1}, Lcom/baidu/sofire/jni/Asc;->dr([B[B)[B

    move-result-object p0

    .line 216
    if-eqz p0, :cond_1

    array-length p1, p0

    if-lez p1, :cond_1

    .line 217
    return-object p0

    .line 223
    :cond_1
    goto :goto_1

    .line 212
    :cond_2
    :goto_0
    new-array p0, v0, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 220
    :catch_0
    move-exception p0

    .line 221
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 224
    :goto_1
    new-array p0, v0, [B

    return-object p0
.end method
