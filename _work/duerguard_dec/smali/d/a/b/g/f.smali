.class public Ld/a/b/g/f;
.super Ld/b/a/c/a;
.source "VirusScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/duerguard/virusscan/VirusScanManager;->a([Ljava/lang/Object;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/b/a/c/a<",
        "Ljava/util/List<",
        "Lcom/baidu/model/virus/AvpScanResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/virusscan/VirusScanManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/duerguard/virusscan/VirusScanManager;

    .line 367
    invoke-direct {p0}, Ld/b/a/c/a;-><init>()V

    return-void
.end method
