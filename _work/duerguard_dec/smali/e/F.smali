.class public final Le/F;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/F$a;
    }
.end annotation


# instance fields
.field public final a:Le/y;

.field public final b:Ljava/lang/String;

.field public final c:Le/x;

.field public final d:Le/H;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Le/e;


# direct methods
.method public constructor <init>(Le/F$a;)V
    .locals 1
    .param p1, "builder"    # Le/F$a;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Le/F$a;->a:Le/y;

    iput-object v0, p0, Le/F;->a:Le/y;

    .line 42
    iget-object v0, p1, Le/F$a;->b:Ljava/lang/String;

    iput-object v0, p0, Le/F;->b:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Le/F$a;->c:Le/x$a;

    invoke-virtual {v0}, Le/x$a;->a()Le/x;

    move-result-object v0

    iput-object v0, p0, Le/F;->c:Le/x;

    .line 44
    iget-object v0, p1, Le/F$a;->d:Le/H;

    iput-object v0, p0, Le/F;->d:Le/H;

    .line 45
    iget-object v0, p1, Le/F$a;->e:Ljava/util/Map;

    invoke-static {v0}, Le/a/e;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le/F;->e:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Le/H;
    .locals 1

    .line 69
    iget-object v0, p0, Le/F;->d:Le/H;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Le/F;->c:Le/x;

    invoke-virtual {v0, p1}, Le/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Le/e;
    .locals 2

    .line 101
    iget-object v0, p0, Le/F;->f:Le/e;

    .line 102
    .local v0, "result":Le/e;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/F;->c:Le/x;

    invoke-static {v1}, Le/e;->a(Le/x;)Le/e;

    move-result-object v1

    iput-object v1, p0, Le/F;->f:Le/e;

    :goto_0
    return-object v1
.end method

.method public c()Le/x;
    .locals 1

    .line 57
    iget-object v0, p0, Le/F;->c:Le/x;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 106
    iget-object v0, p0, Le/F;->a:Le/y;

    invoke-virtual {v0}, Le/y;->h()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Le/F;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Le/F$a;
    .locals 1

    .line 93
    new-instance v0, Le/F$a;

    invoke-direct {v0, p0}, Le/F$a;-><init>(Le/F;)V

    return-object v0
.end method

.method public g()Le/y;
    .locals 1

    .line 49
    iget-object v0, p0, Le/F;->a:Le/y;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/F;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/F;->a:Le/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/F;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
