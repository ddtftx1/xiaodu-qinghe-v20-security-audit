.class public final Ld/a/g/i/x;
.super Ljava/lang/Object;
.source "TrafficStatsUtils.java"


# direct methods
.method public static a()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 14
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    const v0, 0x26000

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 21
    return-void
.end method

.method public static b()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 26
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 33
    return-void
.end method
