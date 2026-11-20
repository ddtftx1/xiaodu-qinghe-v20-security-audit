.class public final Le/I;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/I$a;
    }
.end annotation


# instance fields
.field public final a:Le/F;

.field public final b:Lokhttp3/Protocol;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Le/w;

.field public final f:Le/x;

.field public final g:Le/K;

.field public final h:Le/I;

.field public final i:Le/I;

.field public final j:Le/I;

.field public final k:J

.field public final l:J

.field public volatile m:Le/e;


# direct methods
.method public constructor <init>(Le/I$a;)V
    .locals 2
    .param p1, "builder"    # Le/I$a;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Le/I$a;->a:Le/F;

    iput-object v0, p0, Le/I;->a:Le/F;

    .line 61
    iget-object v0, p1, Le/I$a;->b:Lokhttp3/Protocol;

    iput-object v0, p0, Le/I;->b:Lokhttp3/Protocol;

    .line 62
    iget v0, p1, Le/I$a;->c:I

    iput v0, p0, Le/I;->c:I

    .line 63
    iget-object v0, p1, Le/I$a;->d:Ljava/lang/String;

    iput-object v0, p0, Le/I;->d:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Le/I$a;->e:Le/w;

    iput-object v0, p0, Le/I;->e:Le/w;

    .line 65
    iget-object v0, p1, Le/I$a;->f:Le/x$a;

    invoke-virtual {v0}, Le/x$a;->a()Le/x;

    move-result-object v0

    iput-object v0, p0, Le/I;->f:Le/x;

    .line 66
    iget-object v0, p1, Le/I$a;->g:Le/K;

    iput-object v0, p0, Le/I;->g:Le/K;

    .line 67
    iget-object v0, p1, Le/I$a;->h:Le/I;

    iput-object v0, p0, Le/I;->h:Le/I;

    .line 68
    iget-object v0, p1, Le/I$a;->i:Le/I;

    iput-object v0, p0, Le/I;->i:Le/I;

    .line 69
    iget-object v0, p1, Le/I$a;->j:Le/I;

    iput-object v0, p0, Le/I;->j:Le/I;

    .line 70
    iget-wide v0, p1, Le/I$a;->k:J

    iput-wide v0, p0, Le/I;->k:J

    .line 71
    iget-wide v0, p1, Le/I$a;->l:J

    iput-wide v0, p0, Le/I;->l:J

    .line 72
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Le/I;->f:Le/x;

    invoke-virtual {v0, p1}, Le/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le/I;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 285
    iget-object v0, p0, Le/I;->g:Le/K;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Le/K;->close()V

    .line 289
    return-void

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Le/K;
    .locals 1

    .line 177
    iget-object v0, p0, Le/I;->g:Le/K;

    return-object v0
.end method

.method public j()Le/e;
    .locals 2

    .line 255
    iget-object v0, p0, Le/I;->m:Le/e;

    .line 256
    .local v0, "result":Le/e;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/I;->f:Le/x;

    invoke-static {v1}, Le/e;->a(Le/x;)Le/e;

    move-result-object v1

    iput-object v1, p0, Le/I;->m:Le/e;

    :goto_0
    return-object v1
.end method

.method public k()I
    .locals 1

    .line 98
    iget v0, p0, Le/I;->c:I

    return v0
.end method

.method public l()Le/w;
    .locals 1

    .line 119
    iget-object v0, p0, Le/I;->e:Le/w;

    return-object v0
.end method

.method public m()Le/x;
    .locals 1

    .line 136
    iget-object v0, p0, Le/I;->f:Le/x;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Le/I;->d:Ljava/lang/String;

    return-object v0
.end method

.method public o()Le/I$a;
    .locals 1

    .line 181
    new-instance v0, Le/I$a;

    invoke-direct {v0, p0}, Le/I$a;-><init>(Le/I;)V

    return-object v0
.end method

.method public p()Le/I;
    .locals 1

    .line 224
    iget-object v0, p0, Le/I;->j:Le/I;

    return-object v0
.end method

.method public q()J
    .locals 2

    .line 274
    iget-wide v0, p0, Le/I;->l:J

    return-wide v0
.end method

.method public r()Le/F;
    .locals 1

    .line 86
    iget-object v0, p0, Le/I;->a:Le/F;

    return-object v0
.end method

.method public s()J
    .locals 2

    .line 265
    iget-wide v0, p0, Le/I;->k:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/I;->b:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/I;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/I;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/I;->a:Le/F;

    .line 299
    invoke-virtual {v1}, Le/F;->g()Le/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    return-object v0
.end method
