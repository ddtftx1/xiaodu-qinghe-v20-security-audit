.class public final Lf/d;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lf/d;->a:[B

    .line 117
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    return-void

    nop

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

    :array_1
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
        0x2dt
        0x5ft
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # [B

    .line 125
    sget-object v0, Lf/d;->a:[B

    invoke-static {p0, v0}, Lf/d;->a([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B[B)Ljava/lang/String;
    .locals 9
    .param p0, "in"    # [B
    .param p1, "map"    # [B

    .line 133
    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 134
    .local v0, "length":I
    new-array v2, v0, [B

    .line 135
    .local v2, "out":[B
    const/4 v3, 0x0

    .local v3, "index":I
    array-length v4, p0

    array-length v5, p0

    rem-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    .line 136
    .local v4, "end":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 137
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .local v6, "index":I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v1

    aget-byte v7, p1, v7

    aput-byte v7, v2, v3

    .line 138
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "index":I
    .restart local v3    # "index":I
    aget-byte v7, p0, v5

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v7, p1, v7

    aput-byte v7, v2, v6

    .line 139
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .restart local v6    # "index":I
    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v1

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    aget-byte v7, p1, v7

    aput-byte v7, v2, v3

    .line 140
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "index":I
    .restart local v3    # "index":I
    add-int/lit8 v7, v5, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, p1, v7

    aput-byte v7, v2, v6

    .line 136
    add-int/lit8 v5, v5, 0x3

    goto :goto_0

    .line 142
    .end local v5    # "i":I
    :cond_0
    array-length v5, p0

    rem-int/lit8 v5, v5, 0x3

    const/16 v6, 0x3d

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    if-eq v5, v1, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "index":I
    .local v5, "index":I
    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v1

    aget-byte v7, p1, v7

    aput-byte v7, v2, v3

    .line 151
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "index":I
    .restart local v3    # "index":I
    aget-byte v7, p0, v4

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v7, p1, v7

    aput-byte v7, v2, v5

    .line 152
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "index":I
    .restart local v5    # "index":I
    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v1, v7, 0x2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    .line 153
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "index":I
    .restart local v3    # "index":I
    aput-byte v6, v2, v5

    goto :goto_1

    .line 144
    :cond_2
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "index":I
    .restart local v5    # "index":I
    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v1, v7, 0x2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    .line 145
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "index":I
    .local v1, "index":I
    aget-byte v3, p0, v4

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    aput-byte v3, v2, v5

    .line 146
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "index":I
    .restart local v3    # "index":I
    aput-byte v6, v2, v1

    .line 147
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "index":I
    .restart local v1    # "index":I
    aput-byte v6, v2, v3

    .line 148
    move v3, v1

    .line 157
    .end local v1    # "index":I
    .restart local v3    # "index":I
    :goto_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
.end method
