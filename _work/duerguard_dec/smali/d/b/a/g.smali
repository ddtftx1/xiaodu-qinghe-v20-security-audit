.class public final Ld/b/a/g;
.super Ld/b/a/x;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/j;->a(Lcom/google/gson/LongSerializationPolicy;)Ld/b/a/x;
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

    .line 334
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;)Ljava/lang/Number;
    .locals 2
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 337
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 338
    const/4 v0, 0x0

    return-object v0

    .line 340
    :cond_0
    invoke-virtual {p1}, Ld/b/a/d/b;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0, p1}, Ld/b/a/g;->a(Ld/b/a/d/b;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/Number;)V
    .locals 1
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    if-nez p2, :cond_0

    .line 344
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    .line 345
    return-void

    .line 347
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld/b/a/d/c;->e(Ljava/lang/String;)Ld/b/a/d/c;

    .line 348
    return-void
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Ld/b/a/g;->a(Ld/b/a/d/c;Ljava/lang/Number;)V

    return-void
.end method
