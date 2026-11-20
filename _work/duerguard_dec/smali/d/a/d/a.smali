.class public Ld/a/d/a;
.super Ljava/lang/Object;
.source "SafeEnvManager.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "selinux"

    invoke-static {}, Lcom/baidu/iotids/IDSSDK;->isSELinuxDisabled()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "usb_debug"

    invoke-static {p0}, Lcom/baidu/iotids/IDSSDK;->isUSBDebuggable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "device_debug"

    invoke-static {}, Lcom/baidu/iotids/IDSSDK;->isDeviceDebuggable()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "root"

    invoke-static {}, Lcom/baidu/iotids/IDSSDK;->isDeviceRooted()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v3

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "hook"

    invoke-static {}, Lcom/baidu/iotids/IDSSDK;->checkInjectionFramework()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v3

    goto :goto_4

    :cond_4
    move-object v2, v4

    :goto_4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "net_proxy"

    invoke-static {p0}, Lcom/baidu/iotids/IDSSDK;->isNetworkUnsafe(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v3

    goto :goto_5

    :cond_5
    move-object v2, v4

    :goto_5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "ca"

    invoke-static {}, Lcom/baidu/iotids/IDSSDK;->isCAStoreUnsafe()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v3

    goto :goto_6

    :cond_6
    move-object v2, v4

    :goto_6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "magisk"

    invoke-static {}, Lcom/baidu/iotids/IDSSDK;->checkMagisk()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v3

    goto :goto_7

    :cond_7
    move-object v2, v4

    :goto_7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "mount"

    invoke-static {}, Lcom/baidu/iotids/IDSSDK;->checkInvalidMount()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v3

    goto :goto_8

    :cond_8
    move-object v2, v4

    :goto_8
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "device_unlock"

    invoke-static {}, Lcom/baidu/iotids/IDSSDK;->isDeviceUnlocked()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    move-object v3, v4

    :goto_9
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    goto :goto_a

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a
    return-object v0
.end method
