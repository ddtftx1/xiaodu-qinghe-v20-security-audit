.class public Le/a/e/e;
.super Le/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/k;->c(ILokhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lokhttp3/internal/http2/ErrorCode;

.field public final synthetic d:Le/a/e/k;


# direct methods
.method public varargs constructor <init>(Le/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0
    .param p1, "this$0"    # Le/a/e/k;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 327
    iput-object p1, p0, Le/a/e/e;->d:Le/a/e/k;

    iput p4, p0, Le/a/e/e;->b:I

    iput-object p5, p0, Le/a/e/e;->c:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 330
    :try_start_0
    iget-object v0, p0, Le/a/e/e;->d:Le/a/e/k;

    iget v1, p0, Le/a/e/e;->b:I

    iget-object v2, p0, Le/a/e/e;->c:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Le/a/e/k;->b(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Le/a/e/e;->d:Le/a/e/k;

    invoke-static {v1}, Le/a/e/k;->a(Le/a/e/k;)V

    .line 334
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
