.class public Lcom/baidu/iotids/Setting;
.super Lcom/baidu/iotids/new;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/iotids/new;-><init>()V

    return-void
.end method

.method public static if(Z)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/iotids/Setting;->nativeSetDebug(Z)V

    return-void
.end method

.method public static native nativeSetDebug(Z)V
.end method
