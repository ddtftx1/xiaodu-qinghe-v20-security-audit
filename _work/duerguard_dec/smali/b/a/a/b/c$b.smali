.class public Lb/a/a/b/c$b;
.super Lb/a/a/b/c$e;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/a/a/b/c$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb/a/a/b/c$c;Lb/a/a/b/c$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/b/c$c<",
            "TK;TV;>;",
            "Lb/a/a/b/c$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 287
    .local p0, "this":Lb/a/a/b/c$b;, "Landroid/arch/core/internal/SafeIterableMap$DescendingIterator<TK;TV;>;"
    .local p1, "start":Lb/a/a/b/c$c;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    .local p2, "expectedEnd":Lb/a/a/b/c$c;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lb/a/a/b/c$e;-><init>(Lb/a/a/b/c$c;Lb/a/a/b/c$c;)V

    .line 288
    return-void
.end method


# virtual methods
.method public b(Lb/a/a/b/c$c;)Lb/a/a/b/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/b/c$c<",
            "TK;TV;>;)",
            "Lb/a/a/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lb/a/a/b/c$b;, "Landroid/arch/core/internal/SafeIterableMap$DescendingIterator<TK;TV;>;"
    .local p1, "entry":Lb/a/a/b/c$c;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p1, Lb/a/a/b/c$c;->c:Lb/a/a/b/c$c;

    return-object v0
.end method

.method public c(Lb/a/a/b/c$c;)Lb/a/a/b/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/b/c$c<",
            "TK;TV;>;)",
            "Lb/a/a/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lb/a/a/b/c$b;, "Landroid/arch/core/internal/SafeIterableMap$DescendingIterator<TK;TV;>;"
    .local p1, "entry":Lb/a/a/b/c$c;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p1, Lb/a/a/b/c$c;->d:Lb/a/a/b/c$c;

    return-object v0
.end method
