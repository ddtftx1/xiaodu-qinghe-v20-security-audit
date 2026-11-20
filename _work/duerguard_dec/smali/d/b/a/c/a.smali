.class public Ld/b/a/c/a;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/reflect/Type;

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    .local p0, "this":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ld/b/a/c/a;->b(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Ld/b/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 63
    iget-object v0, p0, Ld/b/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ld/b/a/c/a;->a:Ljava/lang/Class;

    .line 64
    iget-object v0, p0, Ld/b/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Ld/b/a/c/a;->c:I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 71
    .local p0, "this":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ld/b/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Ld/b/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 73
    iget-object v0, p0, Ld/b/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ld/b/a/c/a;->a:Ljava/lang/Class;

    .line 74
    iget-object v0, p0, Ld/b/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Ld/b/a/c/a;->c:I

    .line 75
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ld/b/a/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ld/b/a/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 303
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ld/b/a/c/a;

    invoke-direct {v0, p0}, Ld/b/a/c/a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;)Ld/b/a/c/a;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ld/b/a/c/a<",
            "*>;"
        }
    .end annotation

    .line 296
    new-instance v0, Ld/b/a/c/a;

    invoke-direct {v0, p0}, Ld/b/a/c/a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 82
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 83
    .local v0, "superclass":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 86
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 87
    .local v1, "parameterized":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2

    .line 84
    .end local v1    # "parameterized":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing type parameter."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Ld/b/a/c/a;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Ljava/lang/reflect/Type;
    .locals 1

    .line 101
    .local p0, "this":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Ld/b/a/c/a;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 284
    .local p0, "this":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    instance-of v0, p1, Ld/b/a/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/b/a/c/a;->b:Ljava/lang/reflect/Type;

    move-object v1, p1

    check-cast v1, Ld/b/a/c/a;

    iget-object v1, v1, Ld/b/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 285
    invoke-static {v0, v1}, Lcom/google/gson/internal/$Gson$Types;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 280
    .local p0, "this":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget v0, p0, Ld/b/a/c/a;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 289
    .local p0, "this":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Ld/b/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->h(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
