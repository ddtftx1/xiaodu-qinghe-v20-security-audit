.class public Ld/b/a/d/c;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# instance fields
.field public final c:Ljava/io/Writer;

.field public d:[I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 145
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Ld/b/a/d/c;->a:[Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 147
    sget-object v1, Ld/b/a/d/c;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "\\u%04x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Ld/b/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    .line 150
    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    .line 151
    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    .line 152
    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    .line 153
    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    .line 154
    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    .line 155
    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    .line 156
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Ld/b/a/d/c;->b:[Ljava/lang/String;

    .line 157
    sget-object v0, Ld/b/a/d/c;->b:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    .line 158
    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    .line 159
    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    .line 160
    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    .line 161
    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Ld/b/a/d/c;->d:[I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Ld/b/a/d/c;->e:I

    .line 170
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ld/b/a/d/c;->a(I)V

    .line 182
    const-string v0, ":"

    iput-object v0, p0, Ld/b/a/d/c;->g:Ljava/lang/String;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b/a/d/c;->k:Z

    .line 198
    if-eqz p1, :cond_0

    .line 201
    iput-object p1, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    .line 202
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;)Ld/b/a/d/c;
    .locals 4
    .param p1, "empty"    # I
    .param p2, "nonempty"    # I
    .param p3, "closeBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Ld/b/a/d/c;->t()I

    move-result v0

    .line 338
    .local v0, "context":I
    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_1
    :goto_0
    iget-object v1, p0, Ld/b/a/d/c;->j:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 345
    iget v1, p0, Ld/b/a/d/c;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld/b/a/d/c;->e:I

    .line 346
    if-ne v0, p2, :cond_2

    .line 347
    invoke-virtual {p0}, Ld/b/a/d/c;->r()V

    .line 349
    :cond_2
    iget-object v1, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 350
    return-object p0

    .line 342
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dangling name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld/b/a/d/c;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(ILjava/lang/String;)Ld/b/a/d/c;
    .locals 1
    .param p1, "empty"    # I
    .param p2, "openBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Ld/b/a/d/c;->j()V

    .line 326
    invoke-virtual {p0, p1}, Ld/b/a/d/c;->a(I)V

    .line 327
    iget-object v0, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 328
    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Ld/b/a/d/c;
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    if-nez p1, :cond_0

    .line 478
    invoke-virtual {p0}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    move-result-object v0

    return-object v0

    .line 480
    :cond_0
    invoke-virtual {p0}, Ld/b/a/d/c;->u()V

    .line 481
    invoke-virtual {p0}, Ld/b/a/d/c;->j()V

    .line 482
    iget-object v0, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 483
    return-object p0
.end method

.method public a(Ljava/lang/Number;)Ld/b/a/d/c;
    .locals 4
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    if-nez p1, :cond_0

    .line 524
    invoke-virtual {p0}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    move-result-object v0

    return-object v0

    .line 527
    :cond_0
    invoke-virtual {p0}, Ld/b/a/d/c;->u()V

    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "string":Ljava/lang/String;
    iget-boolean v1, p0, Ld/b/a/d/c;->h:Z

    if-nez v1, :cond_2

    .line 530
    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 531
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ld/b/a/d/c;->j()V

    .line 534
    iget-object v1, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 535
    return-object p0
.end method

.method public final a(I)V
    .locals 4
    .param p1, "newTop"    # I

    .line 354
    iget v0, p0, Ld/b/a/d/c;->e:I

    iget-object v1, p0, Ld/b/a/d/c;->d:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 355
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    .line 356
    .local v2, "newStack":[I
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iput-object v2, p0, Ld/b/a/d/c;->d:[I

    .line 359
    .end local v2    # "newStack":[I
    :cond_0
    iget-object v0, p0, Ld/b/a/d/c;->d:[I

    iget v1, p0, Ld/b/a/d/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ld/b/a/d/c;->e:I

    aput p1, v0, v1

    .line 360
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "htmlSafe"    # Z

    .line 253
    iput-boolean p1, p0, Ld/b/a/d/c;->i:Z

    .line 254
    return-void
.end method

.method public b(Ljava/lang/String;)Ld/b/a/d/c;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    if-eqz p1, :cond_2

    .line 389
    iget-object v0, p0, Ld/b/a/d/c;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 392
    iget v0, p0, Ld/b/a/d/c;->e:I

    if-eqz v0, :cond_0

    .line 395
    iput-object p1, p0, Ld/b/a/d/c;->j:Ljava/lang/String;

    .line 396
    return-object p0

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 387
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)V
    .locals 2
    .param p1, "topOfStack"    # I

    .line 376
    iget-object v0, p0, Ld/b/a/d/c;->d:[I

    iget v1, p0, Ld/b/a/d/c;->e:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 377
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .line 235
    iput-boolean p1, p0, Ld/b/a/d/c;->h:Z

    .line 236
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "indent"    # Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Ld/b/a/d/c;->f:Ljava/lang/String;

    .line 215
    const-string v0, ":"

    iput-object v0, p0, Ld/b/a/d/c;->g:Ljava/lang/String;

    goto :goto_0

    .line 217
    :cond_0
    iput-object p1, p0, Ld/b/a/d/c;->f:Ljava/lang/String;

    .line 218
    const-string v0, ": "

    iput-object v0, p0, Ld/b/a/d/c;->g:Ljava/lang/String;

    .line 220
    :goto_0
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .param p1, "serializeNulls"    # Z

    .line 269
    iput-boolean p1, p0, Ld/b/a/d/c;->k:Z

    .line 270
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 557
    iget v0, p0, Ld/b/a/d/c;->e:I

    .line 558
    .local v0, "size":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Ld/b/a/d/c;->d:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 561
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Ld/b/a/d/c;->e:I

    .line 562
    return-void

    .line 559
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete document"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d(Z)Ld/b/a/d/c;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Ld/b/a/d/c;->u()V

    .line 466
    invoke-virtual {p0}, Ld/b/a/d/c;->j()V

    .line 467
    iget-object v0, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 468
    return-object p0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    iget-boolean v0, p0, Ld/b/a/d/c;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Ld/b/a/d/c;->b:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Ld/b/a/d/c;->a:[Ljava/lang/String;

    .line 566
    .local v0, "replacements":[Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, "last":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 569
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_6

    .line 570
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 572
    .local v5, "c":C
    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    .line 573
    aget-object v6, v0, v5

    .line 574
    .local v6, "replacement":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 575
    goto :goto_3

    .line 577
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_2

    .line 578
    const-string v6, "\\u2028"

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 579
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_5

    .line 580
    const-string v6, "\\u2029"

    .line 584
    .restart local v6    # "replacement":Ljava/lang/String;
    :cond_3
    :goto_2
    if-ge v1, v4, :cond_4

    .line 585
    iget-object v7, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    sub-int v8, v4, v1

    invoke-virtual {v7, p1, v1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 587
    :cond_4
    iget-object v7, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 588
    add-int/lit8 v1, v4, 0x1

    .line 569
    .end local v5    # "c":C
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 590
    .end local v4    # "i":I
    :cond_6
    if-ge v1, v3, :cond_7

    .line 591
    iget-object v4, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    sub-int v5, v3, v1

    invoke-virtual {v4, p1, v1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 593
    :cond_7
    iget-object v4, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public e(Ljava/lang/String;)Ld/b/a/d/c;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    if-nez p1, :cond_0

    .line 415
    invoke-virtual {p0}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    move-result-object v0

    return-object v0

    .line 417
    :cond_0
    invoke-virtual {p0}, Ld/b/a/d/c;->u()V

    .line 418
    invoke-virtual {p0}, Ld/b/a/d/c;->j()V

    .line 419
    invoke-virtual {p0, p1}, Ld/b/a/d/c;->d(Ljava/lang/String;)V

    .line 420
    return-object p0
.end method

.method public f(J)Ld/b/a/d/c;
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Ld/b/a/d/c;->u()V

    .line 510
    invoke-virtual {p0}, Ld/b/a/d/c;->j()V

    .line 511
    iget-object v0, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 512
    return-object p0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget v0, p0, Ld/b/a/d/c;->e:I

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 547
    return-void

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Ld/b/a/d/c;->t()I

    move-result v0

    .line 613
    .local v0, "context":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 614
    iget-object v1, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 615
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 618
    :goto_0
    invoke-virtual {p0}, Ld/b/a/d/c;->r()V

    .line 619
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ld/b/a/d/c;->b(I)V

    .line 620
    return-void

    .line 616
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    invoke-virtual {p0}, Ld/b/a/d/c;->t()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    const/4 v2, 0x7

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    .line 631
    iget-boolean v0, p0, Ld/b/a/d/c;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Ld/b/a/d/c;->b(I)V

    .line 638
    goto :goto_1

    .line 651
    :cond_3
    iget-object v0, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    iget-object v1, p0, Ld/b/a/d/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 652
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ld/b/a/d/c;->b(I)V

    .line 653
    goto :goto_1

    .line 646
    :cond_4
    iget-object v0, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 647
    invoke-virtual {p0}, Ld/b/a/d/c;->r()V

    .line 648
    goto :goto_1

    .line 641
    :cond_5
    invoke-virtual {p0, v2}, Ld/b/a/d/c;->b(I)V

    .line 642
    invoke-virtual {p0}, Ld/b/a/d/c;->r()V

    .line 643
    nop

    .line 658
    :goto_1
    return-void
.end method

.method public k()Ld/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Ld/b/a/d/c;->u()V

    .line 288
    const/4 v0, 0x1

    const-string v1, "["

    invoke-virtual {p0, v0, v1}, Ld/b/a/d/c;->a(ILjava/lang/String;)Ld/b/a/d/c;

    return-object p0
.end method

.method public l()Ld/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Ld/b/a/d/c;->u()V

    .line 308
    const/4 v0, 0x3

    const-string v1, "{"

    invoke-virtual {p0, v0, v1}, Ld/b/a/d/c;->a(ILjava/lang/String;)Ld/b/a/d/c;

    return-object p0
.end method

.method public m()Ld/b/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "]"

    invoke-virtual {p0, v0, v1, v2}, Ld/b/a/d/c;->a(IILjava/lang/String;)Ld/b/a/d/c;

    return-object p0
.end method

.method public n()Ld/b/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string v2, "}"

    invoke-virtual {p0, v0, v1, v2}, Ld/b/a/d/c;->a(IILjava/lang/String;)Ld/b/a/d/c;

    return-object p0
.end method

.method public final o()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Ld/b/a/d/c;->k:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Ld/b/a/d/c;->i:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Ld/b/a/d/c;->h:Z

    return v0
.end method

.method public final r()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Ld/b/a/d/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 598
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 602
    const/4 v0, 0x1

    .local v0, "i":I
    iget v1, p0, Ld/b/a/d/c;->e:I

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 603
    iget-object v2, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    iget-object v3, p0, Ld/b/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public s()Ld/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Ld/b/a/d/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 447
    iget-boolean v0, p0, Ld/b/a/d/c;->k:Z

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Ld/b/a/d/c;->u()V

    goto :goto_0

    .line 450
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ld/b/a/d/c;->j:Ljava/lang/String;

    .line 451
    return-object p0

    .line 454
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ld/b/a/d/c;->j()V

    .line 455
    iget-object v0, p0, Ld/b/a/d/c;->c:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 456
    return-object p0
.end method

.method public final t()I
    .locals 2

    .line 366
    iget v0, p0, Ld/b/a/d/c;->e:I

    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Ld/b/a/d/c;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    return v0

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final u()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Ld/b/a/d/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Ld/b/a/d/c;->i()V

    .line 402
    iget-object v0, p0, Ld/b/a/d/c;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ld/b/a/d/c;->d(Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Ld/b/a/d/c;->j:Ljava/lang/String;

    .line 405
    :cond_0
    return-void
.end method
