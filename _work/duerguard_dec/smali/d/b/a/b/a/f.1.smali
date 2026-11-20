.class public final Ld/b/a/b/a/f;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Ld/b/a/y;


# instance fields
.field public final a:Ld/b/a/b/p;


# direct methods
.method public constructor <init>(Ld/b/a/b/p;)V
    .locals 0
    .param p1, "constructorConstructor"    # Ld/b/a/b/p;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ld/b/a/b/a/f;->a:Ld/b/a/b/p;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Ld/b/a/b/p;Ld/b/a/j;Ld/b/a/c/a;Ld/b/a/a/b;)Ld/b/a/x;
    .locals 9
    .param p1, "constructorConstructor"    # Ld/b/a/b/p;
    .param p2, "gson"    # Ld/b/a/j;
    .param p4, "annotation"    # Ld/b/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/b/p;",
            "Ld/b/a/j;",
            "Ld/b/a/c/a<",
            "*>;",
            "Ld/b/a/a/b;",
            ")",
            "Ld/b/a/x<",
            "*>;"
        }
    .end annotation

    .line 55
    .local p3, "type":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<*>;"
    invoke-interface {p4}, Ld/b/a/a/b;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ld/b/a/c/a;->a(Ljava/lang/Class;)Ld/b/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld/b/a/b/p;->a(Ld/b/a/c/a;)Ld/b/a/b/w;

    move-result-object v0

    invoke-interface {v0}, Ld/b/a/b/w;->a()Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "instance":Ljava/lang/Object;
    instance-of v1, v0, Ld/b/a/x;

    if-eqz v1, :cond_0

    .line 59
    move-object v1, v0

    check-cast v1, Ld/b/a/x;

    .local v1, "typeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    goto :goto_2

    .line 60
    .end local v1    # "typeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    :cond_0
    instance-of v1, v0, Ld/b/a/y;

    if-eqz v1, :cond_1

    .line 61
    move-object v1, v0

    check-cast v1, Ld/b/a/y;

    invoke-interface {v1, p2, p3}, Ld/b/a/y;->a(Ld/b/a/j;Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v1

    .restart local v1    # "typeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    goto :goto_2

    .line 62
    .end local v1    # "typeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    :cond_1
    instance-of v1, v0, Ld/b/a/v;

    if-nez v1, :cond_3

    instance-of v1, v0, Ld/b/a/o;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attempt to bind an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as a @JsonAdapter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ld/b/a/c/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_3
    :goto_0
    instance-of v1, v0, Ld/b/a/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ld/b/a/v;

    move-object v4, v1

    goto :goto_1

    :cond_4
    move-object v4, v2

    .line 66
    .local v4, "serializer":Ld/b/a/v;, "Lcom/google/gson/JsonSerializer<*>;"
    :goto_1
    instance-of v1, v0, Ld/b/a/o;

    if-eqz v1, :cond_5

    move-object v2, v0

    check-cast v2, Ld/b/a/o;

    :cond_5
    move-object v5, v2

    .line 69
    .local v5, "deserializer":Ld/b/a/o;, "Lcom/google/gson/JsonDeserializer<*>;"
    new-instance v1, Ld/b/a/b/a/u;

    const/4 v8, 0x0

    move-object v3, v1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Ld/b/a/b/a/u;-><init>(Ld/b/a/v;Ld/b/a/o;Ld/b/a/j;Ld/b/a/c/a;Ld/b/a/y;)V

    .line 70
    .end local v4    # "serializer":Ld/b/a/v;, "Lcom/google/gson/JsonSerializer<*>;"
    .end local v5    # "deserializer":Ld/b/a/o;, "Lcom/google/gson/JsonDeserializer<*>;"
    .restart local v1    # "typeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    nop

    .line 77
    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {p4}, Ld/b/a/a/b;->nullSafe()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 78
    invoke-virtual {v1}, Ld/b/a/x;->a()Ld/b/a/x;

    move-result-object v1

    .line 81
    :cond_6
    return-object v1
.end method

.method public a(Ld/b/a/j;Ld/b/a/c/a;)Ld/b/a/x;
    .locals 3
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

    .line 44
    .local p2, "targetType":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Ld/b/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v1, Ld/b/a/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ld/b/a/a/b;

    .line 46
    .local v1, "annotation":Ld/b/a/a/b;
    if-nez v1, :cond_0

    .line 47
    const/4 v2, 0x0

    return-object v2

    .line 49
    :cond_0
    iget-object v2, p0, Ld/b/a/b/a/f;->a:Ld/b/a/b/p;

    invoke-virtual {p0, v2, p1, p2, v1}, Ld/b/a/b/a/f;->a(Ld/b/a/b/p;Ld/b/a/j;Ld/b/a/c/a;Ld/b/a/a/b;)Ld/b/a/x;

    move-result-object v2

    return-object v2
.end method
