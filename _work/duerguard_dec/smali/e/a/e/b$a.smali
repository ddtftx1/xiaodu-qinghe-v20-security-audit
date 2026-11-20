.class public final Le/a/e/b$a;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf/h;

.field public final c:I

.field public d:I

.field public e:[Le/a/e/a;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(IILf/x;)V
    .locals 1
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "maxDynamicTableByteCount"    # I
    .param p3, "source"    # Lf/x;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/e/b$a;->a:Ljava/util/List;

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Le/a/e/a;

    iput-object v0, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    .line 126
    iget-object v0, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/a/e/b$a;->f:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Le/a/e/b$a;->g:I

    .line 128
    iput v0, p0, Le/a/e/b$a;->h:I

    .line 135
    iput p1, p0, Le/a/e/b$a;->c:I

    .line 136
    iput p2, p0, Le/a/e/b$a;->d:I

    .line 137
    invoke-static {p3}, Lf/q;->a(Lf/x;)Lf/h;

    move-result-object v0

    iput-object v0, p0, Le/a/e/b$a;->b:Lf/h;

    .line 138
    return-void
.end method

.method public constructor <init>(ILf/x;)V
    .locals 0
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "source"    # Lf/x;

    .line 131
    invoke-direct {p0, p1, p1, p2}, Le/a/e/b$a;-><init>(IILf/x;)V

    .line 132
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .param p1, "index"    # I

    .line 233
    iget v0, p0, Le/a/e/b$a;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method public a(II)I
    .locals 5
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    and-int v0, p1, p2

    .line 320
    .local v0, "prefix":I
    if-ge v0, p2, :cond_0

    .line 321
    return v0

    .line 325
    :cond_0
    move v1, p2

    .line 326
    .local v1, "result":I
    const/4 v2, 0x0

    .line 328
    .local v2, "shift":I
    :goto_0
    invoke-virtual {p0}, Le/a/e/b$a;->d()I

    move-result v3

    .line 329
    .local v3, "b":I
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_1

    .line 330
    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v2

    add-int/2addr v1, v4

    .line 331
    add-int/lit8 v2, v2, 0x7

    .line 336
    .end local v3    # "b":I
    goto :goto_0

    .line 333
    .restart local v3    # "b":I
    :cond_1
    shl-int v4, v3, v2

    add-int/2addr v1, v4

    .line 334
    nop

    .line 337
    .end local v3    # "b":I
    return v1
.end method

.method public final a()V
    .locals 2

    .line 145
    iget v0, p0, Le/a/e/b$a;->d:I

    iget v1, p0, Le/a/e/b$a;->h:I

    if-ge v0, v1, :cond_1

    .line 146
    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Le/a/e/b$a;->b()V

    goto :goto_0

    .line 149
    :cond_0
    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Le/a/e/b$a;->b(I)I

    .line 152
    :cond_1
    :goto_0
    return-void
.end method

.method public final a(ILe/a/e/a;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "entry"    # Le/a/e/a;

    .line 280
    iget-object v0, p0, Le/a/e/b$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget v0, p2, Le/a/e/a;->i:I

    .line 283
    .local v0, "delta":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 284
    iget-object v2, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    invoke-virtual {p0, p1}, Le/a/e/b$a;->a(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Le/a/e/a;->i:I

    sub-int/2addr v0, v2

    .line 288
    :cond_0
    iget v2, p0, Le/a/e/b$a;->d:I

    if-le v0, v2, :cond_1

    .line 289
    invoke-virtual {p0}, Le/a/e/b$a;->b()V

    .line 290
    return-void

    .line 294
    :cond_1
    iget v3, p0, Le/a/e/b$a;->h:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 295
    .local v3, "bytesToRecover":I
    invoke-virtual {p0, v3}, Le/a/e/b$a;->b(I)I

    move-result v2

    .line 297
    .local v2, "entriesEvicted":I
    if-ne p1, v1, :cond_3

    .line 298
    iget v1, p0, Le/a/e/b$a;->g:I

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    array-length v5, v4

    if-le v1, v5, :cond_2

    .line 299
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Le/a/e/a;

    .line 300
    .local v1, "doubled":[Le/a/e/a;
    const/4 v5, 0x0

    array-length v6, v4

    array-length v7, v4

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v4, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Le/a/e/b$a;->f:I

    .line 302
    iput-object v1, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    .line 304
    .end local v1    # "doubled":[Le/a/e/a;
    :cond_2
    iget v1, p0, Le/a/e/b$a;->f:I

    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Le/a/e/b$a;->f:I

    move p1, v1

    .line 305
    iget-object v1, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    aput-object p2, v1, p1

    .line 306
    iget v1, p0, Le/a/e/b$a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/a/e/b$a;->g:I

    goto :goto_0

    .line 308
    :cond_3
    invoke-virtual {p0, p1}, Le/a/e/b$a;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 309
    iget-object v1, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    aput-object p2, v1, p1

    .line 311
    :goto_0
    iget v1, p0, Le/a/e/b$a;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Le/a/e/b$a;->h:I

    .line 312
    return-void
.end method

.method public final b(I)I
    .locals 5
    .param p1, "bytesToRecover"    # I

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 166
    iget-object v1, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Le/a/e/b$a;->f:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 167
    iget-object v2, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    aget-object v3, v2, v1

    iget v3, v3, Le/a/e/a;->i:I

    sub-int/2addr p1, v3

    .line 168
    iget v3, p0, Le/a/e/b$a;->h:I

    aget-object v2, v2, v1

    iget v2, v2, Le/a/e/a;->i:I

    sub-int/2addr v3, v2

    iput v3, p0, Le/a/e/b$a;->h:I

    .line 169
    iget v2, p0, Le/a/e/b$a;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Le/a/e/b$a;->g:I

    .line 170
    add-int/lit8 v0, v0, 0x1

    .line 166
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 172
    .end local v1    # "j":I
    :cond_0
    iget-object v1, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    iget v2, p0, Le/a/e/b$a;->f:I

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v4, p0, Le/a/e/b$a;->g:I

    invoke-static {v1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v1, p0, Le/a/e/b$a;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Le/a/e/b$a;->f:I

    .line 176
    :cond_1
    return v0
.end method

.method public final b()V
    .locals 2

    .line 155
    iget-object v0, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/a/e/b$a;->f:I

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Le/a/e/b$a;->g:I

    .line 158
    iput v0, p0, Le/a/e/b$a;->h:I

    .line 159
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/e/a;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Le/a/e/b$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    iget-object v1, p0, Le/a/e/b$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 215
    return-object v0
.end method

.method public final c(I)Lokio/ByteString;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1}, Le/a/e/b$a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Le/a/e/b;->a:[Le/a/e/a;

    aget-object v0, v0, p1

    iget-object v0, v0, Le/a/e/a;->g:Lokio/ByteString;

    return-object v0

    .line 265
    :cond_0
    sget-object v0, Le/a/e/b;->a:[Le/a/e/a;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Le/a/e/b$a;->a(I)I

    move-result v0

    .line 266
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 270
    aget-object v1, v1, v0

    iget-object v1, v1, Le/a/e/a;->g:Lokio/ByteString;

    return-object v1

    .line 267
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header index too large "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final d()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Le/a/e/b$a;->b:Lf/h;

    invoke-interface {v0}, Lf/h;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final d(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 275
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    sget-object v1, Le/a/e/b;->a:[Le/a/e/a;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Lokio/ByteString;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Le/a/e/b$a;->d()I

    move-result v0

    .line 343
    .local v0, "firstByte":I
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 344
    .local v1, "huffmanDecode":Z
    :goto_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Le/a/e/b$a;->a(II)I

    move-result v2

    .line 346
    .local v2, "length":I
    if-eqz v1, :cond_1

    .line 347
    invoke-static {}, Le/a/e/s;->b()Le/a/e/s;

    move-result-object v3

    iget-object v4, p0, Le/a/e/b$a;->b:Lf/h;

    int-to-long v5, v2

    invoke-interface {v4, v5, v6}, Lf/h;->d(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/e/s;->a([B)[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->a([B)Lokio/ByteString;

    move-result-object v3

    return-object v3

    .line 349
    :cond_1
    iget-object v3, p0, Le/a/e/b$a;->b:Lf/h;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lf/h;->a(J)Lokio/ByteString;

    move-result-object v3

    return-object v3
.end method

.method public final e(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Le/a/e/b$a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Le/a/e/b;->a:[Le/a/e/a;

    aget-object v0, v0, p1

    .line 221
    .local v0, "staticEntry":Le/a/e/a;
    iget-object v1, p0, Le/a/e/b$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v0    # "staticEntry":Le/a/e/a;
    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Le/a/e/b;->a:[Le/a/e/a;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Le/a/e/b$a;->a(I)I

    move-result v0

    .line 224
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Le/a/e/b$a;->e:[Le/a/e/a;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 227
    iget-object v2, p0, Le/a/e/b$a;->a:Ljava/util/List;

    aget-object v1, v1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v0    # "dynamicTableIndex":I
    :goto_0
    return-void

    .line 225
    .restart local v0    # "dynamicTableIndex":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header index too large "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public f()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    :goto_0
    iget-object v0, p0, Le/a/e/b$a;->b:Lf/h;

    invoke-interface {v0}, Lf/h;->c()Z

    move-result v0

    if-nez v0, :cond_8

    .line 185
    iget-object v0, p0, Le/a/e/b$a;->b:Lf/h;

    invoke-interface {v0}, Lf/h;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 186
    .local v0, "b":I
    const/16 v1, 0x80

    if-eq v0, v1, :cond_7

    .line 188
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_0

    .line 189
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Le/a/e/b$a;->a(II)I

    move-result v1

    .line 190
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Le/a/e/b$a;->e(I)V

    .line 191
    .end local v1    # "index":I
    goto :goto_2

    :cond_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 192
    invoke-virtual {p0}, Le/a/e/b$a;->g()V

    goto :goto_2

    .line 193
    :cond_1
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_2

    .line 194
    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Le/a/e/b$a;->a(II)I

    move-result v1

    .line 195
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Le/a/e/b$a;->f(I)V

    .line 196
    .end local v1    # "index":I
    goto :goto_2

    :cond_2
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    .line 197
    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Le/a/e/b$a;->a(II)I

    move-result v1

    iput v1, p0, Le/a/e/b$a;->d:I

    .line 198
    iget v1, p0, Le/a/e/b$a;->d:I

    if-ltz v1, :cond_3

    iget v2, p0, Le/a/e/b$a;->c:I

    if-gt v1, v2, :cond_3

    .line 202
    invoke-virtual {p0}, Le/a/e/b$a;->a()V

    goto :goto_2

    .line 200
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dynamic table size update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Le/a/e/b$a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_4
    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    .line 206
    :cond_5
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Le/a/e/b$a;->a(II)I

    move-result v1

    .line 207
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Le/a/e/b$a;->g(I)V

    goto :goto_2

    .line 204
    .end local v1    # "index":I
    :cond_6
    :goto_1
    invoke-virtual {p0}, Le/a/e/b$a;->h()V

    .line 209
    .end local v0    # "b":I
    :goto_2
    goto/16 :goto_0

    .line 187
    .restart local v0    # "b":I
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "index == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    .end local v0    # "b":I
    :cond_8
    return-void
.end method

.method public final f(I)V
    .locals 4
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0, p1}, Le/a/e/b$a;->c(I)Lokio/ByteString;

    move-result-object v0

    .line 251
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Le/a/e/b$a;->e()Lokio/ByteString;

    move-result-object v1

    .line 252
    .local v1, "value":Lokio/ByteString;
    new-instance v2, Le/a/e/a;

    invoke-direct {v2, v0, v1}, Le/a/e/a;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Le/a/e/b$a;->a(ILe/a/e/a;)V

    .line 253
    return-void
.end method

.method public final g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Le/a/e/b$a;->e()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Le/a/e/b;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 257
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Le/a/e/b$a;->e()Lokio/ByteString;

    move-result-object v1

    .line 258
    .local v1, "value":Lokio/ByteString;
    new-instance v2, Le/a/e/a;

    invoke-direct {v2, v0, v1}, Le/a/e/a;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Le/a/e/b$a;->a(ILe/a/e/a;)V

    .line 259
    return-void
.end method

.method public final g(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-virtual {p0, p1}, Le/a/e/b$a;->c(I)Lokio/ByteString;

    move-result-object v0

    .line 238
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Le/a/e/b$a;->e()Lokio/ByteString;

    move-result-object v1

    .line 239
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Le/a/e/b$a;->a:Ljava/util/List;

    new-instance v3, Le/a/e/a;

    invoke-direct {v3, v0, v1}, Le/a/e/a;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public final h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Le/a/e/b$a;->e()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Le/a/e/b;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 244
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Le/a/e/b$a;->e()Lokio/ByteString;

    move-result-object v1

    .line 245
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Le/a/e/b$a;->a:Ljava/util/List;

    new-instance v3, Le/a/e/a;

    invoke-direct {v3, v0, v1}, Le/a/e/a;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method
