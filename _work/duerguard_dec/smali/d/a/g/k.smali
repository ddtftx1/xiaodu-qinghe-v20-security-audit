.class public final Ld/a/g/k;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# direct methods
.method public static a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_3

    .line 48
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eqz p0, :cond_2

    const-class v2, Ljava/lang/Object;

    if-eq p0, v2, :cond_2

    .line 49
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 50
    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 52
    :try_start_0
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 54
    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_2

    .line 55
    :catch_0
    move-exception v5

    .line 58
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 50
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    return v1

    .line 44
    :cond_3
    :goto_3
    return v0
.end method
