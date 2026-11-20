.class public final Ld/b/a/b/p;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ld/b/a/l<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ld/b/a/l<",
            "*>;>;)V"
        }
    .end annotation

    .line 51
    .local p1, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Ld/b/a/b/p;->a:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Ld/b/a/c/a;)Ld/b/a/b/w;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/b/a/c/a<",
            "TT;>;)",
            "Ld/b/a/b/w<",
            "TT;>;"
        }
    .end annotation

    .line 56
    .local p1, "typeToken":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Ld/b/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 57
    .local v0, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ld/b/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 62
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    iget-object v2, p0, Ld/b/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/b/a/l;

    .line 63
    .local v2, "typeCreator":Ld/b/a/l;, "Lcom/google/gson/InstanceCreator<TT;>;"
    if-eqz v2, :cond_0

    .line 64
    new-instance v3, Ld/b/a/b/g;

    invoke-direct {v3, p0, v2, v0}, Ld/b/a/b/g;-><init>(Ld/b/a/b/p;Ld/b/a/l;Ljava/lang/reflect/Type;)V

    return-object v3

    .line 73
    :cond_0
    iget-object v3, p0, Ld/b/a/b/p;->a:Ljava/util/Map;

    .line 74
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/b/a/l;

    .line 75
    .local v3, "rawTypeCreator":Ld/b/a/l;, "Lcom/google/gson/InstanceCreator<TT;>;"
    if-eqz v3, :cond_1

    .line 76
    new-instance v4, Ld/b/a/b/h;

    invoke-direct {v4, p0, v3, v0}, Ld/b/a/b/h;-><init>(Ld/b/a/b/p;Ld/b/a/l;Ljava/lang/reflect/Type;)V

    return-object v4

    .line 83
    :cond_1
    invoke-virtual {p0, v1}, Ld/b/a/b/p;->a(Ljava/lang/Class;)Ld/b/a/b/w;

    move-result-object v4

    .line 84
    .local v4, "defaultConstructor":Ld/b/a/b/w;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    if-eqz v4, :cond_2

    .line 85
    return-object v4

    .line 88
    :cond_2
    invoke-virtual {p0, v0, v1}, Ld/b/a/b/p;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ld/b/a/b/w;

    move-result-object v5

    .line 89
    .local v5, "defaultImplementation":Ld/b/a/b/w;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    if-eqz v5, :cond_3

    .line 90
    return-object v5

    .line 94
    :cond_3
    invoke-virtual {p0, v0, v1}, Ld/b/a/b/p;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ld/b/a/b/w;

    move-result-object v6

    return-object v6
.end method

.method public final a(Ljava/lang/Class;)Ld/b/a/b/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ld/b/a/b/w<",
            "TT;>;"
        }
    .end annotation

    .line 99
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 100
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 103
    :cond_0
    new-instance v1, Ld/b/a/b/i;

    invoke-direct {v1, p0, v0}, Ld/b/a/b/i;-><init>(Ld/b/a/b/p;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 122
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ld/b/a/b/w;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ld/b/a/b/w<",
            "TT;>;"
        }
    .end annotation

    .line 134
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ld/b/a/b/j;

    invoke-direct {v0, p0}, Ld/b/a/b/j;-><init>(Ld/b/a/b/p;)V

    return-object v0

    .line 141
    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Ld/b/a/b/k;

    invoke-direct {v0, p0, p1}, Ld/b/a/b/k;-><init>(Ld/b/a/b/p;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 157
    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Ld/b/a/b/l;

    invoke-direct {v0, p0}, Ld/b/a/b/l;-><init>(Ld/b/a/b/p;)V

    return-object v0

    .line 163
    :cond_2
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    new-instance v0, Ld/b/a/b/m;

    invoke-direct {v0, p0}, Ld/b/a/b/m;-><init>(Ld/b/a/b/p;)V

    return-object v0

    .line 170
    :cond_3
    new-instance v0, Ld/b/a/b/n;

    invoke-direct {v0, p0}, Ld/b/a/b/n;-><init>(Ld/b/a/b/p;)V

    return-object v0

    .line 178
    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 179
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    new-instance v0, Ld/b/a/b/o;

    invoke-direct {v0, p0}, Ld/b/a/b/o;-><init>(Ld/b/a/b/p;)V

    return-object v0

    .line 185
    :cond_5
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    new-instance v0, Ld/b/a/b/b;

    invoke-direct {v0, p0}, Ld/b/a/b/b;-><init>(Ld/b/a/b/p;)V

    return-object v0

    .line 191
    :cond_6
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    new-instance v0, Ld/b/a/b/c;

    invoke-direct {v0, p0}, Ld/b/a/b/c;-><init>(Ld/b/a/b/p;)V

    return-object v0

    .line 197
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_8

    const-class v0, Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 198
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ld/b/a/c/a;->a(Ljava/lang/reflect/Type;)Ld/b/a/c/a;

    move-result-object v1

    invoke-virtual {v1}, Ld/b/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 199
    new-instance v0, Ld/b/a/b/d;

    invoke-direct {v0, p0}, Ld/b/a/b/d;-><init>(Ld/b/a/b/p;)V

    return-object v0

    .line 205
    :cond_8
    new-instance v0, Ld/b/a/b/e;

    invoke-direct {v0, p0}, Ld/b/a/b/e;-><init>(Ld/b/a/b/p;)V

    return-object v0

    .line 213
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ld/b/a/b/w;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ld/b/a/b/w<",
            "TT;>;"
        }
    .end annotation

    .line 218
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    new-instance v0, Ld/b/a/b/f;

    invoke-direct {v0, p0, p2, p1}, Ld/b/a/b/f;-><init>(Ld/b/a/b/p;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Ld/b/a/b/p;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
