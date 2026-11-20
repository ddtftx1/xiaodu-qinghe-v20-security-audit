.class public Landroid/arch/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "FullLifecycleObserverAdapter.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field public final a:Landroid/arch/lifecycle/FullLifecycleObserver;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/FullLifecycleObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/arch/lifecycle/FullLifecycleObserver;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Lb/a/b/d;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .line 29
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ON_ANY must not been send by anybody"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :pswitch_1
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->c(Lb/a/b/d;)V

    .line 47
    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->f(Lb/a/b/d;)V

    .line 44
    goto :goto_0

    .line 40
    :pswitch_3
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->b(Lb/a/b/d;)V

    .line 41
    goto :goto_0

    .line 37
    :pswitch_4
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->e(Lb/a/b/d;)V

    .line 38
    goto :goto_0

    .line 34
    :pswitch_5
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->a(Lb/a/b/d;)V

    .line 35
    goto :goto_0

    .line 31
    :pswitch_6
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/FullLifecycleObserver;->d(Lb/a/b/d;)V

    .line 32
    nop

    .line 51
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
