.class public Landroid/arch/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ReportFragment$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 130
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 38
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v1, "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    new-instance v3, Landroid/arch/lifecycle/ReportFragment;

    invoke-direct {v3}, Landroid/arch/lifecycle/ReportFragment;-><init>()V

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 41
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 113
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lb/a/b/f;

    if-eqz v1, :cond_0

    .line 114
    move-object v1, v0

    check-cast v1, Lb/a/b/f;

    invoke-interface {v1}, Lb/a/b/f;->getLifecycle()Lb/a/b/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb/a/b/e;->b(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 115
    return-void

    .line 118
    :cond_0
    instance-of v1, v0, Lb/a/b/d;

    if-eqz v1, :cond_1

    .line 119
    move-object v1, v0

    check-cast v1, Lb/a/b/d;

    invoke-interface {v1}, Lb/a/b/d;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v1

    .line 120
    .local v1, "lifecycle":Landroid/arch/lifecycle/Lifecycle;
    instance-of v2, v1, Lb/a/b/e;

    if-eqz v2, :cond_1

    .line 121
    move-object v2, v1

    check-cast v2, Lb/a/b/e;

    invoke-virtual {v2, p1}, Lb/a/b/e;->b(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 124
    .end local v1    # "lifecycle":Landroid/arch/lifecycle/Lifecycle;
    :cond_1
    return-void
.end method

.method public final a(Landroid/arch/lifecycle/ReportFragment$a;)V
    .locals 0
    .param p1, "listener"    # Landroid/arch/lifecycle/ReportFragment$a;

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1}, Landroid/arch/lifecycle/ReportFragment$a;->onCreate()V

    .line 56
    :cond_0
    return-void
.end method

.method public final b(Landroid/arch/lifecycle/ReportFragment$a;)V
    .locals 0
    .param p1, "listener"    # Landroid/arch/lifecycle/ReportFragment$a;

    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-interface {p1}, Landroid/arch/lifecycle/ReportFragment$a;->a()V

    .line 68
    :cond_0
    return-void
.end method

.method public final c(Landroid/arch/lifecycle/ReportFragment$a;)V
    .locals 0
    .param p1, "listener"    # Landroid/arch/lifecycle/ReportFragment$a;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Landroid/arch/lifecycle/ReportFragment$a;->b()V

    .line 62
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->a(Landroid/arch/lifecycle/ReportFragment$a;)V

    .line 74
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 106
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 108
    nop

    .line 109
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 94
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->b(Landroid/arch/lifecycle/ReportFragment$a;)V

    .line 88
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 89
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->c(Landroid/arch/lifecycle/ReportFragment$a;)V

    .line 81
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 82
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 100
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 101
    return-void
.end method
