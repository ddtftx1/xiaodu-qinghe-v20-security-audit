.class public Le/a/e/q$c;
.super Lf/c;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public final synthetic k:Le/a/e/q;


# direct methods
.method public constructor <init>(Le/a/e/q;)V
    .locals 0
    .param p1, "this$0"    # Le/a/e/q;

    .line 650
    iput-object p1, p0, Le/a/e/q$c;->k:Le/a/e/q;

    invoke-direct {p0}, Lf/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;

    .line 656
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 657
    .local v0, "socketTimeoutException":Ljava/net/SocketTimeoutException;
    if-eqz p1, :cond_0

    .line 658
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 660
    :cond_0
    return-object v0
.end method

.method public j()V
    .locals 2

    .line 652
    iget-object v0, p0, Le/a/e/q$c;->k:Le/a/e/q;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->f:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Le/a/e/q;->c(Lokhttp3/internal/http2/ErrorCode;)V

    .line 653
    return-void
.end method

.method public k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    invoke-virtual {p0}, Lf/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    return-void

    .line 664
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/a/e/q$c;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
