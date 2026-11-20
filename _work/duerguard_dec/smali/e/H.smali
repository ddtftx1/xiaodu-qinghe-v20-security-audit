.class public abstract Le/H;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/A;Ljava/lang/String;)Le/H;
    .locals 3
    .param p0, "contentType"    # Le/A;
    .param p1, "content"    # Ljava/lang/String;

    .line 48
    sget-object v0, Le/a/e;->i:Ljava/nio/charset/Charset;

    .line 49
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Le/A;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    sget-object v0, Le/a/e;->i:Ljava/nio/charset/Charset;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/A;->b(Ljava/lang/String;)Le/A;

    move-result-object p0

    .line 56
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 57
    .local v1, "bytes":[B
    invoke-static {p0, v1}, Le/H;->a(Le/A;[B)Le/H;

    move-result-object v2

    return-object v2
.end method

.method public static a(Le/A;[B)Le/H;
    .locals 2
    .param p0, "contentType"    # Le/A;
    .param p1, "content"    # [B

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Le/H;->a(Le/A;[BII)Le/H;

    move-result-object v0

    return-object v0
.end method

.method public static a(Le/A;[BII)Le/H;
    .locals 7
    .param p0, "contentType"    # Le/A;
    .param p1, "content"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 86
    if-eqz p1, :cond_0

    .line 87
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Le/a/e;->a(JJJ)V

    .line 88
    new-instance v0, Le/G;

    invoke-direct {v0, p0, p3, p1, p2}, Le/G;-><init>(Le/A;I[BI)V

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract a()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lf/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()Le/A;
.end method
