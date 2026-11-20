.class public final Ld/a/g/d/p;
.super Ljava/lang/Object;
.source "RandomKeyUtil.java"


# direct methods
.method public static a()[B
    .locals 6

    .line 10
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 11
    const/16 v1, 0x10

    new-array v2, v1, [C

    .line 12
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 14
    aget-char v4, v0, v4

    aput-char v4, v2, v3

    .line 12
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
