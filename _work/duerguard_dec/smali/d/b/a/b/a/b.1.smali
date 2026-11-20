.class public final Ld/b/a/b/a/b;
.super Ld/b/a/x;
.source "ArrayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ld/b/a/x<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ld/b/a/y;


# instance fields
.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:Ld/b/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/x<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ld/b/a/b/a/a;

    invoke-direct {v0}, Ld/b/a/b/a/a;-><init>()V

    sput-object v0, Ld/b/a/b/a/b;->a:Ld/b/a/y;

    return-void
.end method

.method public constructor <init>(Ld/b/a/j;Ld/b/a/x;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Ld/b/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/j;",
            "Ld/b/a/x<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Ld/b/a/b/a/b;, "Lcom/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    .local p2, "componentTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TE;>;"
    .local p3, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    .line 58
    new-instance v0, Ld/b/a/b/a/v;

    invoke-direct {v0, p1, p2, p3}, Ld/b/a/b/a/v;-><init>(Ld/b/a/j;Ld/b/a/x;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Ld/b/a/b/a/b;->c:Ld/b/a/x;

    .line 60
    iput-object p3, p0, Ld/b/a/b/a/b;->b:Ljava/lang/Class;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    .local p0, "this":Ld/b/a/b/a/b;, "Lcom/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {p1}, Ld/b/a/d/b;->i()V

    .line 71
    :goto_0
    invoke-virtual {p1}, Ld/b/a/d/b;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Ld/b/a/b/a/b;->c:Ld/b/a/x;

    invoke-virtual {v1, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "instance":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v1    # "instance":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Ld/b/a/d/b;->n()V

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 78
    .local v1, "size":I
    iget-object v2, p0, Ld/b/a/b/a/b;->b:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "array":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 82
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    .local p0, "this":Ld/b/a/b/a/b;, "Lcom/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    if-nez p2, :cond_0

    .line 88
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    .line 89
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Ld/b/a/d/c;->k()Ld/b/a/d/c;

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 94
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "value":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Ld/b/a/b/a/b;->c:Ld/b/a/x;

    invoke-virtual {v3, p1, v2}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 93
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    invoke-virtual {p1}, Ld/b/a/d/c;->m()Ld/b/a/d/c;

    .line 98
    return-void
.end method
