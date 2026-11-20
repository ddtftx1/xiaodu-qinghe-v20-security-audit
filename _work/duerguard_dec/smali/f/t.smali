.class public final Lf/t;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lf/h;


# instance fields
.field public final a:Lf/f;

.field public final b:Lf/x;

.field public c:Z


# direct methods
.method public constructor <init>(Lf/x;)V
    .locals 2
    .param p1, "source"    # Lf/x;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    iput-object v0, p0, Lf/t;->a:Lf/f;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lf/t;->b:Lf/x;

    .line 35
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(B)J
    .locals 6
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lf/t;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .locals 13
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    move-object v0, p0

    iget-boolean v1, v0, Lf/t;->c:Z

    if-nez v1, :cond_5

    .line 342
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_4

    cmp-long v1, p4, p2

    if-ltz v1, :cond_4

    move-wide v7, p2

    .line 347
    .end local p2    # "fromIndex":J
    .local v7, "fromIndex":J
    :goto_0
    cmp-long v1, v7, p4

    const-wide/16 v9, -0x1

    if-gez v1, :cond_3

    .line 348
    iget-object v1, v0, Lf/t;->a:Lf/f;

    move v2, p1

    move-wide v3, v7

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lf/f;->a(BJJ)J

    move-result-wide v1

    .line 349
    .local v1, "result":J
    cmp-long v3, v1, v9

    if-eqz v3, :cond_0

    return-wide v1

    .line 353
    :cond_0
    iget-object v3, v0, Lf/t;->a:Lf/f;

    iget-wide v4, v3, Lf/f;->c:J

    .line 354
    .local v4, "lastBufferSize":J
    cmp-long v6, v4, p4

    if-gez v6, :cond_2

    iget-object v6, v0, Lf/t;->b:Lf/x;

    const-wide/16 v11, 0x2000

    invoke-interface {v6, v3, v11, v12}, Lf/x;->b(Lf/f;J)J

    move-result-wide v11

    cmp-long v3, v11, v9

    if-nez v3, :cond_1

    goto :goto_1

    .line 357
    :cond_1
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 358
    .end local v1    # "result":J
    .end local v4    # "lastBufferSize":J
    goto :goto_0

    .line 354
    .restart local v1    # "result":J
    .restart local v4    # "lastBufferSize":J
    :cond_2
    :goto_1
    return-wide v9

    .line 359
    .end local v1    # "result":J
    .end local v4    # "lastBufferSize":J
    :cond_3
    return-wide v9

    .line 343
    .end local v7    # "fromIndex":J
    .restart local p2    # "fromIndex":J
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 344
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "fromIndex=%s toIndex=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a()Lf/f;
    .locals 1

    .line 38
    iget-object v0, p0, Lf/t;->a:Lf/f;

    return-object v0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lf/t;->a:Lf/f;

    iget-object v1, p0, Lf/t;->b:Lf/x;

    invoke-virtual {v0, v1}, Lf/f;->a(Lf/x;)J

    .line 200
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(J)Lokio/ByteString;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1, p2}, Lf/t;->e(J)V

    .line 85
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0, p1, p2}, Lf/f;->a(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public a(JLokio/ByteString;)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-virtual {p3}, Lokio/ByteString;->e()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lf/t;->a(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public a(JLokio/ByteString;II)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    iget-boolean v0, p0, Lf/t;->c:Z

    if-nez v0, :cond_5

    .line 409
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    .line 412
    invoke-virtual {p3}, Lokio/ByteString;->e()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    .line 415
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_3

    .line 416
    int-to-long v2, v0

    add-long/2addr v2, p1

    .line 417
    .local v2, "bufferOffset":J
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lf/t;->c(J)Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    .line 418
    :cond_1
    iget-object v4, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v4, v2, v3}, Lf/f;->f(J)B

    move-result v4

    add-int v5, p4, v0

    invoke-virtual {p3, v5}, Lokio/ByteString;->a(I)B

    move-result v5

    if-eq v4, v5, :cond_2

    return v1

    .line 415
    .end local v2    # "bufferOffset":J
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 413
    :cond_4
    :goto_1
    return v1

    .line 407
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lf/f;J)J
    .locals 5
    .param p1, "sink"    # Lf/f;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    if-eqz p1, :cond_3

    .line 43
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 44
    iget-boolean v2, p0, Lf/t;->c:Z

    if-nez v2, :cond_1

    .line 46
    iget-object v2, p0, Lf/t;->a:Lf/f;

    iget-wide v3, v2, Lf/f;->c:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lf/t;->b:Lf/x;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lf/x;->b(Lf/f;J)J

    move-result-wide v0

    .line 48
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 51
    .end local v0    # "read":J
    :cond_0
    iget-object v0, p0, Lf/t;->a:Lf/f;

    iget-wide v0, v0, Lf/f;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 52
    .local v0, "toRead":J
    iget-object v2, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v2, p1, v0, v1}, Lf/f;->b(Lf/f;J)J

    move-result-wide v2

    return-wide v2

    .line 44
    .end local v0    # "toRead":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lf/z;
    .locals 1

    .line 473
    iget-object v0, p0, Lf/t;->b:Lf/x;

    invoke-interface {v0}, Lf/x;->b()Lf/z;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Ljava/lang/String;
    .locals 21
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_3

    .line 225
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, v7, v9

    const-wide/16 v11, 0x1

    if-nez v0, :cond_0

    move-wide v0, v9

    goto :goto_0

    :cond_0
    add-long v0, v7, v11

    :goto_0
    move-wide v13, v0

    .line 226
    .local v13, "scanLength":J
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Lf/t;->a(BJJ)J

    move-result-wide v0

    .line 227
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, v6, Lf/t;->a:Lf/f;

    invoke-virtual {v2, v0, v1}, Lf/f;->h(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 228
    :cond_1
    cmp-long v2, v13, v9

    if-gez v2, :cond_2

    .line 229
    invoke-virtual {v6, v13, v14}, Lf/t;->c(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v6, Lf/t;->a:Lf/f;

    sub-long v3, v13, v11

    invoke-virtual {v2, v3, v4}, Lf/f;->f(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    add-long/2addr v11, v13

    .line 230
    invoke-virtual {v6, v11, v12}, Lf/t;->c(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v6, Lf/t;->a:Lf/f;

    invoke-virtual {v2, v13, v14}, Lf/f;->f(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 231
    iget-object v2, v6, Lf/t;->a:Lf/f;

    invoke-virtual {v2, v13, v14}, Lf/f;->h(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 233
    :cond_2
    new-instance v16, Lf/f;

    invoke-direct/range {v16 .. v16}, Lf/f;-><init>()V

    .line 234
    .local v16, "data":Lf/f;
    iget-object v15, v6, Lf/t;->a:Lf/f;

    const-wide/16 v17, 0x0

    const-wide/16 v2, 0x20

    invoke-virtual {v15}, Lf/f;->size()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    invoke-virtual/range {v15 .. v20}, Lf/f;->a(Lf/f;JJ)Lf/f;

    .line 235
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\n not found: limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lf/t;->a:Lf/f;

    invoke-virtual {v4}, Lf/f;->size()J

    move-result-wide v4

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual/range {v16 .. v16}, Lf/f;->l()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2026

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    .end local v0    # "newline":J
    .end local v13    # "scanLength":J
    .end local v16    # "data":Lf/f;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lf/t;->c:Z

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/t;->b:Lf/x;

    iget-object v1, p0, Lf/t;->a:Lf/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lf/x;->b(Lf/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(J)Z
    .locals 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 66
    iget-boolean v0, p0, Lf/t;->c:Z

    if-nez v0, :cond_2

    .line 67
    :cond_0
    iget-object v0, p0, Lf/t;->a:Lf/f;

    iget-wide v1, v0, Lf/f;->c:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 68
    iget-object v1, p0, Lf/t;->b:Lf/x;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lf/x;->b(Lf/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 70
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-boolean v0, p0, Lf/t;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 467
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/t;->c:Z

    .line 468
    iget-object v0, p0, Lf/t;->b:Lf/x;

    invoke-interface {v0}, Lf/x;->close()V

    .line 469
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->i()V

    .line 470
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lf/t;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)[B
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1, p2}, Lf/t;->e(J)V

    .line 113
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0, p1, p2}, Lf/f;->d(J)[B

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lf/t;->e(J)V

    .line 271
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->e()I

    move-result v0

    return v0
.end method

.method public e(J)V
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lf/t;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public f()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lf/t;->e(J)V

    .line 261
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->f()S

    move-result v0

    return v0
.end method

.method public g()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lf/t;->e(J)V

    .line 305
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lf/t;->c(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 306
    iget-object v1, p0, Lf/t;->a:Lf/f;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lf/f;->f(J)B

    move-result v1

    .line 307
    .local v1, "b":B
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x66

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_3

    const/16 v2, 0x46

    if-le v1, v2, :cond_2

    goto :goto_1

    .line 305
    .end local v1    # "b":B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .restart local v1    # "b":B
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 310
    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 311
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 310
    const-string v4, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    .end local v0    # "pos":I
    .end local v1    # "b":B
    :cond_5
    :goto_2
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/io/InputStream;
    .locals 1

    .line 424
    new-instance v0, Lf/s;

    invoke-direct {v0, p0}, Lf/s;-><init>(Lf/t;)V

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lf/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "sink"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lf/t;->a:Lf/f;

    iget-wide v1, v0, Lf/f;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lf/t;->b:Lf/x;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lf/x;->b(Lf/f;J)J

    move-result-wide v0

    .line 151
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    return v2

    .line 154
    .end local v0    # "read":J
    :cond_0
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lf/t;->e(J)V

    .line 75
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->readByte()B

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 7
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lf/t;->e(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .line 133
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->readFully([B)V

    .line 134
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    .line 126
    .local v1, "offset":I
    :goto_0
    iget-object v2, p0, Lf/t;->a:Lf/f;

    iget-wide v3, v2, Lf/f;->c:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 127
    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Lf/f;->a([BII)I

    move-result v2

    .line 128
    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 129
    add-int/2addr v1, v2

    .line 130
    .end local v2    # "read":I
    goto :goto_0

    .line 128
    .restart local v2    # "read":I
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 131
    .end local v2    # "read":I
    :cond_1
    throw v0
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lf/t;->e(J)V

    .line 266
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lf/t;->e(J)V

    .line 256
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->readShort()S

    move-result v0

    return v0
.end method

.method public skip(J)V
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-boolean v0, p0, Lf/t;->c:Z

    if-nez v0, :cond_3

    .line 322
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 323
    iget-object v2, p0, Lf/t;->a:Lf/f;

    iget-wide v3, v2, Lf/f;->c:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/t;->b:Lf/x;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lf/x;->b(Lf/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 326
    :cond_1
    :goto_1
    iget-object v0, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 327
    .local v0, "toSkip":J
    iget-object v2, p0, Lf/t;->a:Lf/f;

    invoke-virtual {v2, v0, v1}, Lf/f;->skip(J)V

    .line 328
    sub-long/2addr p1, v0

    .line 329
    .end local v0    # "toSkip":J
    goto :goto_0

    .line 330
    :cond_2
    return-void

    .line 321
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/t;->b:Lf/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
