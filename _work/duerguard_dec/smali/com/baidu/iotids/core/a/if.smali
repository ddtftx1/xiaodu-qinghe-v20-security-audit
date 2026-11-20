.class public final Lcom/baidu/iotids/core/a/if;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static for:Lcom/baidu/iotids/core/a/for; = null

.field public static final if:Ljava/lang/String; = "EmulatorDetector"

.field public static new:Lcom/baidu/iotids/core/a/for;

.field public static try:Lcom/baidu/iotids/core/a/for;


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

.method public static for()Lcom/baidu/iotids/core/a/for;
    .locals 4

    sget-object v0, Lcom/baidu/iotids/core/a/if;->try:Lcom/baidu/iotids/core/a/for;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsEmulatorFS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EmulatorDetector"

    const-string v1, "emulator fs detected"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->for(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/iotids/core/a/for;

    sget-object v1, Lcom/baidu/iotids/core/a/goto;->try:Lcom/baidu/iotids/core/a/goto;

    const-string v2, "unknown"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/iotids/core/a/for;-><init>(Lcom/baidu/iotids/core/a/goto;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/iotids/core/a/if;->try:Lcom/baidu/iotids/core/a/for;

    :cond_0
    sget-object v0, Lcom/baidu/iotids/core/a/if;->try:Lcom/baidu/iotids/core/a/for;

    return-object v0
.end method

.method public static if()Lcom/baidu/iotids/core/a/for;
    .locals 4

    sget-object v0, Lcom/baidu/iotids/core/a/if;->new:Lcom/baidu/iotids/core/a/for;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsEmulatorCache()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EmulatorDetector"

    const-string v1, "emulator cache detected"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->for(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/iotids/core/a/for;

    sget-object v1, Lcom/baidu/iotids/core/a/goto;->try:Lcom/baidu/iotids/core/a/goto;

    const-string v2, "unknown"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/iotids/core/a/for;-><init>(Lcom/baidu/iotids/core/a/goto;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/iotids/core/a/if;->new:Lcom/baidu/iotids/core/a/for;

    :cond_0
    sget-object v0, Lcom/baidu/iotids/core/a/if;->new:Lcom/baidu/iotids/core/a/for;

    return-object v0
.end method

.method public static new()Lcom/baidu/iotids/core/a/for;
    .locals 4

    sget-object v0, Lcom/baidu/iotids/core/a/if;->for:Lcom/baidu/iotids/core/a/for;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsEmulatorProperty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EmulatorDetector"

    const-string v1, "emulator property detected"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->for(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/iotids/core/a/for;

    sget-object v1, Lcom/baidu/iotids/core/a/goto;->try:Lcom/baidu/iotids/core/a/goto;

    const-string v2, "unknown"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/iotids/core/a/for;-><init>(Lcom/baidu/iotids/core/a/goto;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/iotids/core/a/if;->for:Lcom/baidu/iotids/core/a/for;

    :cond_0
    sget-object v0, Lcom/baidu/iotids/core/a/if;->for:Lcom/baidu/iotids/core/a/for;

    return-object v0
.end method

.method public static try()Z
    .locals 4

    invoke-static {}, Lcom/baidu/iotids/core/a/if;->new()Lcom/baidu/iotids/core/a/for;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/iotids/core/a/if;->for()Lcom/baidu/iotids/core/a/for;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-static {}, Lcom/baidu/iotids/utils/Utils;->case()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/baidu/iotids/utils/Utils;->try()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    invoke-static {}, Lcom/baidu/iotids/core/a/if;->if()Lcom/baidu/iotids/core/a/for;

    move-result-object v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    :cond_5
    :goto_3
    return v0
.end method
