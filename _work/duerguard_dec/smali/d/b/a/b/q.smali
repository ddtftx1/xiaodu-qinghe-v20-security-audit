.class public Ld/b/a/b/q;
.super Ld/b/a/x;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/b/r;->a(Ld/b/a/j;Ld/b/a/c/a;)Ld/b/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/b/a/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ld/b/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Ld/b/a/j;

.field public final synthetic e:Ld/b/a/c/a;

.field public final synthetic f:Ld/b/a/b/r;


# direct methods
.method public constructor <init>(Ld/b/a/b/r;ZZLd/b/a/j;Ld/b/a/c/a;)V
    .locals 0
    .param p1, "this$0"    # Ld/b/a/b/r;

    .line 120
    iput-object p1, p0, Ld/b/a/b/q;->f:Ld/b/a/b/r;

    iput-boolean p2, p0, Ld/b/a/b/q;->b:Z

    iput-boolean p3, p0, Ld/b/a/b/q;->c:Z

    iput-object p4, p0, Ld/b/a/b/q;->d:Ld/b/a/j;

    iput-object p5, p0, Ld/b/a/b/q;->e:Ld/b/a/c/a;

    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 1
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

    .line 125
    iget-boolean v0, p0, Ld/b/a/b/q;->b:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Ld/b/a/d/b;->H()V

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Ld/b/a/b/q;->b()Ld/b/a/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 1
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

    .line 133
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Ld/b/a/b/q;->c:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    .line 135
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Ld/b/a/b/q;->b()Ld/b/a/x;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 138
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

    .line 141
    iget-object v0, p0, Ld/b/a/b/q;->a:Ld/b/a/x;

    .line 142
    .local v0, "d":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ld/b/a/b/q;->d:Ld/b/a/j;

    iget-object v2, p0, Ld/b/a/b/q;->f:Ld/b/a/b/r;

    iget-object v3, p0, Ld/b/a/b/q;->e:Ld/b/a/c/a;

    .line 144
    invoke-virtual {v1, v2, v3}, Ld/b/a/j;->a(Ld/b/a/y;Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v1

    iput-object v1, p0, Ld/b/a/b/q;->a:Ld/b/a/x;

    .line 142
    :goto_0
    return-object v1
.end method
