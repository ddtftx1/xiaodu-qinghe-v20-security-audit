.class public Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:[Lb/a/b/b;


# direct methods
.method public constructor <init>([Lb/a/b/b;)V
    .locals 0
    .param p1, "generatedAdapters"    # [Lb/a/b/b;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Lb/a/b/b;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 6
    .param p1, "source"    # Lb/a/b/d;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .line 36
    new-instance v0, Lb/a/b/i;

    invoke-direct {v0}, Lb/a/b/i;-><init>()V

    .line 37
    .local v0, "logger":Lb/a/b/i;
    iget-object v1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Lb/a/b/b;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 38
    .local v5, "mGenerated":Lb/a/b/b;
    invoke-interface {v5, p1, p2, v3, v0}, Lb/a/b/b;->a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;ZLb/a/b/i;)V

    .line 37
    .end local v5    # "mGenerated":Lb/a/b/b;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Lb/a/b/b;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 41
    .local v4, "mGenerated":Lb/a/b/b;
    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5, v0}, Lb/a/b/b;->a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;ZLb/a/b/i;)V

    .line 40
    .end local v4    # "mGenerated":Lb/a/b/b;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 43
    :cond_1
    return-void
.end method
