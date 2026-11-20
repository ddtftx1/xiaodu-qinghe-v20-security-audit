.class public final Lcom/baidu/iotids/core/class;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static for:Lcom/baidu/iotids/core/this; = null

.field public static final if:Ljava/lang/String; = "MagiskDetector"

.field public static new:Z

.field public static try:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/a/c/b/a;

    invoke-direct {v0}, Ld/a/c/b/a;-><init>()V

    sput-object v0, Lcom/baidu/iotids/core/class;->try:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/iotids/core/class;->new:Z

    return v0
.end method

.method public static synthetic if(Lcom/baidu/iotids/core/this;)Lcom/baidu/iotids/core/this;
    .locals 0

    sput-object p0, Lcom/baidu/iotids/core/class;->for:Lcom/baidu/iotids/core/this;

    return-object p0
.end method

.method public static if(Landroid/app/Application;)V
    .locals 4

    const-string v0, "MagiskDetector"

    const-string v1, "bind start"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/baidu/iotids/service/IsolatedService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/baidu/iotids/core/class;->try:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string p0, "bind end"

    invoke-static {v0, p0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static if()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isolated service bound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/baidu/iotids/core/class;->new:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagiskDetector"

    invoke-static {v1, v0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/baidu/iotids/core/class;->new:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/baidu/iotids/core/class;->for:Lcom/baidu/iotids/core/this;

    invoke-interface {v0}, Lcom/baidu/iotids/core/this;->if()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isolated service error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2
.end method

.method public static synthetic if(Z)Z
    .locals 0

    sput-boolean p0, Lcom/baidu/iotids/core/class;->new:Z

    return p0
.end method
