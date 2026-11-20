.class public final Lcom/baidu/iotids/core/c/try;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final for:Ljava/lang/String; = "com.lody.virtual"

.field public static final if:Ljava/lang/String; = "VirtualApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for()Z
    .locals 1

    invoke-static {}, Lcom/baidu/iotids/core/c/try;->if()Z

    move-result v0

    return v0
.end method

.method public static if()Z
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

    const-string v5, "com.lody.virtual"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "VirtualApp"

    const-string v1, "com.lody.virtual found in stack trace"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
