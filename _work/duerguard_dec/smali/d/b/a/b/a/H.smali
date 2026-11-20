.class public final Ld/b/a/b/a/H;
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
        "Ljava/lang/StringBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 465
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

    .line 465
    invoke-virtual {p0, p1}, Ld/b/a/b/a/H;->a(Ld/b/a/d/b;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/b/a/d/b;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 469
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 470
    const/4 v0, 0x0

    return-object v0

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ld/b/a/d/b;->z()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    check-cast p2, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Ld/b/a/b/a/H;->a(Ld/b/a/d/c;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "value"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ld/b/a/d/c;->e(Ljava/lang/String;)Ld/b/a/d/c;

    .line 477
    return-void
.end method
