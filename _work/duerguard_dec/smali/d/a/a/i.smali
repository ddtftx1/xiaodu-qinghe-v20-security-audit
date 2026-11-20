.class public final Ld/a/a/i;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static volatile e:Ljava/lang/String;

.field public static f:Ljava/lang/Boolean;

.field public static volatile g:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "duerguard"

    sput-object v0, Ld/a/a/i;->a:Ljava/lang/String;

    .line 21
    const-string v0, ""

    sput-object v0, Ld/a/a/i;->c:Ljava/lang/String;

    .line 22
    sput-object v0, Ld/a/a/i;->d:Ljava/lang/String;

    .line 23
    sput-object v0, Ld/a/a/i;->e:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Ld/a/a/i;->f:Ljava/lang/Boolean;

    .line 25
    sput-object v0, Ld/a/a/i;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 105
    sget-object v0, Ld/a/a/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "ro.ota.product.model"

    const-string v1, ""

    invoke-static {v0, v1}, Ld/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/a/a/i;->d:Ljava/lang/String;

    .line 108
    :cond_0
    sget-object v0, Ld/a/a/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .line 46
    sget-object v0, Ld/a/a/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 48
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 50
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Utility"

    invoke-static {v4, v3}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v1, :cond_0

    .line 55
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Ld/a/a/i;->b:Ljava/lang/String;

    .line 58
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    sget-object v0, Ld/a/a/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "clazzName"    # Ljava/lang/String;

    .line 68
    sget-object v0, Ld/a/a/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "BUILD_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, "buildType":Ljava/lang/String;
    const-string v3, "FLAVOR"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, "flavor":Ljava/lang/String;
    const-string v3, "debug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "inner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    sput-object v2, Ld/a/a/i;->c:Ljava/lang/String;

    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    const-string v3, "test_channel"

    sput-object v3, Ld/a/a/i;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "buildType":Ljava/lang/String;
    .end local v2    # "flavor":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    sget-object v0, Ld/a/a/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Ld/a/a/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Z
    .locals 5
    .param p0, "clazzName"    # Ljava/lang/String;

    const-class v0, Ld/a/a/i;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Ld/a/a/i;->g:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 88
    const/4 v1, 0x1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 89
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "FLAVOR"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    .local v3, "flavor":Ljava/lang/String;
    const-string v4, "mini"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Ld/a/a/i;->g:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "flavor":Ljava/lang/String;
    goto :goto_1

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Ld/a/a/i;->g:Ljava/lang/Boolean;

    .line 96
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    sget-object v1, Ld/a/a/i;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    .line 85
    .end local p0    # "clazzName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 117
    sget-object v0, Ld/a/a/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 119
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/a/a/i;->e:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v0, Ld/a/a/i;->e:Ljava/lang/String;

    .line 124
    :cond_1
    :goto_0
    sget-object v0, Ld/a/a/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Z
    .locals 2

    .line 134
    :try_start_0
    sget-object v0, Ld/a/a/i;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, ".R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ld/a/a/i;->f:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Ld/a/a/i;->f:Ljava/lang/Boolean;

    .line 141
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Ld/a/a/i;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
