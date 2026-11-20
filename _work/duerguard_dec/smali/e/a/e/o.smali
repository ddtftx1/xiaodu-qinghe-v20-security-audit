.class public Le/a/e/o;
.super Le/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/k$d;->a(Le/a/e/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/v;

.field public final synthetic c:Le/a/e/k$d;


# direct methods
.method public varargs constructor <init>(Le/a/e/k$d;Ljava/lang/String;[Ljava/lang/Object;Le/a/e/v;)V
    .locals 0
    .param p1, "this$1"    # Le/a/e/k$d;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 739
    iput-object p1, p0, Le/a/e/o;->c:Le/a/e/k$d;

    iput-object p4, p0, Le/a/e/o;->b:Le/a/e/v;

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 742
    :try_start_0
    iget-object v0, p0, Le/a/e/o;->c:Le/a/e/k$d;

    iget-object v0, v0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v0, v0, Le/a/e/k;->s:Le/a/e/r;

    iget-object v1, p0, Le/a/e/o;->b:Le/a/e/v;

    invoke-virtual {v0, v1}, Le/a/e/r;->a(Le/a/e/v;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Le/a/e/o;->c:Le/a/e/k$d;

    iget-object v1, v1, Le/a/e/k$d;->c:Le/a/e/k;

    invoke-static {v1}, Le/a/e/k;->a(Le/a/e/k;)V

    .line 746
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
