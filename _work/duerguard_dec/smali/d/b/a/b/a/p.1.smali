.class public final Ld/b/a/b/a/p;
.super Ljava/lang/Object;
.source "SqlDateTypeAdapter.java"

# interfaces
.implements Ld/b/a/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/b/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/a/j;Ld/b/a/c/a;)Ld/b/a/x;
    .locals 2
    .param p1, "gson"    # Ld/b/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/b/a/j;",
            "Ld/b/a/c/a<",
            "TT;>;)",
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation

    .line 42
    .local p2, "typeToken":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Ld/b/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Date;

    if-ne v0, v1, :cond_0

    new-instance v0, Ld/b/a/b/a/q;

    invoke-direct {v0}, Ld/b/a/b/a/q;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
