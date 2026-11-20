.class public final Ld/b/a/b/a/S;
.super Ld/b/a/x;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/b/a/ha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/b/a/x<",
        "Ld/b/a/p;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 697
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;)Ld/b/a/p;
    .locals 3
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 708
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 709
    sget-object v0, Ld/b/a/q;->a:Ld/b/a/q;

    return-object v0

    .line 731
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 706
    :cond_1
    new-instance v0, Ld/b/a/t;

    invoke-virtual {p1}, Ld/b/a/d/b;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/b/a/t;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 703
    :cond_2
    invoke-virtual {p1}, Ld/b/a/d/b;->z()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "number":Ljava/lang/String;
    new-instance v1, Ld/b/a/t;

    new-instance v2, Lcom/google/gson/internal/LazilyParsedNumber;

    invoke-direct {v2, v0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ld/b/a/t;-><init>(Ljava/lang/Number;)V

    return-object v1

    .line 701
    .end local v0    # "number":Ljava/lang/String;
    :cond_3
    new-instance v0, Ld/b/a/t;

    invoke-virtual {p1}, Ld/b/a/d/b;->z()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/b/a/t;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 719
    :cond_4
    new-instance v0, Ld/b/a/r;

    invoke-direct {v0}, Ld/b/a/r;-><init>()V

    .line 720
    .local v0, "object":Ld/b/a/r;
    invoke-virtual {p1}, Ld/b/a/d/b;->j()V

    .line 721
    :goto_0
    invoke-virtual {p1}, Ld/b/a/d/b;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 722
    invoke-virtual {p1}, Ld/b/a/d/b;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Ld/b/a/b/a/S;->a(Ld/b/a/d/b;)Ld/b/a/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ld/b/a/r;->a(Ljava/lang/String;Ld/b/a/p;)V

    goto :goto_0

    .line 724
    :cond_5
    invoke-virtual {p1}, Ld/b/a/d/b;->o()V

    .line 725
    return-object v0

    .line 711
    .end local v0    # "object":Ld/b/a/r;
    :cond_6
    new-instance v0, Ld/b/a/m;

    invoke-direct {v0}, Ld/b/a/m;-><init>()V

    .line 712
    .local v0, "array":Ld/b/a/m;
    invoke-virtual {p1}, Ld/b/a/d/b;->i()V

    .line 713
    :goto_1
    invoke-virtual {p1}, Ld/b/a/d/b;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 714
    invoke-virtual {p0, p1}, Ld/b/a/b/a/S;->a(Ld/b/a/d/b;)Ld/b/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/b/a/m;->a(Ld/b/a/p;)V

    goto :goto_1

    .line 716
    :cond_7
    invoke-virtual {p1}, Ld/b/a/d/b;->n()V

    .line 717
    return-object v0
.end method

.method public bridge synthetic a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-virtual {p0, p1}, Ld/b/a/b/a/S;->a(Ld/b/a/d/b;)Ld/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/b/a/d/c;Ld/b/a/p;)V
    .locals 3
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "value"    # Ld/b/a/p;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ld/b/a/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 738
    :cond_0
    invoke-virtual {p2}, Ld/b/a/p;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 739
    invoke-virtual {p2}, Ld/b/a/p;->d()Ld/b/a/t;

    move-result-object v0

    .line 740
    .local v0, "primitive":Ld/b/a/t;
    invoke-virtual {v0}, Ld/b/a/t;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    invoke-virtual {v0}, Ld/b/a/t;->n()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v1}, Ld/b/a/d/c;->a(Ljava/lang/Number;)Ld/b/a/d/c;

    goto :goto_0

    .line 742
    :cond_1
    invoke-virtual {v0}, Ld/b/a/t;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 743
    invoke-virtual {v0}, Ld/b/a/t;->j()Z

    move-result v1

    invoke-virtual {p1, v1}, Ld/b/a/d/c;->d(Z)Ld/b/a/d/c;

    goto :goto_0

    .line 745
    :cond_2
    invoke-virtual {v0}, Ld/b/a/t;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ld/b/a/d/c;->e(Ljava/lang/String;)Ld/b/a/d/c;

    .line 748
    .end local v0    # "primitive":Ld/b/a/t;
    :goto_0
    goto/16 :goto_4

    :cond_3
    invoke-virtual {p2}, Ld/b/a/p;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 749
    invoke-virtual {p1}, Ld/b/a/d/c;->k()Ld/b/a/d/c;

    .line 750
    invoke-virtual {p2}, Ld/b/a/p;->b()Ld/b/a/m;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/b/a/p;

    .line 751
    .local v1, "e":Ld/b/a/p;
    invoke-virtual {p0, p1, v1}, Ld/b/a/b/a/S;->a(Ld/b/a/d/c;Ld/b/a/p;)V

    .line 752
    .end local v1    # "e":Ld/b/a/p;
    goto :goto_1

    .line 753
    :cond_4
    invoke-virtual {p1}, Ld/b/a/d/c;->m()Ld/b/a/d/c;

    goto :goto_4

    .line 755
    :cond_5
    invoke-virtual {p2}, Ld/b/a/p;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 756
    invoke-virtual {p1}, Ld/b/a/d/c;->l()Ld/b/a/d/c;

    .line 757
    invoke-virtual {p2}, Ld/b/a/p;->c()Ld/b/a/r;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/r;->j()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 758
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ld/b/a/d/c;->b(Ljava/lang/String;)Ld/b/a/d/c;

    .line 759
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/b/a/p;

    invoke-virtual {p0, p1, v2}, Ld/b/a/b/a/S;->a(Ld/b/a/d/c;Ld/b/a/p;)V

    .line 760
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    goto :goto_2

    .line 761
    :cond_6
    invoke-virtual {p1}, Ld/b/a/d/c;->n()Ld/b/a/d/c;

    goto :goto_4

    .line 764
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_8
    :goto_3
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    .line 766
    :goto_4
    return-void
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    check-cast p2, Ld/b/a/p;

    invoke-virtual {p0, p1, p2}, Ld/b/a/b/a/S;->a(Ld/b/a/d/c;Ld/b/a/p;)V

    return-void
.end method
