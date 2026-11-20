.class public Lcom/baidu/iotids/core/import;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsPropertySysInitd()Z

    move-result v0

    return v0
.end method

.method public static for()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsPropertyDebuggable()Z

    move-result v0

    return v0
.end method

.method public static for(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "adb_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static if()I
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeGetSeLinuxStatus()I

    move-result v0

    return v0
.end method

.method public static if(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mock_location"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static new()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsPropertyOsSecure()Z

    move-result v0

    return v0
.end method

.method public static try()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsPropertyRootAdb()Z

    move-result v0

    return v0
.end method
