.class public final Ld/a/g/i/k$b;
.super Ljava/lang/Object;
.source "GdUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/g/i/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 385
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
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
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static a([B)[B
    .locals 16

    .line 391
    move-object/from16 v0, p0

    array-length v1, v0

    .line 1395
    div-int/lit8 v2, v1, 0x4

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    .line 1396
    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 1397
    new-array v0, v4, [B

    return-object v0

    .line 1399
    :cond_0
    new-array v2, v2, [B

    .line 1400
    move v5, v4

    .line 1403
    :goto_0
    add-int/lit8 v6, v1, -0x1

    aget-byte v6, v0, v6

    .line 1404
    const/16 v7, 0xa

    if-eq v6, v7, :cond_c

    const/16 v8, 0xd

    if-eq v6, v8, :cond_c

    const/16 v9, 0x20

    if-eq v6, v9, :cond_c

    const/16 v10, 0x9

    if-eq v6, v10, :cond_c

    .line 1405
    const/16 v11, 0x3d

    if-ne v6, v11, :cond_1

    .line 1408
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 1412
    :cond_1
    nop

    .line 1413
    nop

    .line 1415
    nop

    .line 1416
    move v6, v4

    move v11, v6

    move v12, v11

    move v13, v12

    :goto_1
    const v14, 0xff00

    const/high16 v15, 0xff0000

    if-ge v6, v1, :cond_9

    .line 1417
    aget-byte v4, v0, v6

    .line 1418
    if-eq v4, v7, :cond_8

    if-eq v4, v8, :cond_8

    if-eq v4, v9, :cond_8

    if-eq v4, v10, :cond_8

    .line 1419
    const/16 v7, 0x41

    if-lt v4, v7, :cond_2

    const/16 v7, 0x5a

    if-gt v4, v7, :cond_2

    .line 1420
    add-int/lit8 v4, v4, -0x41

    goto :goto_2

    .line 1421
    :cond_2
    const/16 v7, 0x61

    if-lt v4, v7, :cond_3

    const/16 v7, 0x7a

    if-gt v4, v7, :cond_3

    .line 1422
    add-int/lit8 v4, v4, -0x47

    goto :goto_2

    .line 1423
    :cond_3
    const/16 v7, 0x30

    if-lt v4, v7, :cond_4

    const/16 v7, 0x39

    if-gt v4, v7, :cond_4

    .line 1424
    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    .line 1425
    :cond_4
    const/16 v7, 0x2b

    if-ne v4, v7, :cond_5

    .line 1426
    const/16 v4, 0x3e

    goto :goto_2

    .line 1427
    :cond_5
    const/16 v7, 0x2f

    if-ne v4, v7, :cond_7

    .line 1428
    const/16 v4, 0x3f

    .line 1432
    :goto_2
    shl-int/lit8 v7, v11, 0x6

    int-to-byte v4, v4

    or-int/2addr v4, v7

    .line 1433
    rem-int/lit8 v7, v13, 0x4

    if-ne v7, v3, :cond_6

    .line 1434
    add-int/lit8 v7, v12, 0x1

    and-int v11, v4, v15

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v2, v12

    .line 1435
    add-int/lit8 v11, v7, 0x1

    and-int v12, v4, v14

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v2, v7

    .line 1436
    add-int/lit8 v12, v11, 0x1

    and-int/lit16 v7, v4, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v11

    .line 1438
    :cond_6
    add-int/lit8 v13, v13, 0x1

    move v11, v4

    goto :goto_3

    .line 1430
    :cond_7
    const/4 v0, 0x0

    return-object v0

    .line 1416
    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const/16 v7, 0xa

    goto :goto_1

    .line 1441
    :cond_9
    if-lez v5, :cond_b

    .line 1442
    mul-int/lit8 v0, v5, 0x6

    shl-int v0, v11, v0

    .line 1443
    add-int/lit8 v1, v12, 0x1

    and-int v3, v0, v15

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v12

    .line 1444
    const/4 v3, 0x1

    if-ne v5, v3, :cond_a

    .line 1445
    add-int/lit8 v12, v1, 0x1

    and-int/2addr v0, v14

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    goto :goto_4

    .line 1444
    :cond_a
    move v12, v1

    .line 1448
    :cond_b
    :goto_4
    new-array v0, v12, [B

    .line 1449
    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1450
    nop

    .line 391
    return-object v0

    .line 1410
    :cond_c
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0
.end method
