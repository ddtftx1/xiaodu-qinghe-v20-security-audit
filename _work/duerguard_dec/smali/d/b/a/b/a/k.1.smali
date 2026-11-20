.class public final Ld/b/a/b/a/k;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Ld/b/a/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/a/b/a/k$a;
    }
.end annotation


# instance fields
.field public final a:Ld/b/a/b/p;

.field public final b:Z


# direct methods
.method public constructor <init>(Ld/b/a/b/p;Z)V
    .locals 0
    .param p1, "constructorConstructor"    # Ld/b/a/b/p;
    .param p2, "complexMapKeySerialization"    # Z

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Ld/b/a/b/a/k;->a:Ld/b/a/b/p;

    .line 112
    iput-boolean p2, p0, Ld/b/a/b/a/k;->b:Z

    .line 113
    return-void
.end method


# virtual methods
.method public a(Ld/b/a/j;Ld/b/a/c/a;)Ld/b/a/x;
    .locals 18
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

    .line 116
    .local p2, "typeToken":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p2 .. p2}, Ld/b/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 118
    .local v10, "type":Ljava/lang/reflect/Type;
    invoke-virtual/range {p2 .. p2}, Ld/b/a/c/a;->a()Ljava/lang/Class;

    move-result-object v11

    .line 119
    .local v11, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    invoke-static {v10}, Lcom/google/gson/internal/$Gson$Types;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v12

    .line 124
    .local v12, "rawTypeOfSrc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v10, v12}, Lcom/google/gson/internal/$Gson$Types;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v13

    .line 125
    .local v13, "keyAndValueTypes":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    aget-object v1, v13, v0

    invoke-virtual {v8, v9, v1}, Ld/b/a/b/a/k;->a(Ld/b/a/j;Ljava/lang/reflect/Type;)Ld/b/a/x;

    move-result-object v14

    .line 126
    .local v14, "keyAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    const/4 v1, 0x1

    aget-object v2, v13, v1

    invoke-static {v2}, Ld/b/a/c/a;->a(Ljava/lang/reflect/Type;)Ld/b/a/c/a;

    move-result-object v2

    invoke-virtual {v9, v2}, Ld/b/a/j;->a(Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v15

    .line 127
    .local v15, "valueAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    iget-object v2, v8, Ld/b/a/b/a/k;->a:Ld/b/a/b/p;

    move-object/from16 v7, p2

    invoke-virtual {v2, v7}, Ld/b/a/b/p;->a(Ld/b/a/c/a;)Ld/b/a/b/w;

    move-result-object v16

    .line 131
    .local v16, "constructor":Ld/b/a/b/w;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v17, Ld/b/a/b/a/k$a;

    aget-object v3, v13, v0

    aget-object v5, v13, v1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Ld/b/a/b/a/k$a;-><init>(Ld/b/a/b/a/k;Ld/b/a/j;Ljava/lang/reflect/Type;Ld/b/a/x;Ljava/lang/reflect/Type;Ld/b/a/x;Ld/b/a/b/w;)V

    .line 133
    .local v0, "result":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    return-object v0
.end method

.method public final a(Ld/b/a/j;Ljava/lang/reflect/Type;)Ld/b/a/x;
    .locals 1
    .param p1, "context"    # Ld/b/a/j;
    .param p2, "keyType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/j;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ld/b/a/x<",
            "*>;"
        }
    .end annotation

    .line 140
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p2}, Ld/b/a/c/a;->a(Ljava/lang/reflect/Type;)Ld/b/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld/b/a/j;->a(Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v0

    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    sget-object v0, Ld/b/a/b/a/ha;->f:Ld/b/a/x;

    :goto_1
    return-object v0
.end method
