.class public final Ld/b/a/b/a/h;
.super Ld/b/a/d/b;
.source "JsonTreeReader.java"


# static fields
.field public static final q:Ljava/lang/Object;


# instance fields
.field public r:[Ljava/lang/Object;

.field public s:I

.field public t:[Ljava/lang/String;

.field public u:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ld/b/a/b/a/g;

    invoke-direct {v0}, Ld/b/a/b/a/g;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld/b/a/b/a/h;->q:Ljava/lang/Object;

    return-void
.end method

.method private s()Ljava/lang/String;
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/b/a/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public B()Lcom/google/gson/stream/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Ld/b/a/b/a/h;->s:I

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/google/gson/stream/JsonToken;->j:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Ld/b/a/b/a/h;->I()Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    .line 113
    iget-object v1, p0, Ld/b/a/b/a/h;->r:[Ljava/lang/Object;

    iget v2, p0, Ld/b/a/b/a/h;->s:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Ld/b/a/r;

    .line 114
    .local v1, "isObject":Z
    move-object v2, v0

    check-cast v2, Ljava/util/Iterator;

    .line 115
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    if-eqz v1, :cond_1

    .line 117
    sget-object v3, Lcom/google/gson/stream/JsonToken;->e:Lcom/google/gson/stream/JsonToken;

    return-object v3

    .line 119
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ld/b/a/b/a/h;->a(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Ld/b/a/b/a/h;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    return-object v3

    .line 123
    :cond_2
    if-eqz v1, :cond_3

    sget-object v3, Lcom/google/gson/stream/JsonToken;->d:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/google/gson/stream/JsonToken;->b:Lcom/google/gson/stream/JsonToken;

    :goto_0
    return-object v3

    .line 125
    .end local v1    # "isObject":Z
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    instance-of v1, v0, Ld/b/a/r;

    if-eqz v1, :cond_5

    .line 126
    sget-object v1, Lcom/google/gson/stream/JsonToken;->c:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 127
    :cond_5
    instance-of v1, v0, Ld/b/a/m;

    if-eqz v1, :cond_6

    .line 128
    sget-object v1, Lcom/google/gson/stream/JsonToken;->a:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 129
    :cond_6
    instance-of v1, v0, Ld/b/a/t;

    if-eqz v1, :cond_a

    .line 130
    move-object v1, v0

    check-cast v1, Ld/b/a/t;

    .line 131
    .local v1, "primitive":Ld/b/a/t;
    invoke-virtual {v1}, Ld/b/a/t;->q()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 132
    sget-object v2, Lcom/google/gson/stream/JsonToken;->f:Lcom/google/gson/stream/JsonToken;

    return-object v2

    .line 133
    :cond_7
    invoke-virtual {v1}, Ld/b/a/t;->o()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 134
    sget-object v2, Lcom/google/gson/stream/JsonToken;->h:Lcom/google/gson/stream/JsonToken;

    return-object v2

    .line 135
    :cond_8
    invoke-virtual {v1}, Ld/b/a/t;->p()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 136
    sget-object v2, Lcom/google/gson/stream/JsonToken;->g:Lcom/google/gson/stream/JsonToken;

    return-object v2

    .line 138
    :cond_9
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 140
    .end local v1    # "primitive":Ld/b/a/t;
    :cond_a
    instance-of v1, v0, Ld/b/a/q;

    if-eqz v1, :cond_b

    .line 141
    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 142
    :cond_b
    sget-object v1, Ld/b/a/b/a/h;->q:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    .line 143
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public H()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Ld/b/a/b/a/h;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->e:Lcom/google/gson/stream/JsonToken;

    const-string v2, "null"

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p0}, Ld/b/a/b/a/h;->x()Ljava/lang/String;

    .line 259
    iget-object v0, p0, Ld/b/a/b/a/h;->t:[Ljava/lang/String;

    iget v1, p0, Ld/b/a/b/a/h;->s:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0}, Ld/b/a/b/a/h;->J()Ljava/lang/Object;

    .line 262
    iget v0, p0, Ld/b/a/b/a/h;->s:I

    if-lez v0, :cond_1

    .line 263
    iget-object v1, p0, Ld/b/a/b/a/h;->t:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v1, v0

    .line 266
    :cond_1
    :goto_0
    iget v0, p0, Ld/b/a/b/a/h;->s:I

    if-lez v0, :cond_2

    .line 267
    iget-object v1, p0, Ld/b/a/b/a/h;->u:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 269
    :cond_2
    return-void
.end method

.method public final I()Ljava/lang/Object;
    .locals 2

    .line 150
    iget-object v0, p0, Ld/b/a/b/a/h;->r:[Ljava/lang/Object;

    iget v1, p0, Ld/b/a/b/a/h;->s:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final J()Ljava/lang/Object;
    .locals 4

    .line 154
    iget-object v0, p0, Ld/b/a/b/a/h;->r:[Ljava/lang/Object;

    iget v1, p0, Ld/b/a/b/a/h;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld/b/a/b/a/h;->s:I

    aget-object v1, v0, v1

    .line 155
    .local v1, "result":Ljava/lang/Object;
    iget v2, p0, Ld/b/a/b/a/h;->s:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 156
    return-object v1
.end method

.method public K()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/gson/stream/JsonToken;->e:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {p0, v0}, Ld/b/a/b/a/h;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 277
    invoke-virtual {p0}, Ld/b/a/b/a/h;->I()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 278
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 279
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ld/b/a/b/a/h;->a(Ljava/lang/Object;)V

    .line 280
    new-instance v2, Ld/b/a/t;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ld/b/a/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ld/b/a/b/a/h;->a(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method public final a(Lcom/google/gson/stream/JsonToken;)V
    .locals 3
    .param p1, "expected"    # Lcom/google/gson/stream/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Ld/b/a/b/a/h;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 164
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Ld/b/a/b/a/h;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ld/b/a/b/a/h;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6
    .param p1, "newTop"    # Ljava/lang/Object;

    .line 284
    iget v0, p0, Ld/b/a/b/a/h;->s:I

    iget-object v1, p0, Ld/b/a/b/a/h;->r:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 285
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 286
    .local v2, "newStack":[Ljava/lang/Object;
    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    .line 287
    .local v3, "newPathIndices":[I
    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 288
    .local v4, "newPathNames":[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget-object v0, p0, Ld/b/a/b/a/h;->u:[I

    iget v1, p0, Ld/b/a/b/a/h;->s:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget-object v0, p0, Ld/b/a/b/a/h;->t:[Ljava/lang/String;

    iget v1, p0, Ld/b/a/b/a/h;->s:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iput-object v2, p0, Ld/b/a/b/a/h;->r:[Ljava/lang/Object;

    .line 292
    iput-object v3, p0, Ld/b/a/b/a/h;->u:[I

    .line 293
    iput-object v4, p0, Ld/b/a/b/a/h;->t:[Ljava/lang/String;

    .line 295
    .end local v2    # "newStack":[Ljava/lang/Object;
    .end local v3    # "newPathIndices":[I
    .end local v4    # "newPathNames":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Ld/b/a/b/a/h;->r:[Ljava/lang/Object;

    iget v1, p0, Ld/b/a/b/a/h;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ld/b/a/b/a/h;->s:I

    aput-object p1, v0, v1

    .line 296
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Ld/b/a/b/a/h;->q:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Ld/b/a/b/a/h;->r:[Ljava/lang/Object;

    .line 253
    iput v0, p0, Ld/b/a/b/a/h;->s:I

    .line 254
    return-void
.end method

.method public i()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/google/gson/stream/JsonToken;->a:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {p0, v0}, Ld/b/a/b/a/h;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 72
    invoke-virtual {p0}, Ld/b/a/b/a/h;->I()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/b/a/m;

    .line 73
    .local v0, "array":Ld/b/a/m;
    invoke-virtual {v0}, Ld/b/a/m;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v1}, Ld/b/a/b/a/h;->a(Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Ld/b/a/b/a/h;->u:[I

    iget v2, p0, Ld/b/a/b/a/h;->s:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 75
    return-void
.end method

.method public j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/google/gson/stream/JsonToken;->c:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {p0, v0}, Ld/b/a/b/a/h;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 88
    invoke-virtual {p0}, Ld/b/a/b/a/h;->I()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/b/a/r;

    .line 89
    .local v0, "object":Ld/b/a/r;
    invoke-virtual {v0}, Ld/b/a/r;->j()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v1}, Ld/b/a/b/a/h;->a(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public n()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/google/gson/stream/JsonToken;->b:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {p0, v0}, Ld/b/a/b/a/h;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 79
    invoke-virtual {p0}, Ld/b/a/b/a/h;->J()Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Ld/b/a/b/a/h;->J()Ljava/lang/Object;

    .line 81
    iget v0, p0, Ld/b/a/b/a/h;->s:I

    if-lez v0, :cond_0

    .line 82
    iget-object v1, p0, Ld/b/a/b/a/h;->u:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 84
    :cond_0
    return-void
.end method

.method public o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/google/gson/stream/JsonToken;->d:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {p0, v0}, Ld/b/a/b/a/h;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 94
    invoke-virtual {p0}, Ld/b/a/b/a/h;->J()Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Ld/b/a/b/a/h;->J()Ljava/lang/Object;

    .line 96
    iget v0, p0, Ld/b/a/b/a/h;->s:I

    if-lez v0, :cond_0

    .line 97
    iget-object v1, p0, Ld/b/a/b/a/h;->u:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 99
    :cond_0
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 4

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ld/b/a/b/a/h;->s:I

    if-ge v1, v2, :cond_2

    .line 301
    iget-object v2, p0, Ld/b/a/b/a/h;->r:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v3, v3, Ld/b/a/m;

    if-eqz v3, :cond_0

    .line 302
    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    .line 303
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/b/a/b/a/h;->u:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 305
    :cond_0
    aget-object v3, v2, v1

    instance-of v3, v3, Ld/b/a/r;

    if-eqz v3, :cond_1

    .line 306
    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    .line 307
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    iget-object v2, p0, Ld/b/a/b/a/h;->t:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 309
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public q()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Ld/b/a/b/a/h;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 103
    .local v0, "token":Lcom/google/gson/stream/JsonToken;
    sget-object v1, Lcom/google/gson/stream/JsonToken;->d:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->b:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public t()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/google/gson/stream/JsonToken;->h:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {p0, v0}, Ld/b/a/b/a/h;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 191
    invoke-virtual {p0}, Ld/b/a/b/a/h;->J()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/b/a/t;

    invoke-virtual {v0}, Ld/b/a/t;->j()Z

    move-result v0

    .line 192
    .local v0, "result":Z
    iget v1, p0, Ld/b/a/b/a/h;->s:I

    if-lez v1, :cond_0

    .line 193
    iget-object v2, p0, Ld/b/a/b/a/h;->u:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 195
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Ld/b/a/b/a/h;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 208
    .local v0, "token":Lcom/google/gson/stream/JsonToken;
    sget-object v1, Lcom/google/gson/stream/JsonToken;->g:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/gson/stream/JsonToken;->f:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/gson/stream/JsonToken;->g:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {p0}, Ld/b/a/b/a/h;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ld/b/a/b/a/h;->I()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/b/a/t;

    invoke-virtual {v1}, Ld/b/a/t;->l()D

    move-result-wide v1

    .line 213
    .local v1, "result":D
    invoke-virtual {p0}, Ld/b/a/d/b;->r()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 214
    :cond_2
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ld/b/a/b/a/h;->J()Ljava/lang/Object;

    .line 217
    iget v3, p0, Ld/b/a/b/a/h;->s:I

    if-lez v3, :cond_4

    .line 218
    iget-object v4, p0, Ld/b/a/b/a/h;->u:[I

    add-int/lit8 v3, v3, -0x1

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    .line 220
    :cond_4
    return-wide v1
.end method

.method public v()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Ld/b/a/b/a/h;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 239
    .local v0, "token":Lcom/google/gson/stream/JsonToken;
    sget-object v1, Lcom/google/gson/stream/JsonToken;->g:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/gson/stream/JsonToken;->f:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/gson/stream/JsonToken;->g:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-direct {p0}, Ld/b/a/b/a/h;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ld/b/a/b/a/h;->I()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/b/a/t;

    invoke-virtual {v1}, Ld/b/a/t;->a()I

    move-result v1

    .line 244
    .local v1, "result":I
    invoke-virtual {p0}, Ld/b/a/b/a/h;->J()Ljava/lang/Object;

    .line 245
    iget v2, p0, Ld/b/a/b/a/h;->s:I

    if-lez v2, :cond_2

    .line 246
    iget-object v3, p0, Ld/b/a/b/a/h;->u:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    .line 248
    :cond_2
    return v1
.end method

.method public w()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Ld/b/a/b/a/h;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 225
    .local v0, "token":Lcom/google/gson/stream/JsonToken;
    sget-object v1, Lcom/google/gson/stream/JsonToken;->g:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/gson/stream/JsonToken;->f:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/gson/stream/JsonToken;->g:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {p0}, Ld/b/a/b/a/h;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ld/b/a/b/a/h;->I()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/b/a/t;

    invoke-virtual {v1}, Ld/b/a/t;->m()J

    move-result-wide v1

    .line 230
    .local v1, "result":J
    invoke-virtual {p0}, Ld/b/a/b/a/h;->J()Ljava/lang/Object;

    .line 231
    iget v3, p0, Ld/b/a/b/a/h;->s:I

    if-lez v3, :cond_2

    .line 232
    iget-object v4, p0, Ld/b/a/b/a/h;->u:[I

    add-int/lit8 v3, v3, -0x1

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    .line 234
    :cond_2
    return-wide v1
.end method

.method public x()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/google/gson/stream/JsonToken;->e:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {p0, v0}, Ld/b/a/b/a/h;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 168
    invoke-virtual {p0}, Ld/b/a/b/a/h;->I()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 169
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 170
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Ld/b/a/b/a/h;->t:[Ljava/lang/String;

    iget v4, p0, Ld/b/a/b/a/h;->s:I

    add-int/lit8 v4, v4, -0x1

    aput-object v2, v3, v4

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ld/b/a/b/a/h;->a(Ljava/lang/Object;)V

    .line 173
    return-object v2
.end method

.method public y()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {p0, v0}, Ld/b/a/b/a/h;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 200
    invoke-virtual {p0}, Ld/b/a/b/a/h;->J()Ljava/lang/Object;

    .line 201
    iget v0, p0, Ld/b/a/b/a/h;->s:I

    if-lez v0, :cond_0

    .line 202
    iget-object v1, p0, Ld/b/a/b/a/h;->u:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 204
    :cond_0
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Ld/b/a/b/a/h;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 178
    .local v0, "token":Lcom/google/gson/stream/JsonToken;
    sget-object v1, Lcom/google/gson/stream/JsonToken;->f:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/gson/stream/JsonToken;->g:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/gson/stream/JsonToken;->f:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {p0}, Ld/b/a/b/a/h;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ld/b/a/b/a/h;->J()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/b/a/t;

    invoke-virtual {v1}, Ld/b/a/t;->e()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Ld/b/a/b/a/h;->s:I

    if-lez v2, :cond_2

    .line 184
    iget-object v3, p0, Ld/b/a/b/a/h;->u:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    .line 186
    :cond_2
    return-object v1
.end method
