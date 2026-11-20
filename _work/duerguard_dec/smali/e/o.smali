.class public Le/o;
.super Ljava/lang/Object;
.source "CookieJar.java"

# interfaces
.implements Le/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/y;)Ljava/util/List;
    .locals 1
    .param p1, "url"    # Le/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/y;",
            ")",
            "Ljava/util/List<",
            "Le/n;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Le/y;Ljava/util/List;)V
    .locals 0
    .param p1, "url"    # Le/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/y;",
            "Ljava/util/List<",
            "Le/n;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    return-void
.end method
