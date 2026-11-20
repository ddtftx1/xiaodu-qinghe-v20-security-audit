.class public Le/a/e/t;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Le/a/e/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .line 93
    return-void
.end method

.method public a(ILf/h;IZ)Z
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "source"    # Lf/h;
    .param p3, "byteCount"    # I
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lf/h;->skip(J)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public a(ILjava/util/List;)Z
    .locals 1
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Le/a/e/a;",
            ">;)Z"
        }
    .end annotation

    .line 79
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public a(ILjava/util/List;Z)Z
    .locals 1
    .param p1, "streamId"    # I
    .param p3, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Le/a/e/a;",
            ">;Z)Z"
        }
    .end annotation

    .line 83
    .local p2, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    const/4 v0, 0x1

    return v0
.end method
