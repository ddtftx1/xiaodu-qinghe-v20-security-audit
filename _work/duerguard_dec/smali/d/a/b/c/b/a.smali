.class public Ld/a/b/c/b/a;
.super Ljava/lang/Object;
.source "AppUninstallReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/duerguard/privacymonitor/receiver/AppUninstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/privacymonitor/receiver/AppUninstallReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/duerguard/privacymonitor/receiver/AppUninstallReceiver;

    .line 28
    iput-object p2, p0, Ld/a/b/c/b/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 31
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a:Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    iget-object v1, p0, Ld/a/b/c/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Ljava/lang/String;)V

    .line 32
    return-void
.end method
