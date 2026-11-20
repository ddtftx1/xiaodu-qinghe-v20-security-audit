.class public final Ld/b/a/b/a/o$a;
.super Ld/b/a/x;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/b/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld/b/a/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ld/b/a/b/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/b/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ld/b/a/b/a/o$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/b/a/b/w;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/b/w<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ld/b/a/b/a/o$b;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p0, "this":Ld/b/a/b/a/o$a;, "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p1, "constructor":Ld/b/a/b/w;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    .local p2, "boundFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    .line 200
    iput-object p1, p0, Ld/b/a/b/a/o$a;->a:Ld/b/a/b/w;

    .line 201
    iput-object p2, p0, Ld/b/a/b/a/o$a;->b:Ljava/util/Map;

    .line 202
    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/d/b;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    .local p0, "this":Ld/b/a/b/a/o$a;, "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 206
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_0
    iget-object v0, p0, Ld/b/a/b/a/o$a;->a:Ld/b/a/b/w;

    invoke-interface {v0}, Ld/b/a/b/w;->a()Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ld/b/a/d/b;->j()V

    .line 214
    :goto_0
    invoke-virtual {p1}, Ld/b/a/d/b;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {p1}, Ld/b/a/d/b;->x()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Ld/b/a/b/a/o$a;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/b/a/b/a/o$b;

    .line 217
    .local v2, "field":Ld/b/a/b/a/o$b;
    if-eqz v2, :cond_2

    iget-boolean v3, v2, Ld/b/a/b/a/o$b;->c:Z

    if-nez v3, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {v2, p1, v0}, Ld/b/a/b/a/o$b;->a(Ld/b/a/d/b;Ljava/lang/Object;)V

    goto :goto_2

    .line 218
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ld/b/a/d/b;->H()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "field":Ld/b/a/b/a/o$b;
    :goto_2
    goto :goto_0

    .line 227
    :cond_3
    nop

    .line 228
    invoke-virtual {p1}, Ld/b/a/d/b;->o()V

    .line 229
    return-object v0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 223
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .param p1, "out"    # Ld/b/a/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    .local p0, "this":Ld/b/a/b/a/o$a;, "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 234
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    .line 235
    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Ld/b/a/d/c;->l()Ld/b/a/d/c;

    .line 240
    :try_start_0
    iget-object v0, p0, Ld/b/a/b/a/o$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/b/a/b/a/o$b;

    .line 241
    .local v1, "boundField":Ld/b/a/b/a/o$b;
    invoke-virtual {v1, p2}, Ld/b/a/b/a/o$b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, v1, Ld/b/a/b/a/o$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ld/b/a/d/c;->b(Ljava/lang/String;)Ld/b/a/d/c;

    .line 243
    invoke-virtual {v1, p1, p2}, Ld/b/a/b/a/o$b;->a(Ld/b/a/d/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "boundField":Ld/b/a/b/a/o$b;
    :cond_1
    goto :goto_0

    .line 248
    :cond_2
    nop

    .line 249
    invoke-virtual {p1}, Ld/b/a/d/c;->n()Ld/b/a/d/c;

    .line 250
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
