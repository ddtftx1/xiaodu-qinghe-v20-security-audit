.class public Le/a/e/j;
.super Le/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/k;->a(ILokhttp3/internal/http2/ErrorCode;)V
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

    .line 910
    iput-object p1, p0, Le/a/e/j;->d:Le/a/e/k;

    iput p4, p0, Le/a/e/j;->b:I

    iput-object p5, p0, Le/a/e/j;->c:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 912
    iget-object v0, p0, Le/a/e/j;->d:Le/a/e/k;

    iget-object v0, v0, Le/a/e/k;->k:Le/a/e/u;

    iget v1, p0, Le/a/e/j;->b:I

    iget-object v2, p0, Le/a/e/j;->c:Lokhttp3/internal/http2/ErrorCode;

    check-cast v0, Le/a/e/t;

    invoke-virtual {v0, v1, v2}, Le/a/e/t;->a(ILokhttp3/internal/http2/ErrorCode;)V

    .line 913
    iget-object v0, p0, Le/a/e/j;->d:Le/a/e/k;

    monitor-enter v0

    .line 914
    :try_start_0
    iget-object v1, p0, Le/a/e/j;->d:Le/a/e/k;

    iget-object v1, v1, Le/a/e/k;->u:Ljava/util/Set;

    iget v2, p0, Le/a/e/j;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 915
    monitor-exit v0

    .line 916
    return-void

    .line 915
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
