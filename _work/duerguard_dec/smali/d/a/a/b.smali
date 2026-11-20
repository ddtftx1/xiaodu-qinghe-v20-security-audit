.class public final Ld/a/a/b;
.super Ljava/lang/Object;
.source "Base64Util.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .line 12
    const-string v0, ""

    .line 14
    .local v0, "strEncode":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 17
    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
