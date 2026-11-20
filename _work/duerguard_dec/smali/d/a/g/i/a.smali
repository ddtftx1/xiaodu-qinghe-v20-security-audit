.class public final Ld/a/g/i/a;
.super Ljava/lang/Object;
.source "AlarmUtil.java"


# direct methods
.method public static a(Landroid/content/Context;IZ)V
    .locals 7

    .line 95
    :try_start_0
    const-string v0, "tvshield"

    const-string v1, "sofire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    const-string v0, "alarm"

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.action.SOFIRE.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    const-class v2, Lcom/baidu/sofire/MyService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v2, "com.baidu.category.SOFIRE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v2, "from_plugin_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v2, "target_class"

    const-class v3, Lcom/baidu/sofire/ac/U;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v2, "target_method"

    const-string v3, "handleWork"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v2, "from"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const/16 v2, 0x3e9

    const/high16 v4, 0x8000000

    .line 113
    invoke-static {p0, v2, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 116
    const-wide/32 v1, 0x927c0

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    .line 130
    goto :goto_0

    .line 127
    :cond_1
    nop

    .line 128
    goto :goto_0

    .line 124
    :cond_2
    const-wide/32 v1, 0x493e0

    .line 125
    goto :goto_0

    .line 121
    :cond_3
    const-wide/32 v1, 0x2bf20

    .line 122
    goto :goto_0

    .line 118
    :cond_4
    const-wide/16 v1, 0x7530

    .line 119
    nop

    .line 134
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    add-long/2addr v5, v1

    .line 140
    :try_start_1
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    goto :goto_1

    .line 141
    :catch_0
    move-exception p1

    .line 146
    :goto_1
    if-eqz p2, :cond_5

    .line 147
    return-void

    .line 150
    :cond_5
    :try_start_2
    invoke-virtual {v0, v4, v5, v6, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    return-void

    .line 151
    :catch_1
    move-exception p0

    .line 158
    return-void

    .line 156
    :catch_2
    move-exception p0

    .line 157
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 159
    return-void
.end method
