.class public final Ld/b/a/b/a/O;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Ld/b/a/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/b/a/ha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/a/j;Ld/b/a/c/a;)Ld/b/a/x;
    .locals 2
    .param p1, "gson"    # Ld/b/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/b/a/j;",
            "Ld/b/a/c/a<",
            "TT;>;)",
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation

    .line 574
    .local p2, "typeToken":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Ld/b/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 575
    const/4 v0, 0x0

    return-object v0

    .line 578
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Ld/b/a/j;->a(Ljava/lang/Class;)Ld/b/a/x;

    move-result-object v0

    .line 579
    .local v0, "dateTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/util/Date;>;"
    new-instance v1, Ld/b/a/b/a/N;

    invoke-direct {v1, p0, v0}, Ld/b/a/b/a/N;-><init>(Ld/b/a/b/a/O;Ld/b/a/x;)V

    return-object v1
.end method
