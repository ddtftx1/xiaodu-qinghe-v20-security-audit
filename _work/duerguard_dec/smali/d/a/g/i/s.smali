.class public final Ld/a/g/i/s;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 40
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 42
    return v0

    .line 44
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 47
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .line 53
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 55
    return v0

    .line 57
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 60
    return v0
.end method
