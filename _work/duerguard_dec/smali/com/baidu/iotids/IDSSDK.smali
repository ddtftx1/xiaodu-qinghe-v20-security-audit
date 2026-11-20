.class public Lcom/baidu/iotids/IDSSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "IDSSDK"

.field public static final VERSION:Ljava/lang/String; = "1.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkInjectionFramework()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/core/c/for;->if()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/iotids/core/c/else;->if()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/iotids/core/c/new;->if()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/iotids/core/c/if;->if()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/iotids/core/c/try;->for()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/iotids/core/c/case;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static checkInvalidMount()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeGetInvalidMount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkMagisk()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsMagiskExists()Z

    move-result v0

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public static isCAStoreUnsafe()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/core/for;->for()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDeviceDebuggable()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/core/import;->for()Z

    move-result v0

    return v0
.end method

.method public static isDeviceRooted()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsSuExists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsSuperUserExists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/iotids/core/import;->try()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDeviceUnlocked()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsUnlocked()Z

    move-result v0

    return v0
.end method

.method public static isNetworkUnsafe(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/core/final;->if()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/baidu/iotids/core/native;->if(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSELinuxDisabled()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/core/import;->if()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUSBDebuggable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/baidu/iotids/core/import;->for(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
