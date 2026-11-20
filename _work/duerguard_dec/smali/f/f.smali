.class public final Lf/f;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lf/h;
.implements Lf/g;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# static fields
.field public static final a:[B


# instance fields
.field public b:Lf/u;

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lf/f;->a:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 7
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 880
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lf/A;->a(JJJ)V

    .line 882
    iget-object v0, p0, Lf/f;->b:Lf/u;

    .line 883
    .local v0, "s":Lf/u;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 884
    :cond_0
    iget v1, v0, Lf/u;->c:I

    iget v2, v0, Lf/u;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 885
    .local v1, "toCopy":I
    iget-object v2, v0, Lf/u;->a:[B

    iget v3, v0, Lf/u;->b:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 887
    iget v2, v0, Lf/u;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lf/u;->b:I

    .line 888
    iget-wide v2, p0, Lf/f;->c:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lf/f;->c:J

    .line 890
    iget v2, v0, Lf/u;->b:I

    iget v3, v0, Lf/u;->c:I

    if-ne v2, v3, :cond_1

    .line 891
    invoke-virtual {v0}, Lf/u;->b()Lf/u;

    move-result-object v2

    iput-object v2, p0, Lf/f;->b:Lf/u;

    .line 892
    invoke-static {v0}, Lf/v;->a(Lf/u;)V

    .line 895
    :cond_1
    return v1
.end method

.method public a(B)J
    .locals 6
    .param p1, "b"    # B

    .line 1405
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lf/f;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .locals 10
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J

    .line 1417
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_8

    cmp-long v0, p4, p2

    if-ltz v0, :cond_8

    .line 1422
    iget-wide v0, p0, Lf/f;->c:J

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    iget-wide p4, p0, Lf/f;->c:J

    .line 1423
    :cond_0
    cmp-long v0, p2, p4

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    return-wide v1

    .line 1431
    :cond_1
    iget-object v0, p0, Lf/f;->b:Lf/u;

    .line 1432
    .local v0, "s":Lf/u;
    if-nez v0, :cond_2

    .line 1434
    return-wide v1

    .line 1435
    :cond_2
    iget-wide v3, p0, Lf/f;->c:J

    sub-long/2addr v3, p2

    cmp-long v3, v3, p2

    if-gez v3, :cond_3

    .line 1437
    iget-wide v3, p0, Lf/f;->c:J

    .line 1438
    .local v3, "offset":J
    :goto_0
    cmp-long v5, v3, p2

    if-lez v5, :cond_4

    .line 1439
    iget-object v0, v0, Lf/u;->g:Lf/u;

    .line 1440
    iget v5, v0, Lf/u;->c:I

    iget v6, v0, Lf/u;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v3, v5

    goto :goto_0

    .line 1444
    .end local v3    # "offset":J
    :cond_3
    const-wide/16 v3, 0x0

    .line 1445
    .restart local v3    # "offset":J
    :goto_1
    iget v5, v0, Lf/u;->c:I

    iget v6, v0, Lf/u;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v3

    move-wide v7, v5

    .local v7, "nextOffset":J
    cmp-long v5, v5, p2

    if-gez v5, :cond_4

    .line 1446
    iget-object v0, v0, Lf/u;->f:Lf/u;

    .line 1447
    move-wide v3, v7

    goto :goto_1

    .line 1453
    .end local v7    # "nextOffset":J
    :cond_4
    :goto_2
    cmp-long v5, v3, p4

    if-gez v5, :cond_7

    .line 1454
    iget-object v5, v0, Lf/u;->a:[B

    .line 1455
    .local v5, "data":[B
    iget v6, v0, Lf/u;->c:I

    int-to-long v6, v6

    iget v8, v0, Lf/u;->b:I

    int-to-long v8, v8

    add-long/2addr v8, p4

    sub-long/2addr v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 1456
    .local v6, "limit":I
    iget v7, v0, Lf/u;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v3

    long-to-int v7, v7

    .line 1457
    .local v7, "pos":I
    :goto_3
    if-ge v7, v6, :cond_6

    .line 1458
    aget-byte v8, v5, v7

    if-ne v8, p1, :cond_5

    .line 1459
    iget v1, v0, Lf/u;->b:I

    sub-int v1, v7, v1

    int-to-long v1, v1

    add-long/2addr v1, v3

    return-wide v1

    .line 1457
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1464
    :cond_6
    iget v8, v0, Lf/u;->c:I

    iget v9, v0, Lf/u;->b:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v3, v8

    .line 1465
    move-wide p2, v3

    .line 1466
    iget-object v0, v0, Lf/u;->f:Lf/u;

    .line 1467
    .end local v5    # "data":[B
    .end local v6    # "limit":I
    .end local v7    # "pos":I
    goto :goto_2

    .line 1469
    :cond_7
    return-wide v1

    .line 1418
    .end local v0    # "s":Lf/u;
    .end local v3    # "offset":J
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lf/f;->c:J

    .line 1419
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "size=%s fromIndex=%s toIndex=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lf/x;)J
    .locals 8
    .param p1, "source"    # Lf/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1133
    if-eqz p1, :cond_1

    .line 1134
    const-wide/16 v0, 0x0

    .line 1135
    .local v0, "totalBytesRead":J
    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lf/x;->b(Lf/f;J)J

    move-result-wide v2

    move-wide v4, v2

    .local v4, "readCount":J
    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 1136
    add-long/2addr v0, v4

    goto :goto_0

    .line 1138
    .end local v4    # "readCount":J
    :cond_0
    return-wide v0

    .line 1133
    .end local v0    # "totalBytesRead":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lf/f;
    .locals 0

    .line 71
    return-object p0
.end method

.method public final a(Lf/f;JJ)Lf/f;
    .locals 7
    .param p1, "out"    # Lf/f;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .line 174
    if-eqz p1, :cond_4

    .line 175
    iget-wide v0, p0, Lf/f;->c:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lf/A;->a(JJJ)V

    .line 176
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    return-object p0

    .line 178
    :cond_0
    iget-wide v2, p1, Lf/f;->c:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lf/f;->c:J

    .line 181
    iget-object v2, p0, Lf/f;->b:Lf/u;

    .line 182
    .local v2, "s":Lf/u;
    :goto_0
    iget v3, v2, Lf/u;->c:I

    iget v4, v2, Lf/u;->b:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v5, p2, v5

    if-ltz v5, :cond_1

    .line 183
    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 182
    iget-object v2, v2, Lf/u;->f:Lf/u;

    goto :goto_0

    .line 187
    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_3

    .line 188
    invoke-virtual {v2}, Lf/u;->c()Lf/u;

    move-result-object v3

    .line 189
    .local v3, "copy":Lf/u;
    iget v4, v3, Lf/u;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int v4, v4

    iput v4, v3, Lf/u;->b:I

    .line 190
    iget v4, v3, Lf/u;->b:I

    long-to-int v5, p4

    add-int/2addr v4, v5

    iget v5, v3, Lf/u;->c:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lf/u;->c:I

    .line 191
    iget-object v4, p1, Lf/f;->b:Lf/u;

    if-nez v4, :cond_2

    .line 192
    iput-object v3, v3, Lf/u;->g:Lf/u;

    iput-object v3, v3, Lf/u;->f:Lf/u;

    iput-object v3, p1, Lf/f;->b:Lf/u;

    goto :goto_2

    .line 194
    :cond_2
    iget-object v4, v4, Lf/u;->g:Lf/u;

    invoke-virtual {v4, v3}, Lf/u;->a(Lf/u;)Lf/u;

    .line 196
    :goto_2
    iget v4, v3, Lf/u;->c:I

    iget v5, v3, Lf/u;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr p4, v4

    .line 197
    const-wide/16 p2, 0x0

    .line 187
    .end local v3    # "copy":Lf/u;
    iget-object v2, v2, Lf/u;->f:Lf/u;

    goto :goto_1

    .line 200
    :cond_3
    return-object p0

    .line 174
    .end local v2    # "s":Lf/u;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lf/f;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 953
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lf/f;->a(Ljava/lang/String;II)Lf/f;

    return-object p0
.end method

.method public a(Ljava/lang/String;II)Lf/f;
    .locals 12
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .line 957
    if-eqz p1, :cond_d

    .line 958
    if-ltz p2, :cond_c

    .line 959
    if-lt p3, p2, :cond_b

    .line 962
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_a

    .line 968
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_9

    .line 969
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 971
    .local v1, "c":I
    const/16 v2, 0x80

    if-ge v1, v2, :cond_2

    .line 972
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lf/f;->b(I)Lf/u;

    move-result-object v3

    .line 973
    .local v3, "tail":Lf/u;
    iget-object v4, v3, Lf/u;->a:[B

    .line 974
    .local v4, "data":[B
    iget v5, v3, Lf/u;->c:I

    sub-int/2addr v5, v0

    .line 975
    .local v5, "segmentOffset":I
    rsub-int v6, v5, 0x2000

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 978
    .local v6, "runLimit":I
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    add-int/2addr v0, v5

    int-to-byte v8, v1

    aput-byte v8, v4, v0

    .line 982
    :goto_1
    if-ge v7, v6, :cond_1

    .line 983
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 984
    if-lt v1, v2, :cond_0

    goto :goto_2

    .line 985
    :cond_0
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "i":I
    .restart local v0    # "i":I
    add-int/2addr v7, v5

    int-to-byte v8, v1

    aput-byte v8, v4, v7

    move v7, v0

    goto :goto_1

    .line 988
    .end local v0    # "i":I
    .restart local v7    # "i":I
    :cond_1
    :goto_2
    add-int v0, v7, v5

    iget v2, v3, Lf/u;->c:I

    sub-int/2addr v0, v2

    .line 989
    .local v0, "runSize":I
    add-int/2addr v2, v0

    iput v2, v3, Lf/u;->c:I

    .line 990
    iget-wide v8, p0, Lf/f;->c:J

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Lf/f;->c:J

    .line 992
    .end local v0    # "runSize":I
    .end local v3    # "tail":Lf/u;
    .end local v4    # "data":[B
    .end local v5    # "segmentOffset":I
    .end local v6    # "runLimit":I
    move v0, v7

    goto/16 :goto_6

    .end local v7    # "i":I
    .local v0, "i":I
    :cond_2
    const/16 v3, 0x800

    if-ge v1, v3, :cond_3

    .line 994
    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Lf/f;->writeByte(I)Lf/f;

    .line 995
    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lf/f;->writeByte(I)Lf/f;

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 998
    :cond_3
    const v3, 0xd800

    const/16 v4, 0x3f

    if-lt v1, v3, :cond_8

    const v3, 0xdfff

    if-le v1, v3, :cond_4

    goto :goto_5

    .line 1008
    :cond_4
    add-int/lit8 v5, v0, 0x1

    if-ge v5, p3, :cond_5

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 1009
    .local v5, "low":I
    :goto_3
    const v6, 0xdbff

    if-gt v1, v6, :cond_7

    const v6, 0xdc00

    if-lt v5, v6, :cond_7

    if-le v5, v3, :cond_6

    goto :goto_4

    .line 1018
    :cond_6
    const/high16 v3, 0x10000

    const v6, -0xd801

    and-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0xa

    const v7, -0xdc01

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    add-int/2addr v6, v3

    .line 1021
    .local v6, "codePoint":I
    shr-int/lit8 v3, v6, 0x12

    or-int/lit16 v3, v3, 0xf0

    invoke-virtual {p0, v3}, Lf/f;->writeByte(I)Lf/f;

    .line 1022
    shr-int/lit8 v3, v6, 0xc

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lf/f;->writeByte(I)Lf/f;

    .line 1023
    shr-int/lit8 v3, v6, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lf/f;->writeByte(I)Lf/f;

    .line 1024
    and-int/lit8 v3, v6, 0x3f

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lf/f;->writeByte(I)Lf/f;

    .line 1025
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 1010
    .end local v6    # "codePoint":I
    :cond_7
    :goto_4
    invoke-virtual {p0, v4}, Lf/f;->writeByte(I)Lf/f;

    .line 1011
    add-int/lit8 v0, v0, 0x1

    .line 1012
    goto/16 :goto_0

    .line 1000
    .end local v5    # "low":I
    :cond_8
    :goto_5
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Lf/f;->writeByte(I)Lf/f;

    .line 1001
    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lf/f;->writeByte(I)Lf/f;

    .line 1002
    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lf/f;->writeByte(I)Lf/f;

    .line 1003
    add-int/lit8 v0, v0, 0x1

    .line 1027
    .end local v1    # "c":I
    :goto_6
    goto/16 :goto_0

    .line 1029
    .end local v0    # "i":I
    :cond_9
    return-object p0

    .line 963
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lf/f;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 1074
    if-eqz p1, :cond_5

    .line 1075
    if-ltz p2, :cond_4

    .line 1076
    if-lt p3, p2, :cond_3

    .line 1079
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_2

    .line 1083
    if-eqz p4, :cond_1

    .line 1084
    sget-object v0, Lf/A;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lf/f;->a(Ljava/lang/String;II)Lf/f;

    return-object p0

    .line 1085
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1086
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lf/f;->write([BII)Lf/f;

    return-object p0

    .line 1083
    .end local v0    # "data":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1080
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    :cond_4
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lokio/ByteString;)Lf/f;
    .locals 2
    .param p1, "byteString"    # Lokio/ByteString;

    .line 947
    if-eqz p1, :cond_0

    .line 948
    invoke-virtual {p1, p0}, Lokio/ByteString;->a(Lf/f;)V

    .line 949
    return-object p0

    .line 947
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/String;)Lf/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lf/f;->a(Ljava/lang/String;)Lf/f;

    return-object p0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 703
    iget-wide v0, p0, Lf/f;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lf/A;->a(JJJ)V

    .line 704
    if-eqz p3, :cond_4

    .line 705
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    .line 708
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 710
    :cond_0
    iget-object v0, p0, Lf/f;->b:Lf/u;

    .line 711
    .local v0, "s":Lf/u;
    iget v1, v0, Lf/u;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lf/u;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 713
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lf/f;->d(J)[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 716
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lf/u;->a:[B

    long-to-int v4, p1

    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v2

    .line 717
    .local v1, "result":Ljava/lang/String;
    iget v2, v0, Lf/u;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v0, Lf/u;->b:I

    .line 718
    iget-wide v2, p0, Lf/f;->c:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lf/f;->c:J

    .line 720
    iget v2, v0, Lf/u;->b:I

    iget v3, v0, Lf/u;->c:I

    if-ne v2, v3, :cond_2

    .line 721
    invoke-virtual {v0}, Lf/u;->b()Lf/u;

    move-result-object v2

    iput-object v2, p0, Lf/f;->b:Lf/u;

    .line 722
    invoke-static {v0}, Lf/v;->a(Lf/u;)V

    .line 725
    :cond_2
    return-object v1

    .line 706
    .end local v0    # "s":Lf/u;
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 696
    :try_start_0
    iget-wide v0, p0, Lf/f;->c:J

    invoke-virtual {p0, v0, v1, p1}, Lf/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final a(I)Lokio/ByteString;
    .locals 1
    .param p1, "byteCount"    # I

    .line 1830
    if-nez p1, :cond_0

    sget-object v0, Lokio/ByteString;->b:Lokio/ByteString;

    return-object v0

    .line 1831
    :cond_0
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lf/f;I)V

    return-object v0
.end method

.method public a(J)Lokio/ByteString;
    .locals 2
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 544
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lf/f;->d(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public a(Lf/f;J)V
    .locals 6
    .param p1, "source"    # Lf/f;
    .param p2, "byteCount"    # J

    .line 1355
    if-eqz p1, :cond_7

    .line 1356
    if-eq p1, p0, :cond_6

    .line 1357
    iget-wide v0, p1, Lf/f;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lf/A;->a(JJJ)V

    .line 1359
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_5

    .line 1361
    iget-object v0, p1, Lf/f;->b:Lf/u;

    iget v1, v0, Lf/u;->c:I

    iget v0, v0, Lf/u;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    cmp-long v0, p2, v0

    if-gez v0, :cond_3

    .line 1362
    iget-object v0, p0, Lf/f;->b:Lf/u;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf/u;->g:Lf/u;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1363
    .local v0, "tail":Lf/u;
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lf/u;->e:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lf/u;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Lf/u;->d:Z

    if-eqz v3, :cond_1

    .line 1364
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget v3, v0, Lf/u;->b:I

    :goto_2
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 1366
    iget-object v1, p1, Lf/f;->b:Lf/u;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lf/u;->a(Lf/u;I)V

    .line 1367
    iget-wide v1, p1, Lf/f;->c:J

    sub-long/2addr v1, p2

    iput-wide v1, p1, Lf/f;->c:J

    .line 1368
    iget-wide v1, p0, Lf/f;->c:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lf/f;->c:J

    .line 1369
    return-void

    .line 1373
    :cond_2
    iget-object v1, p1, Lf/f;->b:Lf/u;

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Lf/u;->a(I)Lf/u;

    move-result-object v1

    iput-object v1, p1, Lf/f;->b:Lf/u;

    .line 1378
    .end local v0    # "tail":Lf/u;
    :cond_3
    iget-object v0, p1, Lf/f;->b:Lf/u;

    .line 1379
    .local v0, "segmentToMove":Lf/u;
    iget v1, v0, Lf/u;->c:I

    iget v2, v0, Lf/u;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1380
    .local v1, "movedByteCount":J
    invoke-virtual {v0}, Lf/u;->b()Lf/u;

    move-result-object v3

    iput-object v3, p1, Lf/f;->b:Lf/u;

    .line 1381
    iget-object v3, p0, Lf/f;->b:Lf/u;

    if-nez v3, :cond_4

    .line 1382
    iput-object v0, p0, Lf/f;->b:Lf/u;

    .line 1383
    iget-object v3, p0, Lf/f;->b:Lf/u;

    iput-object v3, v3, Lf/u;->g:Lf/u;

    iput-object v3, v3, Lf/u;->f:Lf/u;

    goto :goto_3

    .line 1385
    :cond_4
    iget-object v3, v3, Lf/u;->g:Lf/u;

    .line 1386
    .local v3, "tail":Lf/u;
    invoke-virtual {v3, v0}, Lf/u;->a(Lf/u;)Lf/u;

    move-result-object v3

    .line 1387
    invoke-virtual {v3}, Lf/u;->a()V

    .line 1389
    .end local v3    # "tail":Lf/u;
    :goto_3
    iget-wide v3, p1, Lf/f;->c:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lf/f;->c:J

    .line 1390
    iget-wide v3, p0, Lf/f;->c:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lf/f;->c:J

    .line 1391
    sub-long/2addr p2, v1

    .line 1392
    .end local v0    # "segmentToMove":Lf/u;
    .end local v1    # "movedByteCount":J
    goto :goto_0

    .line 1393
    :cond_5
    return-void

    .line 1356
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1355
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(JLokio/ByteString;)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;

    .line 1609
    invoke-virtual {p3}, Lokio/ByteString;->e()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lf/f;->a(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public a(JLokio/ByteString;II)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I

    .line 1614
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    iget-wide v2, p0, Lf/f;->c:J

    sub-long/2addr v2, p1

    int-to-long v4, p5

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    .line 1618
    invoke-virtual {p3}, Lokio/ByteString;->e()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    .line 1621
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_2

    .line 1622
    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lf/f;->f(J)B

    move-result v2

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lokio/ByteString;->a(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1623
    return v1

    .line 1621
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1626
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1619
    :cond_3
    :goto_1
    return v1
.end method

.method public b(Lf/f;J)J
    .locals 4
    .param p1, "sink"    # Lf/f;
    .param p2, "byteCount"    # J

    .line 1396
    if-eqz p1, :cond_3

    .line 1397
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1398
    iget-wide v2, p0, Lf/f;->c:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1399
    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    iget-wide p2, p0, Lf/f;->c:J

    .line 1400
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lf/f;->a(Lf/f;J)V

    .line 1401
    return-wide p2

    .line 1397
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1396
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)Lf/u;
    .locals 3
    .param p1, "minimumCapacity"    # I

    .line 1290
    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    .line 1292
    iget-object v1, p0, Lf/f;->b:Lf/u;

    if-nez v1, :cond_0

    .line 1293
    invoke-static {}, Lf/v;->a()Lf/u;

    move-result-object v0

    iput-object v0, p0, Lf/f;->b:Lf/u;

    .line 1294
    iget-object v0, p0, Lf/f;->b:Lf/u;

    iput-object v0, v0, Lf/u;->g:Lf/u;

    iput-object v0, v0, Lf/u;->f:Lf/u;

    return-object v0

    .line 1297
    :cond_0
    iget-object v1, v1, Lf/u;->g:Lf/u;

    .line 1298
    .local v1, "tail":Lf/u;
    iget v2, v1, Lf/u;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_1

    iget-boolean v0, v1, Lf/u;->e:Z

    if-nez v0, :cond_2

    .line 1299
    :cond_1
    invoke-static {}, Lf/v;->a()Lf/u;

    move-result-object v0

    invoke-virtual {v1, v0}, Lf/u;->a(Lf/u;)Lf/u;

    move-result-object v1

    .line 1301
    :cond_2
    return-object v1

    .line 1290
    .end local v1    # "tail":Lf/u;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public b()Lf/z;
    .locals 1

    .line 1668
    sget-object v0, Lf/z;->a:Lf/z;

    return-object v0
.end method

.method public b(J)Ljava/lang/String;
    .locals 13
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 743
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 744
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-long v0, p1, v3

    .line 745
    .local v0, "scanLength":J
    :goto_0
    const/16 v6, 0xa

    const-wide/16 v7, 0x0

    move-object v5, p0

    move-wide v9, v0

    invoke-virtual/range {v5 .. v10}, Lf/f;->a(BJJ)J

    move-result-wide v5

    .line 746
    .local v5, "newline":J
    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5, v6}, Lf/f;->h(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 747
    :cond_1
    invoke-virtual {p0}, Lf/f;->size()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-gez v2, :cond_2

    sub-long v2, v0, v3

    .line 748
    invoke-virtual {p0, v2, v3}, Lf/f;->f(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0, v1}, Lf/f;->f(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 749
    invoke-virtual {p0, v0, v1}, Lf/f;->h(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 751
    :cond_2
    new-instance v8, Lf/f;

    invoke-direct {v8}, Lf/f;-><init>()V

    .line 752
    .local v8, "data":Lf/f;
    const-wide/16 v9, 0x0

    const-wide/16 v2, 0x20

    invoke-virtual {p0}, Lf/f;->size()J

    move-result-wide v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lf/f;->a(Lf/f;JJ)Lf/f;

    .line 753
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\n not found: limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf/f;->size()J

    move-result-wide v9

    invoke-static {v9, v10, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {v8}, Lf/f;->l()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2026

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 743
    .end local v0    # "scanLength":J
    .end local v5    # "newline":J
    .end local v8    # "data":Lf/f;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)Lf/f;
    .locals 3
    .param p1, "codePoint"    # I

    .line 1033
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 1035
    invoke-virtual {p0, p1}, Lf/f;->writeByte(I)Lf/f;

    goto :goto_0

    .line 1037
    :cond_0
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1

    .line 1039
    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lf/f;->writeByte(I)Lf/f;

    .line 1040
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lf/f;->writeByte(I)Lf/f;

    goto :goto_0

    .line 1042
    :cond_1
    const/high16 v1, 0x10000

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_3

    .line 1043
    const v1, 0xd800

    if-lt p1, v1, :cond_2

    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    .line 1045
    invoke-virtual {p0, v2}, Lf/f;->writeByte(I)Lf/f;

    goto :goto_0

    .line 1048
    :cond_2
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    invoke-virtual {p0, v1}, Lf/f;->writeByte(I)Lf/f;

    .line 1049
    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lf/f;->writeByte(I)Lf/f;

    .line 1050
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lf/f;->writeByte(I)Lf/f;

    goto :goto_0

    .line 1053
    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_4

    .line 1055
    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lf/f;->writeByte(I)Lf/f;

    .line 1056
    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lf/f;->writeByte(I)Lf/f;

    .line 1057
    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lf/f;->writeByte(I)Lf/f;

    .line 1058
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lf/f;->writeByte(I)Lf/f;

    .line 1065
    :goto_0
    return-object p0

    .line 1061
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(J)Lf/f;
    .locals 9
    .param p1, "v"    # J

    .line 1267
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1269
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lf/f;->writeByte(I)Lf/f;

    return-object p0

    .line 1272
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1274
    .local v0, "width":I
    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/u;

    move-result-object v2

    .line 1275
    .local v2, "tail":Lf/u;
    iget-object v3, v2, Lf/u;->a:[B

    .line 1276
    .local v3, "data":[B
    iget v4, v2, Lf/u;->c:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    .local v4, "pos":I
    iget v5, v2, Lf/u;->c:I

    .local v5, "start":I
    :goto_0
    if-lt v4, v5, :cond_1

    .line 1277
    sget-object v6, Lf/f;->a:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    aget-byte v6, v6, v7

    aput-byte v6, v3, v4

    .line 1278
    ushr-long/2addr p1, v1

    .line 1276
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1280
    .end local v4    # "pos":I
    .end local v5    # "start":I
    :cond_1
    iget v1, v2, Lf/u;->c:I

    add-int/2addr v1, v0

    iput v1, v2, Lf/u;->c:I

    .line 1281
    iget-wide v4, p0, Lf/f;->c:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lf/f;->c:J

    .line 1282
    return-object p0
.end method

.method public bridge synthetic c(J)Lf/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lf/f;->c(J)Lf/f;

    return-object p0
.end method

.method public c()Z
    .locals 4

    .line 105
    iget-wide v0, p0, Lf/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clone()Lf/f;
    .locals 5

    .line 1806
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    .line 1807
    .local v0, "result":Lf/f;
    iget-wide v1, p0, Lf/f;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-object v0

    .line 1809
    :cond_0
    iget-object v1, p0, Lf/f;->b:Lf/u;

    invoke-virtual {v1}, Lf/u;->c()Lf/u;

    move-result-object v1

    iput-object v1, v0, Lf/f;->b:Lf/u;

    .line 1810
    iget-object v1, v0, Lf/f;->b:Lf/u;

    iput-object v1, v1, Lf/u;->g:Lf/u;

    iput-object v1, v1, Lf/u;->f:Lf/u;

    .line 1811
    iget-object v1, p0, Lf/f;->b:Lf/u;

    iget-object v1, v1, Lf/u;->f:Lf/u;

    .local v1, "s":Lf/u;
    :goto_0
    iget-object v2, p0, Lf/f;->b:Lf/u;

    if-eq v1, v2, :cond_1

    .line 1812
    iget-object v2, v0, Lf/f;->b:Lf/u;

    iget-object v2, v2, Lf/u;->g:Lf/u;

    invoke-virtual {v1}, Lf/u;->c()Lf/u;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/u;->a(Lf/u;)Lf/u;

    .line 1811
    iget-object v1, v1, Lf/u;->f:Lf/u;

    goto :goto_0

    .line 1814
    .end local v1    # "s":Lf/u;
    :cond_1
    iget-wide v1, p0, Lf/f;->c:J

    iput-wide v1, v0, Lf/f;->c:J

    .line 1815
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lf/f;->clone()Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 1665
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 739
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lf/f;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)[B
    .locals 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 856
    iget-wide v0, p0, Lf/f;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lf/A;->a(JJJ)V

    .line 857
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 861
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 862
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Lf/f;->readFully([B)V

    .line 863
    return-object v0

    .line 858
    .end local v0    # "result":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()I
    .locals 1

    .line 418
    invoke-virtual {p0}, Lf/f;->readInt()I

    move-result v0

    invoke-static {v0}, Lf/A;->a(I)I

    move-result v0

    return v0
.end method

.method public e(J)V
    .locals 2
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 109
    iget-wide v0, p0, Lf/f;->c:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    .line 110
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 17
    .param p1, "o"    # Ljava/lang/Object;

    .line 1751
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 1752
    :cond_0
    instance-of v3, v1, Lf/f;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    .line 1753
    :cond_1
    move-object v3, v1

    check-cast v3, Lf/f;

    .line 1754
    .local v3, "that":Lf/f;
    iget-wide v5, v0, Lf/f;->c:J

    iget-wide v7, v3, Lf/f;->c:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    return v4

    .line 1755
    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    return v2

    .line 1757
    :cond_3
    iget-object v5, v0, Lf/f;->b:Lf/u;

    .line 1758
    .local v5, "sa":Lf/u;
    iget-object v6, v3, Lf/f;->b:Lf/u;

    .line 1759
    .local v6, "sb":Lf/u;
    iget v7, v5, Lf/u;->b:I

    .line 1760
    .local v7, "posA":I
    iget v8, v6, Lf/u;->b:I

    .line 1762
    .local v8, "posB":I
    const-wide/16 v9, 0x0

    .local v9, "pos":J
    :goto_0
    iget-wide v11, v0, Lf/f;->c:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_8

    .line 1763
    iget v11, v5, Lf/u;->c:I

    sub-int/2addr v11, v7

    iget v12, v6, Lf/u;->c:I

    sub-int/2addr v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    .line 1765
    .local v11, "count":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    int-to-long v14, v13

    cmp-long v14, v14, v11

    if-gez v14, :cond_5

    .line 1766
    iget-object v14, v5, Lf/u;->a:[B

    add-int/lit8 v15, v7, 0x1

    .end local v7    # "posA":I
    .local v15, "posA":I
    aget-byte v7, v14, v7

    iget-object v14, v6, Lf/u;->a:[B

    add-int/lit8 v16, v8, 0x1

    .end local v8    # "posB":I
    .local v16, "posB":I
    aget-byte v8, v14, v8

    if-eq v7, v8, :cond_4

    return v4

    .line 1765
    :cond_4
    add-int/lit8 v13, v13, 0x1

    move v7, v15

    move/from16 v8, v16

    goto :goto_1

    .line 1769
    .end local v13    # "i":I
    .end local v15    # "posA":I
    .end local v16    # "posB":I
    .restart local v7    # "posA":I
    .restart local v8    # "posB":I
    :cond_5
    iget v13, v5, Lf/u;->c:I

    if-ne v7, v13, :cond_6

    .line 1770
    iget-object v5, v5, Lf/u;->f:Lf/u;

    .line 1771
    iget v7, v5, Lf/u;->b:I

    .line 1774
    :cond_6
    iget v13, v6, Lf/u;->c:I

    if-ne v8, v13, :cond_7

    .line 1775
    iget-object v6, v6, Lf/u;->f:Lf/u;

    .line 1776
    iget v8, v6, Lf/u;->b:I

    .line 1762
    :cond_7
    add-long/2addr v9, v11

    goto :goto_0

    .line 1780
    .end local v9    # "pos":J
    .end local v11    # "count":J
    :cond_8
    return v2
.end method

.method public final f(J)B
    .locals 6
    .param p1, "pos"    # J

    .line 302
    iget-wide v0, p0, Lf/f;->c:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lf/A;->a(JJJ)V

    .line 303
    iget-wide v0, p0, Lf/f;->c:J

    sub-long v2, v0, p1

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    .line 304
    iget-object v0, p0, Lf/f;->b:Lf/u;

    .line 305
    .local v0, "s":Lf/u;
    :goto_0
    iget v1, v0, Lf/u;->c:I

    iget v2, v0, Lf/u;->b:I

    sub-int/2addr v1, v2

    .line 306
    .local v1, "segmentByteCount":I
    int-to-long v3, v1

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    iget-object v3, v0, Lf/u;->a:[B

    long-to-int v4, p1

    add-int/2addr v2, v4

    aget-byte v2, v3, v2

    return v2

    .line 307
    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 304
    .end local v1    # "segmentByteCount":I
    iget-object v0, v0, Lf/u;->f:Lf/u;

    goto :goto_0

    .line 310
    .end local v0    # "s":Lf/u;
    :cond_1
    sub-long/2addr p1, v0

    .line 311
    iget-object v0, p0, Lf/f;->b:Lf/u;

    iget-object v0, v0, Lf/u;->g:Lf/u;

    .line 312
    .restart local v0    # "s":Lf/u;
    :goto_1
    iget v1, v0, Lf/u;->c:I

    iget v2, v0, Lf/u;->b:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    add-long/2addr p1, v3

    .line 313
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-ltz v1, :cond_2

    iget-object v1, v0, Lf/u;->a:[B

    long-to-int v3, p1

    add-int/2addr v2, v3

    aget-byte v1, v1, v2

    return v1

    .line 311
    :cond_2
    iget-object v0, v0, Lf/u;->g:Lf/u;

    goto :goto_1
.end method

.method public f()S
    .locals 1

    .line 414
    invoke-virtual {p0}, Lf/f;->readShort()S

    move-result v0

    invoke-static {v0}, Lf/A;->a(S)S

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 0

    .line 1658
    return-void
.end method

.method public g()J
    .locals 14

    .line 484
    iget-wide v0, p0, Lf/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 486
    const-wide/16 v0, 0x0

    .line 487
    .local v0, "value":J
    const/4 v4, 0x0

    .line 488
    .local v4, "seen":I
    const/4 v5, 0x0

    .line 491
    .local v5, "done":Z
    :cond_0
    iget-object v6, p0, Lf/f;->b:Lf/u;

    .line 493
    .local v6, "segment":Lf/u;
    iget-object v7, v6, Lf/u;->a:[B

    .line 494
    .local v7, "data":[B
    iget v8, v6, Lf/u;->b:I

    .line 495
    .local v8, "pos":I
    iget v9, v6, Lf/u;->c:I

    .line 497
    .local v9, "limit":I
    :goto_0
    if-ge v8, v9, :cond_6

    .line 500
    aget-byte v10, v7, v8

    .line 501
    .local v10, "b":B
    const/16 v11, 0x30

    if-lt v10, v11, :cond_1

    const/16 v11, 0x39

    if-gt v10, v11, :cond_1

    .line 502
    add-int/lit8 v11, v10, -0x30

    .local v11, "digit":I
    goto :goto_1

    .line 503
    .end local v11    # "digit":I
    :cond_1
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2

    .line 504
    add-int/lit8 v11, v10, -0x61

    add-int/lit8 v11, v11, 0xa

    .restart local v11    # "digit":I
    goto :goto_1

    .line 505
    .end local v11    # "digit":I
    :cond_2
    const/16 v11, 0x41

    if-lt v10, v11, :cond_4

    const/16 v11, 0x46

    if-gt v10, v11, :cond_4

    .line 506
    add-int/lit8 v11, v10, -0x41

    add-int/lit8 v11, v11, 0xa

    .line 518
    .restart local v11    # "digit":I
    :goto_1
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v0

    cmp-long v12, v12, v2

    if-nez v12, :cond_3

    .line 523
    const/4 v12, 0x4

    shl-long/2addr v0, v12

    .line 524
    int-to-long v12, v11

    or-long/2addr v0, v12

    .line 497
    .end local v10    # "b":B
    .end local v11    # "digit":I
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 519
    .restart local v10    # "b":B
    .restart local v11    # "digit":I
    :cond_3
    new-instance v2, Lf/f;

    invoke-direct {v2}, Lf/f;-><init>()V

    invoke-virtual {v2, v0, v1}, Lf/f;->c(J)Lf/f;

    invoke-virtual {v2, v10}, Lf/f;->writeByte(I)Lf/f;

    move-result-object v2

    .line 520
    .local v2, "buffer":Lf/f;
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Number too large: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lf/f;->m()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 508
    .end local v2    # "buffer":Lf/f;
    .end local v11    # "digit":I
    :cond_4
    if-eqz v4, :cond_5

    .line 513
    const/4 v5, 0x1

    .line 514
    goto :goto_2

    .line 509
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 527
    .end local v10    # "b":B
    :cond_6
    :goto_2
    if-ne v8, v9, :cond_7

    .line 528
    invoke-virtual {v6}, Lf/u;->b()Lf/u;

    move-result-object v10

    iput-object v10, p0, Lf/f;->b:Lf/u;

    .line 529
    invoke-static {v6}, Lf/v;->a(Lf/u;)V

    goto :goto_3

    .line 531
    :cond_7
    iput v8, v6, Lf/u;->b:I

    .line 533
    .end local v6    # "segment":Lf/u;
    .end local v7    # "data":[B
    .end local v8    # "pos":I
    .end local v9    # "limit":I
    :goto_3
    if-nez v5, :cond_8

    iget-object v6, p0, Lf/f;->b:Lf/u;

    if-nez v6, :cond_0

    .line 535
    :cond_8
    iget-wide v2, p0, Lf/f;->c:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lf/f;->c:J

    .line 536
    return-wide v0

    .line 484
    .end local v0    # "value":J
    .end local v4    # "seen":I
    .end local v5    # "done":Z
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 691
    sget-object v0, Lf/A;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lf/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/io/InputStream;
    .locals 1

    .line 117
    new-instance v0, Lf/e;

    invoke-direct {v0, p0}, Lf/e;-><init>(Lf/f;)V

    return-object v0
.end method

.method public h(J)Ljava/lang/String;
    .locals 5
    .param p1, "newline"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 758
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lf/f;->f(J)B

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    .line 760
    sub-long v0, p1, v1

    invoke-virtual {p0, v0, v1}, Lf/f;->g(J)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "result":Ljava/lang/String;
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lf/f;->skip(J)V

    .line 762
    return-object v0

    .line 766
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lf/f;->g(J)Ljava/lang/String;

    move-result-object v0

    .line 767
    .restart local v0    # "result":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lf/f;->skip(J)V

    .line 768
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1784
    iget-object v0, p0, Lf/f;->b:Lf/u;

    .line 1785
    .local v0, "s":Lf/u;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1786
    :cond_0
    const/4 v1, 0x1

    .line 1788
    .local v1, "result":I
    :goto_0
    iget v2, v0, Lf/u;->b:I

    .local v2, "pos":I
    iget v3, v0, Lf/u;->c:I

    .local v3, "limit":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1789
    mul-int/lit8 v4, v1, 0x1f

    iget-object v5, v0, Lf/u;->a:[B

    aget-byte v5, v5, v2

    add-int v1, v4, v5

    .line 1788
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1791
    .end local v2    # "pos":I
    .end local v3    # "limit":I
    :cond_1
    iget-object v0, v0, Lf/u;->f:Lf/u;

    .line 1792
    iget-object v2, p0, Lf/f;->b:Lf/u;

    if-ne v0, v2, :cond_2

    .line 1793
    return v1

    .line 1792
    :cond_2
    goto :goto_0
.end method

.method public final i()V
    .locals 2

    .line 922
    :try_start_0
    iget-wide v0, p0, Lf/f;->c:J

    invoke-virtual {p0, v0, v1}, Lf/f;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    nop

    .line 926
    return-void

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public isOpen()Z
    .locals 1

    .line 1661
    const/4 v0, 0x1

    return v0
.end method

.method public final j()J
    .locals 5

    .line 267
    iget-wide v0, p0, Lf/f;->c:J

    .line 268
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 271
    :cond_0
    iget-object v2, p0, Lf/f;->b:Lf/u;

    iget-object v2, v2, Lf/u;->g:Lf/u;

    .line 272
    .local v2, "tail":Lf/u;
    iget v3, v2, Lf/u;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Lf/u;->e:Z

    if-eqz v4, :cond_1

    .line 273
    iget v4, v2, Lf/u;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v0, v3

    .line 276
    :cond_1
    return-wide v0
.end method

.method public k()[B
    .locals 2

    .line 849
    :try_start_0
    iget-wide v0, p0, Lf/f;->c:J

    invoke-virtual {p0, v0, v1}, Lf/f;->d(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public l()Lokio/ByteString;
    .locals 2

    .line 540
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lf/f;->k()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 684
    :try_start_0
    iget-wide v0, p0, Lf/f;->c:J

    sget-object v2, Lf/A;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lf/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final n()Lokio/ByteString;
    .locals 4

    .line 1820
    iget-wide v0, p0, Lf/f;->c:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1823
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lf/f;->a(I)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 1821
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lf/f;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "sink"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lf/f;->b:Lf/u;

    .line 900
    .local v0, "s":Lf/u;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 902
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lf/u;->c:I

    iget v3, v0, Lf/u;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 903
    .local v1, "toCopy":I
    iget-object v2, v0, Lf/u;->a:[B

    iget v3, v0, Lf/u;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 905
    iget v2, v0, Lf/u;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lf/u;->b:I

    .line 906
    iget-wide v2, p0, Lf/f;->c:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lf/f;->c:J

    .line 908
    iget v2, v0, Lf/u;->b:I

    iget v3, v0, Lf/u;->c:I

    if-ne v2, v3, :cond_1

    .line 909
    invoke-virtual {v0}, Lf/u;->b()Lf/u;

    move-result-object v2

    iput-object v2, p0, Lf/f;->b:Lf/u;

    .line 910
    invoke-static {v0}, Lf/v;->a(Lf/u;)V

    .line 913
    :cond_1
    return v1
.end method

.method public readByte()B
    .locals 9

    .line 280
    iget-wide v0, p0, Lf/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p0, Lf/f;->b:Lf/u;

    .line 283
    .local v2, "segment":Lf/u;
    iget v3, v2, Lf/u;->b:I

    .line 284
    .local v3, "pos":I
    iget v4, v2, Lf/u;->c:I

    .line 286
    .local v4, "limit":I
    iget-object v5, v2, Lf/u;->a:[B

    .line 287
    .local v5, "data":[B
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos":I
    .local v6, "pos":I
    aget-byte v3, v5, v3

    .line 288
    .local v3, "b":B
    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lf/f;->c:J

    .line 290
    if-ne v6, v4, :cond_0

    .line 291
    invoke-virtual {v2}, Lf/u;->b()Lf/u;

    move-result-object v0

    iput-object v0, p0, Lf/f;->b:Lf/u;

    .line 292
    invoke-static {v2}, Lf/v;->a(Lf/u;)V

    goto :goto_0

    .line 294
    :cond_0
    iput v6, v2, Lf/u;->b:I

    .line 297
    :goto_0
    return v3

    .line 280
    .end local v2    # "segment":Lf/u;
    .end local v3    # "b":B
    .end local v4    # "limit":I
    .end local v5    # "data":[B
    .end local v6    # "pos":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFully([B)V
    .locals 3
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "offset":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 873
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lf/f;->a([BII)I

    move-result v1

    .line 874
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 875
    add-int/2addr v0, v1

    .line 876
    .end local v1    # "read":I
    goto :goto_0

    .line 874
    .restart local v1    # "read":I
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 877
    .end local v1    # "read":I
    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 10

    .line 348
    iget-wide v0, p0, Lf/f;->c:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 350
    iget-object v4, p0, Lf/f;->b:Lf/u;

    .line 351
    .local v4, "segment":Lf/u;
    iget v5, v4, Lf/u;->b:I

    .line 352
    .local v5, "pos":I
    iget v6, v4, Lf/u;->c:I

    .line 355
    .local v6, "limit":I
    sub-int v7, v6, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_0

    .line 356
    invoke-virtual {p0}, Lf/f;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 357
    invoke-virtual {p0}, Lf/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 358
    invoke-virtual {p0}, Lf/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 359
    invoke-virtual {p0}, Lf/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 356
    return v0

    .line 362
    :cond_0
    iget-object v7, v4, Lf/u;->a:[B

    .line 363
    .local v7, "data":[B
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos":I
    .local v8, "pos":I
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .local v9, "pos":I
    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    .line 367
    .local v5, "i":I
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lf/f;->c:J

    .line 369
    if-ne v9, v6, :cond_1

    .line 370
    invoke-virtual {v4}, Lf/u;->b()Lf/u;

    move-result-object v0

    iput-object v0, p0, Lf/f;->b:Lf/u;

    .line 371
    invoke-static {v4}, Lf/v;->a(Lf/u;)V

    goto :goto_0

    .line 373
    :cond_1
    iput v9, v4, Lf/u;->b:I

    .line 376
    :goto_0
    return v5

    .line 348
    .end local v4    # "segment":Lf/u;
    .end local v5    # "i":I
    .end local v6    # "limit":I
    .end local v7    # "data":[B
    .end local v9    # "pos":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lf/f;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readShort()S
    .locals 10

    .line 319
    iget-wide v0, p0, Lf/f;->c:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 321
    iget-object v4, p0, Lf/f;->b:Lf/u;

    .line 322
    .local v4, "segment":Lf/u;
    iget v5, v4, Lf/u;->b:I

    .line 323
    .local v5, "pos":I
    iget v6, v4, Lf/u;->c:I

    .line 326
    .local v6, "limit":I
    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 327
    invoke-virtual {p0}, Lf/f;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 328
    invoke-virtual {p0}, Lf/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 329
    .local v0, "s":I
    int-to-short v1, v0

    return v1

    .line 332
    .end local v0    # "s":I
    :cond_0
    iget-object v7, v4, Lf/u;->a:[B

    .line 333
    .local v7, "data":[B
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos":I
    .local v8, "pos":I
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .local v9, "pos":I
    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    .line 335
    .local v5, "s":I
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lf/f;->c:J

    .line 337
    if-ne v9, v6, :cond_1

    .line 338
    invoke-virtual {v4}, Lf/u;->b()Lf/u;

    move-result-object v0

    iput-object v0, p0, Lf/f;->b:Lf/u;

    .line 339
    invoke-static {v4}, Lf/v;->a(Lf/u;)V

    goto :goto_0

    .line 341
    :cond_1
    iput v9, v4, Lf/u;->b:I

    .line 344
    :goto_0
    int-to-short v0, v5

    return v0

    .line 319
    .end local v4    # "segment":Lf/u;
    .end local v5    # "s":I
    .end local v6    # "limit":I
    .end local v7    # "data":[B
    .end local v9    # "pos":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lf/f;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final size()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lf/f;->c:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 930
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 931
    iget-object v0, p0, Lf/f;->b:Lf/u;

    if-eqz v0, :cond_1

    .line 933
    iget v1, v0, Lf/u;->c:I

    iget v0, v0, Lf/u;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 934
    .local v0, "toSkip":I
    iget-wide v1, p0, Lf/f;->c:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lf/f;->c:J

    .line 935
    int-to-long v1, v0

    sub-long/2addr p1, v1

    .line 936
    iget-object v1, p0, Lf/f;->b:Lf/u;

    iget v2, v1, Lf/u;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lf/u;->b:I

    .line 938
    iget v2, v1, Lf/u;->b:I

    iget v1, v1, Lf/u;->c:I

    if-ne v2, v1, :cond_0

    .line 939
    iget-object v1, p0, Lf/f;->b:Lf/u;

    .line 940
    .local v1, "toRecycle":Lf/u;
    invoke-virtual {v1}, Lf/u;->b()Lf/u;

    move-result-object v2

    iput-object v2, p0, Lf/f;->b:Lf/u;

    .line 941
    invoke-static {v1}, Lf/v;->a(Lf/u;)V

    .line 943
    .end local v0    # "toSkip":I
    .end local v1    # "toRecycle":Lf/u;
    :cond_0
    goto :goto_0

    .line 931
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 944
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1801
    invoke-virtual {p0}, Lf/f;->n()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1114
    if-eqz p1, :cond_1

    .line 1116
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1117
    .local v0, "byteCount":I
    move v1, v0

    .line 1118
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_0

    .line 1119
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lf/f;->b(I)Lf/u;

    move-result-object v2

    .line 1121
    .local v2, "tail":Lf/u;
    iget v3, v2, Lf/u;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1122
    .local v3, "toCopy":I
    iget-object v4, v2, Lf/u;->a:[B

    iget v5, v2, Lf/u;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1124
    sub-int/2addr v1, v3

    .line 1125
    iget v4, v2, Lf/u;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lf/u;->c:I

    .line 1126
    .end local v2    # "tail":Lf/u;
    .end local v3    # "toCopy":I
    goto :goto_0

    .line 1128
    :cond_0
    iget-wide v2, p0, Lf/f;->c:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lf/f;->c:J

    .line 1129
    return v0

    .line 1114
    .end local v0    # "byteCount":I
    .end local v1    # "remaining":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)Lf/f;
    .locals 2
    .param p1, "source"    # [B

    .line 1090
    if-eqz p1, :cond_0

    .line 1091
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lf/f;->write([BII)Lf/f;

    return-object p0

    .line 1090
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)Lf/f;
    .locals 7
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 1095
    if-eqz p1, :cond_1

    .line 1096
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lf/A;->a(JJJ)V

    .line 1098
    add-int v0, p2, p3

    .line 1099
    .local v0, "limit":I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1100
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lf/f;->b(I)Lf/u;

    move-result-object v1

    .line 1102
    .local v1, "tail":Lf/u;
    sub-int v2, v0, p2

    iget v3, v1, Lf/u;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1103
    .local v2, "toCopy":I
    iget-object v3, v1, Lf/u;->a:[B

    iget v4, v1, Lf/u;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1105
    add-int/2addr p2, v2

    .line 1106
    iget v3, v1, Lf/u;->c:I

    add-int/2addr v3, v2

    iput v3, v1, Lf/u;->c:I

    .line 1107
    .end local v1    # "tail":Lf/u;
    .end local v2    # "toCopy":I
    goto :goto_0

    .line 1109
    :cond_0
    iget-wide v1, p0, Lf/f;->c:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lf/f;->c:J

    .line 1110
    return-object p0

    .line 1095
    .end local v0    # "limit":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic write([B)Lf/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lf/f;->write([B)Lf/f;

    return-object p0
.end method

.method public bridge synthetic write([BII)Lf/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lf/f;->write([BII)Lf/f;

    return-object p0
.end method

.method public writeByte(I)Lf/f;
    .locals 5
    .param p1, "b"    # I

    .line 1151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/u;

    move-result-object v0

    .line 1152
    .local v0, "tail":Lf/u;
    iget-object v1, v0, Lf/u;->a:[B

    iget v2, v0, Lf/u;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lf/u;->c:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1153
    iget-wide v1, p0, Lf/f;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lf/f;->c:J

    .line 1154
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lf/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lf/f;->writeByte(I)Lf/f;

    return-object p0
.end method

.method public writeInt(I)Lf/f;
    .locals 7
    .param p1, "i"    # I

    .line 1173
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/u;

    move-result-object v0

    .line 1174
    .local v0, "tail":Lf/u;
    iget-object v1, v0, Lf/u;->a:[B

    .line 1175
    .local v1, "data":[B
    iget v2, v0, Lf/u;->c:I

    .line 1176
    .local v2, "limit":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "limit":I
    .local v3, "limit":I
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1177
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "limit":I
    .restart local v2    # "limit":I
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1178
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "limit":I
    .restart local v3    # "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1179
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "limit":I
    .restart local v2    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1180
    iput v2, v0, Lf/u;->c:I

    .line 1181
    iget-wide v3, p0, Lf/f;->c:J

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lf/f;->c:J

    .line 1182
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lf/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lf/f;->writeInt(I)Lf/f;

    return-object p0
.end method

.method public writeShort(I)Lf/f;
    .locals 7
    .param p1, "s"    # I

    .line 1158
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/u;

    move-result-object v0

    .line 1159
    .local v0, "tail":Lf/u;
    iget-object v1, v0, Lf/u;->a:[B

    .line 1160
    .local v1, "data":[B
    iget v2, v0, Lf/u;->c:I

    .line 1161
    .local v2, "limit":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "limit":I
    .local v3, "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1162
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "limit":I
    .restart local v2    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1163
    iput v2, v0, Lf/u;->c:I

    .line 1164
    iget-wide v3, p0, Lf/f;->c:J

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lf/f;->c:J

    .line 1165
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lf/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lf/f;->writeShort(I)Lf/f;

    return-object p0
.end method
