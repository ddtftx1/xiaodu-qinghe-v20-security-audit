.class public Ld/a/b/g/b;
.super Landroid/os/FileObserver;
.source "VirusScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/duerguard/virusscan/VirusScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/virusscan/VirusScanManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/duerguard/virusscan/VirusScanManager;
    .param p2, "x0"    # Ljava/lang/String;

    .line 164
    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 167
    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    const/16 v0, 0x800

    if-ne p1, v0, :cond_1

    .line 173
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 175
    :cond_1
    return-void
.end method
