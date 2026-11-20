.class public final Ld/a/g/e;
.super Lcom/baidu/sofire/ac/Callback;
.source "AwakeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/g/f;->a(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/baidu/sofire/ac/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/baidu/sofire/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
