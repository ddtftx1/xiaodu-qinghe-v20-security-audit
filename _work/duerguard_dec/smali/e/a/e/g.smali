.class public Le/a/e/g;
.super Le/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/k;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Le/a/e/k;


# direct methods
.method public varargs constructor <init>(Le/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Le/a/e/k;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 842
    iput-object p1, p0, Le/a/e/g;->d:Le/a/e/k;

    iput p4, p0, Le/a/e/g;->b:I

    iput-object p5, p0, Le/a/e/g;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 844
    iget-object v0, p0, Le/a/e/g;->d:Le/a/e/k;

    iget-object v0, v0, Le/a/e/k;->k:Le/a/e/u;

    iget v1, p0, Le/a/e/g;->b:I

    iget-object v2, p0, Le/a/e/g;->c:Ljava/util/List;

    check-cast v0, Le/a/e/t;

    invoke-virtual {v0, v1, v2}, Le/a/e/t;->a(ILjava/util/List;)Z

    const/4 v0, 0x1

    .line 846
    .local v0, "cancel":Z
    if-eqz v0, :cond_0

    .line 847
    :try_start_0
    iget-object v1, p0, Le/a/e/g;->d:Le/a/e/k;

    iget-object v1, v1, Le/a/e/k;->s:Le/a/e/r;

    iget v2, p0, Le/a/e/g;->b:I

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->f:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Le/a/e/r;->a(ILokhttp3/internal/http2/ErrorCode;)V

    .line 848
    iget-object v1, p0, Le/a/e/g;->d:Le/a/e/k;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :try_start_1
    iget-object v2, p0, Le/a/e/g;->d:Le/a/e/k;

    iget-object v2, v2, Le/a/e/k;->u:Ljava/util/Set;

    iget v3, p0, Le/a/e/g;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 850
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cancel":Z
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 852
    .restart local v0    # "cancel":Z
    :catch_0
    move-exception v1

    goto :goto_1

    .line 853
    :cond_0
    :goto_0
    nop

    .line 854
    :goto_1
    return-void
.end method
