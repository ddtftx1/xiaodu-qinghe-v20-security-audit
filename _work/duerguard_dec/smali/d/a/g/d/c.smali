.class public final Ld/a/g/d/c;
.super Ljava/lang/Object;
.source "ForHostApp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/g/d/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/baidu/sofire/core/ApkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ld/a/g/d/f;Ljava/util/List;)V
    .locals 0

    .line 274
    iput-object p2, p0, Ld/a/g/d/c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 274
    check-cast p1, Lcom/baidu/sofire/core/ApkInfo;

    check-cast p2, Lcom/baidu/sofire/core/ApkInfo;

    .line 1278
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p2, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    if-eq v0, v2, :cond_0

    .line 1279
    return v1

    .line 1280
    :cond_0
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    if-eq v0, v2, :cond_1

    iget v0, p2, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    if-ne v0, v2, :cond_1

    .line 1281
    return v2

    .line 1282
    :cond_1
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    iget v3, p2, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    if-ge v0, v3, :cond_2

    .line 1283
    return v2

    .line 1284
    :cond_2
    if-le v0, v3, :cond_3

    .line 1285
    return v1

    .line 1287
    :cond_3
    nop

    .line 1288
    iget-object v0, p0, Ld/a/g/d/c;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1289
    iget-object v0, p0, Ld/a/g/d/c;->a:Ljava/util/List;

    iget p1, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 1291
    :cond_4
    move p1, v2

    :goto_0
    nop

    .line 1292
    iget-object v0, p0, Ld/a/g/d/c;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    iget v3, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1293
    iget-object v0, p0, Ld/a/g/d/c;->a:Ljava/util/List;

    iget p2, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    goto :goto_1

    .line 1295
    :cond_5
    move p2, v2

    :goto_1
    if-eq p1, v2, :cond_6

    if-ne p2, v2, :cond_6

    .line 1296
    return v2

    .line 1297
    :cond_6
    if-ne p1, v2, :cond_7

    if-eq p2, v2, :cond_7

    .line 1298
    return v1

    .line 1300
    :cond_7
    if-le p1, p2, :cond_8

    .line 1301
    return v1

    .line 1302
    :cond_8
    if-ge p1, p2, :cond_9

    .line 1303
    return v2

    .line 1307
    :cond_9
    const/4 p1, 0x0

    .line 274
    return p1
.end method
