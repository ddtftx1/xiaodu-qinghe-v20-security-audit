.class public final Ld/b/a/b/a/c$a;
.super Ld/b/a/x;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ld/b/a/x<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ld/b/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/x<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Ld/b/a/b/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/b/w<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/b/a/j;Ljava/lang/reflect/Type;Ld/b/a/x;Ld/b/a/b/w;)V
    .locals 1
    .param p1, "context"    # Ld/b/a/j;
    .param p2, "elementType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/j;",
            "Ljava/lang/reflect/Type;",
            "Ld/b/a/x<",
            "TE;>;",
            "Ld/b/a/b/w<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Ld/b/a/b/a/c$a;, "Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p3, "elementTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TE;>;"
    .local p4, "constructor":Ld/b/a/b/w;, "Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;"
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    .line 68
    new-instance v0, Ld/b/a/b/a/v;

    invoke-direct {v0, p1, p3, p2}, Ld/b/a/b/a/v;-><init>(Ld/b/a/j;Ld/b/a/x;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Ld/b/a/b/a/c$a;->a:Ld/b/a/x;

    .line 70
    iput-object p4, p0, Ld/b/a/b/a/c$a;->b:Ld/b/a/b/w;

    .line 71
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

    .line 61
    .local p0, "this":Ld/b/a/b/a/c$a;, "Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p0, p1}, Ld/b/a/b/a/c$a;->a(Ld/b/a/d/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/b/a/d/b;)Ljava/util/Collection;
    .locals 2
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/d/b;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    .local p0, "this":Ld/b/a/b/a/c$a;, "Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Ld/b/a/b/a/c$a;->b:Ld/b/a/b/w;

    invoke-interface {v0}, Ld/b/a/b/w;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 80
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-virtual {p1}, Ld/b/a/d/b;->i()V

    .line 81
    :goto_0
    invoke-virtual {p1}, Ld/b/a/d/b;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Ld/b/a/b/a/c$a;->a:Ld/b/a/x;

    invoke-virtual {v1, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, "instance":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v1    # "instance":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1}, Ld/b/a/d/b;->n()V

    .line 86
    return-object v0
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p0, "this":Ld/b/a/b/a/c$a;, "Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Ld/b/a/b/a/c$a;->a(Ld/b/a/d/c;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Ld/b/a/d/c;Ljava/util/Collection;)V
    .locals 3
    .param p1, "out"    # Ld/b/a/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/d/c;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    .local p0, "this":Ld/b/a/b/a/c$a;, "Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-nez p2, :cond_0

    .line 91
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    .line 92
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Ld/b/a/d/c;->k()Ld/b/a/d/c;

    .line 96
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "element":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ld/b/a/b/a/c$a;->a:Ld/b/a/x;

    invoke-virtual {v2, p1, v1}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 98
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1}, Ld/b/a/d/c;->m()Ld/b/a/d/c;

    .line 100
    return-void
.end method
