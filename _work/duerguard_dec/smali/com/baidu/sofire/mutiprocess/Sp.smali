.class public Lcom/baidu/sofire/mutiprocess/Sp;
.super Ljava/lang/Object;
.source "Sp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static isMainProcess(Landroid/content/Context;)I
    .locals 0

    .line 105
    invoke-static {p0}, Ld/a/g/k/d;->a(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static mainProcessCallGetPluginStatus(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 80
    invoke-static {p0, p1}, Ld/a/g/k/d;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static mainProcessGetSubProcessPids()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {}, Ld/a/g/k/d;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static mainProcessRequestCallPlugin(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 59
    invoke-static {p0, p1}, Ld/a/g/k/d;->a(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static mainProcessStartAllPlugin(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Ld/a/g/k/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static mainProcessStartOrStopPlugin(ILjava/lang/String;Z)I
    .locals 0

    .line 35
    invoke-static {p0, p1, p2}, Ld/a/g/k/d;->a(ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static registerNeedNotifySubProcess(Ljava/lang/String;Z)V
    .locals 0

    .line 69
    invoke-static {p0, p1}, Ld/a/g/k/d;->a(Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

.method public static subProcessRequestCallPlugin(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 93
    invoke-static {p0}, Ld/a/g/k/d;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
