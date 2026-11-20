.class public Le/a/e/i;
.super Le/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/k;->a(ILf/h;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lf/f;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Le/a/e/k;


# direct methods
.method public varargs constructor <init>(Le/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILf/f;IZ)V
    .locals 0
    .param p1, "this$0"    # Le/a/e/k;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 893
    iput-object p1, p0, Le/a/e/i;->f:Le/a/e/k;

    iput p4, p0, Le/a/e/i;->b:I

    iput-object p5, p0, Le/a/e/i;->c:Lf/f;

    iput p6, p0, Le/a/e/i;->d:I

    iput-boolean p7, p0, Le/a/e/i;->e:Z

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 896
    :try_start_0
    iget-object v0, p0, Le/a/e/i;->f:Le/a/e/k;

    iget-object v0, v0, Le/a/e/k;->k:Le/a/e/u;

    iget v1, p0, Le/a/e/i;->b:I

    iget-object v2, p0, Le/a/e/i;->c:Lf/f;

    iget v3, p0, Le/a/e/i;->d:I

    iget-boolean v4, p0, Le/a/e/i;->e:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Le/a/e/t;

    :try_start_1
    invoke-virtual {v0, v1, v2, v3, v4}, Le/a/e/t;->a(ILf/h;IZ)Z

    const/4 v0, 0x1

    .line 897
    .local v0, "cancel":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/e/i;->f:Le/a/e/k;

    iget-object v1, v1, Le/a/e/k;->s:Le/a/e/r;

    iget v2, p0, Le/a/e/i;->b:I

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->f:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Le/a/e/r;->a(ILokhttp3/internal/http2/ErrorCode;)V

    .line 898
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Le/a/e/i;->e:Z

    if-eqz v1, :cond_2

    .line 899
    :cond_1
    iget-object v1, p0, Le/a/e/i;->f:Le/a/e/k;

    monitor-enter v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 900
    :try_start_2
    iget-object v2, p0, Le/a/e/i;->f:Le/a/e/k;

    iget-object v2, v2, Le/a/e/k;->u:Ljava/util/Set;

    iget v3, p0, Le/a/e/i;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 901
    monitor-exit v1

    .line 904
    .end local v0    # "cancel":Z
    :cond_2
    goto :goto_0

    .line 901
    .restart local v0    # "cancel":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 903
    .end local v0    # "cancel":Z
    :catch_0
    move-exception v0

    .line 905
    :goto_0
    return-void
.end method
