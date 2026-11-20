.class public final Ld/b/a/b/a/E;
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
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 427
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

    .line 427
    invoke-virtual {p0, p1}, Ld/b/a/b/a/E;->a(Ld/b/a/d/b;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/b/a/d/b;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 430
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 431
    const/4 v0, 0x0

    return-object v0

    .line 434
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ld/b/a/d/b;->z()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Ld/b/a/b/a/E;->a(Ld/b/a/d/c;Ljava/math/BigInteger;)V

    return-void
.end method

.method public a(Ld/b/a/d/c;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    invoke-virtual {p1, p2}, Ld/b/a/d/c;->a(Ljava/lang/Number;)Ld/b/a/d/c;

    .line 442
    return-void
.end method
