.class public final Le/a/c/f;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->c(Ljava/lang/String;)Lokio/ByteString;

    .line 45
    const-string v0, "\t ,="

    invoke-static {v0}, Lokio/ByteString;->c(Ljava/lang/String;)Lokio/ByteString;

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 378
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .local v0, "seconds":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 380
    const v2, 0x7fffffff

    return v2

    .line 381
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 382
    const/4 v2, 0x0

    return v2

    .line 384
    :cond_1
    long-to-int v2, v0

    return v2

    .line 386
    .end local v0    # "seconds":J
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .line 350
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 351
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 352
    goto :goto_1

    .line 350
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 355
    :cond_1
    :goto_1
    return p1
.end method

.method public static a(Le/I;)J
    .locals 2
    .param p0, "response"    # Le/I;

    .line 51
    invoke-virtual {p0}, Le/I;->m()Le/x;

    move-result-object v0

    invoke-static {v0}, Le/a/c/f;->a(Le/x;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Le/x;)J
    .locals 2
    .param p0, "headers"    # Le/x;

    .line 55
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Le/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/f;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;)J
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 59
    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 61
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public static a(Le/p;Le/y;Le/x;)V
    .locals 2
    .param p0, "cookieJar"    # Le/p;
    .param p1, "url"    # Le/y;
    .param p2, "headers"    # Le/x;

    .line 313
    sget-object v0, Le/p;->a:Le/p;

    if-ne p0, v0, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-static {p1, p2}, Le/n;->a(Le/y;Le/x;)Ljava/util/List;

    move-result-object v0

    .line 316
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 318
    :cond_1
    move-object v1, p0

    check-cast v1, Le/o;

    invoke-virtual {v1, p1, v0}, Le/o;->a(Le/y;Ljava/util/List;)V

    .line 319
    return-void
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 363
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 364
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 365
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 366
    goto :goto_1

    .line 363
    .end local v0    # "c":C
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 369
    :cond_1
    :goto_1
    return p1
.end method

.method public static b(Le/I;)Z
    .locals 8
    .param p0, "response"    # Le/I;

    .line 324
    invoke-virtual {p0}, Le/I;->r()Le/F;

    move-result-object v0

    invoke-virtual {v0}, Le/F;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 325
    return v1

    .line 328
    :cond_0
    invoke-virtual {p0}, Le/I;->k()I

    move-result v0

    .line 329
    .local v0, "responseCode":I
    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    .line 332
    return v3

    .line 337
    :cond_2
    invoke-static {p0}, Le/a/c/f;->a(Le/I;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    .line 338
    const-string v2, "Transfer-Encoding"

    invoke-virtual {p0, v2}, Le/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "chunked"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 342
    :cond_3
    return v1

    .line 339
    :cond_4
    :goto_0
    return v3
.end method
