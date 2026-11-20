.class public final Ld/b/a/b/a/m;
.super Ld/b/a/x;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/b/a/x<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ld/b/a/y;


# instance fields
.field public final b:Ld/b/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ld/b/a/b/a/l;

    invoke-direct {v0}, Ld/b/a/b/a/l;-><init>()V

    sput-object v0, Ld/b/a/b/a/m;->a:Ld/b/a/y;

    return-void
.end method

.method public constructor <init>(Ld/b/a/j;)V
    .locals 0
    .param p1, "gson"    # Ld/b/a/j;

    .line 50
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    .line 51
    iput-object p1, p0, Ld/b/a/b/a/m;->b:Ld/b/a/j;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 56
    .local v0, "token":Lcom/google/gson/stream/JsonToken;
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 85
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 86
    const/4 v1, 0x0

    return-object v1

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 82
    :cond_1
    invoke-virtual {p1}, Ld/b/a/d/b;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 79
    :cond_2
    invoke-virtual {p1}, Ld/b/a/d/b;->u()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 76
    :cond_3
    invoke-virtual {p1}, Ld/b/a/d/b;->z()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 67
    :cond_4
    new-instance v1, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v1}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    .line 68
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ld/b/a/d/b;->j()V

    .line 69
    :goto_0
    invoke-virtual {p1}, Ld/b/a/d/b;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    invoke-virtual {p1}, Ld/b/a/d/b;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Ld/b/a/b/a/m;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_5
    invoke-virtual {p1}, Ld/b/a/d/b;->o()V

    .line 73
    return-object v1

    .line 58
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ld/b/a/d/b;->i()V

    .line 60
    :goto_1
    invoke-virtual {p1}, Ld/b/a/d/b;->q()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 61
    invoke-virtual {p0, p1}, Ld/b/a/b/a/m;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_7
    invoke-virtual {p1}, Ld/b/a/d/b;->n()V

    .line 64
    return-object v1
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    .line 97
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Ld/b/a/b/a/m;->b:Ld/b/a/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/b/a/j;->a(Ljava/lang/Class;)Ld/b/a/x;

    move-result-object v0

    .line 101
    .local v0, "typeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Object;>;"
    instance-of v1, v0, Ld/b/a/b/a/m;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Ld/b/a/d/c;->l()Ld/b/a/d/c;

    .line 103
    invoke-virtual {p1}, Ld/b/a/d/c;->n()Ld/b/a/d/c;

    .line 104
    return-void

    .line 107
    :cond_1
    invoke-virtual {v0, p1, p2}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 108
    return-void
.end method
