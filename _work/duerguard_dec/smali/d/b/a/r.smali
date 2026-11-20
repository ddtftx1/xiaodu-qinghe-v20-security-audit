.class public final Ld/b/a/r;
.super Ld/b/a/p;
.source "JsonObject.java"


# instance fields
.field public final a:Lcom/google/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Ld/b/a/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ld/b/a/p;-><init>()V

    .line 33
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Ld/b/a/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ld/b/a/p;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 126
    if-nez p1, :cond_0

    sget-object v0, Ld/b/a/q;->a:Ld/b/a/q;

    goto :goto_0

    :cond_0
    new-instance v0, Ld/b/a/t;

    invoke-direct {v0, p1}, Ld/b/a/t;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ld/b/a/p;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Ld/b/a/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/b/a/p;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ld/b/a/p;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ld/b/a/p;

    .line 58
    if-nez p2, :cond_0

    .line 59
    sget-object p2, Ld/b/a/q;->a:Ld/b/a/q;

    .line 61
    :cond_0
    iget-object v0, p0, Ld/b/a/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 83
    invoke-virtual {p0, p2}, Ld/b/a/r;->a(Ljava/lang/Object;)Ld/b/a/p;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ld/b/a/r;->a(Ljava/lang/String;Ld/b/a/p;)V

    .line 84
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Ld/b/a/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 210
    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ld/b/a/r;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ld/b/a/r;

    iget-object v0, v0, Ld/b/a/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Ld/b/a/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 210
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 216
    iget-object v0, p0, Ld/b/a/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ld/b/a/p;",
            ">;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Ld/b/a/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
