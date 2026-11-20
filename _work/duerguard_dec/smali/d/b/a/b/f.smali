.class public Ld/b/a/b/f;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Ld/b/a/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/b/p;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ld/b/a/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/a/b/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ld/b/a/b/D;

.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ld/b/a/b/p;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "this$0"    # Ld/b/a/b/p;

    .line 218
    iput-object p2, p0, Ld/b/a/b/f;->b:Ljava/lang/Class;

    iput-object p3, p0, Ld/b/a/b/f;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {}, Ld/b/a/b/D;->a()Ld/b/a/b/D;

    move-result-object p2

    iput-object p2, p0, Ld/b/a/b/f;->a:Ld/b/a/b/D;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 223
    :try_start_0
    iget-object v0, p0, Ld/b/a/b/f;->a:Ld/b/a/b/D;

    iget-object v1, p0, Ld/b/a/b/f;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ld/b/a/b/D;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .local v0, "newInstance":Ljava/lang/Object;
    return-object v0

    .line 225
    .end local v0    # "newInstance":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld/b/a/b/f;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
