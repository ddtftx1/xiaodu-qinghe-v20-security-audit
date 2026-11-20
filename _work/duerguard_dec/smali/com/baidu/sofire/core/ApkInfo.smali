.class public Lcom/baidu/sofire/core/ApkInfo;
.super Ljava/lang/Object;
.source "ApkInfo.java"


# instance fields
.field public activities:[Landroid/content/pm/ActivityInfo;

.field public apkMD5:Ljava/lang/String;

.field public apkParseSuc:I

.field public applicationTheme:I

.field public classLoader:Ljava/lang/ClassLoader;

.field public className:Ljava/lang/String;

.field public cloudPkgInfo:Landroid/content/pm/PackageInfo;

.field public dataDir:Ljava/lang/String;

.field public dexPath:Ljava/lang/String;

.field public downloadURL:Ljava/lang/String;

.field public duration:I

.field public hostContext:Landroid/content/Context;

.field public initStatus:I

.field public intentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/a/g/d/o;",
            ">;"
        }
    .end annotation
.end field

.field public isMem:Z

.field public isNextLoad:Z

.field public isOnce:I

.field public key:I

.field public libPath:Ljava/lang/String;

.field public network:I

.field public packageName:Ljava/lang/String;

.field public pkgPath:Ljava/lang/String;

.field public priority:I

.field public signMD5:Ljava/lang/String;

.field public startTime:J

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isMem:Z

    .line 35
    iput-boolean v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isNextLoad:Z

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isMem:Z

    .line 35
    iput-boolean v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isNextLoad:Z

    .line 41
    iput p1, p0, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 42
    iput-object p2, p0, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isMem:Z

    .line 35
    iput-boolean v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isNextLoad:Z

    .line 53
    iput p1, p0, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 54
    iput-object p2, p0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/baidu/sofire/core/ApkInfo;->downloadURL:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/baidu/sofire/core/ApkInfo;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isMem:Z

    .line 35
    iput-boolean v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isNextLoad:Z

    .line 61
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 62
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->initStatus:I

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->initStatus:I

    .line 63
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->hostContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->hostContext:Landroid/content/Context;

    .line 67
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->libPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->libPath:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->downloadURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->downloadURL:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->signMD5:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->signMD5:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 72
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->dexPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->dexPath:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->className:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->className:Ljava/lang/String;

    .line 75
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->apkParseSuc:I

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->apkParseSuc:I

    .line 76
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->applicationTheme:I

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->applicationTheme:I

    .line 77
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    .line 78
    iget-object v0, p1, Lcom/baidu/sofire/core/ApkInfo;->cloudPkgInfo:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->cloudPkgInfo:Landroid/content/pm/PackageInfo;

    .line 79
    iget-wide v0, p1, Lcom/baidu/sofire/core/ApkInfo;->startTime:J

    iput-wide v0, p0, Lcom/baidu/sofire/core/ApkInfo;->startTime:J

    .line 80
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->duration:I

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->duration:I

    .line 81
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->network:I

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->network:I

    .line 82
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->isOnce:I

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isOnce:I

    .line 83
    iget v0, p1, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 84
    iget-boolean v0, p1, Lcom/baidu/sofire/core/ApkInfo;->isMem:Z

    iput-boolean v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isMem:Z

    .line 85
    iget-boolean p1, p1, Lcom/baidu/sofire/core/ApkInfo;->isNextLoad:Z

    iput-boolean p1, p0, Lcom/baidu/sofire/core/ApkInfo;->isNextLoad:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isMem:Z

    .line 35
    iput-boolean v0, p0, Lcom/baidu/sofire/core/ApkInfo;->isNextLoad:Z

    .line 47
    iput-object p1, p0, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 98
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 99
    return v0

    .line 101
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 102
    return v1

    .line 104
    :cond_1
    const-class v2, Lcom/baidu/sofire/core/ApkInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 105
    return v1

    .line 107
    :cond_2
    check-cast p1, Lcom/baidu/sofire/core/ApkInfo;

    .line 108
    iget-object v2, p0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 109
    iget-object p1, p1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 110
    return v1

    .line 112
    :cond_3
    iget-object p1, p1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 113
    return v1

    .line 115
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 93
    return v0
.end method
