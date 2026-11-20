.class public final Ld/b/a/b/a/a;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"

# interfaces
.implements Ld/b/a/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/b/a/b;
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
    .locals 5
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
    invoke-virtual {p2}, Ld/b/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 43
    .local v0, "type":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 47
    :cond_1
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 48
    .local v1, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Ld/b/a/c/a;->a(Ljava/lang/reflect/Type;)Ld/b/a/c/a;

    move-result-object v2

    invoke-virtual {p1, v2}, Ld/b/a/j;->a(Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v2

    .line 49
    .local v2, "componentTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    new-instance v3, Ld/b/a/b/a/b;

    .line 50
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v2, v4}, Ld/b/a/b/a/b;-><init>(Ld/b/a/j;Ld/b/a/x;Ljava/lang/Class;)V

    .line 49
    return-object v3
.end method
