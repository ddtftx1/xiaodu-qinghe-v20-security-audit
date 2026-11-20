.class public Lb/a/b/e$a;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/arch/lifecycle/Lifecycle$State;

.field public b:Landroid/arch/lifecycle/GenericLifecycleObserver;


# direct methods
.method public constructor <init>(Lb/a/b/c;Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "observer"    # Lb/a/b/c;
    .param p2, "initialState"    # Landroid/arch/lifecycle/Lifecycle$State;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Lb/a/b/g;->a(Ljava/lang/Object;)Landroid/arch/lifecycle/GenericLifecycleObserver;

    move-result-object v0

    iput-object v0, p0, Lb/a/b/e$a;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    .line 348
    iput-object p2, p0, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 349
    return-void
.end method


# virtual methods
.method public a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "owner"    # Lb/a/b/d;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .line 352
    invoke-static {p2}, Lb/a/b/e;->a(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 353
    .local v0, "newState":Landroid/arch/lifecycle/Lifecycle$State;
    iget-object v1, p0, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Lb/a/b/e;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 354
    iget-object v1, p0, Lb/a/b/e$a;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/GenericLifecycleObserver;->a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 355
    iput-object v0, p0, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 356
    return-void
.end method
