.class public Lcom/baidu/duerguard/app/DuerGuardApp;
.super Landroid/app/Application;
.source "DuerGuardApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .line 23
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 28
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 29
    invoke-static {p0}, Ld/a/b/f/a;->a(Landroid/content/Context;)V

    .line 30
    sget-object v0, Lcom/baidu/duerguard/report/Reporter;->a:Lcom/baidu/duerguard/report/Reporter;

    invoke-virtual {v0, p0}, Lcom/baidu/duerguard/report/Reporter;->a(Landroid/content/Context;)V

    .line 31
    const-string v0, "com.baidu.duerguard.BuildConfig"

    invoke-static {v0}, Ld/a/a/i;->b(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "DuerGuardApp"

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "This duerguard app is full version."

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a:Lcom/baidu/duerguard/virusscan/VirusScanManager;

    invoke-virtual {v0}, Lcom/baidu/duerguard/virusscan/VirusScanManager;->a()V

    goto :goto_0

    .line 36
    :cond_0
    const-string v0, "This duerguard app is mini version."

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void
.end method
