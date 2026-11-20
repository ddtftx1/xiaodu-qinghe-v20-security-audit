.class public final Ld/b/a/b/a/J;
.super Ld/b/a/x;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/b/a/ha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/b/a/x<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 501
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0, p1}, Ld/b/a/b/a/J;->a(Ld/b/a/d/b;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/b/a/d/b;)Ljava/net/URI;
    .locals 3
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 505
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 506
    return-object v2

    .line 509
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ld/b/a/d/b;->z()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "nextString":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v2

    .line 511
    .end local v0    # "nextString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    check-cast p2, Ljava/net/URI;

    invoke-virtual {p0, p1, p2}, Ld/b/a/b/a/J;->a(Ld/b/a/d/c;Ljava/net/URI;)V

    return-void
.end method

.method public a(Ld/b/a/d/c;Ljava/net/URI;)V
    .locals 1
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "value"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ld/b/a/d/c;->e(Ljava/lang/String;)Ld/b/a/d/c;

    .line 518
    return-void
.end method
