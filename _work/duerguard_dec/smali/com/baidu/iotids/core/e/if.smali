.class public Lcom/baidu/iotids/core/e/if;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static case:Lcom/baidu/iotids/core/e/for; = null

.field public static else:[Ljava/lang/String; = null

.field public static for:Lcom/baidu/iotids/core/e/for; = null

.field public static final if:Ljava/lang/String; = "VirtualDetector"

.field public static new:Lcom/baidu/iotids/core/e/for;

.field public static try:Lcom/baidu/iotids/core/e/for;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "com.bly.dkplat"

    const-string v1, "com.by.chaos"

    const-string v2, "com.lbe.parallel"

    const-string v3, "com.execelliance.dualaid"

    const-string v4, "com.lody.virtual"

    const-string v5, "com.qihoo.magic"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/iotids/core/e/if;->else:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Landroid/content/Context;)Lcom/baidu/iotids/core/e/for;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VirtualDetector"

    invoke-static {v1, p0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataDir="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/baidu/iotids/core/e/if;->else:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsVirtualPath(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/baidu/iotids/core/e/for;

    sget-object v0, Lcom/baidu/iotids/core/e/else;->new:Lcom/baidu/iotids/core/e/else;

    const-string v1, "unknown"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/iotids/core/e/for;-><init>(Lcom/baidu/iotids/core/e/else;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static else(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/baidu/iotids/core/e/if;->new(Landroid/content/Context;)Lcom/baidu/iotids/core/e/for;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/baidu/iotids/core/e/if;->if(Landroid/content/Context;)Lcom/baidu/iotids/core/e/for;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/baidu/iotids/core/e/if;->try(Landroid/content/Context;)Lcom/baidu/iotids/core/e/for;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/baidu/iotids/core/e/if;->if()Lcom/baidu/iotids/core/e/for;

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

.method public static for(Landroid/content/Context;)Lcom/baidu/iotids/core/e/for;
    .locals 5

    const-string v0, "VirtualDetector"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current pkg name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "+1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    if-le v1, p0, :cond_2

    new-instance p0, Lcom/baidu/iotids/core/e/for;

    sget-object v0, Lcom/baidu/iotids/core/e/else;->for:Lcom/baidu/iotids/core/e/else;

    const-string v1, "unknown"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/iotids/core/e/for;-><init>(Lcom/baidu/iotids/core/e/else;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static if()Lcom/baidu/iotids/core/e/for;
    .locals 4

    sget-object v0, Lcom/baidu/iotids/core/e/if;->for:Lcom/baidu/iotids/core/e/for;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/iotids/utils/Utils;->for()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsDoubleSocket(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/iotids/core/e/for;

    sget-object v1, Lcom/baidu/iotids/core/e/else;->for:Lcom/baidu/iotids/core/e/else;

    const-string v2, "unknown"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/iotids/core/e/for;-><init>(Lcom/baidu/iotids/core/e/else;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/iotids/core/e/if;->for:Lcom/baidu/iotids/core/e/for;

    :cond_0
    sget-object v0, Lcom/baidu/iotids/core/e/if;->for:Lcom/baidu/iotids/core/e/for;

    return-object v0
.end method

.method public static if(Landroid/content/Context;)Lcom/baidu/iotids/core/e/for;
    .locals 3

    sget-object v0, Lcom/baidu/iotids/core/e/if;->new:Lcom/baidu/iotids/core/e/for;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/iotids/jni/CoreNative;->nativeIsVirtualAccess(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/baidu/iotids/core/e/for;

    sget-object v0, Lcom/baidu/iotids/core/e/else;->new:Lcom/baidu/iotids/core/e/else;

    const-string v1, "unknown"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/iotids/core/e/for;-><init>(Lcom/baidu/iotids/core/e/else;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/baidu/iotids/core/e/if;->new:Lcom/baidu/iotids/core/e/for;

    :cond_0
    sget-object p0, Lcom/baidu/iotids/core/e/if;->new:Lcom/baidu/iotids/core/e/for;

    return-object p0
.end method

.method public static new(Landroid/content/Context;)Lcom/baidu/iotids/core/e/for;
    .locals 1

    sget-object v0, Lcom/baidu/iotids/core/e/if;->try:Lcom/baidu/iotids/core/e/for;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/baidu/iotids/core/e/if;->for(Landroid/content/Context;)Lcom/baidu/iotids/core/e/for;

    move-result-object p0

    sput-object p0, Lcom/baidu/iotids/core/e/if;->try:Lcom/baidu/iotids/core/e/for;

    :cond_0
    sget-object p0, Lcom/baidu/iotids/core/e/if;->try:Lcom/baidu/iotids/core/e/for;

    return-object p0
.end method

.method public static try(Landroid/content/Context;)Lcom/baidu/iotids/core/e/for;
    .locals 1

    sget-object v0, Lcom/baidu/iotids/core/e/if;->case:Lcom/baidu/iotids/core/e/for;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/baidu/iotids/core/e/if;->case(Landroid/content/Context;)Lcom/baidu/iotids/core/e/for;

    move-result-object p0

    sput-object p0, Lcom/baidu/iotids/core/e/if;->case:Lcom/baidu/iotids/core/e/for;

    :cond_0
    sget-object p0, Lcom/baidu/iotids/core/e/if;->case:Lcom/baidu/iotids/core/e/for;

    return-object p0
.end method
