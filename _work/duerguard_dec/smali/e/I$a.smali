.class public Le/I$a;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Le/F;

.field public b:Lokhttp3/Protocol;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Le/w;

.field public f:Le/x$a;

.field public g:Le/K;

.field public h:Le/I;

.field public i:Le/I;

.field public j:Le/I;

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Le/I$a;->c:I

    .line 318
    new-instance v0, Le/x$a;

    invoke-direct {v0}, Le/x$a;-><init>()V

    iput-object v0, p0, Le/I$a;->f:Le/x$a;

    .line 319
    return-void
.end method

.method public constructor <init>(Le/I;)V
    .locals 2
    .param p1, "response"    # Le/I;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Le/I$a;->c:I

    .line 322
    iget-object v0, p1, Le/I;->a:Le/F;

    iput-object v0, p0, Le/I$a;->a:Le/F;

    .line 323
    iget-object v0, p1, Le/I;->b:Lokhttp3/Protocol;

    iput-object v0, p0, Le/I$a;->b:Lokhttp3/Protocol;

    .line 324
    iget v0, p1, Le/I;->c:I

    iput v0, p0, Le/I$a;->c:I

    .line 325
    iget-object v0, p1, Le/I;->d:Ljava/lang/String;

    iput-object v0, p0, Le/I$a;->d:Ljava/lang/String;

    .line 326
    iget-object v0, p1, Le/I;->e:Le/w;

    iput-object v0, p0, Le/I$a;->e:Le/w;

    .line 327
    iget-object v0, p1, Le/I;->f:Le/x;

    invoke-virtual {v0}, Le/x;->a()Le/x$a;

    move-result-object v0

    iput-object v0, p0, Le/I$a;->f:Le/x$a;

    .line 328
    iget-object v0, p1, Le/I;->g:Le/K;

    iput-object v0, p0, Le/I$a;->g:Le/K;

    .line 329
    iget-object v0, p1, Le/I;->h:Le/I;

    iput-object v0, p0, Le/I$a;->h:Le/I;

    .line 330
    iget-object v0, p1, Le/I;->i:Le/I;

    iput-object v0, p0, Le/I$a;->i:Le/I;

    .line 331
    iget-object v0, p1, Le/I;->j:Le/I;

    iput-object v0, p0, Le/I$a;->j:Le/I;

    .line 332
    iget-wide v0, p1, Le/I;->k:J

    iput-wide v0, p0, Le/I$a;->k:J

    .line 333
    iget-wide v0, p1, Le/I;->l:J

    iput-wide v0, p0, Le/I$a;->l:J

    .line 334
    return-void
.end method


# virtual methods
.method public a(I)Le/I$a;
    .locals 0
    .param p1, "code"    # I

    .line 347
    iput p1, p0, Le/I$a;->c:I

    .line 348
    return-object p0
.end method

.method public a(J)Le/I$a;
    .locals 0
    .param p1, "receivedResponseAtMillis"    # J

    .line 437
    iput-wide p1, p0, Le/I$a;->l:J

    .line 438
    return-object p0
.end method

.method public a(Le/F;)Le/I$a;
    .locals 0
    .param p1, "request"    # Le/F;

    .line 337
    iput-object p1, p0, Le/I$a;->a:Le/F;

    .line 338
    return-object p0
.end method

.method public a(Le/I;)Le/I$a;
    .locals 1
    .param p1, "cacheResponse"    # Le/I;

    .line 402
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-virtual {p0, v0, p1}, Le/I$a;->a(Ljava/lang/String;Le/I;)V

    .line 403
    :cond_0
    iput-object p1, p0, Le/I$a;->i:Le/I;

    .line 404
    return-object p0
.end method

.method public a(Le/K;)Le/I$a;
    .locals 0
    .param p1, "body"    # Le/K;

    .line 391
    iput-object p1, p0, Le/I$a;->g:Le/K;

    .line 392
    return-object p0
.end method

.method public a(Le/w;)Le/I$a;
    .locals 0
    .param p1, "handshake"    # Le/w;

    .line 357
    iput-object p1, p0, Le/I$a;->e:Le/w;

    .line 358
    return-object p0
.end method

.method public a(Le/x;)Le/I$a;
    .locals 1
    .param p1, "headers"    # Le/x;

    .line 386
    invoke-virtual {p1}, Le/x;->a()Le/x$a;

    move-result-object v0

    iput-object v0, p0, Le/I$a;->f:Le/x$a;

    .line 387
    return-object p0
.end method

.method public a(Ljava/lang/String;)Le/I$a;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 352
    iput-object p1, p0, Le/I$a;->d:Ljava/lang/String;

    .line 353
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Le/I$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Le/I$a;->f:Le/x$a;

    invoke-virtual {v0, p1, p2}, Le/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Le/x$a;

    .line 376
    return-object p0
.end method

.method public a(Lokhttp3/Protocol;)Le/I$a;
    .locals 0
    .param p1, "protocol"    # Lokhttp3/Protocol;

    .line 342
    iput-object p1, p0, Le/I$a;->b:Lokhttp3/Protocol;

    .line 343
    return-object p0
.end method

.method public a()Le/I;
    .locals 3

    .line 442
    iget-object v0, p0, Le/I$a;->a:Le/F;

    if-eqz v0, :cond_3

    .line 443
    iget-object v0, p0, Le/I$a;->b:Lokhttp3/Protocol;

    if-eqz v0, :cond_2

    .line 444
    iget v0, p0, Le/I$a;->c:I

    if-ltz v0, :cond_1

    .line 445
    iget-object v0, p0, Le/I$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Le/I;

    invoke-direct {v0, p0}, Le/I;-><init>(Le/I$a;)V

    return-object v0

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/I$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Le/I;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Le/I;

    .line 408
    iget-object v0, p2, Le/I;->g:Le/K;

    if-nez v0, :cond_3

    .line 410
    iget-object v0, p2, Le/I;->h:Le/I;

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p2, Le/I;->i:Le/I;

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p2, Le/I;->j:Le/I;

    if-nez v0, :cond_0

    .line 417
    return-void

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(J)Le/I$a;
    .locals 0
    .param p1, "sentRequestAtMillis"    # J

    .line 432
    iput-wide p1, p0, Le/I$a;->k:J

    .line 433
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Le/I$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 366
    iget-object v0, p0, Le/I$a;->f:Le/x$a;

    invoke-virtual {v0, p1, p2}, Le/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le/x$a;

    .line 367
    return-object p0
.end method

.method public final b(Le/I;)V
    .locals 2
    .param p1, "response"    # Le/I;

    .line 426
    iget-object v0, p1, Le/I;->g:Le/K;

    if-nez v0, :cond_0

    .line 429
    return-void

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Le/I;)Le/I$a;
    .locals 1
    .param p1, "networkResponse"    # Le/I;

    .line 396
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-virtual {p0, v0, p1}, Le/I$a;->a(Ljava/lang/String;Le/I;)V

    .line 397
    :cond_0
    iput-object p1, p0, Le/I$a;->h:Le/I;

    .line 398
    return-object p0
.end method

.method public d(Le/I;)Le/I$a;
    .locals 0
    .param p1, "priorResponse"    # Le/I;

    .line 420
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Le/I$a;->b(Le/I;)V

    .line 421
    :cond_0
    iput-object p1, p0, Le/I$a;->j:Le/I;

    .line 422
    return-object p0
.end method
