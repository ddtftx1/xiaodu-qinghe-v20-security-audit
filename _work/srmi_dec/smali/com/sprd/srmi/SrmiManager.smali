.class public Lcom/sprd/srmi/SrmiManager;
.super Landroid/app/Service;
.source "SrmiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/srmi/SrmiManager$SrmiCallback;,
        Lcom/sprd/srmi/SrmiManager$MyService;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final SRMI_SERVICE:Ljava/lang/String; = "srmi"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/srmi/ISrmiCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSrmiService:Lcom/sprd/srmi/SrmiManager$MyService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Srmi] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/sprd/srmi/SrmiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/srmi/SrmiManager;->TAG:Ljava/lang/String;

    .line 312
    const-string v0, "srmi_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/srmi/SrmiManager;->mSrmiService:Lcom/sprd/srmi/SrmiManager$MyService;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/srmi/SrmiManager;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/srmi/SrmiManager;Lcom/sprd/srmi/ISrmiCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Lcom/sprd/srmi/ISrmiCallback;

    .line 13
    invoke-direct {p0, p1}, Lcom/sprd/srmi/SrmiManager;->registerCallback(Lcom/sprd/srmi/ISrmiCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sprd/srmi/SrmiManager;Lcom/sprd/srmi/ISrmiCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Lcom/sprd/srmi/ISrmiCallback;

    .line 13
    invoke-direct {p0, p1}, Lcom/sprd/srmi/SrmiManager;->unregisterCallback(Lcom/sprd/srmi/ISrmiCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISSB)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S
    .param p4, "x4"    # S
    .param p5, "x5"    # B

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_put_u8(Ljava/lang/String;ISSB)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISSS)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S
    .param p4, "x4"    # S
    .param p5, "x5"    # S

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_put_u16(Ljava/lang/String;ISSS)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISSI)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S
    .param p4, "x4"    # S
    .param p5, "x5"    # I

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_put_u32(Ljava/lang/String;ISSI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISSLjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S
    .param p4, "x4"    # S
    .param p5, "x5"    # Ljava/lang/String;

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_put_str(Ljava/lang/String;ISSLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISSLjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S
    .param p4, "x4"    # S
    .param p5, "x5"    # Ljava/lang/String;

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_put_tlv(Ljava/lang/String;ISSLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISS)B
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S
    .param p4, "x4"    # S

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_get_u8(Ljava/lang/String;ISS)B

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISS)S
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S
    .param p4, "x4"    # S

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_get_u16(Ljava/lang/String;ISS)S

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISS)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S
    .param p4, "x4"    # S

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_get_u32(Ljava/lang/String;ISS)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISS)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S
    .param p4, "x4"    # S

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_get_str(Ljava/lang/String;ISS)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;ISS)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S
    .param p4, "x4"    # S

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_get_tlv(Ljava/lang/String;ISS)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/sprd/srmi/SrmiManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/sprd/srmi/SrmiManager;->native_srmj_create(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/sprd/srmi/SrmiManager;->native_srmj_destroy(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;IS)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_tx_create(Ljava/lang/String;IS)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;IS)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_tx_free(Ljava/lang/String;IS)V

    return-void
.end method

.method static synthetic access$700(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;IS)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_rx_free(Ljava/lang/String;IS)V

    return-void
.end method

.method static synthetic access$800(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;IS)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # S

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_send(Ljava/lang/String;IS)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sprd/srmi/SrmiManager;Ljava/lang/String;I)S
    .locals 1
    .param p0, "x0"    # Lcom/sprd/srmi/SrmiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/sprd/srmi/SrmiManager;->native_srmj_msg_recv(Ljava/lang/String;I)S

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    .line 55
    const-string v0, "srmi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/sprd/srmi/SrmiManager;->mSrmiService:Lcom/sprd/srmi/SrmiManager$MyService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 57
    sget-object v0, Lcom/sprd/srmi/SrmiManager;->TAG:Ljava/lang/String;

    const-string v1, "add [srmi service] successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Lcom/sprd/srmi/SrmiManager$SrmiCallback;

    invoke-direct {v0, p0}, Lcom/sprd/srmi/SrmiManager$SrmiCallback;-><init>(Lcom/sprd/srmi/SrmiManager;)V

    invoke-direct {p0, v0}, Lcom/sprd/srmi/SrmiManager;->native_register_srmj_msg_callback(Lcom/sprd/srmi/SrmiManager$SrmiCallback;)V

    .line 72
    :cond_0
    return-void
.end method

.method private native native_register_srmj_msg_callback(Lcom/sprd/srmi/SrmiManager$SrmiCallback;)V
.end method

.method private native native_srmj_create(Ljava/lang/String;I)I
.end method

.method private native native_srmj_destroy(Ljava/lang/String;I)V
.end method

.method private native native_srmj_msg_get_str(Ljava/lang/String;ISS)Ljava/lang/String;
.end method

.method private native native_srmj_msg_get_tlv(Ljava/lang/String;ISS)Ljava/lang/String;
.end method

.method private native native_srmj_msg_get_u16(Ljava/lang/String;ISS)S
.end method

.method private native native_srmj_msg_get_u32(Ljava/lang/String;ISS)I
.end method

.method private native native_srmj_msg_get_u8(Ljava/lang/String;ISS)B
.end method

.method private native native_srmj_msg_put_str(Ljava/lang/String;ISSLjava/lang/String;)I
.end method

.method private native native_srmj_msg_put_tlv(Ljava/lang/String;ISSLjava/lang/String;)I
.end method

.method private native native_srmj_msg_put_u16(Ljava/lang/String;ISSS)I
.end method

.method private native native_srmj_msg_put_u32(Ljava/lang/String;ISSI)I
.end method

.method private native native_srmj_msg_put_u8(Ljava/lang/String;ISSB)I
.end method

.method private native native_srmj_msg_recv(Ljava/lang/String;I)S
.end method

.method private native native_srmj_msg_rx_free(Ljava/lang/String;IS)V
.end method

.method private native native_srmj_msg_send(Ljava/lang/String;IS)I
.end method

.method private native native_srmj_msg_tx_create(Ljava/lang/String;IS)I
.end method

.method private native native_srmj_msg_tx_free(Ljava/lang/String;IS)V
.end method

.method private registerCallback(Lcom/sprd/srmi/ISrmiCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/sprd/srmi/ISrmiCallback;

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/sprd/srmi/SrmiManager;->TAG:Ljava/lang/String;

    const-string v1, "Success to register the srmi callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    return-void
.end method

.method private unregisterCallback(Lcom/sprd/srmi/ISrmiCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sprd/srmi/ISrmiCallback;

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 38
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager;->mSrmiService:Lcom/sprd/srmi/SrmiManager$MyService;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    new-instance v0, Lcom/sprd/srmi/SrmiManager$MyService;

    invoke-direct {v0, p0, p0}, Lcom/sprd/srmi/SrmiManager$MyService;-><init>(Lcom/sprd/srmi/SrmiManager;Lcom/sprd/srmi/SrmiManager;)V

    iput-object v0, p0, Lcom/sprd/srmi/SrmiManager;->mSrmiService:Lcom/sprd/srmi/SrmiManager$MyService;

    .line 33
    invoke-direct {p0}, Lcom/sprd/srmi/SrmiManager;->init()V

    .line 34
    return-void
.end method

.method public onSrmiCallback(Ljava/lang/String;II)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "srmiCommType"    # I
    .param p3, "msgId"    # I

    .line 42
    sget-object v0, Lcom/sprd/srmi/SrmiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received native srmi callback, name["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], commType["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], msgId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/sprd/srmi/SrmiManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/srmi/ISrmiCallback;

    .line 47
    .local v1, "callback":Lcom/sprd/srmi/ISrmiCallback;
    invoke-interface {v1, p1, p2, p3}, Lcom/sprd/srmi/ISrmiCallback;->onMsgReceived(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "callback":Lcom/sprd/srmi/ISrmiCallback;
    goto :goto_0

    .line 51
    :cond_0
    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sprd/srmi/SrmiManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify the srmi msg received."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
