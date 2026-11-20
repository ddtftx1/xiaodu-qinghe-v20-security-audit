.class public Ld/b/a/w;
.super Ld/b/a/x;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/x;->a()Ld/b/a/x;
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
.field public final synthetic a:Ld/b/a/x;


# direct methods
.method public constructor <init>(Ld/b/a/x;)V
    .locals 0
    .param p1, "this$0"    # Ld/b/a/x;

    .line 186
    .local p0, "this":Ld/b/a/w;, "Lcom/google/gson/TypeAdapter$1;"
    iput-object p1, p0, Ld/b/a/w;->a:Ld/b/a/x;

    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Ld/b/a/d/b;
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

    .line 195
    .local p0, "this":Ld/b/a/w;, "Lcom/google/gson/TypeAdapter$1;"
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 197
    const/4 v0, 0x0

    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Ld/b/a/w;->a:Ld/b/a/x;

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

    .line 188
    .local p0, "this":Ld/b/a/w;, "Lcom/google/gson/TypeAdapter$1;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 189
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Ld/b/a/w;->a:Ld/b/a/x;

    invoke-virtual {v0, p1, p2}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 193
    :goto_0
    return-void
.end method
