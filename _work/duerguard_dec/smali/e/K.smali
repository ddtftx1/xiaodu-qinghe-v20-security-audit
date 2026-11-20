.class public abstract Le/K;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/A;JLf/h;)Le/K;
    .locals 2
    .param p0, "contentType"    # Le/A;
    .param p1, "contentLength"    # J
    .param p3, "content"    # Lf/h;

    .line 223
    if-eqz p3, :cond_0

    .line 224
    new-instance v0, Le/J;

    invoke-direct {v0, p0, p1, p2, p3}, Le/J;-><init>(Le/A;JLf/h;)V

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Le/A;[B)Le/K;
    .locals 3
    .param p0, "contentType"    # Le/A;
    .param p1, "content"    # [B

    .line 210
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    invoke-virtual {v0, p1}, Lf/f;->write([B)Lf/f;

    move-result-object v0

    .line 211
    .local v0, "buffer":Lf/f;
    array-length v1, p1

    int-to-long v1, v1

    invoke-static {p0, v1, v2, v0}, Le/K;->a(Le/A;JLf/h;)Le/K;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 188
    invoke-virtual {p0}, Le/K;->m()Lf/h;

    move-result-object v0

    invoke-static {v0}, Le/a/e;->a(Ljava/io/Closeable;)V

    .line 189
    return-void
.end method

.method public final i()Ljava/io/InputStream;
    .locals 1

    .line 116
    invoke-virtual {p0}, Le/K;->m()Lf/h;

    move-result-object v0

    invoke-interface {v0}, Lf/h;->h()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/nio/charset/Charset;
    .locals 2

    .line 183
    invoke-virtual {p0}, Le/K;->l()Le/A;

    move-result-object v0

    .line 184
    .local v0, "contentType":Le/A;
    if-eqz v0, :cond_0

    sget-object v1, Le/a/e;->i:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Le/A;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Le/a/e;->i:Ljava/nio/charset/Charset;

    :goto_0
    return-object v1
.end method

.method public abstract k()J
.end method

.method public abstract l()Le/A;
.end method

.method public abstract m()Lf/h;
.end method

.method public final n()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Le/K;->m()Lf/h;

    move-result-object v0

    .line 175
    .local v0, "source":Lf/h;
    :try_start_0
    invoke-virtual {p0}, Le/K;->j()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Le/a/e;->a(Lf/h;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 176
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-interface {v0, v1}, Lf/h;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v0}, Le/a/e;->a(Ljava/io/Closeable;)V

    .line 176
    return-object v2

    .line 178
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Le/a/e;->a(Ljava/io/Closeable;)V

    throw v1
.end method
