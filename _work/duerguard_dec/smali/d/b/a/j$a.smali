.class public Ld/b/a/j$a;
.super Ld/b/a/x;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
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
.field public a:Ld/b/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 956
    .local p0, "this":Ld/b/a/j$a;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
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

    .line 967
    .local p0, "this":Ld/b/a/j$a;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    iget-object v0, p0, Ld/b/a/j$a;->a:Ld/b/a/x;

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 968
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
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

    .line 974
    .local p0, "this":Ld/b/a/j$a;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ld/b/a/j$a;->a:Ld/b/a/x;

    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {v0, p1, p2}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 978
    return-void

    .line 975
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Ld/b/a/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/x<",
            "TT;>;)V"
        }
    .end annotation

    .line 960
    .local p0, "this":Ld/b/a/j$a;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p1, "typeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    iget-object v0, p0, Ld/b/a/j$a;->a:Ld/b/a/x;

    if-nez v0, :cond_0

    .line 963
    iput-object p1, p0, Ld/b/a/j$a;->a:Ld/b/a/x;

    .line 964
    return-void

    .line 961
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
