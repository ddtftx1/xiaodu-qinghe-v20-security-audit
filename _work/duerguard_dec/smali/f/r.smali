.class public final Lf/r;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lf/g;


# instance fields
.field public final a:Lf/f;

.field public final b:Lf/w;

.field public c:Z


# direct methods
.method public constructor <init>(Lf/w;)V
    .locals 2
    .param p1, "sink"    # Lf/w;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    iput-object v0, p0, Lf/r;->a:Lf/f;

    .line 30
    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lf/r;->b:Lf/w;

    .line 32
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lf/f;
    .locals 1

    .line 35
    iget-object v0, p0, Lf/r;->a:Lf/f;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lf/g;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lf/r;->c:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lf/r;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->a(Ljava/lang/String;)Lf/f;

    .line 54
    invoke-virtual {p0}, Lf/r;->c()Lf/g;

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lf/f;J)V
    .locals 2
    .param p1, "source"    # Lf/f;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lf/r;->c:Z

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lf/r;->a:Lf/f;

    invoke-virtual {v0, p1, p2, p3}, Lf/f;->a(Lf/f;J)V

    .line 42
    invoke-virtual {p0}, Lf/r;->c()Lf/g;

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lf/z;
    .locals 1

    .line 258
    iget-object v0, p0, Lf/r;->b:Lf/w;

    invoke-interface {v0}, Lf/w;->b()Lf/z;

    move-result-object v0

    return-object v0
.end method

.method public c()Lf/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lf/r;->c:Z

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lf/r;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->j()J

    move-result-wide v0

    .line 179
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lf/r;->b:Lf/w;

    iget-object v3, p0, Lf/r;->a:Lf/f;

    invoke-interface {v2, v3, v0, v1}, Lf/w;->a(Lf/f;J)V

    .line 180
    :cond_0
    return-object p0

    .line 177
    .end local v0    # "byteCount":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(J)Lf/g;
    .locals 2
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lf/r;->c:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lf/r;->a:Lf/f;

    invoke-virtual {v0, p1, p2}, Lf/f;->c(J)Lf/f;

    .line 173
    invoke-virtual {p0}, Lf/r;->c()Lf/g;

    return-object p0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-boolean v0, p0, Lf/r;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    .line 240
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v1, p0, Lf/r;->a:Lf/f;

    iget-wide v1, v1, Lf/f;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 241
    iget-object v1, p0, Lf/r;->b:Lf/w;

    iget-object v2, p0, Lf/r;->a:Lf/f;

    iget-object v3, p0, Lf/r;->a:Lf/f;

    iget-wide v3, v3, Lf/f;->c:J

    invoke-interface {v1, v2, v3, v4}, Lf/w;->a(Lf/f;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 248
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lf/r;->b:Lf/w;

    invoke-interface {v1}, Lf/w;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    goto :goto_1

    .line 249
    :catch_1
    move-exception v1

    .line 250
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 252
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lf/r;->c:Z

    .line 254
    if-nez v0, :cond_3

    .line 255
    return-void

    .line 254
    .end local v0    # "thrown":Ljava/lang/Throwable;
    .end local p0    # "this":Lf/r;
    :cond_3
    invoke-static {v0}, Lf/A;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Lf/r;->c:Z

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lf/r;->a:Lf/f;

    iget-wide v1, v0, Lf/f;->c:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 224
    iget-object v3, p0, Lf/r;->b:Lf/w;

    invoke-interface {v3, v0, v1, v2}, Lf/w;->a(Lf/f;J)V

    .line 226
    :cond_0
    iget-object v0, p0, Lf/r;->b:Lf/w;

    invoke-interface {v0}, Lf/w;->flush()V

    .line 227
    return-void

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lf/r;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/r;->b:Lf/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lf/r;->c:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lf/r;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 98
    .local v0, "result":I
    invoke-virtual {p0}, Lf/r;->c()Lf/g;

    .line 99
    return v0

    .line 96
    .end local v0    # "result":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)Lf/g;
    .locals 2
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lf/r;->c:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lf/r;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->write([B)Lf/f;

    .line 86
    invoke-virtual {p0}, Lf/r;->c()Lf/g;

    return-object p0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)Lf/g;
    .locals 2
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Lf/r;->c:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lf/r;->a:Lf/f;

    invoke-virtual {v0, p1, p2, p3}, Lf/f;->write([BII)Lf/f;

    .line 92
    invoke-virtual {p0}, Lf/r;->c()Lf/g;

    return-object p0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeByte(I)Lf/g;
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-boolean v0, p0, Lf/r;->c:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lf/r;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->writeByte(I)Lf/f;

    .line 125
    invoke-virtual {p0}, Lf/r;->c()Lf/g;

    return-object p0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeInt(I)Lf/g;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lf/r;->c:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lf/r;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->writeInt(I)Lf/f;

    .line 143
    invoke-virtual {p0}, Lf/r;->c()Lf/g;

    return-object p0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeShort(I)Lf/g;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lf/r;->c:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lf/r;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->writeShort(I)Lf/f;

    .line 131
    invoke-virtual {p0}, Lf/r;->c()Lf/g;

    return-object p0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
