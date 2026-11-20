.class public Lf/k;
.super Lf/z;
.source "ForwardingTimeout.java"


# instance fields
.field public e:Lf/z;


# direct methods
.method public constructor <init>(Lf/z;)V
    .locals 2
    .param p1, "delegate"    # Lf/z;

    .line 25
    invoke-direct {p0}, Lf/z;-><init>()V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iput-object p1, p0, Lf/k;->e:Lf/z;

    .line 28
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lf/z;)Lf/k;
    .locals 2
    .param p1, "delegate"    # Lf/z;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lf/k;->e:Lf/z;

    .line 38
    return-object p0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lf/z;
    .locals 1

    .line 66
    iget-object v0, p0, Lf/k;->e:Lf/z;

    invoke-virtual {v0}, Lf/z;->a()Lf/z;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lf/z;
    .locals 1
    .param p1, "deadlineNanoTime"    # J

    .line 58
    iget-object v0, p0, Lf/k;->e:Lf/z;

    invoke-virtual {v0, p1, p2}, Lf/z;->a(J)Lf/z;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lf/z;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 42
    iget-object v0, p0, Lf/k;->e:Lf/z;

    invoke-virtual {v0, p1, p2, p3}, Lf/z;->a(JLjava/util/concurrent/TimeUnit;)Lf/z;

    move-result-object v0

    return-object v0
.end method

.method public b()Lf/z;
    .locals 1

    .line 62
    iget-object v0, p0, Lf/k;->e:Lf/z;

    invoke-virtual {v0}, Lf/z;->b()Lf/z;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 54
    iget-object v0, p0, Lf/k;->e:Lf/z;

    invoke-virtual {v0}, Lf/z;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lf/k;->e:Lf/z;

    invoke-virtual {v0}, Lf/z;->d()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lf/k;->e:Lf/z;

    invoke-virtual {v0}, Lf/z;->e()V

    .line 71
    return-void
.end method

.method public final g()Lf/z;
    .locals 1

    .line 32
    iget-object v0, p0, Lf/k;->e:Lf/z;

    return-object v0
.end method
