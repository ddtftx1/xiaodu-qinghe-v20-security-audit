.class public final Ld/b/a/b/y;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/a/b/y$a;
    }
.end annotation


# direct methods
.method public static a(Ld/b/a/d/b;)Ld/b/a/p;
    .locals 3
    .param p0, "reader"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x1

    .line 46
    .local v0, "isEmpty":Z
    :try_start_0
    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    .line 47
    const/4 v0, 0x0

    .line 48
    sget-object v1, Ld/b/a/b/a/ha;->X:Ld/b/a/x;

    invoke-virtual {v1, p0}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/b/a/p;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 61
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/gson/JsonIOException;

    invoke-direct {v2, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 59
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 60
    .local v1, "e":Lcom/google/gson/stream/MalformedJsonException;
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 49
    .end local v1    # "e":Lcom/google/gson/stream/MalformedJsonException;
    :catch_3
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/EOFException;
    if-eqz v0, :cond_0

    .line 55
    sget-object v2, Ld/b/a/q;->a:Ld/b/a/q;

    return-object v2

    .line 58
    :cond_0
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1
    .param p0, "appendable"    # Ljava/lang/Appendable;

    .line 76
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Ld/b/a/b/y$a;

    invoke-direct {v0, p0}, Ld/b/a/b/y$a;-><init>(Ljava/lang/Appendable;)V

    :goto_0
    return-object v0
.end method

.method public static a(Ld/b/a/p;Ld/b/a/d/c;)V
    .locals 1
    .param p0, "element"    # Ld/b/a/p;
    .param p1, "writer"    # Ld/b/a/d/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    sget-object v0, Ld/b/a/b/a/ha;->X:Ld/b/a/x;

    invoke-virtual {v0, p1, p0}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
