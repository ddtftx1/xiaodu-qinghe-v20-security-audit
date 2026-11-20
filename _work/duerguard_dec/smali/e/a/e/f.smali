.class public Le/a/e/f;
.super Le/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/k;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Le/a/e/k;


# direct methods
.method public varargs constructor <init>(Le/a/e/k;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0
    .param p1, "this$0"    # Le/a/e/k;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 348
    iput-object p1, p0, Le/a/e/f;->d:Le/a/e/k;

    iput p4, p0, Le/a/e/f;->b:I

    iput-wide p5, p0, Le/a/e/f;->c:J

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 351
    :try_start_0
    iget-object v0, p0, Le/a/e/f;->d:Le/a/e/k;

    iget-object v0, v0, Le/a/e/k;->s:Le/a/e/r;

    iget v1, p0, Le/a/e/f;->b:I

    iget-wide v2, p0, Le/a/e/f;->c:J

    invoke-virtual {v0, v1, v2, v3}, Le/a/e/r;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Le/a/e/f;->d:Le/a/e/k;

    invoke-static {v1}, Le/a/e/k;->a(Le/a/e/k;)V

    .line 355
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
