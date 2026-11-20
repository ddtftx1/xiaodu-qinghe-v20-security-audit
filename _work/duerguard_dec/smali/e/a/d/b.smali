.class public final Le/a/d/b;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Le/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d/b$f;,
        Le/a/d/b$c;,
        Le/a/d/b$e;,
        Le/a/d/b$a;,
        Le/a/d/b$b;,
        Le/a/d/b$d;
    }
.end annotation


# instance fields
.field public final a:Le/C;

.field public final b:Le/a/b/f;

.field public final c:Lf/h;

.field public final d:Lf/g;

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>(Le/C;Le/a/b/f;Lf/h;Lf/g;)V
    .locals 2
    .param p1, "client"    # Le/C;
    .param p2, "streamAllocation"    # Le/a/b/f;
    .param p3, "source"    # Lf/h;
    .param p4, "sink"    # Lf/g;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Le/a/d/b;->e:I

    .line 87
    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Le/a/d/b;->f:J

    .line 91
    iput-object p1, p0, Le/a/d/b;->a:Le/C;

    .line 92
    iput-object p2, p0, Le/a/d/b;->b:Le/a/b/f;

    .line 93
    iput-object p3, p0, Le/a/d/b;->c:Lf/h;

    .line 94
    iput-object p4, p0, Le/a/d/b;->d:Lf/g;

    .line 95
    return-void
.end method


# virtual methods
.method public a(Z)Le/I$a;
    .locals 5
    .param p1, "expectContinue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget v0, p0, Le/a/d/b;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/a/d/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Le/a/d/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/l;->a(Ljava/lang/String;)Le/a/c/l;

    move-result-object v0

    .line 191
    .local v0, "statusLine":Le/a/c/l;
    new-instance v2, Le/I$a;

    invoke-direct {v2}, Le/I$a;-><init>()V

    iget-object v3, v0, Le/a/c/l;->a:Lokhttp3/Protocol;

    .line 192
    invoke-virtual {v2, v3}, Le/I$a;->a(Lokhttp3/Protocol;)Le/I$a;

    iget v3, v0, Le/a/c/l;->b:I

    .line 193
    invoke-virtual {v2, v3}, Le/I$a;->a(I)Le/I$a;

    iget-object v3, v0, Le/a/c/l;->c:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v3}, Le/I$a;->a(Ljava/lang/String;)Le/I$a;

    .line 195
    invoke-virtual {p0}, Le/a/d/b;->f()Le/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/I$a;->a(Le/x;)Le/I$a;

    .line 197
    .local v2, "responseBuilder":Le/I$a;
    const/16 v3, 0x64

    if-eqz p1, :cond_2

    iget v4, v0, Le/a/c/l;->b:I

    if-ne v4, v3, :cond_2

    .line 198
    const/4 v1, 0x0

    return-object v1

    .line 199
    :cond_2
    iget v4, v0, Le/a/c/l;->b:I

    if-ne v4, v3, :cond_3

    .line 200
    iput v1, p0, Le/a/d/b;->e:I

    .line 201
    return-object v2

    .line 204
    :cond_3
    const/4 v1, 0x4

    iput v1, p0, Le/a/d/b;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-object v2

    .line 206
    .end local v0    # "statusLine":Le/a/c/l;
    .end local v2    # "responseBuilder":Le/I$a;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/d/b;->b:Le/a/b/f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 210
    throw v1
.end method

.method public a(Le/I;)Le/K;
    .locals 7
    .param p1, "response"    # Le/I;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Le/a/d/b;->b:Le/a/b/f;

    iget-object v1, v0, Le/a/b/f;->f:Le/v;

    iget-object v0, v0, Le/a/b/f;->e:Le/f;

    invoke-virtual {v1, v0}, Le/v;->e(Le/f;)V

    .line 135
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Le/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {p1}, Le/a/c/f;->b(Le/I;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Le/a/d/b;->b(J)Lf/x;

    move-result-object v3

    .line 139
    .local v3, "source":Lf/x;
    new-instance v4, Le/a/c/i;

    invoke-static {v3}, Lf/q;->a(Lf/x;)Lf/h;

    move-result-object v5

    invoke-direct {v4, v0, v1, v2, v5}, Le/a/c/i;-><init>(Ljava/lang/String;JLf/h;)V

    return-object v4

    .line 142
    .end local v3    # "source":Lf/x;
    :cond_0
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Le/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p1}, Le/I;->r()Le/F;

    move-result-object v1

    invoke-virtual {v1}, Le/F;->g()Le/y;

    move-result-object v1

    invoke-virtual {p0, v1}, Le/a/d/b;->a(Le/y;)Lf/x;

    move-result-object v1

    .line 144
    .local v1, "source":Lf/x;
    new-instance v4, Le/a/c/i;

    invoke-static {v1}, Lf/q;->a(Lf/x;)Lf/h;

    move-result-object v5

    invoke-direct {v4, v0, v2, v3, v5}, Le/a/c/i;-><init>(Ljava/lang/String;JLf/h;)V

    return-object v4

    .line 147
    .end local v1    # "source":Lf/x;
    :cond_1
    invoke-static {p1}, Le/a/c/f;->a(Le/I;)J

    move-result-wide v4

    .line 148
    .local v4, "contentLength":J
    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {p0, v4, v5}, Le/a/d/b;->b(J)Lf/x;

    move-result-object v1

    .line 150
    .restart local v1    # "source":Lf/x;
    new-instance v2, Le/a/c/i;

    invoke-static {v1}, Lf/q;->a(Lf/x;)Lf/h;

    move-result-object v3

    invoke-direct {v2, v0, v4, v5, v3}, Le/a/c/i;-><init>(Ljava/lang/String;JLf/h;)V

    return-object v2

    .line 153
    .end local v1    # "source":Lf/x;
    :cond_2
    new-instance v1, Le/a/c/i;

    invoke-virtual {p0}, Le/a/d/b;->d()Lf/x;

    move-result-object v6

    invoke-static {v6}, Lf/q;->a(Lf/x;)Lf/h;

    move-result-object v6

    invoke-direct {v1, v0, v2, v3, v6}, Le/a/c/i;-><init>(Ljava/lang/String;JLf/h;)V

    return-object v1
.end method

.method public a(J)Lf/w;
    .locals 3
    .param p1, "contentLength"    # J

    .line 237
    iget v0, p0, Le/a/d/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 238
    const/4 v0, 0x2

    iput v0, p0, Le/a/d/b;->e:I

    .line 239
    new-instance v0, Le/a/d/b$d;

    invoke-direct {v0, p0, p1, p2}, Le/a/d/b$d;-><init>(Le/a/d/b;J)V

    return-object v0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/a/d/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Le/F;J)Lf/w;
    .locals 2
    .param p1, "request"    # Le/F;
    .param p2, "contentLength"    # J

    .line 98
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Le/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Le/a/d/b;->c()Lf/w;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0, p2, p3}, Le/a/d/b;->a(J)Lf/w;

    move-result-object v0

    return-object v0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Le/y;)Lf/x;
    .locals 3
    .param p1, "url"    # Le/y;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget v0, p0, Le/a/d/b;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 250
    const/4 v0, 0x5

    iput v0, p0, Le/a/d/b;->e:I

    .line 251
    new-instance v0, Le/a/d/b$c;

    invoke-direct {v0, p0, p1}, Le/a/d/b$c;-><init>(Le/a/d/b;Le/y;)V

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/a/d/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Le/a/d/b;->d:Lf/g;

    invoke-interface {v0}, Lf/g;->flush()V

    .line 167
    return-void
.end method

.method public a(Le/F;)V
    .locals 2
    .param p1, "request"    # Le/F;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Le/a/d/b;->b:Le/a/b/f;

    .line 129
    invoke-virtual {v0}, Le/a/b/f;->c()Le/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b/c;->e()Le/L;

    move-result-object v0

    invoke-virtual {v0}, Le/L;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 128
    invoke-static {p1, v0}, Le/a/c/j;->a(Le/F;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "requestLine":Ljava/lang/String;
    invoke-virtual {p1}, Le/F;->c()Le/x;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Le/a/d/b;->a(Le/x;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public a(Le/x;Ljava/lang/String;)V
    .locals 5
    .param p1, "headers"    # Le/x;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget v0, p0, Le/a/d/b;->e:I

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Le/a/d/b;->d:Lf/g;

    invoke-interface {v0, p2}, Lf/g;->a(Ljava/lang/String;)Lf/g;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lf/g;->a(Ljava/lang/String;)Lf/g;

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Le/x;->b()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 174
    iget-object v3, p0, Le/a/d/b;->d:Lf/g;

    invoke-virtual {p1, v0}, Le/x;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lf/g;->a(Ljava/lang/String;)Lf/g;

    move-result-object v3

    .line 175
    const-string v4, ": "

    invoke-interface {v3, v4}, Lf/g;->a(Ljava/lang/String;)Lf/g;

    move-result-object v3

    .line 176
    invoke-virtual {p1, v0}, Le/x;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lf/g;->a(Ljava/lang/String;)Lf/g;

    move-result-object v3

    .line 177
    invoke-interface {v3, v1}, Lf/g;->a(Ljava/lang/String;)Lf/g;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_0
    iget-object v0, p0, Le/a/d/b;->d:Lf/g;

    invoke-interface {v0, v1}, Lf/g;->a(Ljava/lang/String;)Lf/g;

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Le/a/d/b;->e:I

    .line 181
    return-void

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/a/d/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lf/k;)V
    .locals 2
    .param p1, "timeout"    # Lf/k;

    .line 268
    invoke-virtual {p1}, Lf/k;->g()Lf/z;

    move-result-object v0

    .line 269
    .local v0, "oldDelegate":Lf/z;
    sget-object v1, Lf/z;->a:Lf/z;

    invoke-virtual {p1, v1}, Lf/k;->a(Lf/z;)Lf/k;

    .line 270
    invoke-virtual {v0}, Lf/z;->a()Lf/z;

    .line 271
    invoke-virtual {v0}, Lf/z;->b()Lf/z;

    .line 272
    return-void
.end method

.method public b(J)Lf/x;
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget v0, p0, Le/a/d/b;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 244
    const/4 v0, 0x5

    iput v0, p0, Le/a/d/b;->e:I

    .line 245
    new-instance v0, Le/a/d/b$e;

    invoke-direct {v0, p0, p1, p2}, Le/a/d/b$e;-><init>(Le/a/d/b;J)V

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/a/d/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Le/a/d/b;->d:Lf/g;

    invoke-interface {v0}, Lf/g;->flush()V

    .line 163
    return-void
.end method

.method public c()Lf/w;
    .locals 3

    .line 231
    iget v0, p0, Le/a/d/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 232
    const/4 v0, 0x2

    iput v0, p0, Le/a/d/b;->e:I

    .line 233
    new-instance v0, Le/a/d/b$b;

    invoke-direct {v0, p0}, Le/a/d/b$b;-><init>(Le/a/d/b;)V

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/a/d/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 113
    iget-object v0, p0, Le/a/d/b;->b:Le/a/b/f;

    invoke-virtual {v0}, Le/a/b/f;->c()Le/a/b/c;

    move-result-object v0

    .line 114
    .local v0, "connection":Le/a/b/c;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/b/c;->a()V

    .line 115
    :cond_0
    return-void
.end method

.method public d()Lf/x;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget v0, p0, Le/a/d/b;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Le/a/d/b;->b:Le/a/b/f;

    if-eqz v0, :cond_0

    .line 257
    const/4 v1, 0x5

    iput v1, p0, Le/a/d/b;->e:I

    .line 258
    invoke-virtual {v0}, Le/a/b/f;->e()V

    .line 259
    new-instance v0, Le/a/d/b$f;

    invoke-direct {v0, p0}, Le/a/d/b$f;-><init>(Le/a/d/b;)V

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/a/d/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Le/a/d/b;->c:Lf/h;

    iget-wide v1, p0, Le/a/d/b;->f:J

    invoke-interface {v0, v1, v2}, Lf/h;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "line":Ljava/lang/String;
    iget-wide v1, p0, Le/a/d/b;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Le/a/d/b;->f:J

    .line 217
    return-object v0
.end method

.method public f()Le/x;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Le/x$a;

    invoke-direct {v0}, Le/x$a;-><init>()V

    .line 224
    .local v0, "headers":Le/x$a;
    :goto_0
    invoke-virtual {p0}, Le/a/d/b;->e()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    sget-object v1, Le/a/a;->a:Le/a/a;

    invoke-virtual {v1, v0, v2}, Le/a/a;->a(Le/x$a;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v2    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Le/x$a;->a()Le/x;

    move-result-object v1

    return-object v1
.end method
