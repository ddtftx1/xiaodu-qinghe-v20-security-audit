.class public Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Lb/a/b/b;


# direct methods
.method public constructor <init>(Lb/a/b/b;)V
    .locals 0
    .param p1, "generatedAdapter"    # Lb/a/b/b;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/a/b/b;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "source"    # Lb/a/b/d;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .line 35
    iget-object v0, p0, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/a/b/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2, v1}, Lb/a/b/b;->a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;ZLb/a/b/i;)V

    .line 36
    iget-object v0, p0, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/a/b/b;

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v2, v1}, Lb/a/b/b;->a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;ZLb/a/b/i;)V

    .line 37
    return-void
.end method
