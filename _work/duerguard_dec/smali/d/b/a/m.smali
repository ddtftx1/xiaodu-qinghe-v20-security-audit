.class public final Ld/b/a/m;
.super Ld/b/a/p;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/b/a/p;",
        "Ljava/lang/Iterable<",
        "Ld/b/a/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/b/a/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ld/b/a/p;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/b/a/m;->a:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 321
    iget-object v0, p0, Ld/b/a/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Ld/b/a/m;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/b/a/p;

    invoke-virtual {v0}, Ld/b/a/p;->a()I

    move-result v0

    return v0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Ld/b/a/p;)V
    .locals 1
    .param p1, "element"    # Ld/b/a/p;

    .line 105
    if-nez p1, :cond_0

    .line 106
    sget-object p1, Ld/b/a/q;->a:Ld/b/a/q;

    .line 108
    :cond_0
    iget-object v0, p0, Ld/b/a/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Ld/b/a/m;->a:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v1, Ld/b/a/q;->a:Ld/b/a/q;

    goto :goto_0

    :cond_0
    new-instance v1, Ld/b/a/t;

    invoke-direct {v1, p1}, Ld/b/a/t;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 223
    iget-object v0, p0, Ld/b/a/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Ld/b/a/m;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/b/a/p;

    invoke-virtual {v0}, Ld/b/a/p;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 377
    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ld/b/a/m;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ld/b/a/m;

    iget-object v0, v0, Ld/b/a/m;->a:Ljava/util/List;

    iget-object v1, p0, Ld/b/a/m;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 382
    iget-object v0, p0, Ld/b/a/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ld/b/a/p;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Ld/b/a/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
