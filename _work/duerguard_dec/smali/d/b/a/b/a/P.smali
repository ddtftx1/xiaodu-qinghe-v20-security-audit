.class public final Ld/b/a/b/a/P;
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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 592
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

    .line 592
    invoke-virtual {p0, p1}, Ld/b/a/b/a/P;->a(Ld/b/a/d/b;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/b/a/d/b;)Ljava/util/Calendar;
    .locals 14
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 603
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 604
    const/4 v0, 0x0

    return-object v0

    .line 606
    :cond_0
    invoke-virtual {p1}, Ld/b/a/d/b;->j()V

    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, "year":I
    const/4 v1, 0x0

    .line 609
    .local v1, "month":I
    const/4 v2, 0x0

    .line 610
    .local v2, "dayOfMonth":I
    const/4 v3, 0x0

    .line 611
    .local v3, "hourOfDay":I
    const/4 v4, 0x0

    .line 612
    .local v4, "minute":I
    const/4 v5, 0x0

    .line 613
    .local v5, "second":I
    :goto_0
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/google/gson/stream/JsonToken;->d:Lcom/google/gson/stream/JsonToken;

    if-eq v6, v7, :cond_7

    .line 614
    invoke-virtual {p1}, Ld/b/a/d/b;->x()Ljava/lang/String;

    move-result-object v6

    .line 615
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ld/b/a/d/b;->v()I

    move-result v7

    .line 616
    .local v7, "value":I
    const-string v8, "year"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 617
    move v0, v7

    goto :goto_1

    .line 618
    :cond_1
    const-string v8, "month"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 619
    move v1, v7

    goto :goto_1

    .line 620
    :cond_2
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 621
    move v2, v7

    goto :goto_1

    .line 622
    :cond_3
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 623
    move v3, v7

    goto :goto_1

    .line 624
    :cond_4
    const-string v8, "minute"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 625
    move v4, v7

    goto :goto_1

    .line 626
    :cond_5
    const-string v8, "second"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 627
    move v5, v7

    .line 629
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":I
    :cond_6
    :goto_1
    goto :goto_0

    .line 630
    :cond_7
    invoke-virtual {p1}, Ld/b/a/d/b;->o()V

    .line 631
    new-instance v13, Ljava/util/GregorianCalendar;

    move-object v6, v13

    move v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object v13
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Ld/b/a/b/a/P;->a(Ld/b/a/d/c;Ljava/util/Calendar;)V

    return-void
.end method

.method public a(Ld/b/a/d/c;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "value"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    if-nez p2, :cond_0

    .line 637
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    .line 638
    return-void

    .line 640
    :cond_0
    invoke-virtual {p1}, Ld/b/a/d/c;->l()Ld/b/a/d/c;

    .line 641
    const-string v0, "year"

    invoke-virtual {p1, v0}, Ld/b/a/d/c;->b(Ljava/lang/String;)Ld/b/a/d/c;

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ld/b/a/d/c;->f(J)Ld/b/a/d/c;

    .line 643
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ld/b/a/d/c;->b(Ljava/lang/String;)Ld/b/a/d/c;

    .line 644
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ld/b/a/d/c;->f(J)Ld/b/a/d/c;

    .line 645
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Ld/b/a/d/c;->b(Ljava/lang/String;)Ld/b/a/d/c;

    .line 646
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ld/b/a/d/c;->f(J)Ld/b/a/d/c;

    .line 647
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Ld/b/a/d/c;->b(Ljava/lang/String;)Ld/b/a/d/c;

    .line 648
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ld/b/a/d/c;->f(J)Ld/b/a/d/c;

    .line 649
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Ld/b/a/d/c;->b(Ljava/lang/String;)Ld/b/a/d/c;

    .line 650
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ld/b/a/d/c;->f(J)Ld/b/a/d/c;

    .line 651
    const-string v0, "second"

    invoke-virtual {p1, v0}, Ld/b/a/d/c;->b(Ljava/lang/String;)Ld/b/a/d/c;

    .line 652
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ld/b/a/d/c;->f(J)Ld/b/a/d/c;

    .line 653
    invoke-virtual {p1}, Ld/b/a/d/c;->n()Ld/b/a/d/c;

    .line 654
    return-void
.end method
