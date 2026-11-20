.class public final Lcom/baidu/iotids/core/c/for;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static for:Z = false

.field public static if:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/iotids/core/c/for;->for:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsFridaInjected()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/iotids/core/c/for;->for:Z

    :cond_0
    sget-boolean v0, Lcom/baidu/iotids/core/c/for;->for:Z

    return v0
.end method

.method public static if()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/iotids/core/c/for;->if:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsFridaExists()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/iotids/core/c/for;->if:Z

    :cond_0
    sget-boolean v0, Lcom/baidu/iotids/core/c/for;->if:Z

    return v0
.end method
