.class public final Ld/b/a/b/a/A;
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
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 344
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;)Ljava/lang/Number;
    .locals 4
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 348
    .local v0, "jsonToken":Lcom/google/gson/stream/JsonToken;
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 350
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 351
    const/4 v1, 0x0

    return-object v1

    .line 356
    :cond_0
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting number, got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_1
    new-instance v1, Lcom/google/gson/internal/LazilyParsedNumber;

    invoke-virtual {p1}, Ld/b/a/d/b;->z()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0, p1}, Ld/b/a/b/a/A;->a(Ld/b/a/d/b;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/Number;)V
    .locals 0
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    invoke-virtual {p1, p2}, Ld/b/a/d/c;->a(Ljava/lang/Number;)Ld/b/a/d/c;

    .line 362
    return-void
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Ld/b/a/b/a/A;->a(Ld/b/a/d/c;Ljava/lang/Number;)V

    return-void
.end method
