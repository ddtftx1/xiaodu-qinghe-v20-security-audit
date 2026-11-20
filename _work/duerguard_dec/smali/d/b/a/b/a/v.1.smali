.class public final Ld/b/a/b/a/v;
.super Ld/b/a/x;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
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
.field public final a:Ld/b/a/j;

.field public final b:Ld/b/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ld/b/a/j;Ld/b/a/x;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "context"    # Ld/b/a/j;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/j;",
            "Ld/b/a/x<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 33
    .local p0, "this":Ld/b/a/b/a/v;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, "delegate":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    .line 34
    iput-object p1, p0, Ld/b/a/b/a/v;->a:Ld/b/a/j;

    .line 35
    iput-object p2, p0, Ld/b/a/b/a/v;->b:Ld/b/a/x;

    .line 36
    iput-object p3, p0, Ld/b/a/b/a/v;->c:Ljava/lang/reflect/Type;

    .line 37
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

    .line 41
    .local p0, "this":Ld/b/a/b/a/v;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    iget-object v0, p0, Ld/b/a/b/a/v;->b:Ld/b/a/x;

    invoke-virtual {v0, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Ld/b/a/b/a/v;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 80
    :cond_1
    return-object p1
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 4
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

    .line 53
    .local p0, "this":Ld/b/a/b/a/v;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ld/b/a/b/a/v;->b:Ld/b/a/x;

    .line 54
    .local v0, "chosen":Ld/b/a/x;
    iget-object v1, p0, Ld/b/a/b/a/v;->c:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v1, p2}, Ld/b/a/b/a/v;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 55
    .local v1, "runtimeType":Ljava/lang/reflect/Type;
    iget-object v2, p0, Ld/b/a/b/a/v;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_2

    .line 56
    iget-object v2, p0, Ld/b/a/b/a/v;->a:Ld/b/a/j;

    invoke-static {v1}, Ld/b/a/c/a;->a(Ljava/lang/reflect/Type;)Ld/b/a/c/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ld/b/a/j;->a(Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v2

    .line 57
    .local v2, "runtimeTypeAdapter":Ld/b/a/x;
    instance-of v3, v2, Ld/b/a/b/a/o$a;

    if-nez v3, :cond_0

    .line 59
    move-object v0, v2

    goto :goto_0

    .line 60
    :cond_0
    iget-object v3, p0, Ld/b/a/b/a/v;->b:Ld/b/a/x;

    instance-of v3, v3, Ld/b/a/b/a/o$a;

    if-nez v3, :cond_1

    .line 63
    iget-object v0, p0, Ld/b/a/b/a/v;->b:Ld/b/a/x;

    goto :goto_0

    .line 66
    :cond_1
    move-object v0, v2

    .line 69
    .end local v2    # "runtimeTypeAdapter":Ld/b/a/x;
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 70
    return-void
.end method
