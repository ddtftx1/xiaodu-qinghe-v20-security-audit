.class public Lcom/baidu/sofire/rp/receiver/Receiver;
.super Landroid/content/BroadcastReceiver;
.source "Receiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 24
    if-nez p2, :cond_0

    .line 25
    return-void

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    return-void

    .line 33
    :cond_1
    const-string v0, "com.b.r.p"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1058
    nop

    .line 1062
    invoke-static {p1}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p2

    .line 1063
    invoke-virtual {p2}, Ld/a/g/h/a;->u()I

    move-result v0

    .line 1067
    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;J)V

    .line 1068
    invoke-static {p1}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object p1

    invoke-virtual {p1}, Ld/a/g/i/d;->c()V

    .line 1069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ld/a/g/h/a;->b(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_2
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 55
    return-void
.end method
