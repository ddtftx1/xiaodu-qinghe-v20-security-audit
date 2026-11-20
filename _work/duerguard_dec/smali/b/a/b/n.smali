.class public Lb/a/b/n;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/n$a;
    }
.end annotation


# instance fields
.field public final a:Lb/a/b/n$a;

.field public final b:Lb/a/b/o;


# direct methods
.method public constructor <init>(Lb/a/b/o;Lb/a/b/n$a;)V
    .locals 0
    .param p1, "store"    # Lb/a/b/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "factory"    # Lb/a/b/n$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lb/a/b/n;->a:Lb/a/b/n$a;

    .line 79
    iput-object p1, p0, Lb/a/b/n;->b:Lb/a/b/o;

    .line 80
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lb/a/b/m;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/a/b/m;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 98
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.arch.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lb/a/b/n;->a(Ljava/lang/String;Ljava/lang/Class;)Lb/a/b/m;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Lb/a/b/m;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/a/b/m;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 122
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lb/a/b/n;->b:Lb/a/b/o;

    invoke-virtual {v0, p1}, Lb/a/b/o;->a(Ljava/lang/String;)Lb/a/b/m;

    move-result-object v0

    .line 124
    .local v0, "viewModel":Lb/a/b/m;
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    return-object v0

    .line 129
    :cond_0
    nop

    .line 134
    iget-object v1, p0, Lb/a/b/n;->a:Lb/a/b/n$a;

    invoke-interface {v1, p2}, Lb/a/b/n$a;->create(Ljava/lang/Class;)Lb/a/b/m;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lb/a/b/n;->b:Lb/a/b/o;

    invoke-virtual {v1, p1, v0}, Lb/a/b/o;->a(Ljava/lang/String;Lb/a/b/m;)V

    .line 137
    return-object v0
.end method
