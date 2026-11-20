.class public abstract Ld/b/a/x;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 119
    .local p0, "this":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ld/b/a/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ld/b/a/p;"
        }
    .end annotation

    .line 233
    .local p0, "this":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v0, Ld/b/a/b/a/j;

    invoke-direct {v0}, Ld/b/a/b/a/j;-><init>()V

    .line 234
    .local v0, "jsonWriter":Ld/b/a/b/a/j;
    invoke-virtual {p0, v0, p1}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0}, Ld/b/a/b/a/j;->v()Ld/b/a/p;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 236
    .end local v0    # "jsonWriter":Ld/b/a/b/a/j;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a()Ld/b/a/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation

    .line 186
    .local p0, "this":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    new-instance v0, Ld/b/a/w;

    invoke-direct {v0, p0}, Ld/b/a/w;-><init>(Ld/b/a/x;)V

    return-object v0
.end method

.method public abstract a(Ld/b/a/d/b;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/d/b;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
