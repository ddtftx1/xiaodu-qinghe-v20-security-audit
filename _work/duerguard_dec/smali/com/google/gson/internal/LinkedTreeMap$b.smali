.class public final Lcom/google/gson/internal/LinkedTreeMap$b;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/gson/internal/LinkedTreeMap;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/gson/internal/LinkedTreeMap;

    .line 595
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$b;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$b;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 617
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$b;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$b;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->clear()V

    .line 618
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 609
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$b;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$b;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 601
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$b;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    new-instance v0, Ld/b/a/b/v;

    invoke-direct {v0, p0}, Ld/b/a/b/v;-><init>(Lcom/google/gson/internal/LinkedTreeMap$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 613
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$b;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$b;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->b(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 597
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$b;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$b;->a:Lcom/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap;->d:I

    return v0
.end method
