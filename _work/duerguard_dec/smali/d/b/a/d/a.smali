.class public final Ld/b/a/d/a;
.super Ld/b/a/b/s;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1594
    invoke-direct {p0}, Ld/b/a/b/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;)V
    .locals 4
    .param p1, "reader"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1596
    instance-of v0, p1, Ld/b/a/b/a/h;

    if-eqz v0, :cond_0

    .line 1597
    move-object v0, p1

    check-cast v0, Ld/b/a/b/a/h;

    invoke-virtual {v0}, Ld/b/a/b/a/h;->K()V

    .line 1598
    return-void

    .line 1600
    :cond_0
    iget v0, p1, Ld/b/a/d/b;->i:I

    .line 1601
    .local v0, "p":I
    if-nez v0, :cond_1

    .line 1602
    invoke-virtual {p1}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 1604
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1605
    const/16 v1, 0x9

    iput v1, p1, Ld/b/a/d/b;->i:I

    goto :goto_0

    .line 1606
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1607
    const/16 v1, 0x8

    iput v1, p1, Ld/b/a/d/b;->i:I

    goto :goto_0

    .line 1608
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1609
    const/16 v1, 0xa

    iput v1, p1, Ld/b/a/d/b;->i:I

    .line 1614
    :goto_0
    return-void

    .line 1611
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
