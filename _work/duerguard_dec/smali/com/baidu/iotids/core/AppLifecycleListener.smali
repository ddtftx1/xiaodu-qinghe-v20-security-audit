.class public final Lcom/baidu/iotids/core/AppLifecycleListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final if:Ljava/lang/String; = "AppLifecycleListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appOnCreate()V
    .locals 2

    const-string v0, "AppLifecycleListener"

    const-string v1, "app on create"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/iotids/core/if;->new()Lcom/baidu/iotids/core/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/iotids/core/if;->this()V

    return-void
.end method

.method public appOnDestroy()V
    .locals 2

    const-string v0, "AppLifecycleListener"

    const-string v1, "app on destroy"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public appOnPause()V
    .locals 2

    const-string v0, "AppLifecycleListener"

    const-string v1, "app on pause"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public appOnResume()V
    .locals 2

    const-string v0, "AppLifecycleListener"

    const-string v1, "app on resume"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public appOnStart()V
    .locals 2

    const-string v0, "AppLifecycleListener"

    const-string v1, "app on start"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/iotids/core/if;->new()Lcom/baidu/iotids/core/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/iotids/core/if;->break()V

    return-void
.end method

.method public appOnStop()V
    .locals 2

    const-string v0, "AppLifecycleListener"

    const-string v1, "app on stop"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/iotids/core/if;->new()Lcom/baidu/iotids/core/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/iotids/core/if;->catch()V

    return-void
.end method
