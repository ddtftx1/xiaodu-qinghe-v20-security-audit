.class public abstract Le/a/d/b$a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lf/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/k;

.field public b:Z

.field public c:J

.field public final synthetic d:Le/a/d/b;


# direct methods
.method public constructor <init>(Le/a/d/b;)V
    .locals 2

    .line 352
    iput-object p1, p0, Le/a/d/b$a;->d:Le/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance p1, Lf/k;

    iget-object v0, p0, Le/a/d/b$a;->d:Le/a/d/b;

    iget-object v0, v0, Le/a/d/b;->c:Lf/h;

    invoke-interface {v0}, Lf/x;->b()Lf/z;

    move-result-object v0

    invoke-direct {p1, v0}, Lf/k;-><init>(Lf/z;)V

    iput-object p1, p0, Le/a/d/b$a;->a:Lf/k;

    .line 355
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le/a/d/b$a;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Le/a/d/b;Le/a/d/a;)V
    .locals 0
    .param p1, "x0"    # Le/a/d/b;
    .param p2, "x1"    # Le/a/d/a;

    .line 352
    invoke-direct {p0, p1}, Le/a/d/b$a;-><init>(Le/a/d/b;)V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/io/IOException;)V
    .locals 9
    .param p1, "reuseConnection"    # Z
    .param p2, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Le/a/d/b$a;->d:Le/a/d/b;

    iget v1, v0, Le/a/d/b;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    .line 380
    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 382
    iget-object v1, p0, Le/a/d/b$a;->a:Lf/k;

    invoke-virtual {v0, v1}, Le/a/d/b;->a(Lf/k;)V

    .line 384
    iget-object v5, p0, Le/a/d/b$a;->d:Le/a/d/b;

    iput v2, v5, Le/a/d/b;->e:I

    .line 385
    iget-object v3, v5, Le/a/d/b;->b:Le/a/b/f;

    if-eqz v3, :cond_1

    .line 386
    xor-int/lit8 v4, p1, 0x1

    iget-wide v6, p0, Le/a/d/b$a;->c:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Le/a/b/f;->a(ZLe/a/c/c;JLjava/io/IOException;)V

    .line 388
    :cond_1
    return-void

    .line 380
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/d/b$a;->d:Le/a/d/b;

    iget v2, v2, Le/a/d/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lf/f;J)J
    .locals 4
    .param p1, "sink"    # Lf/f;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    :try_start_0
    iget-object v0, p0, Le/a/d/b$a;->d:Le/a/d/b;

    iget-object v0, v0, Le/a/d/b;->c:Lf/h;

    invoke-interface {v0, p1, p2, p3}, Lf/x;->b(Lf/f;J)J

    move-result-wide v0

    .line 364
    .local v0, "read":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 365
    iget-wide v2, p0, Le/a/d/b$a;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Le/a/d/b$a;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    return-wide v0

    .line 368
    .end local v0    # "read":J
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Le/a/d/b$a;->a(ZLjava/io/IOException;)V

    .line 370
    throw v0
.end method

.method public b()Lf/z;
    .locals 1

    .line 358
    iget-object v0, p0, Le/a/d/b$a;->a:Lf/k;

    return-object v0
.end method
