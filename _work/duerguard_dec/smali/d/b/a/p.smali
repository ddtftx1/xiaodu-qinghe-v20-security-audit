.class public abstract Ld/b/a/p;
.super Ljava/lang/Object;
.source "JsonElement.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ld/b/a/m;
    .locals 3

    .line 104
    invoke-virtual {p0}, Ld/b/a/p;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    move-object v0, p0

    check-cast v0, Ld/b/a/m;

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a JSON Array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Ld/b/a/r;
    .locals 3

    .line 88
    invoke-virtual {p0}, Ld/b/a/p;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    move-object v0, p0

    check-cast v0, Ld/b/a/r;

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a JSON Object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ld/b/a/t;
    .locals 3

    .line 120
    invoke-virtual {p0}, Ld/b/a/p;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    move-object v0, p0

    check-cast v0, Ld/b/a/t;

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a JSON Primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 1

    .line 47
    instance-of v0, p0, Ld/b/a/m;

    return v0
.end method

.method public g()Z
    .locals 1

    .line 75
    instance-of v0, p0, Ld/b/a/q;

    return v0
.end method

.method public h()Z
    .locals 1

    .line 56
    instance-of v0, p0, Ld/b/a/r;

    return v0
.end method

.method public i()Z
    .locals 1

    .line 65
    instance-of v0, p0, Ld/b/a/t;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 322
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 323
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ld/b/a/d/c;

    invoke-direct {v1, v0}, Ld/b/a/d/c;-><init>(Ljava/io/Writer;)V

    .line 324
    .local v1, "jsonWriter":Ld/b/a/d/c;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ld/b/a/d/c;->b(Z)V

    .line 325
    invoke-static {p0, v1}, Ld/b/a/b/y;->a(Ld/b/a/p;Ld/b/a/d/c;)V

    .line 326
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 327
    .end local v0    # "stringWriter":Ljava/io/StringWriter;
    .end local v1    # "jsonWriter":Ld/b/a/d/c;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
