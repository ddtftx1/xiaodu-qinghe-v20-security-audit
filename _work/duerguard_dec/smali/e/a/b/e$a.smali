.class public final Le/a/b/e$a;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/L;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/L;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Route;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Le/a/b/e$a;->b:I

    .line 223
    iput-object p1, p0, Le/a/b/e$a;->a:Ljava/util/List;

    .line 224
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/L;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Le/a/b/e$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 227
    iget v0, p0, Le/a/b/e$a;->b:I

    iget-object v1, p0, Le/a/b/e$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Le/L;
    .locals 3

    .line 231
    invoke-virtual {p0}, Le/a/b/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Le/a/b/e$a;->a:Ljava/util/List;

    iget v1, p0, Le/a/b/e$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/a/b/e$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/L;

    return-object v0

    .line 232
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
