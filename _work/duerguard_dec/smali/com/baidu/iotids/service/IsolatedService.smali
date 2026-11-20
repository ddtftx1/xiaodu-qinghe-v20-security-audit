.class public Lcom/baidu/iotids/service/IsolatedService;
.super Landroid/app/Service;
.source ""


# static fields
.field public static final for:Ljava/lang/String; = "IsolatedService"


# instance fields
.field public final if:Lcom/baidu/iotids/core/goto;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ld/a/c/c/a;

    invoke-direct {v0, p0}, Ld/a/c/c/a;-><init>(Lcom/baidu/iotids/service/IsolatedService;)V

    iput-object v0, p0, Lcom/baidu/iotids/service/IsolatedService;->if:Lcom/baidu/iotids/core/goto;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/baidu/iotids/service/IsolatedService;->if:Lcom/baidu/iotids/core/goto;

    return-object p1
.end method
