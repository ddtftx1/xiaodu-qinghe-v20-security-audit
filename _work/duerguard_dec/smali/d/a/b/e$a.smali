.class public abstract Ld/a/b/e$a;
.super Landroid/os/Binder;
.source "IRiskScanCallback.java"

# interfaces
.implements Ld/a/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/b/e$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Ld/a/b/e;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.baidu.duerguard.IRiskScanCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ld/a/b/e;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Ld/a/b/e;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Ld/a/b/e$a$a;

    invoke-direct {v1, p0}, Ld/a/b/e$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method
