.class public abstract Landroid/arch/lifecycle/LiveData$b;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field public final a:Lb/a/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:I

.field public final synthetic d:Landroid/arch/lifecycle/LiveData;


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

    .line 387
    .local p0, "this":Landroid/arch/lifecycle/LiveData$b;, "Landroid/arch/lifecycle/LiveData<TT;>.ObserverWrapper;"
    .local p2, "observer":Lb/a/b/k;, "Landroid/arch/lifecycle/Observer<TT;>;"
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    const/4 p1, -0x1

    iput p1, p0, Landroid/arch/lifecycle/LiveData$b;->c:I

    .line 388
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$b;->a:Lb/a/b/k;

    .line 389
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 398
    .local p0, "this":Landroid/arch/lifecycle/LiveData$b;, "Landroid/arch/lifecycle/LiveData<TT;>.ObserverWrapper;"
    return-void
.end method

.method public a(Z)V
    .locals 5
    .param p1, "newActive"    # Z

    .line 401
    .local p0, "this":Landroid/arch/lifecycle/LiveData$b;, "Landroid/arch/lifecycle/LiveData<TT;>.ObserverWrapper;"
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData$b;->b:Z

    if-ne p1, v0, :cond_0

    .line 402
    return-void

    .line 406
    :cond_0
    iput-boolean p1, p0, Landroid/arch/lifecycle/LiveData$b;->b:Z

    .line 407
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$b;->d:Landroid/arch/lifecycle/LiveData;

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 408
    .local v0, "wasInactive":Z
    :goto_0
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$b;->d:Landroid/arch/lifecycle/LiveData;

    invoke-static {v2}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v3

    iget-boolean v4, p0, Landroid/arch/lifecycle/LiveData$b;->b:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    add-int/2addr v3, v1

    invoke-static {v2, v3}, Landroid/arch/lifecycle/LiveData;->access$302(Landroid/arch/lifecycle/LiveData;I)I

    .line 409
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$b;->b:Z

    if-eqz v1, :cond_3

    .line 410
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->onActive()V

    .line 412
    :cond_3
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$b;->b:Z

    if-nez v1, :cond_4

    .line 413
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->onInactive()V

    .line 415
    :cond_4
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$b;->b:Z

    if-eqz v1, :cond_5

    .line 416
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1, p0}, Landroid/arch/lifecycle/LiveData;->access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$b;)V

    .line 418
    :cond_5
    return-void
.end method

.method public a(Lb/a/b/d;)Z
    .locals 1
    .param p1, "owner"    # Lb/a/b/d;

    .line 394
    .local p0, "this":Landroid/arch/lifecycle/LiveData$b;, "Landroid/arch/lifecycle/LiveData<TT;>.ObserverWrapper;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()Z
.end method
