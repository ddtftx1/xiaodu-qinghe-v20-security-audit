.class public Ld/b/a/b/a/Y;
.super Ld/b/a/x;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/b/a/Z;->a(Ld/b/a/j;Ld/b/a/c/a;)Ld/b/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/b/a/x<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Ld/b/a/b/a/Z;


# direct methods
.method public constructor <init>(Ld/b/a/b/a/Z;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Ld/b/a/b/a/Z;

    .line 887
    iput-object p1, p0, Ld/b/a/b/a/Y;->b:Ld/b/a/b/a/Z;

    iput-object p2, p0, Ld/b/a/b/a/Y;->a:Ljava/lang/Class;

    invoke-direct {p0}, Ld/b/a/x;-><init>()V

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
            ")TT1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 893
    iget-object v0, p0, Ld/b/a/b/a/Y;->b:Ld/b/a/b/a/Z;

    iget-object v0, v0, Ld/b/a/b/a/Z;->b:Ld/b/a/x;

    invoke-virtual {v0, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v0

    .line 894
    .local v0, "result":Ljava/lang/Object;, "TT1;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Ld/b/a/b/a/Y;->a:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 895
    :cond_0
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld/b/a/b/a/Y;->a:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 898
    :cond_1
    :goto_0
    return-object v0
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Ld/b/a/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/d/c;",
            "TT1;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    .local p2, "value":Ljava/lang/Object;, "TT1;"
    iget-object v0, p0, Ld/b/a/b/a/Y;->b:Ld/b/a/b/a/Z;

    iget-object v0, v0, Ld/b/a/b/a/Z;->b:Ld/b/a/x;

    invoke-virtual {v0, p1, p2}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 890
    return-void
.end method
