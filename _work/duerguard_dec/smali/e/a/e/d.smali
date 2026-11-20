.class public final Le/a/e/d;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Le/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Le/z$a;

.field public final d:Le/a/b/f;

.field public final e:Le/a/e/k;

.field public f:Le/a/e/q;

.field public final g:Lokhttp3/Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 69
    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/e;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/e/d;->a:Ljava/util/List;

    .line 82
    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/e;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/e/d;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Le/C;Le/z$a;Le/a/b/f;Le/a/e/k;)V
    .locals 2
    .param p1, "client"    # Le/C;
    .param p2, "chain"    # Le/z$a;
    .param p3, "streamAllocation"    # Le/a/b/f;
    .param p4, "connection"    # Le/a/e/k;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Le/a/e/d;->c:Le/z$a;

    .line 101
    iput-object p3, p0, Le/a/e/d;->d:Le/a/b/f;

    .line 102
    iput-object p4, p0, Le/a/e/d;->e:Le/a/e/k;

    .line 103
    invoke-virtual {p1}, Le/C;->r()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->e:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lokhttp3/Protocol;->e:Lokhttp3/Protocol;

    goto :goto_0

    .line 105
    :cond_0
    sget-object v0, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    :goto_0
    iput-object v0, p0, Le/a/e/d;->g:Lokhttp3/Protocol;

    .line 106
    return-void
.end method

.method public static a(Le/x;Lokhttp3/Protocol;)Le/I$a;
    .locals 8
    .param p0, "headerBlock"    # Le/x;
    .param p1, "protocol"    # Lokhttp3/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "statusLine":Le/a/c/l;
    new-instance v1, Le/x$a;

    invoke-direct {v1}, Le/x$a;-><init>()V

    .line 165
    .local v1, "headersBuilder":Le/x$a;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Le/x;->b()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 166
    invoke-virtual {p0, v2}, Le/x;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Le/x;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "value":Ljava/lang/String;
    const-string v6, ":status"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP/1.1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Le/a/c/l;->a(Ljava/lang/String;)Le/a/c/l;

    move-result-object v0

    goto :goto_1

    .line 170
    :cond_0
    sget-object v6, Le/a/e/d;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    sget-object v6, Le/a/a;->a:Le/a/a;

    invoke-virtual {v6, v1, v4, v5}, Le/a/a;->a(Le/x$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    if-eqz v0, :cond_3

    .line 176
    new-instance v2, Le/I$a;

    invoke-direct {v2}, Le/I$a;-><init>()V

    .line 177
    invoke-virtual {v2, p1}, Le/I$a;->a(Lokhttp3/Protocol;)Le/I$a;

    iget v3, v0, Le/a/c/l;->b:I

    .line 178
    invoke-virtual {v2, v3}, Le/I$a;->a(I)Le/I$a;

    iget-object v3, v0, Le/a/c/l;->c:Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v3}, Le/I$a;->a(Ljava/lang/String;)Le/I$a;

    .line 180
    invoke-virtual {v1}, Le/x$a;->a()Le/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/I$a;->a(Le/x;)Le/I$a;

    .line 176
    return-object v2

    .line 174
    :cond_3
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Expected \':status\' header not present"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static b(Le/F;)Ljava/util/List;
    .locals 8
    .param p0, "request"    # Le/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/F;",
            ")",
            "Ljava/util/List<",
            "Le/a/e/a;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Le/F;->c()Le/x;

    move-result-object v0

    .line 141
    .local v0, "headers":Le/x;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Le/x;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    new-instance v2, Le/a/e/a;

    sget-object v3, Le/a/e/a;->c:Lokio/ByteString;

    invoke-virtual {p0}, Le/F;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le/a/e/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v2, Le/a/e/a;

    sget-object v3, Le/a/e/a;->d:Lokio/ByteString;

    invoke-virtual {p0}, Le/F;->g()Le/y;

    move-result-object v4

    invoke-static {v4}, Le/a/c/j;->a(Le/y;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le/a/e/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v2, "Host"

    invoke-virtual {p0, v2}, Le/F;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "host":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 146
    new-instance v3, Le/a/e/a;

    sget-object v4, Le/a/e/a;->f:Lokio/ByteString;

    invoke-direct {v3, v4, v2}, Le/a/e/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    new-instance v3, Le/a/e/a;

    sget-object v4, Le/a/e/a;->e:Lokio/ByteString;

    invoke-virtual {p0}, Le/F;->g()Le/y;

    move-result-object v5

    invoke-virtual {v5}, Le/y;->m()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Le/a/e/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Le/x;->b()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 152
    invoke-virtual {v0, v3}, Le/x;->a(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokio/ByteString;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    .line 153
    .local v5, "name":Lokio/ByteString;
    sget-object v6, Le/a/e/d;->a:Ljava/util/List;

    invoke-virtual {v5}, Lokio/ByteString;->h()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 154
    new-instance v6, Le/a/e/a;

    invoke-virtual {v0, v3}, Le/x;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Le/a/e/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v5    # "name":Lokio/ByteString;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public a(Z)Le/I$a;
    .locals 4
    .param p1, "expectContinue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Le/a/e/d;->f:Le/a/e/q;

    invoke-virtual {v0}, Le/a/e/q;->j()Le/x;

    move-result-object v0

    .line 132
    .local v0, "headers":Le/x;
    iget-object v1, p0, Le/a/e/d;->g:Lokhttp3/Protocol;

    invoke-static {v0, v1}, Le/a/e/d;->a(Le/x;Lokhttp3/Protocol;)Le/I$a;

    move-result-object v1

    .line 133
    .local v1, "responseBuilder":Le/I$a;
    if-eqz p1, :cond_0

    sget-object v2, Le/a/a;->a:Le/a/a;

    invoke-virtual {v2, v1}, Le/a/a;->a(Le/I$a;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 134
    const/4 v2, 0x0

    return-object v2

    .line 136
    :cond_0
    return-object v1
.end method

.method public a(Le/I;)Le/K;
    .locals 6
    .param p1, "response"    # Le/I;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Le/a/e/d;->d:Le/a/b/f;

    iget-object v1, v0, Le/a/b/f;->f:Le/v;

    iget-object v0, v0, Le/a/b/f;->e:Le/f;

    invoke-virtual {v1, v0}, Le/v;->e(Le/f;)V

    .line 185
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Le/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {p1}, Le/a/c/f;->a(Le/I;)J

    move-result-wide v1

    .line 187
    .local v1, "contentLength":J
    new-instance v3, Le/a/e/d$a;

    iget-object v4, p0, Le/a/e/d;->f:Le/a/e/q;

    invoke-virtual {v4}, Le/a/e/q;->e()Lf/x;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Le/a/e/d$a;-><init>(Le/a/e/d;Lf/x;)V

    .line 188
    .local v3, "source":Lf/x;
    new-instance v4, Le/a/c/i;

    invoke-static {v3}, Lf/q;->a(Lf/x;)Lf/h;

    move-result-object v5

    invoke-direct {v4, v0, v1, v2, v5}, Le/a/c/i;-><init>(Ljava/lang/String;JLf/h;)V

    return-object v4
.end method

.method public a(Le/F;J)Lf/w;
    .locals 1
    .param p1, "request"    # Le/F;
    .param p2, "contentLength"    # J

    .line 109
    iget-object v0, p0, Le/a/e/d;->f:Le/a/e/q;

    invoke-virtual {v0}, Le/a/e/q;->d()Lf/w;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Le/a/e/d;->f:Le/a/e/q;

    invoke-virtual {v0}, Le/a/e/q;->d()Lf/w;

    move-result-object v0

    invoke-interface {v0}, Lf/w;->close()V

    .line 128
    return-void
.end method

.method public a(Le/F;)V
    .locals 6
    .param p1, "request"    # Le/F;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Le/a/e/d;->f:Le/a/e/q;

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Le/F;->a()Le/H;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 116
    .local v0, "hasRequestBody":Z
    :goto_0
    invoke-static {p1}, Le/a/e/d;->b(Le/F;)Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    iget-object v2, p0, Le/a/e/d;->e:Le/a/e/k;

    invoke-virtual {v2, v1, v0}, Le/a/e/k;->a(Ljava/util/List;Z)Le/a/e/q;

    move-result-object v2

    iput-object v2, p0, Le/a/e/d;->f:Le/a/e/q;

    .line 118
    iget-object v2, p0, Le/a/e/d;->f:Le/a/e/q;

    invoke-virtual {v2}, Le/a/e/q;->h()Lf/z;

    move-result-object v2

    iget-object v3, p0, Le/a/e/d;->c:Le/z$a;

    check-cast v3, Le/a/c/h;

    invoke-virtual {v3}, Le/a/c/h;->f()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lf/z;->a(JLjava/util/concurrent/TimeUnit;)Lf/z;

    .line 119
    iget-object v2, p0, Le/a/e/d;->f:Le/a/e/q;

    invoke-virtual {v2}, Le/a/e/q;->l()Lf/z;

    move-result-object v2

    iget-object v3, p0, Le/a/e/d;->c:Le/z$a;

    check-cast v3, Le/a/c/h;

    invoke-virtual {v3}, Le/a/c/h;->i()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lf/z;->a(JLjava/util/concurrent/TimeUnit;)Lf/z;

    .line 120
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Le/a/e/d;->e:Le/a/e/k;

    invoke-virtual {v0}, Le/a/e/k;->flush()V

    .line 124
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 192
    iget-object v0, p0, Le/a/e/d;->f:Le/a/e/q;

    if-eqz v0, :cond_0

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->f:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Le/a/e/q;->c(Lokhttp3/internal/http2/ErrorCode;)V

    .line 193
    :cond_0
    return-void
.end method
