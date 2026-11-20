.class public Lcom/sprd/srmi/SrmiApp;
.super Landroid/app/Application;
.source "SrmiApp.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Srmi] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/sprd/srmi/SrmiApp;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/srmi/SrmiApp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    sget-object v0, Lcom/sprd/srmi/SrmiApp;->TAG:Ljava/lang/String;

    const-string v1, "Srmi app boot successfully, VersionInfo: SRMI version: 2020-03-26 add TLV"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sprd/srmi/SrmiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sprd/srmi/SrmiManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sprd/srmi/SrmiApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 16
    return-void
.end method
