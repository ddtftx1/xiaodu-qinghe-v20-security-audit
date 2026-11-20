.class public final Ld/b/a/b/a/u;
.super Ld/b/a/x;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/a/b/a/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld/b/a/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ld/b/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ld/b/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ld/b/a/j;

.field public final d:Ld/b/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/c/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Ld/b/a/y;

.field public final f:Ld/b/a/b/a/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/b/a/u<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public g:Ld/b/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/b/a/v;Ld/b/a/o;Ld/b/a/j;Ld/b/a/c/a;Ld/b/a/y;)V
    .locals 2
    .param p3, "gson"    # Ld/b/a/j;
    .param p5, "skipPast"    # Ld/b/a/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/v<",
            "TT;>;",
            "Ld/b/a/o<",
            "TT;>;",
            "Ld/b/a/j;",
            "Ld/b/a/c/a<",
            "TT;>;",
            "Ld/b/a/y;",
            ")V"
        }
    .end annotation

    .line 53
    .local p0, "this":Ld/b/a/b/a/u;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    .local p1, "serializer":Ld/b/a/v;, "Lcom/google/gson/JsonSerializer<TT;>;"
    .local p2, "deserializer":Ld/b/a/o;, "Lcom/google/gson/JsonDeserializer<TT;>;"
    .local p4, "typeToken":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    .line 47
    new-instance v0, Ld/b/a/b/a/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld/b/a/b/a/u$a;-><init>(Ld/b/a/b/a/u;Ld/b/a/b/a/t;)V

    iput-object v0, p0, Ld/b/a/b/a/u;->f:Ld/b/a/b/a/u$a;

    .line 54
    iput-object p1, p0, Ld/b/a/b/a/u;->a:Ld/b/a/v;

    .line 55
    iput-object p2, p0, Ld/b/a/b/a/u;->b:Ld/b/a/o;

    .line 56
    iput-object p3, p0, Ld/b/a/b/a/u;->c:Ld/b/a/j;

    .line 57
    iput-object p4, p0, Ld/b/a/b/a/u;->d:Ld/b/a/c/a;

    .line 58
    iput-object p5, p0, Ld/b/a/b/a/u;->e:Ld/b/a/y;

    .line 59
    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/d/b;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    .local p0, "this":Ld/b/a/b/a/u;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Ld/b/a/b/a/u;->b:Ld/b/a/o;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Ld/b/a/b/a/u;->b()Ld/b/a/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    invoke-static {p1}, Ld/b/a/b/y;->a(Ld/b/a/d/b;)Ld/b/a/p;

    move-result-object v0

    .line 66
    .local v0, "value":Ld/b/a/p;
    invoke-virtual {v0}, Ld/b/a/p;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_1
    iget-object v1, p0, Ld/b/a/b/a/u;->b:Ld/b/a/o;

    iget-object v2, p0, Ld/b/a/b/a/u;->d:Ld/b/a/c/a;

    invoke-virtual {v2}, Ld/b/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Ld/b/a/b/a/u;->f:Ld/b/a/b/a/u$a;

    invoke-interface {v1, v0, v2, v3}, Ld/b/a/o;->a(Ld/b/a/p;Ljava/lang/reflect/Type;Ld/b/a/n;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .param p1, "out"    # Ld/b/a/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    .local p0, "this":Ld/b/a/b/a/u;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ld/b/a/b/a/u;->a:Ld/b/a/v;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Ld/b/a/b/a/u;->b()Ld/b/a/x;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 75
    return-void

    .line 77
    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    .line 79
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Ld/b/a/b/a/u;->d:Ld/b/a/c/a;

    invoke-virtual {v1}, Ld/b/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Ld/b/a/b/a/u;->f:Ld/b/a/b/a/u$a;

    invoke-interface {v0, p2, v1, v2}, Ld/b/a/v;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ld/b/a/u;)Ld/b/a/p;

    move-result-object v0

    .line 82
    .local v0, "tree":Ld/b/a/p;
    invoke-static {v0, p1}, Ld/b/a/b/y;->a(Ld/b/a/p;Ld/b/a/d/c;)V

    .line 83
    return-void
.end method

.method public final b()Ld/b/a/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation

    .line 86
    .local p0, "this":Ld/b/a/b/a/u;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Ld/b/a/b/a/u;->g:Ld/b/a/x;

    .line 87
    .local v0, "d":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ld/b/a/b/a/u;->c:Ld/b/a/j;

    iget-object v2, p0, Ld/b/a/b/a/u;->e:Ld/b/a/y;

    iget-object v3, p0, Ld/b/a/b/a/u;->d:Ld/b/a/c/a;

    .line 89
    invoke-virtual {v1, v2, v3}, Ld/b/a/j;->a(Ld/b/a/y;Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v1

    iput-object v1, p0, Ld/b/a/b/a/u;->g:Ld/b/a/x;

    .line 87
    :goto_0
    return-object v1
.end method
