.class public final Lcom/baidu/iotids/core/c/else;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final for:Ljava/lang/String; = "de.robv.android.xposed.XposedHelpers"

.field public static final if:Ljava/lang/String; = "XposedDetector"

.field public static final new:Ljava/lang/String; = "de.robv.android.xposed.XposedBridge"

.field public static try:Z = false


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
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "abc"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "XposedDetector"

    const-string v1, "de.robv.android.xposed.XposedBridge found in stack trace"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static if()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/iotids/core/c/else;->try:Z

    if-nez v0, :cond_1

    const-string v0, "de.robv.android.xposed.XposedHelpers"

    invoke-static {v0}, Lcom/baidu/iotids/core/c/else;->if(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "de.robv.android.xposed.XposedBridge"

    invoke-static {v0}, Lcom/baidu/iotids/core/c/else;->if(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/iotids/core/c/else;->for()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsXposedExists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/iotids/core/c/else;->try:Z

    :cond_1
    sget-boolean v0, Lcom/baidu/iotids/core/c/else;->try:Z

    return v0
.end method

.method public static if(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "XposedDetector"

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xposed class not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static new()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/core/c/else;->if()Z

    move-result v0

    return v0
.end method
