.class public Ld/b/a/b/j;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Ld/b/a/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/b/p;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ld/b/a/b/w;
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


# direct methods
.method public constructor <init>(Ld/b/a/b/p;)V
    .locals 0
    .param p1, "this$0"    # Ld/b/a/b/p;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method
