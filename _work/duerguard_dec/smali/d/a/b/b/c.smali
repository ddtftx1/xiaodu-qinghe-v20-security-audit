.class public Ld/a/b/b/c;
.super Ljava/lang/Object;
.source "DeviceCrackScanManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/duerguard/devicecrack/DeviceCrackScanManager;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    const-string v0, "DeviceCrackManager"

    const-string v1, "start kill duerguard process."

    invoke-static {v0, v1}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 98
    return-void
.end method
