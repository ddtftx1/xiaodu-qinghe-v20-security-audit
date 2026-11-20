.class public Ld/b/a/b/g;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Ld/b/a/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/b/p;->a(Ld/b/a/c/a;)Ld/b/a/b/w;
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
.field public final synthetic a:Ld/b/a/l;

.field public final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ld/b/a/b/p;Ld/b/a/l;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "this$0"    # Ld/b/a/b/p;

    .line 64
    iput-object p2, p0, Ld/b/a/b/g;->a:Ld/b/a/l;

    iput-object p3, p0, Ld/b/a/b/g;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Ld/b/a/b/g;->a:Ld/b/a/l;

    iget-object v1, p0, Ld/b/a/b/g;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ld/b/a/l;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
