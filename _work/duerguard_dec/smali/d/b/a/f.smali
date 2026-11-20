.class public Ld/b/a/f;
.super Ld/b/a/x;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/j;->b(Z)Ld/b/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.method public constructor <init>(Ld/b/a/j;)V
    .locals 0
    .param p1, "this$0"    # Ld/b/a/j;

    .line 302
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;)Ljava/lang/Float;
    .locals 2
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 305
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 306
    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_0
    invoke-virtual {p1}, Ld/b/a/d/b;->u()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    .line 302
    invoke-virtual {p0, p1}, Ld/b/a/f;->a(Ld/b/a/d/b;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/Number;)V
    .locals 3
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    if-nez p2, :cond_0

    .line 312
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    .line 313
    return-void

    .line 315
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 316
    .local v0, "floatValue":F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ld/b/a/j;->a(D)V

    .line 317
    invoke-virtual {p1, p2}, Ld/b/a/d/c;->a(Ljava/lang/Number;)Ld/b/a/d/c;

    .line 318
    return-void
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Ld/b/a/f;->a(Ld/b/a/d/c;Ljava/lang/Number;)V

    return-void
.end method
