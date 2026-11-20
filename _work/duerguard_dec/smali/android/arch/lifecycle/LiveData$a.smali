.class public Landroid/arch/lifecycle/LiveData$a;
.super Landroid/arch/lifecycle/LiveData$b;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>.b;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/LiveData;Lb/a/b/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/k<",
            "TT;>;)V"
        }
    .end annotation

    .line 423
    .local p0, "this":Landroid/arch/lifecycle/LiveData$a;, "Landroid/arch/lifecycle/LiveData<TT;>.AlwaysActiveObserver;"
    .local p2, "observer":Lb/a/b/k;, "Landroid/arch/lifecycle/Observer<TT;>;"
    nop

    .line 424
    invoke-direct {p0, p1, p2}, Landroid/arch/lifecycle/LiveData$b;-><init>(Landroid/arch/lifecycle/LiveData;Lb/a/b/k;)V

    .line 425
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 429
    .local p0, "this":Landroid/arch/lifecycle/LiveData$a;, "Landroid/arch/lifecycle/LiveData<TT;>.AlwaysActiveObserver;"
    const/4 v0, 0x1

    return v0
.end method
