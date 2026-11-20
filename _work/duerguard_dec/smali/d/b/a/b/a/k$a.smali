.class public final Ld/b/a/b/a/k$a;
.super Ld/b/a/x;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ld/b/a/x<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ld/b/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/x<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final b:Ld/b/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/x<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Ld/b/a/b/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/b/w<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Ld/b/a/b/a/k;


# direct methods
.method public constructor <init>(Ld/b/a/b/a/k;Ld/b/a/j;Ljava/lang/reflect/Type;Ld/b/a/x;Ljava/lang/reflect/Type;Ld/b/a/x;Ld/b/a/b/w;)V
    .locals 0
    .param p2, "context"    # Ld/b/a/j;
    .param p3, "keyType"    # Ljava/lang/reflect/Type;
    .param p5, "valueType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/j;",
            "Ljava/lang/reflect/Type;",
            "Ld/b/a/x<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Ld/b/a/x<",
            "TV;>;",
            "Ld/b/a/b/w<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Ld/b/a/b/a/k$a;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p4, "keyTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TK;>;"
    .local p6, "valueTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TV;>;"
    .local p7, "constructor":Ld/b/a/b/w;, "Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;"
    iput-object p1, p0, Ld/b/a/b/a/k$a;->d:Ld/b/a/b/a/k;

    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    .line 153
    new-instance p1, Ld/b/a/b/a/v;

    invoke-direct {p1, p2, p4, p3}, Ld/b/a/b/a/v;-><init>(Ld/b/a/j;Ld/b/a/x;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Ld/b/a/b/a/k$a;->a:Ld/b/a/x;

    .line 155
    new-instance p1, Ld/b/a/b/a/v;

    invoke-direct {p1, p2, p6, p5}, Ld/b/a/b/a/v;-><init>(Ld/b/a/j;Ld/b/a/x;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Ld/b/a/b/a/k$a;->b:Ld/b/a/x;

    .line 157
    iput-object p7, p0, Ld/b/a/b/a/k$a;->c:Ld/b/a/b/w;

    .line 158
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    .local p0, "this":Ld/b/a/b/a/k$a;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Ld/b/a/b/a/k$a;->a(Ld/b/a/d/b;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ld/b/a/p;)Ljava/lang/String;
    .locals 2
    .param p1, "keyElement"    # Ld/b/a/p;

    .line 246
    .local p0, "this":Ld/b/a/b/a/k$a;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Ld/b/a/p;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    invoke-virtual {p1}, Ld/b/a/p;->d()Ld/b/a/t;

    move-result-object v0

    .line 248
    .local v0, "primitive":Ld/b/a/t;
    invoke-virtual {v0}, Ld/b/a/t;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0}, Ld/b/a/t;->n()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 250
    :cond_0
    invoke-virtual {v0}, Ld/b/a/t;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v0}, Ld/b/a/t;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 252
    :cond_1
    invoke-virtual {v0}, Ld/b/a/t;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {v0}, Ld/b/a/t;->e()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 255
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 257
    .end local v0    # "primitive":Ld/b/a/t;
    :cond_3
    invoke-virtual {p1}, Ld/b/a/p;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    const-string v0, "null"

    return-object v0

    .line 260
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a(Ld/b/a/d/b;)Ljava/util/Map;
    .locals 8
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/d/b;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    .local p0, "this":Ld/b/a/b/a/k$a;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 162
    .local v0, "peek":Lcom/google/gson/stream/JsonToken;
    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 163
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 164
    const/4 v1, 0x0

    return-object v1

    .line 167
    :cond_0
    iget-object v1, p0, Ld/b/a/b/a/k$a;->c:Ld/b/a/b/w;

    invoke-interface {v1}, Ld/b/a/b/w;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 169
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    sget-object v2, Lcom/google/gson/stream/JsonToken;->a:Lcom/google/gson/stream/JsonToken;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 170
    invoke-virtual {p1}, Ld/b/a/d/b;->i()V

    .line 171
    :goto_0
    invoke-virtual {p1}, Ld/b/a/d/b;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    invoke-virtual {p1}, Ld/b/a/d/b;->i()V

    .line 173
    iget-object v2, p0, Ld/b/a/b/a/k$a;->a:Ld/b/a/x;

    invoke-virtual {v2, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v2

    .line 174
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Ld/b/a/b/a/k$a;->b:Ld/b/a/x;

    invoke-virtual {v4, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v4

    .line 175
    .local v4, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 176
    .local v5, "replaced":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_1

    .line 179
    invoke-virtual {p1}, Ld/b/a/d/b;->n()V

    .line 180
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    .end local v5    # "replaced":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 177
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "value":Ljava/lang/Object;, "TV;"
    .restart local v5    # "replaced":Ljava/lang/Object;, "TV;"
    :cond_1
    new-instance v6, Lcom/google/gson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 181
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    .end local v5    # "replaced":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p1}, Ld/b/a/d/b;->n()V

    goto :goto_2

    .line 183
    :cond_3
    invoke-virtual {p1}, Ld/b/a/d/b;->j()V

    .line 184
    :goto_1
    invoke-virtual {p1}, Ld/b/a/d/b;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 185
    sget-object v2, Ld/b/a/b/s;->a:Ld/b/a/b/s;

    invoke-virtual {v2, p1}, Ld/b/a/b/s;->a(Ld/b/a/d/b;)V

    .line 186
    iget-object v2, p0, Ld/b/a/b/a/k$a;->a:Ld/b/a/x;

    invoke-virtual {v2, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v2

    .line 187
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Ld/b/a/b/a/k$a;->b:Ld/b/a/x;

    invoke-virtual {v4, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v4

    .line 188
    .restart local v4    # "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 189
    .restart local v5    # "replaced":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_4

    .line 192
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    .end local v5    # "replaced":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 190
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "value":Ljava/lang/Object;, "TV;"
    .restart local v5    # "replaced":Ljava/lang/Object;, "TV;"
    :cond_4
    new-instance v6, Lcom/google/gson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 193
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    .end local v5    # "replaced":Ljava/lang/Object;, "TV;"
    :cond_5
    invoke-virtual {p1}, Ld/b/a/d/b;->o()V

    .line 195
    :goto_2
    return-object v1
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    .local p0, "this":Ld/b/a/b/a/k$a;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Ld/b/a/b/a/k$a;->a(Ld/b/a/d/c;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ld/b/a/d/c;Ljava/util/Map;)V
    .locals 8
    .param p1, "out"    # Ld/b/a/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/d/c;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    .local p0, "this":Ld/b/a/b/a/k$a;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p2, :cond_0

    .line 200
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    .line 201
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Ld/b/a/b/a/k$a;->d:Ld/b/a/b/a/k;

    iget-boolean v0, v0, Ld/b/a/b/a/k;->b:Z

    if-nez v0, :cond_2

    .line 205
    invoke-virtual {p1}, Ld/b/a/d/c;->l()Ld/b/a/d/c;

    .line 206
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 207
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ld/b/a/d/c;->b(Ljava/lang/String;)Ld/b/a/d/c;

    .line 208
    iget-object v2, p0, Ld/b/a/b/a/k$a;->b:Ld/b/a/x;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 209
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p1}, Ld/b/a/d/c;->n()Ld/b/a/d/c;

    .line 211
    return-void

    .line 214
    :cond_2
    const/4 v0, 0x0

    .line 215
    .local v0, "hasComplexKeys":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/JsonElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 219
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v5, p0, Ld/b/a/b/a/k$a;->a:Ld/b/a/x;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ld/b/a/x;->a(Ljava/lang/Object;)Ld/b/a/p;

    move-result-object v5

    .line 220
    .local v5, "keyElement":Ld/b/a/p;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v5}, Ld/b/a/p;->f()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ld/b/a/p;->h()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x1

    :goto_3
    or-int/2addr v0, v6

    .line 223
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "keyElement":Ld/b/a/p;
    goto :goto_1

    .line 225
    :cond_5
    if-eqz v0, :cond_7

    .line 226
    invoke-virtual {p1}, Ld/b/a/d/c;->k()Ld/b/a/d/c;

    .line 227
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 228
    invoke-virtual {p1}, Ld/b/a/d/c;->k()Ld/b/a/d/c;

    .line 229
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/b/a/p;

    invoke-static {v5, p1}, Ld/b/a/b/y;->a(Ld/b/a/p;Ld/b/a/d/c;)V

    .line 230
    iget-object v5, p0, Ld/b/a/b/a/k$a;->b:Ld/b/a/x;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1}, Ld/b/a/d/c;->m()Ld/b/a/d/c;

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 233
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_6
    invoke-virtual {p1}, Ld/b/a/d/c;->m()Ld/b/a/d/c;

    goto :goto_6

    .line 235
    :cond_7
    invoke-virtual {p1}, Ld/b/a/d/c;->l()Ld/b/a/d/c;

    .line 236
    const/4 v3, 0x0

    .restart local v3    # "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4    # "size":I
    :goto_5
    if-ge v3, v4, :cond_8

    .line 237
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/b/a/p;

    .line 238
    .restart local v5    # "keyElement":Ld/b/a/p;
    invoke-virtual {p0, v5}, Ld/b/a/b/a/k$a;->a(Ld/b/a/p;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ld/b/a/d/c;->b(Ljava/lang/String;)Ld/b/a/d/c;

    .line 239
    iget-object v6, p0, Ld/b/a/b/a/k$a;->b:Ld/b/a/x;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 236
    .end local v5    # "keyElement":Ld/b/a/p;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 241
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_8
    invoke-virtual {p1}, Ld/b/a/d/c;->n()Ld/b/a/d/c;

    .line 243
    :goto_6
    return-void
.end method
