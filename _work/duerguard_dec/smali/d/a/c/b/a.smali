.class public Ld/a/c/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/iotids/core/class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Lcom/baidu/iotids/core/goto;->if(Landroid/os/IBinder;)Lcom/baidu/iotids/core/this;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/iotids/core/class;->if(Lcom/baidu/iotids/core/this;)Lcom/baidu/iotids/core/this;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/baidu/iotids/core/class;->if(Z)Z

    const-string p1, "MagiskDetector"

    const-string p2, "Service bound"

    invoke-static {p1, p2}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/baidu/iotids/core/class;->if(Z)Z

    const-string p1, "MagiskDetector"

    const-string v0, "Service Unbound"

    invoke-static {p1, v0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
