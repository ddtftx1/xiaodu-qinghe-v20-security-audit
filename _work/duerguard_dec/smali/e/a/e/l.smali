.class public Le/a/e/l;
.super Le/a/e/k$b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/k$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 928
    invoke-direct {p0}, Le/a/e/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/e/q;)V
    .locals 1
    .param p1, "stream"    # Le/a/e/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->e:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Le/a/e/q;->a(Lokhttp3/internal/http2/ErrorCode;)V

    .line 931
    return-void
.end method
