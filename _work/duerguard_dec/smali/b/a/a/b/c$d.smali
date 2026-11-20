.class public Lb/a/a/b/c$d;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lb/a/a/b/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lb/a/a/b/c$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public a:Lb/a/a/b/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public final synthetic c:Lb/a/a/b/c;


# direct methods
.method public constructor <init>(Lb/a/a/b/c;)V
    .locals 0

    .line 301
    .local p0, "this":Lb/a/a/b/c$d;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iput-object p1, p0, Lb/a/a/b/c$d;->c:Lb/a/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/a/a/b/c$d;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/b/c;Lb/a/a/b/b;)V
    .locals 0
    .param p1, "x0"    # Lb/a/a/b/c;
    .param p2, "x1"    # Lb/a/a/b/b;

    .line 301
    .local p0, "this":Lb/a/a/b/c$d;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    invoke-direct {p0, p1}, Lb/a/a/b/c$d;-><init>(Lb/a/a/b/c;)V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/b/c$c;)V
    .locals 1
    .param p1    # Lb/a/a/b/c$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/b/c$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 307
    .local p0, "this":Lb/a/a/b/c$d;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    .local p1, "entry":Lb/a/a/b/c$c;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p0, Lb/a/a/b/c$d;->a:Lb/a/a/b/c$c;

    if-ne p1, v0, :cond_1

    .line 308
    iget-object v0, v0, Lb/a/a/b/c$c;->d:Lb/a/a/b/c$c;

    iput-object v0, p0, Lb/a/a/b/c$d;->a:Lb/a/a/b/c$c;

    .line 309
    iget-object v0, p0, Lb/a/a/b/c$d;->a:Lb/a/a/b/c$c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lb/a/a/b/c$d;->b:Z

    .line 311
    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 3

    .line 315
    .local p0, "this":Lb/a/a/b/c$d;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iget-boolean v0, p0, Lb/a/a/b/c$d;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lb/a/a/b/c$d;->c:Lb/a/a/b/c;

    invoke-static {v0}, Lb/a/a/b/c;->a(Lb/a/a/b/c;)Lb/a/a/b/c$c;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 318
    :cond_1
    iget-object v0, p0, Lb/a/a/b/c$d;->a:Lb/a/a/b/c$c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lb/a/a/b/c$c;->c:Lb/a/a/b/c$c;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 301
    .local p0, "this":Lb/a/a/b/c$d;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    invoke-virtual {p0}, Lb/a/a/b/c$d;->next()Ljava/util/Map$Entry;

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

    .line 323
    .local p0, "this":Lb/a/a/b/c$d;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iget-boolean v0, p0, Lb/a/a/b/c$d;->b:Z

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/b/c$d;->b:Z

    .line 325
    iget-object v0, p0, Lb/a/a/b/c$d;->c:Lb/a/a/b/c;

    invoke-static {v0}, Lb/a/a/b/c;->a(Lb/a/a/b/c;)Lb/a/a/b/c$c;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b/c$d;->a:Lb/a/a/b/c$c;

    goto :goto_1

    .line 327
    :cond_0
    iget-object v0, p0, Lb/a/a/b/c$d;->a:Lb/a/a/b/c$c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lb/a/a/b/c$c;->c:Lb/a/a/b/c$c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lb/a/a/b/c$d;->a:Lb/a/a/b/c$c;

    .line 329
    :goto_1
    iget-object v0, p0, Lb/a/a/b/c$d;->a:Lb/a/a/b/c$c;

    return-object v0
.end method
