.class public final Le/a/b/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Le/z;


# instance fields
.field public final a:Le/C;


# direct methods
.method public constructor <init>(Le/C;)V
    .locals 0
    .param p1, "client"    # Le/C;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Le/a/b/a;->a:Le/C;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Le/z$a;)Le/I;
    .locals 7
    .param p1, "chain"    # Le/z$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    move-object v0, p1

    check-cast v0, Le/a/c/h;

    .line 37
    .local v0, "realChain":Le/a/c/h;
    invoke-virtual {v0}, Le/a/c/h;->g()Le/F;

    move-result-object v1

    .line 38
    .local v1, "request":Le/F;
    invoke-virtual {v0}, Le/a/c/h;->h()Le/a/b/f;

    move-result-object v2

    .line 41
    .local v2, "streamAllocation":Le/a/b/f;
    invoke-virtual {v1}, Le/F;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 42
    .local v3, "doExtensiveHealthChecks":Z
    iget-object v4, p0, Le/a/b/a;->a:Le/C;

    invoke-virtual {v2, v4, p1, v3}, Le/a/b/f;->a(Le/C;Le/z$a;Z)Le/a/c/c;

    move-result-object v4

    .line 43
    .local v4, "httpCodec":Le/a/c/c;
    invoke-virtual {v2}, Le/a/b/f;->c()Le/a/b/c;

    move-result-object v5

    .line 45
    .local v5, "connection":Le/a/b/c;
    invoke-virtual {v0, v1, v2, v4, v5}, Le/a/c/h;->a(Le/F;Le/a/b/f;Le/a/c/c;Le/a/b/c;)Le/I;

    move-result-object v6

    return-object v6
.end method
