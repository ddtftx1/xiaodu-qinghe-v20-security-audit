.class public final Ld/b/a/b/a/c;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Ld/b/a/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/a/b/a/c$a;
    }
.end annotation


# instance fields
.field public final a:Ld/b/a/b/p;


# direct methods
.method public constructor <init>(Ld/b/a/b/p;)V
    .locals 0
    .param p1, "constructorConstructor"    # Ld/b/a/b/p;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ld/b/a/b/a/c;->a:Ld/b/a/b/p;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Ld/b/a/j;Ld/b/a/c/a;)Ld/b/a/x;
    .locals 6
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

    .line 45
    .local p2, "typeToken":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Ld/b/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 47
    .local v0, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Ld/b/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const/4 v2, 0x0

    return-object v2

    .line 52
    :cond_0
    invoke-static {v0, v1}, Lcom/google/gson/internal/$Gson$Types;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 53
    .local v2, "elementType":Ljava/lang/reflect/Type;
    invoke-static {v2}, Ld/b/a/c/a;->a(Ljava/lang/reflect/Type;)Ld/b/a/c/a;

    move-result-object v3

    invoke-virtual {p1, v3}, Ld/b/a/j;->a(Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v3

    .line 54
    .local v3, "elementTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    iget-object v4, p0, Ld/b/a/b/a/c;->a:Ld/b/a/b/p;

    invoke-virtual {v4, p2}, Ld/b/a/b/p;->a(Ld/b/a/c/a;)Ld/b/a/b/w;

    move-result-object v4

    .line 57
    .local v4, "constructor":Ld/b/a/b/w;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v5, Ld/b/a/b/a/c$a;

    invoke-direct {v5, p1, v2, v3, v4}, Ld/b/a/b/a/c$a;-><init>(Ld/b/a/j;Ljava/lang/reflect/Type;Ld/b/a/x;Ld/b/a/b/w;)V

    .line 58
    .local v5, "result":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    return-object v5
.end method
