.class public Ld/b/a/d/b;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:[C


# instance fields
.field public final b:Ljava/io/Reader;

.field public c:Z

.field public final d:[C

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;

.field public m:[I

.field public n:I

.field public o:[Ljava/lang/String;

.field public p:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ld/b/a/d/b;->a:[C

    .line 1594
    new-instance v0, Ld/b/a/d/a;

    invoke-direct {v0}, Ld/b/a/d/a;-><init>()V

    sput-object v0, Ld/b/a/b/s;->a:Ld/b/a/b/s;

    .line 1616
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4
    .param p1, "in"    # Ljava/io/Reader;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/b/a/d/b;->c:Z

    .line 238
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Ld/b/a/d/b;->d:[C

    .line 239
    iput v0, p0, Ld/b/a/d/b;->e:I

    .line 240
    iput v0, p0, Ld/b/a/d/b;->f:I

    .line 242
    iput v0, p0, Ld/b/a/d/b;->g:I

    .line 243
    iput v0, p0, Ld/b/a/d/b;->h:I

    .line 245
    iput v0, p0, Ld/b/a/d/b;->i:I

    .line 269
    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Ld/b/a/d/b;->m:[I

    .line 270
    iput v0, p0, Ld/b/a/d/b;->n:I

    .line 272
    iget-object v0, p0, Ld/b/a/d/b;->m:[I

    iget v2, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ld/b/a/d/b;->n:I

    const/4 v3, 0x6

    aput v3, v0, v2

    .line 283
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ld/b/a/d/b;->o:[Ljava/lang/String;

    .line 284
    new-array v0, v1, [I

    iput-object v0, p0, Ld/b/a/d/b;->p:[I

    .line 290
    if-eqz p1, :cond_0

    .line 293
    iput-object p1, p0, Ld/b/a/d/b;->b:Ljava/io/Reader;

    .line 294
    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1041
    const/4 v0, 0x0

    .line 1042
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1046
    .local v1, "i":I
    :goto_0
    iget v2, p0, Ld/b/a/d/b;->e:I

    add-int v3, v2, v1

    iget v4, p0, Ld/b/a/d/b;->f:I

    if-ge v3, v4, :cond_2

    .line 1047
    iget-object v3, p0, Ld/b/a/d/b;->d:[C

    add-int/2addr v2, v1

    aget-char v2, v3, v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1053
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Ld/b/a/d/b;->k()V

    .line 1065
    :cond_1
    :pswitch_1
    goto :goto_1

    .line 1070
    :cond_2
    iget-object v2, p0, Ld/b/a/d/b;->d:[C

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1071
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ld/b/a/d/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1072
    goto :goto_0

    .line 1079
    :cond_3
    if-nez v0, :cond_4

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v2

    .line 1082
    :cond_4
    iget-object v2, p0, Ld/b/a/d/b;->d:[C

    iget v3, p0, Ld/b/a/d/b;->e:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1083
    iget v2, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Ld/b/a/d/b;->e:I

    .line 1084
    const/4 v1, 0x0

    .line 1085
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ld/b/a/d/b;->a(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1086
    nop

    .line 1090
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ld/b/a/d/b;->d:[C

    iget v4, p0, Ld/b/a/d/b;->e:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Ld/b/a/d/b;->d:[C

    iget v3, p0, Ld/b/a/d/b;->e:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1091
    .local v2, "result":Ljava/lang/String;
    :goto_2
    iget v3, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v3, v1

    iput v3, p0, Ld/b/a/d/b;->e:I

    .line 1092
    return-object v2

    .line 1085
    .end local v2    # "result":Ljava/lang/String;
    :cond_7
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public B()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 424
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 428
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 457
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 455
    :pswitch_0
    sget-object v1, Lcom/google/gson/stream/JsonToken;->j:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 453
    :pswitch_1
    sget-object v1, Lcom/google/gson/stream/JsonToken;->g:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 440
    :pswitch_2
    sget-object v1, Lcom/google/gson/stream/JsonToken;->e:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 450
    :pswitch_3
    sget-object v1, Lcom/google/gson/stream/JsonToken;->f:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 445
    :pswitch_4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 443
    :pswitch_5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->h:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 436
    :pswitch_6
    sget-object v1, Lcom/google/gson/stream/JsonToken;->b:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 434
    :pswitch_7
    sget-object v1, Lcom/google/gson/stream/JsonToken;->a:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 432
    :pswitch_8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->d:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 430
    :pswitch_9
    sget-object v1, Lcom/google/gson/stream/JsonToken;->c:Lcom/google/gson/stream/JsonToken;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final C()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Ld/b/a/d/b;->d:[C

    iget v1, p0, Ld/b/a/d/b;->e:I

    aget-char v0, v0, v1

    .line 603
    .local v0, "c":C
    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 607
    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 611
    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 616
    :cond_2
    return v1

    .line 612
    :cond_3
    :goto_0
    const-string v2, "null"

    .line 613
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 614
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x7

    .local v4, "peeking":I
    goto :goto_3

    .line 608
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_4
    :goto_1
    const-string v2, "false"

    .line 609
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 610
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x6

    .restart local v4    # "peeking":I
    goto :goto_3

    .line 604
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_5
    :goto_2
    const-string v2, "true"

    .line 605
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 606
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x5

    .line 620
    .restart local v4    # "peeking":I
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 621
    .local v5, "length":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_8

    .line 622
    iget v7, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v7, v6

    iget v8, p0, Ld/b/a/d/b;->f:I

    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ld/b/a/d/b;->a(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 623
    return v1

    .line 625
    :cond_6
    iget-object v7, p0, Ld/b/a/d/b;->d:[C

    iget v8, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v8, v6

    aget-char v0, v7, v8

    .line 626
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    .line 627
    return v1

    .line 621
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 631
    .end local v6    # "i":I
    :cond_8
    iget v6, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v6, v5

    iget v7, p0, Ld/b/a/d/b;->f:I

    if-lt v6, v7, :cond_9

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Ld/b/a/d/b;->a(I)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Ld/b/a/d/b;->d:[C

    iget v7, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    .line 632
    invoke-virtual {p0, v6}, Ld/b/a/d/b;->a(C)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 633
    return v1

    .line 637
    :cond_a
    iget v1, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v1, v5

    iput v1, p0, Ld/b/a/d/b;->e:I

    .line 638
    iput v4, p0, Ld/b/a/d/b;->i:I

    return v4
.end method

.method public final D()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    move-object/from16 v0, p0

    iget-object v1, v0, Ld/b/a/d/b;->d:[C

    .line 644
    .local v1, "buffer":[C
    iget v2, v0, Ld/b/a/d/b;->e:I

    .line 645
    .local v2, "p":I
    iget v3, v0, Ld/b/a/d/b;->f:I

    .line 647
    .local v3, "l":I
    const-wide/16 v4, 0x0

    .line 648
    .local v4, "value":J
    const/4 v6, 0x0

    .line 649
    .local v6, "negative":Z
    const/4 v7, 0x1

    .line 650
    .local v7, "fitsInLong":Z
    const/4 v8, 0x0

    .line 652
    .local v8, "last":I
    const/4 v9, 0x0

    .line 656
    .local v9, "i":I
    :goto_0
    add-int v10, v2, v9

    const-wide/16 v11, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-ne v10, v3, :cond_2

    .line 657
    array-length v10, v1

    if-ne v9, v10, :cond_0

    .line 660
    return v15

    .line 662
    :cond_0
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v10}, Ld/b/a/d/b;->a(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 663
    goto/16 :goto_5

    .line 665
    :cond_1
    iget v2, v0, Ld/b/a/d/b;->e:I

    .line 666
    iget v3, v0, Ld/b/a/d/b;->f:I

    .line 669
    :cond_2
    add-int v10, v2, v9

    aget-char v10, v1, v10

    .line 670
    .local v10, "c":C
    const/16 v13, 0x2b

    const/4 v15, 0x5

    if-eq v10, v13, :cond_1c

    const/16 v13, 0x45

    if-eq v10, v13, :cond_19

    const/16 v13, 0x65

    if-eq v10, v13, :cond_19

    const/16 v13, 0x2d

    if-eq v10, v13, :cond_16

    const/16 v13, 0x2e

    if-eq v10, v13, :cond_14

    .line 705
    const/16 v13, 0x30

    if-lt v10, v13, :cond_c

    const/16 v13, 0x39

    if-le v10, v13, :cond_3

    goto :goto_4

    .line 711
    :cond_3
    const/4 v13, 0x1

    if-eq v8, v13, :cond_b

    if-nez v8, :cond_4

    goto :goto_3

    .line 714
    :cond_4
    if-ne v8, v14, :cond_8

    .line 715
    cmp-long v11, v4, v11

    if-nez v11, :cond_5

    .line 716
    const/4 v11, 0x0

    return v11

    .line 718
    :cond_5
    const-wide/16 v11, 0xa

    mul-long/2addr v11, v4

    add-int/lit8 v14, v10, -0x30

    int-to-long v14, v14

    sub-long/2addr v11, v14

    .line 719
    .local v11, "newValue":J
    const-wide v14, -0xcccccccccccccccL

    cmp-long v16, v4, v14

    if-gtz v16, :cond_7

    cmp-long v14, v4, v14

    if-nez v14, :cond_6

    cmp-long v14, v11, v4

    if-gez v14, :cond_6

    goto :goto_1

    :cond_6
    const/16 v17, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    move/from16 v17, v13

    :goto_2
    and-int v7, v7, v17

    .line 721
    move-wide v4, v11

    .line 722
    .end local v11    # "newValue":J
    goto/16 :goto_9

    :cond_8
    const/4 v11, 0x3

    if-ne v8, v11, :cond_9

    .line 723
    const/4 v8, 0x4

    goto/16 :goto_9

    .line 724
    :cond_9
    if-eq v8, v15, :cond_a

    const/4 v11, 0x6

    if-ne v8, v11, :cond_1d

    .line 725
    :cond_a
    const/4 v8, 0x7

    goto/16 :goto_9

    .line 712
    :cond_b
    :goto_3
    add-int/lit8 v11, v10, -0x30

    neg-int v11, v11

    int-to-long v4, v11

    .line 713
    const/4 v8, 0x2

    goto/16 :goto_9

    .line 706
    :cond_c
    :goto_4
    invoke-virtual {v0, v10}, Ld/b/a/d/b;->a(C)Z

    move-result v13

    if-nez v13, :cond_13

    .line 707
    nop

    .line 731
    .end local v10    # "c":C
    :goto_5
    if-ne v8, v14, :cond_10

    if-eqz v7, :cond_10

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v10, v4, v18

    if-nez v10, :cond_d

    if-eqz v6, :cond_10

    :cond_d
    cmp-long v10, v4, v11

    if-nez v10, :cond_e

    if-nez v6, :cond_10

    .line 732
    :cond_e
    if-eqz v6, :cond_f

    move-wide v10, v4

    goto :goto_6

    :cond_f
    neg-long v10, v4

    :goto_6
    iput-wide v10, v0, Ld/b/a/d/b;->j:J

    .line 733
    iget v10, v0, Ld/b/a/d/b;->e:I

    add-int/2addr v10, v9

    iput v10, v0, Ld/b/a/d/b;->e:I

    .line 734
    const/16 v10, 0xf

    iput v10, v0, Ld/b/a/d/b;->i:I

    return v10

    .line 735
    :cond_10
    if-eq v8, v14, :cond_12

    const/4 v10, 0x4

    if-eq v8, v10, :cond_12

    const/4 v10, 0x7

    if-ne v8, v10, :cond_11

    goto :goto_7

    .line 740
    :cond_11
    const/4 v10, 0x0

    return v10

    .line 737
    :cond_12
    :goto_7
    iput v9, v0, Ld/b/a/d/b;->k:I

    .line 738
    const/16 v10, 0x10

    iput v10, v0, Ld/b/a/d/b;->i:I

    return v10

    .line 709
    .restart local v10    # "c":C
    :cond_13
    const/4 v11, 0x0

    return v11

    .line 698
    :cond_14
    const/4 v11, 0x0

    if-ne v8, v14, :cond_15

    .line 699
    const/4 v8, 0x3

    .line 700
    goto :goto_9

    .line 702
    :cond_15
    return v11

    .line 672
    :cond_16
    if-nez v8, :cond_17

    .line 673
    const/4 v6, 0x1

    .line 674
    const/4 v8, 0x1

    .line 675
    goto :goto_9

    .line 676
    :cond_17
    if-ne v8, v15, :cond_18

    .line 677
    const/4 v8, 0x6

    .line 678
    goto :goto_9

    .line 680
    :cond_18
    const/4 v11, 0x0

    return v11

    .line 670
    :cond_19
    const/4 v11, 0x0

    .line 691
    if-eq v8, v14, :cond_1b

    const/4 v12, 0x4

    if-ne v8, v12, :cond_1a

    goto :goto_8

    .line 695
    :cond_1a
    return v11

    .line 692
    :cond_1b
    :goto_8
    const/4 v8, 0x5

    .line 693
    goto :goto_9

    .line 683
    :cond_1c
    if-ne v8, v15, :cond_1e

    .line 684
    const/4 v8, 0x6

    .line 685
    nop

    .line 655
    .end local v10    # "c":C
    :cond_1d
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 687
    .restart local v10    # "c":C
    :cond_1e
    const/4 v11, 0x0

    return v11
.end method

.method public final E()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1504
    iget v0, p0, Ld/b/a/d/b;->e:I

    iget v1, p0, Ld/b/a/d/b;->f:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Ld/b/a/d/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1505
    .end local p0    # "this":Ld/b/a/d/b;
    :cond_0
    invoke-virtual {p0, v2}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    throw v3

    .line 1508
    :cond_1
    :goto_0
    iget-object v0, p0, Ld/b/a/d/b;->d:[C

    iget v1, p0, Ld/b/a/d/b;->e:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Ld/b/a/d/b;->e:I

    aget-char v0, v0, v1

    .line 1509
    .local v0, "escaped":C
    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v4, 0x22

    if-eq v0, v4, :cond_f

    const/16 v4, 0x27

    if-eq v0, v4, :cond_f

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_f

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_f

    const/16 v4, 0x62

    if-eq v0, v4, :cond_d

    const/16 v4, 0x66

    if-eq v0, v4, :cond_c

    const/16 v5, 0x6e

    if-eq v0, v5, :cond_b

    const/16 v5, 0x72

    if-eq v0, v5, :cond_a

    const/16 v5, 0x74

    if-eq v0, v5, :cond_9

    const/16 v5, 0x75

    if-ne v0, v5, :cond_8

    .line 1511
    iget v5, p0, Ld/b/a/d/b;->e:I

    const/4 v6, 0x4

    add-int/2addr v5, v6

    iget v7, p0, Ld/b/a/d/b;->f:I

    if-le v5, v7, :cond_3

    invoke-virtual {p0, v6}, Ld/b/a/d/b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1512
    .end local v0    # "escaped":C
    :cond_2
    invoke-virtual {p0, v2}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    throw v3

    .line 1515
    .restart local v0    # "escaped":C
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 1516
    .local v2, "result":C
    iget v3, p0, Ld/b/a/d/b;->e:I

    .local v3, "i":I
    add-int/lit8 v5, v3, 0x4

    .local v5, "end":I
    :goto_2
    if-ge v3, v5, :cond_7

    .line 1517
    iget-object v7, p0, Ld/b/a/d/b;->d:[C

    aget-char v7, v7, v3

    .line 1518
    .local v7, "c":C
    shl-int/lit8 v8, v2, 0x4

    int-to-char v2, v8

    .line 1519
    const/16 v8, 0x30

    if-lt v7, v8, :cond_4

    const/16 v8, 0x39

    if-gt v7, v8, :cond_4

    .line 1520
    add-int/lit8 v8, v7, -0x30

    add-int/2addr v8, v2

    int-to-char v2, v8

    goto :goto_3

    .line 1521
    :cond_4
    const/16 v8, 0x61

    if-lt v7, v8, :cond_5

    if-gt v7, v4, :cond_5

    .line 1522
    add-int/lit8 v8, v7, -0x61

    add-int/2addr v8, v1

    add-int/2addr v8, v2

    int-to-char v2, v8

    goto :goto_3

    .line 1523
    :cond_5
    const/16 v8, 0x41

    if-lt v7, v8, :cond_6

    const/16 v8, 0x46

    if-gt v7, v8, :cond_6

    .line 1524
    add-int/lit8 v8, v7, -0x41

    add-int/2addr v8, v1

    add-int/2addr v8, v2

    int-to-char v2, v8

    .line 1516
    .end local v7    # "c":C
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1526
    .restart local v7    # "c":C
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Ld/b/a/d/b;->d:[C

    iget v10, p0, Ld/b/a/d/b;->e:I

    invoke-direct {v8, v9, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1529
    .end local v3    # "i":I
    .end local v5    # "end":I
    .end local v7    # "c":C
    :cond_7
    iget v1, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v1, v6

    iput v1, p0, Ld/b/a/d/b;->e:I

    .line 1530
    return v2

    .line 1559
    .end local v0    # "escaped":C
    .end local v2    # "result":C
    :cond_8
    const-string v0, "Invalid escape sequence"

    invoke-virtual {p0, v0}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    throw v3

    .line 1533
    .restart local v0    # "escaped":C
    :cond_9
    const/16 v1, 0x9

    return v1

    .line 1542
    :cond_a
    const/16 v1, 0xd

    return v1

    .line 1539
    :cond_b
    return v1

    .line 1545
    :cond_c
    const/16 v1, 0xc

    return v1

    .line 1536
    :cond_d
    const/16 v1, 0x8

    return v1

    .line 1548
    :cond_e
    iget v1, p0, Ld/b/a/d/b;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Ld/b/a/d/b;->g:I

    .line 1549
    iget v1, p0, Ld/b/a/d/b;->e:I

    iput v1, p0, Ld/b/a/d/b;->h:I

    .line 1556
    :cond_f
    return v0
.end method

.method public final F()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1419
    :goto_0
    iget v0, p0, Ld/b/a/d/b;->e:I

    iget v1, p0, Ld/b/a/d/b;->f:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Ld/b/a/d/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1420
    :cond_0
    iget-object v0, p0, Ld/b/a/d/b;->d:[C

    iget v1, p0, Ld/b/a/d/b;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ld/b/a/d/b;->e:I

    aget-char v0, v0, v1

    .line 1421
    .local v0, "c":C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1422
    iget v1, p0, Ld/b/a/d/b;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Ld/b/a/d/b;->g:I

    .line 1423
    iget v1, p0, Ld/b/a/d/b;->e:I

    iput v1, p0, Ld/b/a/d/b;->h:I

    .line 1424
    goto :goto_1

    .line 1425
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1426
    nop

    .line 1429
    .end local v0    # "c":C
    :cond_2
    :goto_1
    return-void

    .line 1428
    :cond_3
    goto :goto_0
.end method

.method public final G()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1124
    :goto_0
    const/4 v0, 0x0

    .line 1125
    .local v0, "i":I
    :goto_1
    iget v1, p0, Ld/b/a/d/b;->e:I

    add-int v2, v1, v0

    iget v3, p0, Ld/b/a/d/b;->f:I

    if-ge v2, v3, :cond_2

    .line 1126
    iget-object v2, p0, Ld/b/a/d/b;->d:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 1125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1132
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Ld/b/a/d/b;->k()V

    .line 1144
    :cond_1
    :pswitch_1
    iget v1, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Ld/b/a/d/b;->e:I

    .line 1145
    return-void

    .line 1148
    :cond_2
    add-int/2addr v1, v0

    iput v1, p0, Ld/b/a/d/b;->e:I

    .line 1149
    .end local v0    # "i":I
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/b/a/d/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1150
    return-void

    .line 1149
    :cond_3
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public H()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1228
    const/4 v0, 0x0

    .line 1230
    .local v0, "count":I
    :goto_0
    iget v1, p0, Ld/b/a/d/b;->i:I

    .line 1231
    .local v1, "p":I
    if-nez v1, :cond_0

    .line 1232
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v1

    .line 1235
    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 1236
    invoke-virtual {p0, v3}, Ld/b/a/d/b;->b(I)V

    .line 1237
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1238
    :cond_1
    if-ne v1, v3, :cond_2

    .line 1239
    invoke-virtual {p0, v2}, Ld/b/a/d/b;->b(I)V

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1241
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1242
    iget v2, p0, Ld/b/a/d/b;->n:I

    sub-int/2addr v2, v3

    iput v2, p0, Ld/b/a/d/b;->n:I

    .line 1243
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1244
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1245
    iget v2, p0, Ld/b/a/d/b;->n:I

    sub-int/2addr v2, v3

    iput v2, p0, Ld/b/a/d/b;->n:I

    .line 1246
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1247
    :cond_4
    const/16 v2, 0xe

    if-eq v1, v2, :cond_a

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    goto :goto_3

    .line 1249
    :cond_5
    const/16 v2, 0x8

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    goto :goto_2

    .line 1251
    :cond_6
    const/16 v2, 0x9

    if-eq v1, v2, :cond_8

    const/16 v2, 0xd

    if-ne v1, v2, :cond_7

    goto :goto_1

    .line 1253
    :cond_7
    const/16 v2, 0x10

    if-ne v1, v2, :cond_b

    .line 1254
    iget v2, p0, Ld/b/a/d/b;->e:I

    iget v4, p0, Ld/b/a/d/b;->k:I

    add-int/2addr v2, v4

    iput v2, p0, Ld/b/a/d/b;->e:I

    goto :goto_4

    .line 1252
    :cond_8
    :goto_1
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Ld/b/a/d/b;->c(C)V

    goto :goto_4

    .line 1250
    :cond_9
    :goto_2
    const/16 v2, 0x27

    invoke-virtual {p0, v2}, Ld/b/a/d/b;->c(C)V

    goto :goto_4

    .line 1248
    :cond_a
    :goto_3
    invoke-virtual {p0}, Ld/b/a/d/b;->G()V

    .line 1256
    :cond_b
    :goto_4
    const/4 v2, 0x0

    iput v2, p0, Ld/b/a/d/b;->i:I

    .line 1257
    .end local v1    # "p":I
    if-nez v0, :cond_c

    .line 1259
    iget-object v1, p0, Ld/b/a/d/b;->p:[I

    iget v2, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v4, v2, -0x1

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 1260
    iget-object v1, p0, Ld/b/a/d/b;->o:[Ljava/lang/String;

    sub-int/2addr v2, v3

    const-string v3, "null"

    aput-object v3, v1, v2

    .line 1261
    return-void

    .line 1257
    :cond_c
    goto :goto_0
.end method

.method public final a(Z)I
    .locals 9
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1327
    iget-object v0, p0, Ld/b/a/d/b;->d:[C

    .line 1328
    .local v0, "buffer":[C
    iget v1, p0, Ld/b/a/d/b;->e:I

    .line 1329
    .local v1, "p":I
    iget v2, p0, Ld/b/a/d/b;->f:I

    .line 1331
    .local v2, "l":I
    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 1332
    iput v1, p0, Ld/b/a/d/b;->e:I

    .line 1333
    invoke-virtual {p0, v3}, Ld/b/a/d/b;->a(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1334
    nop

    .line 1400
    if-nez p1, :cond_0

    .line 1403
    const/4 v3, -0x1

    return v3

    .line 1401
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End of input"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1336
    :cond_1
    iget v1, p0, Ld/b/a/d/b;->e:I

    .line 1337
    iget v2, p0, Ld/b/a/d/b;->f:I

    .line 1340
    :cond_2
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1341
    .local v1, "c":I
    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    .line 1342
    iget v5, p0, Ld/b/a/d/b;->g:I

    add-int/2addr v5, v3

    iput v5, p0, Ld/b/a/d/b;->g:I

    .line 1343
    iput v4, p0, Ld/b/a/d/b;->h:I

    .line 1344
    goto/16 :goto_1

    .line 1345
    :cond_3
    const/16 v5, 0x20

    if-eq v1, v5, :cond_b

    const/16 v5, 0xd

    if-eq v1, v5, :cond_b

    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    .line 1346
    goto :goto_1

    .line 1349
    :cond_4
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_9

    .line 1350
    iput v4, p0, Ld/b/a/d/b;->e:I

    .line 1351
    const/4 v6, 0x2

    if-ne v4, v2, :cond_5

    .line 1352
    iget v7, p0, Ld/b/a/d/b;->e:I

    sub-int/2addr v7, v3

    iput v7, p0, Ld/b/a/d/b;->e:I

    .line 1353
    invoke-virtual {p0, v6}, Ld/b/a/d/b;->a(I)Z

    move-result v7

    .line 1354
    .local v7, "charsLoaded":Z
    iget v8, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v8, v3

    iput v8, p0, Ld/b/a/d/b;->e:I

    .line 1355
    if-nez v7, :cond_5

    .line 1356
    return v1

    .line 1360
    .end local v7    # "charsLoaded":Z
    :cond_5
    invoke-virtual {p0}, Ld/b/a/d/b;->k()V

    .line 1361
    iget v3, p0, Ld/b/a/d/b;->e:I

    aget-char v7, v0, v3

    .line 1362
    .local v7, "peek":C
    const/16 v8, 0x2a

    if-eq v7, v8, :cond_7

    if-eq v7, v5, :cond_6

    .line 1382
    return v1

    .line 1375
    :cond_6
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ld/b/a/d/b;->e:I

    .line 1376
    invoke-virtual {p0}, Ld/b/a/d/b;->F()V

    .line 1377
    iget v3, p0, Ld/b/a/d/b;->e:I

    .line 1378
    .end local v4    # "p":I
    .local v3, "p":I
    iget v2, p0, Ld/b/a/d/b;->f:I

    .line 1379
    move v1, v3

    goto/16 :goto_0

    .line 1365
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ld/b/a/d/b;->e:I

    .line 1366
    const-string v3, "*/"

    invoke-virtual {p0, v3}, Ld/b/a/d/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1369
    iget v3, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v3, v6

    .line 1370
    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget v2, p0, Ld/b/a/d/b;->f:I

    .line 1371
    move v1, v3

    goto/16 :goto_0

    .line 1367
    .end local v0    # "buffer":[C
    .end local v1    # "c":I
    .end local v2    # "l":I
    .end local v3    # "p":I
    .end local v7    # "peek":C
    .end local p0    # "this":Ld/b/a/d/b;
    .end local p1    # "throwOnEof":Z
    :cond_8
    const-string p1, "Unterminated comment"

    invoke-virtual {p0, p1}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1

    .line 1384
    .restart local v0    # "buffer":[C
    .restart local v1    # "c":I
    .restart local v2    # "l":I
    .restart local v4    # "p":I
    .restart local p1    # "throwOnEof":Z
    :cond_9
    const/16 v3, 0x23

    if-ne v1, v3, :cond_a

    .line 1385
    iput v4, p0, Ld/b/a/d/b;->e:I

    .line 1391
    invoke-virtual {p0}, Ld/b/a/d/b;->k()V

    .line 1392
    invoke-virtual {p0}, Ld/b/a/d/b;->F()V

    .line 1393
    iget v3, p0, Ld/b/a/d/b;->e:I

    .line 1394
    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget v2, p0, Ld/b/a/d/b;->f:I

    .line 1399
    .end local v1    # "c":I
    move v1, v3

    goto/16 :goto_0

    .line 1396
    .end local v3    # "p":I
    .restart local v1    # "c":I
    .restart local v4    # "p":I
    :cond_a
    iput v4, p0, Ld/b/a/d/b;->e:I

    .line 1397
    return v1

    .line 1331
    .end local v1    # "c":I
    :cond_b
    :goto_1
    move v1, v4

    goto/16 :goto_0
.end method

.method public final a(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 765
    const/4 v0, 0x1

    return v0

    .line 751
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Ld/b/a/d/b;->k()V

    .line 763
    :cond_1
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(I)Z
    .locals 7
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1284
    iget-object v0, p0, Ld/b/a/d/b;->d:[C

    .line 1285
    .local v0, "buffer":[C
    iget v1, p0, Ld/b/a/d/b;->h:I

    iget v2, p0, Ld/b/a/d/b;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Ld/b/a/d/b;->h:I

    .line 1286
    iget v1, p0, Ld/b/a/d/b;->f:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1287
    sub-int/2addr v1, v2

    iput v1, p0, Ld/b/a/d/b;->f:I

    .line 1288
    iget v1, p0, Ld/b/a/d/b;->f:I

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1290
    :cond_0
    iput v3, p0, Ld/b/a/d/b;->f:I

    .line 1293
    :goto_0
    iput v3, p0, Ld/b/a/d/b;->e:I

    .line 1295
    :cond_1
    iget-object v1, p0, Ld/b/a/d/b;->b:Ljava/io/Reader;

    iget v2, p0, Ld/b/a/d/b;->f:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    move v2, v1

    .local v2, "total":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 1296
    iget v1, p0, Ld/b/a/d/b;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Ld/b/a/d/b;->f:I

    .line 1299
    iget v1, p0, Ld/b/a/d/b;->g:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Ld/b/a/d/b;->h:I

    if-nez v1, :cond_2

    iget v5, p0, Ld/b/a/d/b;->f:I

    if-lez v5, :cond_2

    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    .line 1300
    iget v5, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v5, v4

    iput v5, p0, Ld/b/a/d/b;->e:I

    .line 1301
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ld/b/a/d/b;->h:I

    .line 1302
    add-int/lit8 p1, p1, 0x1

    .line 1305
    :cond_2
    iget v1, p0, Ld/b/a/d/b;->f:I

    if-lt v1, p1, :cond_1

    .line 1306
    return v4

    .line 1309
    :cond_3
    return v3
.end method

.method public final b(C)Ljava/lang/String;
    .locals 10
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 987
    iget-object v0, p0, Ld/b/a/d/b;->d:[C

    .line 988
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 990
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Ld/b/a/d/b;->e:I

    .line 991
    .local v2, "p":I
    iget v3, p0, Ld/b/a/d/b;->f:I

    .line 993
    .local v3, "l":I
    move v4, v2

    .line 994
    .local v4, "start":I
    :goto_1
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v3, :cond_5

    .line 995
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "p":I
    .local v7, "p":I
    aget-char v2, v0, v2

    .line 997
    .local v2, "c":I
    if-ne v2, p1, :cond_1

    .line 998
    iput v7, p0, Ld/b/a/d/b;->e:I

    .line 999
    sub-int v5, v7, v4

    sub-int/2addr v5, v6

    .line 1000
    .local v5, "len":I
    if-nez v1, :cond_0

    .line 1001
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    .line 1003
    :cond_0
    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1006
    .end local v5    # "len":I
    :cond_1
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_3

    .line 1007
    iput v7, p0, Ld/b/a/d/b;->e:I

    .line 1008
    sub-int v8, v7, v4

    sub-int/2addr v8, v6

    .line 1009
    .local v8, "len":I
    if-nez v1, :cond_2

    .line 1010
    add-int/lit8 v6, v8, 0x1

    mul-int/lit8 v6, v6, 0x2

    .line 1011
    .local v6, "estimatedLength":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v9

    .line 1013
    .end local v6    # "estimatedLength":I
    :cond_2
    invoke-virtual {v1, v0, v4, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {p0}, Ld/b/a/d/b;->E()C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1015
    iget v5, p0, Ld/b/a/d/b;->e:I

    .line 1016
    .end local v7    # "p":I
    .local v5, "p":I
    iget v3, p0, Ld/b/a/d/b;->f:I

    .line 1017
    move v4, v5

    .line 1018
    .end local v8    # "len":I
    move v2, v5

    goto :goto_2

    .end local v5    # "p":I
    .restart local v7    # "p":I
    :cond_3
    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    .line 1019
    iget v5, p0, Ld/b/a/d/b;->g:I

    add-int/2addr v5, v6

    iput v5, p0, Ld/b/a/d/b;->g:I

    .line 1020
    iput v7, p0, Ld/b/a/d/b;->h:I

    .line 1022
    .end local v2    # "c":I
    :cond_4
    move v2, v7

    .end local v7    # "p":I
    .local v2, "p":I
    :goto_2
    goto :goto_1

    .line 1024
    :cond_5
    if-nez v1, :cond_6

    .line 1025
    sub-int v7, v2, v4

    mul-int/lit8 v7, v7, 0x2

    .line 1026
    .local v7, "estimatedLength":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    .line 1028
    .end local v7    # "estimatedLength":I
    :cond_6
    sub-int v5, v2, v4

    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1029
    iput v2, p0, Ld/b/a/d/b;->e:I

    .line 1030
    invoke-virtual {p0, v6}, Ld/b/a/d/b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1033
    .end local v2    # "p":I
    .end local v3    # "l":I
    .end local v4    # "start":I
    goto :goto_0

    .line 1031
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local p0    # "this":Ld/b/a/d/b;
    .end local p1    # "quote":C
    :cond_7
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(I)V
    .locals 6
    .param p1, "newTop"    # I

    .line 1264
    iget v0, p0, Ld/b/a/d/b;->n:I

    iget-object v1, p0, Ld/b/a/d/b;->m:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 1265
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    .line 1266
    .local v2, "newStack":[I
    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    .line 1267
    .local v3, "newPathIndices":[I
    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 1268
    .local v4, "newPathNames":[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    iget-object v0, p0, Ld/b/a/d/b;->p:[I

    iget v1, p0, Ld/b/a/d/b;->n:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1270
    iget-object v0, p0, Ld/b/a/d/b;->o:[Ljava/lang/String;

    iget v1, p0, Ld/b/a/d/b;->n:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1271
    iput-object v2, p0, Ld/b/a/d/b;->m:[I

    .line 1272
    iput-object v3, p0, Ld/b/a/d/b;->p:[I

    .line 1273
    iput-object v4, p0, Ld/b/a/d/b;->o:[Ljava/lang/String;

    .line 1275
    .end local v2    # "newStack":[I
    .end local v3    # "newPathIndices":[I
    .end local v4    # "newPathNames":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Ld/b/a/d/b;->m:[I

    iget v1, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ld/b/a/d/b;->n:I

    aput p1, v0, v1

    .line 1276
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .line 326
    iput-boolean p1, p0, Ld/b/a/d/b;->c:Z

    .line 327
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1435
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1437
    .local v0, "length":I
    :goto_0
    iget v1, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v1, v0

    iget v2, p0, Ld/b/a/d/b;->f:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ld/b/a/d/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1450
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1438
    :cond_1
    :goto_1
    iget-object v1, p0, Ld/b/a/d/b;->d:[C

    iget v2, p0, Ld/b/a/d/b;->e:I

    aget-char v1, v1, v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 1439
    iget v1, p0, Ld/b/a/d/b;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Ld/b/a/d/b;->g:I

    .line 1440
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ld/b/a/d/b;->h:I

    .line 1441
    goto :goto_3

    .line 1443
    :cond_2
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 1444
    iget-object v2, p0, Ld/b/a/d/b;->d:[C

    iget v3, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1445
    nop

    .line 1437
    .end local v1    # "c":I
    :goto_3
    iget v1, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Ld/b/a/d/b;->e:I

    goto :goto_0

    .line 1443
    .restart local v1    # "c":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1448
    .end local v1    # "c":I
    :cond_4
    return v4
.end method

.method public final c(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1568
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(C)V
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Ld/b/a/d/b;->d:[C

    .line 1099
    .local v0, "buffer":[C
    :goto_0
    iget v1, p0, Ld/b/a/d/b;->e:I

    .line 1100
    .local v1, "p":I
    iget v2, p0, Ld/b/a/d/b;->f:I

    .line 1102
    .local v2, "l":I
    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 1103
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1104
    .local v1, "c":I
    if-ne v1, p1, :cond_0

    .line 1105
    iput v4, p0, Ld/b/a/d/b;->e:I

    .line 1106
    return-void

    .line 1107
    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    .line 1108
    iput v4, p0, Ld/b/a/d/b;->e:I

    .line 1109
    invoke-virtual {p0}, Ld/b/a/d/b;->E()C

    .line 1110
    iget v3, p0, Ld/b/a/d/b;->e:I

    .line 1111
    .end local v4    # "p":I
    .local v3, "p":I
    iget v2, p0, Ld/b/a/d/b;->f:I

    move v1, v3

    goto :goto_2

    .line 1112
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 1113
    iget v5, p0, Ld/b/a/d/b;->g:I

    add-int/2addr v5, v3

    iput v5, p0, Ld/b/a/d/b;->g:I

    .line 1114
    iput v4, p0, Ld/b/a/d/b;->h:I

    .line 1116
    .end local v1    # "c":I
    :cond_2
    move v1, v4

    .end local v4    # "p":I
    .local v1, "p":I
    :goto_2
    goto :goto_1

    .line 1117
    :cond_3
    iput v1, p0, Ld/b/a/d/b;->e:I

    .line 1118
    .end local v1    # "p":I
    .end local v2    # "l":I
    invoke-virtual {p0, v3}, Ld/b/a/d/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1119
    .end local v0    # "buffer":[C
    .end local p0    # "this":Ld/b/a/d/b;
    .end local p1    # "quote":C
    :cond_4
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1216
    const/4 v0, 0x0

    iput v0, p0, Ld/b/a/d/b;->i:I

    .line 1217
    iget-object v1, p0, Ld/b/a/d/b;->m:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    .line 1218
    const/4 v0, 0x1

    iput v0, p0, Ld/b/a/d/b;->n:I

    .line 1219
    iget-object v0, p0, Ld/b/a/d/b;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1220
    return-void
.end method

.method public i()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 342
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 345
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 346
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ld/b/a/d/b;->b(I)V

    .line 347
    iget-object v2, p0, Ld/b/a/d/b;->p:[I

    iget v3, p0, Ld/b/a/d/b;->n:I

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v1, v2, v3

    .line 348
    iput v1, p0, Ld/b/a/d/b;->i:I

    .line 352
    return-void

    .line 350
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 378
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 381
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 382
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ld/b/a/d/b;->b(I)V

    .line 383
    const/4 v1, 0x0

    iput v1, p0, Ld/b/a/d/b;->i:I

    .line 387
    return-void

    .line 385
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1408
    iget-boolean v0, p0, Ld/b/a/d/b;->c:Z

    if-eqz v0, :cond_0

    .line 1411
    return-void

    .line 1409
    .end local p0    # "this":Ld/b/a/d/b;
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    const/4 v0, 0x0

    throw v0
.end method

.method public final l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1576
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/b/a/d/b;->a(Z)I

    .line 1577
    iget v1, p0, Ld/b/a/d/b;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Ld/b/a/d/b;->e:I

    .line 1579
    iget v0, p0, Ld/b/a/d/b;->e:I

    sget-object v1, Ld/b/a/d/b;->a:[C

    array-length v2, v1

    add-int/2addr v0, v2

    iget v2, p0, Ld/b/a/d/b;->f:I

    if-le v0, v2, :cond_0

    array-length v0, v1

    invoke-virtual {p0, v0}, Ld/b/a/d/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    return-void

    .line 1583
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Ld/b/a/d/b;->a:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1584
    iget-object v2, p0, Ld/b/a/d/b;->d:[C

    iget v3, p0, Ld/b/a/d/b;->e:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v1, v1, v0

    if-eq v2, v1, :cond_1

    .line 1585
    return-void

    .line 1583
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1590
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Ld/b/a/d/b;->e:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Ld/b/a/d/b;->e:I

    .line 1591
    return-void
.end method

.method public m()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Ld/b/a/d/b;->m:[I

    iget v2, v0, Ld/b/a/d/b;->n:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    .line 463
    .local v3, "peekStack":I
    const/16 v4, 0x8

    const/16 v5, 0x27

    const/16 v6, 0x22

    const/16 v7, 0x5d

    const/4 v8, 0x3

    const/4 v9, 0x7

    const/16 v10, 0x3b

    const/16 v11, 0x2c

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v3, v15, :cond_0

    .line 464
    sub-int/2addr v2, v15

    aput v13, v1, v2

    goto/16 :goto_2

    .line 465
    :cond_0
    if-ne v3, v13, :cond_4

    .line 467
    invoke-virtual {v0, v15}, Ld/b/a/d/b;->a(Z)I

    move-result v1

    .line 468
    .local v1, "c":I
    if-eq v1, v11, :cond_3

    if-eq v1, v10, :cond_2

    if-ne v1, v7, :cond_1

    .line 470
    iput v12, v0, Ld/b/a/d/b;->i:I

    return v12

    .line 476
    .end local v1    # "c":I
    .end local v3    # "peekStack":I
    .end local p0    # "this":Ld/b/a/d/b;
    :cond_1
    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    throw v14

    .line 472
    .restart local v1    # "c":I
    .restart local v3    # "peekStack":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->k()V

    .line 474
    :cond_3
    nop

    .line 478
    .end local v1    # "c":I
    goto/16 :goto_2

    :cond_4
    const/4 v13, 0x5

    if-eq v3, v8, :cond_1b

    if-ne v3, v13, :cond_5

    goto/16 :goto_4

    .line 516
    :cond_5
    if-ne v3, v12, :cond_a

    .line 517
    sub-int/2addr v2, v15

    aput v13, v1, v2

    .line 519
    invoke-virtual {v0, v15}, Ld/b/a/d/b;->a(Z)I

    move-result v1

    .line 520
    .restart local v1    # "c":I
    const/16 v2, 0x3a

    if-eq v1, v2, :cond_8

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_7

    .line 524
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->k()V

    .line 525
    iget v2, v0, Ld/b/a/d/b;->e:I

    iget v13, v0, Ld/b/a/d/b;->f:I

    if-lt v2, v13, :cond_6

    invoke-virtual {v0, v15}, Ld/b/a/d/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, v0, Ld/b/a/d/b;->d:[C

    iget v13, v0, Ld/b/a/d/b;->e:I

    aget-char v2, v2, v13

    const/16 v8, 0x3e

    if-ne v2, v8, :cond_9

    .line 526
    add-int/2addr v13, v15

    iput v13, v0, Ld/b/a/d/b;->e:I

    goto :goto_0

    .line 530
    .end local v1    # "c":I
    .end local v3    # "peekStack":I
    :cond_7
    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    throw v14

    .line 522
    .restart local v1    # "c":I
    .restart local v3    # "peekStack":I
    :cond_8
    nop

    .line 532
    .end local v1    # "c":I
    :cond_9
    :goto_0
    goto :goto_2

    :cond_a
    const/4 v1, 0x6

    if-ne v3, v1, :cond_c

    .line 533
    iget-boolean v1, v0, Ld/b/a/d/b;->c:Z

    if-eqz v1, :cond_b

    .line 534
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->l()V

    .line 536
    :cond_b
    iget-object v1, v0, Ld/b/a/d/b;->m:[I

    iget v2, v0, Ld/b/a/d/b;->n:I

    sub-int/2addr v2, v15

    aput v9, v1, v2

    goto :goto_2

    .line 537
    :cond_c
    if-ne v3, v9, :cond_e

    .line 538
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/b/a/d/b;->a(Z)I

    move-result v1

    .line 539
    .restart local v1    # "c":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 540
    const/16 v2, 0x11

    iput v2, v0, Ld/b/a/d/b;->i:I

    return v2

    .line 542
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->k()V

    .line 543
    iget v2, v0, Ld/b/a/d/b;->e:I

    sub-int/2addr v2, v15

    iput v2, v0, Ld/b/a/d/b;->e:I

    .end local v1    # "c":I
    goto :goto_1

    .line 545
    :cond_e
    if-eq v3, v4, :cond_1a

    :goto_1
    nop

    .line 549
    :goto_2
    invoke-virtual {v0, v15}, Ld/b/a/d/b;->a(Z)I

    move-result v1

    .line 550
    .restart local v1    # "c":I
    if-eq v1, v6, :cond_19

    if-eq v1, v5, :cond_18

    if-eq v1, v11, :cond_15

    if-eq v1, v10, :cond_15

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_14

    if-eq v1, v7, :cond_13

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_12

    .line 576
    iget v2, v0, Ld/b/a/d/b;->e:I

    sub-int/2addr v2, v15

    iput v2, v0, Ld/b/a/d/b;->e:I

    .line 579
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->C()I

    move-result v2

    .line 580
    .local v2, "result":I
    if-eqz v2, :cond_f

    .line 581
    return v2

    .line 584
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->D()I

    move-result v2

    .line 585
    if-eqz v2, :cond_10

    .line 586
    return v2

    .line 589
    :cond_10
    iget-object v4, v0, Ld/b/a/d/b;->d:[C

    iget v5, v0, Ld/b/a/d/b;->e:I

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ld/b/a/d/b;->a(C)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 593
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->k()V

    .line 594
    const/16 v4, 0xa

    iput v4, v0, Ld/b/a/d/b;->i:I

    return v4

    .line 590
    .end local v1    # "c":I
    .end local v2    # "result":I
    .end local v3    # "peekStack":I
    :cond_11
    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    throw v14

    .line 574
    .restart local v1    # "c":I
    .restart local v3    # "peekStack":I
    :cond_12
    iput v15, v0, Ld/b/a/d/b;->i:I

    return v15

    .line 552
    :cond_13
    if-ne v3, v15, :cond_15

    .line 553
    iput v12, v0, Ld/b/a/d/b;->i:I

    return v12

    .line 572
    :cond_14
    const/4 v2, 0x3

    iput v2, v0, Ld/b/a/d/b;->i:I

    return v2

    .line 559
    :cond_15
    if-eq v3, v15, :cond_17

    const/4 v2, 0x2

    if-ne v3, v2, :cond_16

    goto :goto_3

    .line 564
    .end local v1    # "c":I
    .end local v3    # "peekStack":I
    :cond_16
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    throw v14

    .line 560
    .restart local v1    # "c":I
    .restart local v3    # "peekStack":I
    :cond_17
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->k()V

    .line 561
    iget v2, v0, Ld/b/a/d/b;->e:I

    sub-int/2addr v2, v15

    iput v2, v0, Ld/b/a/d/b;->e:I

    .line 562
    iput v9, v0, Ld/b/a/d/b;->i:I

    return v9

    .line 567
    :cond_18
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->k()V

    .line 568
    iput v4, v0, Ld/b/a/d/b;->i:I

    return v4

    .line 570
    :cond_19
    const/16 v2, 0x9

    iput v2, v0, Ld/b/a/d/b;->i:I

    return v2

    .line 546
    .end local v1    # "c":I
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :cond_1b
    :goto_4
    iget-object v1, v0, Ld/b/a/d/b;->m:[I

    iget v2, v0, Ld/b/a/d/b;->n:I

    sub-int/2addr v2, v15

    aput v12, v1, v2

    .line 481
    const/16 v1, 0x7d

    if-ne v3, v13, :cond_1e

    .line 482
    invoke-virtual {v0, v15}, Ld/b/a/d/b;->a(Z)I

    move-result v2

    .line 483
    .local v2, "c":I
    if-eq v2, v11, :cond_1e

    if-eq v2, v10, :cond_1d

    if-ne v2, v1, :cond_1c

    .line 485
    const/4 v1, 0x2

    iput v1, v0, Ld/b/a/d/b;->i:I

    return v1

    .line 491
    .end local v2    # "c":I
    .end local v3    # "peekStack":I
    :cond_1c
    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    throw v14

    .line 487
    .restart local v2    # "c":I
    .restart local v3    # "peekStack":I
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->k()V

    .line 494
    .end local v2    # "c":I
    :cond_1e
    invoke-virtual {v0, v15}, Ld/b/a/d/b;->a(Z)I

    move-result v2

    .line 495
    .restart local v2    # "c":I
    if-eq v2, v6, :cond_23

    if-eq v2, v5, :cond_22

    const-string v4, "Expected name"

    if-eq v2, v1, :cond_20

    .line 508
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->k()V

    .line 509
    iget v1, v0, Ld/b/a/d/b;->e:I

    sub-int/2addr v1, v15

    iput v1, v0, Ld/b/a/d/b;->e:I

    .line 510
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ld/b/a/d/b;->a(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 511
    const/16 v1, 0xe

    iput v1, v0, Ld/b/a/d/b;->i:I

    return v1

    .line 513
    .end local v2    # "c":I
    .end local v3    # "peekStack":I
    :cond_1f
    invoke-virtual {v0, v4}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    throw v14

    .line 502
    .restart local v2    # "c":I
    .restart local v3    # "peekStack":I
    :cond_20
    if-eq v3, v13, :cond_21

    .line 503
    const/4 v1, 0x2

    iput v1, v0, Ld/b/a/d/b;->i:I

    return v1

    .line 505
    .end local v2    # "c":I
    .end local v3    # "peekStack":I
    :cond_21
    invoke-virtual {v0, v4}, Ld/b/a/d/b;->c(Ljava/lang/String;)Ljava/io/IOException;

    throw v14

    .line 499
    .restart local v2    # "c":I
    .restart local v3    # "peekStack":I
    :cond_22
    invoke-virtual/range {p0 .. p0}, Ld/b/a/d/b;->k()V

    .line 500
    const/16 v1, 0xc

    iput v1, v0, Ld/b/a/d/b;->i:I

    return v1

    .line 497
    :cond_23
    const/16 v1, 0xd

    iput v1, v0, Ld/b/a/d/b;->i:I

    return v1
.end method

.method public n()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 360
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 363
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 364
    iget v1, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld/b/a/d/b;->n:I

    .line 365
    iget-object v1, p0, Ld/b/a/d/b;->p:[I

    iget v2, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 366
    const/4 v1, 0x0

    iput v1, p0, Ld/b/a/d/b;->i:I

    .line 370
    return-void

    .line 368
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 395
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 398
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 399
    iget v1, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld/b/a/d/b;->n:I

    .line 400
    iget-object v1, p0, Ld/b/a/d/b;->o:[Ljava/lang/String;

    iget v2, p0, Ld/b/a/d/b;->n:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 401
    iget-object v1, p0, Ld/b/a/d/b;->p:[I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 402
    const/4 v1, 0x0

    iput v1, p0, Ld/b/a/d/b;->i:I

    .line 406
    return-void

    .line 404
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public p()Ljava/lang/String;
    .locals 5

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1469
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Ld/b/a/d/b;->n:I

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1470
    iget-object v3, p0, Ld/b/a/d/b;->m:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 1479
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1480
    iget-object v3, p0, Ld/b/a/d/b;->o:[Ljava/lang/String;

    aget-object v4, v3, v1

    if-eqz v4, :cond_2

    .line 1481
    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1473
    :cond_1
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld/b/a/d/b;->p:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1474
    nop

    .line 1469
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1491
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public q()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 413
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 416
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final r()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Ld/b/a/d/b;->c:Z

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 4

    .line 1458
    iget v0, p0, Ld/b/a/d/b;->g:I

    add-int/lit8 v0, v0, 0x1

    .line 1459
    .local v0, "line":I
    iget v1, p0, Ld/b/a/d/b;->e:I

    iget v2, p0, Ld/b/a/d/b;->h:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1460
    .local v1, "column":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public t()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 840
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 841
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 842
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 844
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 845
    iput v2, p0, Ld/b/a/d/b;->i:I

    .line 846
    iget-object v1, p0, Ld/b/a/d/b;->p:[I

    iget v2, p0, Ld/b/a/d/b;->n:I

    sub-int/2addr v2, v3

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 847
    return v3

    .line 848
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 849
    iput v2, p0, Ld/b/a/d/b;->i:I

    .line 850
    iget-object v1, p0, Ld/b/a/d/b;->p:[I

    iget v4, p0, Ld/b/a/d/b;->n:I

    sub-int/2addr v4, v3

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 851
    return v2

    .line 853
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 887
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 888
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 891
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 892
    iput v2, p0, Ld/b/a/d/b;->i:I

    .line 893
    iget-object v1, p0, Ld/b/a/d/b;->p:[I

    iget v2, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 894
    iget-wide v1, p0, Ld/b/a/d/b;->j:J

    long-to-double v1, v1

    return-wide v1

    .line 897
    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    .line 898
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Ld/b/a/d/b;->d:[C

    iget v5, p0, Ld/b/a/d/b;->e:I

    iget v6, p0, Ld/b/a/d/b;->k:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    .line 899
    iget v1, p0, Ld/b/a/d/b;->e:I

    iget v4, p0, Ld/b/a/d/b;->k:I

    add-int/2addr v1, v4

    iput v1, p0, Ld/b/a/d/b;->e:I

    goto :goto_2

    .line 900
    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    .line 902
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 903
    invoke-virtual {p0}, Ld/b/a/d/b;->A()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    goto :goto_2

    .line 904
    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 905
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a double but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 901
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v1, 0x27

    goto :goto_1

    :cond_7
    const/16 v1, 0x22

    :goto_1
    invoke-virtual {p0, v1}, Ld/b/a/d/b;->b(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    .line 908
    :goto_2
    iput v3, p0, Ld/b/a/d/b;->i:I

    .line 909
    iget-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 910
    .local v3, "result":D
    iget-boolean v1, p0, Ld/b/a/d/b;->c:Z

    if-nez v1, :cond_9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 911
    :cond_8
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 914
    :cond_9
    :goto_3
    const/4 v1, 0x0

    iput-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    .line 915
    iput v2, p0, Ld/b/a/d/b;->i:I

    .line 916
    iget-object v1, p0, Ld/b/a/d/b;->p:[I

    iget v2, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v5, v1, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v2

    .line 917
    return-wide v3
.end method

.method public v()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1163
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 1164
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 1165
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 1169
    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 1170
    iget-wide v4, p0, Ld/b/a/d/b;->j:J

    long-to-int v1, v4

    .line 1171
    .local v1, "result":I
    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1174
    iput v3, p0, Ld/b/a/d/b;->i:I

    .line 1175
    iget-object v2, p0, Ld/b/a/d/b;->p:[I

    iget v3, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1176
    return v1

    .line 1172
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Ld/b/a/d/b;->j:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1179
    .end local v1    # "result":I
    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1180
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Ld/b/a/d/b;->d:[C

    iget v5, p0, Ld/b/a/d/b;->e:I

    iget v6, p0, Ld/b/a/d/b;->k:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    .line 1181
    iget v1, p0, Ld/b/a/d/b;->e:I

    iget v4, p0, Ld/b/a/d/b;->k:I

    add-int/2addr v1, v4

    iput v1, p0, Ld/b/a/d/b;->e:I

    goto :goto_3

    .line 1182
    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 1197
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1183
    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 1184
    invoke-virtual {p0}, Ld/b/a/d/b;->A()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    goto :goto_2

    .line 1186
    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v1, 0x27

    goto :goto_1

    :cond_7
    const/16 v1, 0x22

    :goto_1
    invoke-virtual {p0, v1}, Ld/b/a/d/b;->b(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    .line 1189
    :goto_2
    :try_start_0
    iget-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1190
    .restart local v1    # "result":I
    iput v3, p0, Ld/b/a/d/b;->i:I

    .line 1191
    iget-object v4, p0, Ld/b/a/d/b;->p:[I

    iget v5, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    return v1

    .line 1193
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 1195
    nop

    .line 1200
    :goto_3
    const/16 v1, 0xb

    iput v1, p0, Ld/b/a/d/b;->i:I

    .line 1201
    iget-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1202
    .local v4, "asDouble":D
    double-to-int v1, v4

    .line 1203
    .restart local v1    # "result":I
    int-to-double v6, v1

    cmpl-double v6, v6, v4

    if-nez v6, :cond_8

    .line 1206
    const/4 v2, 0x0

    iput-object v2, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    .line 1207
    iput v3, p0, Ld/b/a/d/b;->i:I

    .line 1208
    iget-object v2, p0, Ld/b/a/d/b;->p:[I

    iget v3, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    .line 1209
    return v1

    .line 1204
    :cond_8
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public w()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 932
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 933
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 936
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 937
    iput v2, p0, Ld/b/a/d/b;->i:I

    .line 938
    iget-object v1, p0, Ld/b/a/d/b;->p:[I

    iget v2, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 939
    iget-wide v1, p0, Ld/b/a/d/b;->j:J

    return-wide v1

    .line 942
    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    .line 943
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Ld/b/a/d/b;->d:[C

    iget v5, p0, Ld/b/a/d/b;->e:I

    iget v6, p0, Ld/b/a/d/b;->k:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    .line 944
    iget v1, p0, Ld/b/a/d/b;->e:I

    iget v4, p0, Ld/b/a/d/b;->k:I

    add-int/2addr v1, v4

    iput v1, p0, Ld/b/a/d/b;->e:I

    goto :goto_3

    .line 945
    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 960
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 946
    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 947
    invoke-virtual {p0}, Ld/b/a/d/b;->A()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    goto :goto_2

    .line 949
    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v1, 0x27

    goto :goto_1

    :cond_6
    const/16 v1, 0x22

    :goto_1
    invoke-virtual {p0, v1}, Ld/b/a/d/b;->b(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    .line 952
    :goto_2
    :try_start_0
    iget-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 953
    .local v4, "result":J
    iput v2, p0, Ld/b/a/d/b;->i:I

    .line 954
    iget-object v1, p0, Ld/b/a/d/b;->p:[I

    iget v6, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    return-wide v4

    .line 956
    .end local v4    # "result":J
    :catch_0
    move-exception v1

    .line 958
    nop

    .line 963
    :goto_3
    const/16 v1, 0xb

    iput v1, p0, Ld/b/a/d/b;->i:I

    .line 964
    iget-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 965
    .local v4, "asDouble":D
    double-to-long v6, v4

    .line 966
    .local v6, "result":J
    long-to-double v8, v6

    cmpl-double v1, v8, v4

    if-nez v1, :cond_7

    .line 969
    const/4 v1, 0x0

    iput-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    .line 970
    iput v2, p0, Ld/b/a/d/b;->i:I

    .line 971
    iget-object v1, p0, Ld/b/a/d/b;->p:[I

    iget v2, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 972
    return-wide v6

    .line 967
    :cond_7
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public x()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 778
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 779
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 782
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 783
    invoke-virtual {p0}, Ld/b/a/d/b;->A()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 784
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 785
    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ld/b/a/d/b;->b(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 786
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 787
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ld/b/a/d/b;->b(C)Ljava/lang/String;

    move-result-object v1

    .line 791
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Ld/b/a/d/b;->i:I

    .line 792
    iget-object v2, p0, Ld/b/a/d/b;->o:[Ljava/lang/String;

    iget v3, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 793
    return-object v1

    .line 789
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public y()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 865
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 866
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 868
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 869
    const/4 v1, 0x0

    iput v1, p0, Ld/b/a/d/b;->i:I

    .line 870
    iget-object v1, p0, Ld/b/a/d/b;->p:[I

    iget v2, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 874
    return-void

    .line 872
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public z()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    iget v0, p0, Ld/b/a/d/b;->i:I

    .line 806
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 807
    invoke-virtual {p0}, Ld/b/a/d/b;->m()I

    move-result v0

    .line 810
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 811
    invoke-virtual {p0}, Ld/b/a/d/b;->A()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 812
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 813
    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ld/b/a/d/b;->b(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 814
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 815
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ld/b/a/d/b;->b(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 816
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 817
    iget-object v1, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    .line 818
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Ld/b/a/d/b;->l:Ljava/lang/String;

    goto :goto_0

    .line 819
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 820
    iget-wide v1, p0, Ld/b/a/d/b;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 821
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 822
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ld/b/a/d/b;->d:[C

    iget v3, p0, Ld/b/a/d/b;->e:I

    iget v4, p0, Ld/b/a/d/b;->k:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 823
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Ld/b/a/d/b;->e:I

    iget v3, p0, Ld/b/a/d/b;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Ld/b/a/d/b;->e:I

    .line 827
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Ld/b/a/d/b;->i:I

    .line 828
    iget-object v2, p0, Ld/b/a/d/b;->p:[I

    iget v3, p0, Ld/b/a/d/b;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 829
    return-object v1

    .line 825
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/b/a/d/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
