.class public Ld/b/a/b/u;
.super Lcom/google/gson/internal/LinkedTreeMap$c;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/LinkedTreeMap$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedTreeMap<",
        "TK;TV;>.c<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap$a;)V
    .locals 1
    .param p1, "this$1"    # Lcom/google/gson/internal/LinkedTreeMap$a;

    .line 566
    .local p0, "this":Ld/b/a/b/u;, "Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;"
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$a;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap$c;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 566
    .local p0, "this":Ld/b/a/b/u;, "Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Ld/b/a/b/u;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 568
    .local p0, "this":Ld/b/a/b/u;, "Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$c;->a()Lcom/google/gson/internal/LinkedTreeMap$d;

    move-result-object v0

    return-object v0
.end method
