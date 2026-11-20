.class public final enum Lcom/baidu/libduerprivacy/PrivacyManager;
.super Ljava/lang/Enum;
.source "PrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/libduerprivacy/PrivacyManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/baidu/libduerprivacy/PrivacyManager;

.field public static final enum INSTANCE:Lcom/baidu/libduerprivacy/PrivacyManager;

.field public static final OP_TYPE_STR:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "PrivacyManager"

.field public static final TARGET_OPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appOpsCallback:Lcom/baidu/libduerprivacy/IAppOpsCallback;

.field public applicationCtx:Landroid/content/Context;

.field public iAppOpsStateCallback:Landroid/os/baidu/IAppOpsStateCallback;

.field public opsManager:Landroid/app/AppOpsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/baidu/libduerprivacy/PrivacyManager;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/libduerprivacy/PrivacyManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/libduerprivacy/PrivacyManager;->INSTANCE:Lcom/baidu/libduerprivacy/PrivacyManager;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/libduerprivacy/PrivacyManager;

    sget-object v2, Lcom/baidu/libduerprivacy/PrivacyManager;->INSTANCE:Lcom/baidu/libduerprivacy/PrivacyManager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/libduerprivacy/PrivacyManager;->$VALUES:[Lcom/baidu/libduerprivacy/PrivacyManager;

    .line 27
    const-string v0, "note"

    const-string v1, "start"

    const-string v2, "finish"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/libduerprivacy/PrivacyManager;->OP_TYPE_STR:[Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/baidu/libduerprivacy/PrivacyManager$1;

    invoke-direct {v0}, Lcom/baidu/libduerprivacy/PrivacyManager$1;-><init>()V

    sput-object v0, Lcom/baidu/libduerprivacy/PrivacyManager;->TARGET_OPS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    new-instance p1, Lcom/baidu/libduerprivacy/AppOpsStateCallback;

    invoke-direct {p1, p0}, Lcom/baidu/libduerprivacy/AppOpsStateCallback;-><init>(Lcom/baidu/libduerprivacy/PrivacyManager;)V

    iput-object p1, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->iAppOpsStateCallback:Landroid/os/baidu/IAppOpsStateCallback;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/libduerprivacy/PrivacyManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/baidu/libduerprivacy/PrivacyManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/libduerprivacy/PrivacyManager;

    return-object v0
.end method

.method public static values()[Lcom/baidu/libduerprivacy/PrivacyManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/baidu/libduerprivacy/PrivacyManager;->$VALUES:[Lcom/baidu/libduerprivacy/PrivacyManager;

    invoke-virtual {v0}, [Lcom/baidu/libduerprivacy/PrivacyManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/libduerprivacy/PrivacyManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/baidu/libduerprivacy/IAppOpsCallback;)V
    .locals 4
    .param p1, "applicationCtx"    # Landroid/content/Context;
    .param p2, "appOpsCallback"    # Lcom/baidu/libduerprivacy/IAppOpsCallback;

    .line 50
    iget-object v0, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->opsManager:Landroid/app/AppOpsManager;

    const-string v1, "PrivacyManager"

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "PrivacyManager has been inited!"

    invoke-static {v1, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void

    .line 55
    :cond_0
    iput-object p2, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->appOpsCallback:Lcom/baidu/libduerprivacy/IAppOpsCallback;

    .line 56
    iput-object p1, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->applicationCtx:Landroid/content/Context;

    .line 58
    :try_start_0
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->opsManager:Landroid/app/AppOpsManager;

    .line 59
    iget-object v0, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->opsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->iAppOpsStateCallback:Landroid/os/baidu/IAppOpsStateCallback;

    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager;->registerOpsStateCallback(Landroid/os/baidu/IAppOpsStateCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "register ops state callback succeed!"

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "register ops state callback failed!"

    invoke-static {v1, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivacyManager init failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public uninit()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->opsManager:Landroid/app/AppOpsManager;

    const-string v1, "PrivacyManager"

    if-nez v0, :cond_0

    .line 72
    const-string v0, "PrivacyManager is not init!"

    invoke-static {v1, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->iAppOpsStateCallback:Landroid/os/baidu/IAppOpsStateCallback;

    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager;->unRegisterOpsStateCallback(Landroid/os/baidu/IAppOpsStateCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "unregister ops state callback succeed!"

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    const-string v0, "unregister ops state callback failed!"

    invoke-static {v1, v0}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivacyManager uninit failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->opsManager:Landroid/app/AppOpsManager;

    .line 87
    iput-object v0, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->appOpsCallback:Lcom/baidu/libduerprivacy/IAppOpsCallback;

    .line 88
    iput-object v0, p0, Lcom/baidu/libduerprivacy/PrivacyManager;->applicationCtx:Landroid/content/Context;

    .line 89
    return-void
.end method
