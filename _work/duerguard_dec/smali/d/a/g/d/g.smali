.class public final Ld/a/g/d/g;
.super Ljava/lang/Object;
.source "MethodImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/g/d/l;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 77
    iput-object p1, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    iput-object p2, p0, Ld/a/g/d/g;->b:Ljava/lang/String;

    iput-object p3, p0, Ld/a/g/d/g;->c:Ljava/lang/String;

    iput p4, p0, Ld/a/g/d/g;->d:I

    iput p5, p0, Ld/a/g/d/g;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 83
    iget-object v0, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/c;->j(Landroid/content/Context;)V

    .line 86
    :try_start_0
    iget-object v0, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/c;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.baidu.action.SOFIRE.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    const-class v4, Lcom/baidu/sofire/MyService;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    iget-object v3, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v3, "com.baidu.category.SOFIRE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string v4, "appkey"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Ld/a/g/d/g;->b:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-object v1, p0, Ld/a/g/d/g;->c:Ljava/lang/String;

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 98
    const-string v1, "key"

    iget v2, p0, Ld/a/g/d/g;->d:I

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v1, "delay"

    iget v2, p0, Ld/a/g/d/g;->e:I

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v1, "bundle"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    iget-object v0, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/k/d;->b(Landroid/content/Context;)V

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/t;->a(Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Ld/a/g/i/c;->a(Landroid/content/Context;Z)Z

    move-result v0

    .line 110
    if-nez v0, :cond_1

    .line 114
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/d/l;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 117
    iget-object v0, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    move-result-object v0

    .line 118
    iget-object v3, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-static {v3}, Ld/a/g/i/e;->a(Landroid/content/Context;)V

    .line 119
    iget-object v3, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-static {v3}, Ld/a/g/i/e;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 121
    iget-object v3, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-static {v3}, Ld/a/g/i/f;->a(Landroid/content/Context;)V

    .line 122
    iget-object v3, p0, Ld/a/g/d/g;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Ld/a/g/d/g;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 123
    iget-object v3, p0, Ld/a/g/d/g;->b:Ljava/lang/String;

    iget-object v4, p0, Ld/a/g/d/g;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1133
    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 1136
    :cond_2
    sget-object v5, Ld/a/g/i/c;->e:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Ld/a/g/i/c;->f:Ljava/lang/String;

    .line 1137
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1138
    goto :goto_1

    .line 1140
    :cond_3
    iget-object v5, v0, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    .line 1390
    iget-object v6, v5, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v7, "svi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1391
    iget-object v3, v5, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1143
    goto :goto_1

    .line 1134
    :cond_4
    :goto_0
    goto :goto_1

    .line 1141
    :catch_0
    move-exception v3

    .line 1142
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 127
    :cond_5
    :goto_1
    :try_start_3
    iget v3, p0, Ld/a/g/d/g;->e:I

    if-lez v3, :cond_6

    .line 128
    iget v3, p0, Ld/a/g/d/g;->e:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 132
    :cond_6
    goto :goto_2

    .line 130
    :catch_1
    move-exception v3

    .line 131
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 133
    :goto_2
    iget-object v3, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    .line 134
    invoke-static {v3}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v3

    .line 135
    iget v4, p0, Ld/a/g/d/g;->d:I

    if-lez v4, :cond_7

    .line 136
    new-array v4, v2, [I

    iget v5, p0, Ld/a/g/d/g;->d:I

    aput v5, v4, v1

    .line 137
    invoke-virtual {v3, v4}, Ld/a/g/h/a;->a([I)V

    goto :goto_3

    .line 138
    :cond_7
    invoke-static {}, Ld/a/g/d/l;->b()[I

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Ld/a/g/d/l;->b()[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_8

    .line 139
    invoke-static {}, Ld/a/g/d/l;->b()[I

    move-result-object v1

    invoke-virtual {v3, v1}, Ld/a/g/h/a;->a([I)V

    goto :goto_4

    .line 138
    :cond_8
    :goto_3
    nop

    .line 143
    :goto_4
    iget-object v1, p0, Ld/a/g/d/g;->a:Landroid/content/Context;

    invoke-static {v1}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 144
    invoke-static {}, Ld/a/g/d/l;->c()Z

    .line 145
    return-void

    .line 147
    :cond_9
    invoke-static {v2}, Ld/a/g/d/f;->a(I)V

    .line 148
    nop

    .line 2195
    invoke-virtual {v0}, Ld/a/g/d/f;->b()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 151
    return-void

    .line 149
    :catch_2
    move-exception v0

    .line 150
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 152
    return-void
.end method
