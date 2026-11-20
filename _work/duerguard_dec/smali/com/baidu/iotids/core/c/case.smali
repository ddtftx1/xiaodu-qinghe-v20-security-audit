.class public final Lcom/baidu/iotids/core/c/case;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsVirtualXposedInjected()Z

    move-result v0

    return v0
.end method

.method public static if()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsVirtualXposedExists()Z

    move-result v0

    return v0
.end method
