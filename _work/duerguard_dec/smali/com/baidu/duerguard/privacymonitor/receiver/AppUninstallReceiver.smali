.class public Lcom/baidu/duerguard/privacymonitor/receiver/AppUninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppUninstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "AppUninstallReceiver"

    const-string v3, "%s is uninstalled."

    invoke-static {v2, v3, v1}, Ld/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    sget-object v1, Lcom/baidu/threadpool/ThreadManager;->a:Lcom/baidu/threadpool/ThreadManager;

    new-instance v2, Ld/a/b/c/b/a;

    invoke-direct {v2, p0, v0}, Ld/a/b/c/b/a;-><init>(Lcom/baidu/duerguard/privacymonitor/receiver/AppUninstallReceiver;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/baidu/threadpool/ThreadManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 35
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
