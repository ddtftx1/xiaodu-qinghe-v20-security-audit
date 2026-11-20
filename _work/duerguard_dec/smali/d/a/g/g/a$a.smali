.class public final Ld/a/g/g/a$a;
.super Landroid/os/Handler;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/g/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Ld/a/g/g/a;


# direct methods
.method public constructor <init>(Ld/a/g/g/a;Landroid/os/Looper;)V
    .locals 0

    .line 107
    iput-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    .line 108
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 117
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 238
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 239
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    .line 240
    invoke-static {v0}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 241
    iget-object v1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v1}, Ld/a/g/g/a;->e(Ld/a/g/g/a;)Ld/a/g/f/a;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-static {v2}, Ld/a/g/g/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 241
    invoke-virtual {v1, v0}, Ld/a/g/f/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 243
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v0}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v3}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 132
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {p1}, Ld/a/g/g/a;->c(Ld/a/g/g/a;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x2bf20

    cmp-long p1, v4, v6

    if-ltz p1, :cond_6

    .line 135
    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Ld/a/g/g/a;->a(Ld/a/g/g/a;J)J

    .line 136
    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {p1}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ld/a/g/i/c;->l(Landroid/content/Context;)I

    move-result p1

    .line 138
    if-ne v2, p1, :cond_2

    .line 142
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v0}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object v0

    invoke-virtual {v0}, Ld/a/g/c/a;->b()I

    move-result v0

    .line 143
    iget-object v2, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v2}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v2

    .line 2083
    iget-object v2, v2, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v4, "up_nu_co"

    const/16 v5, 0x32

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 144
    nop

    .line 145
    if-lt v0, v2, :cond_0

    .line 149
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v0, v3, p1}, Ld/a/g/g/a;->a(Ld/a/g/g/a;II)V

    .line 150
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    .line 153
    invoke-static {v0}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ld/a/g/c/a;->a(ZI)Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 162
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v0, v3, p1}, Ld/a/g/g/a;->a(Ld/a/g/g/a;II)V

    .line 164
    :cond_1
    return-void

    :cond_2
    if-ne v1, p1, :cond_6

    .line 169
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Ld/a/g/g/a;->a(Ld/a/g/g/a;II)V

    return-void

    .line 203
    :pswitch_3
    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {p1, v3, v2}, Ld/a/g/g/a;->a(Ld/a/g/g/a;II)V

    .line 204
    return-void

    .line 234
    :pswitch_4
    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    const/4 v0, 0x3

    iget-object v1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v1}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld/a/g/i/c;->l(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, v0, v1}, Ld/a/g/g/a;->a(Ld/a/g/g/a;II)V

    .line 235
    return-void

    .line 223
    :pswitch_5
    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {p1}, Ld/a/g/g/a;->b(Ld/a/g/g/a;)V

    .line 225
    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {p1}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ld/a/g/i/c;->l(Landroid/content/Context;)I

    move-result p1

    .line 226
    if-ne v2, p1, :cond_3

    .line 227
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v0, v3, p1}, Ld/a/g/g/a;->a(Ld/a/g/g/a;II)V

    return-void

    .line 229
    :cond_3
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v0, v1, p1}, Ld/a/g/g/a;->a(Ld/a/g/g/a;II)V

    .line 231
    return-void

    .line 215
    :pswitch_6
    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {p1}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ld/a/g/i/c;->l(Landroid/content/Context;)I

    move-result p1

    .line 216
    if-ne v2, p1, :cond_4

    .line 217
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v0, v3, p1}, Ld/a/g/g/a;->a(Ld/a/g/g/a;II)V

    return-void

    .line 219
    :cond_4
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v0, v1, p1}, Ld/a/g/g/a;->a(Ld/a/g/g/a;II)V

    .line 221
    return-void

    .line 120
    :pswitch_7
    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {p1}, Ld/a/g/g/a;->a(Ld/a/g/g/a;)V

    .line 126
    return-void

    .line 207
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    return-void

    .line 211
    :cond_5
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v0}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object v0

    invoke-static {p1}, Ld/a/g/i/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld/a/g/c/a;->a(Ljava/lang/String;)J

    .line 212
    return-void

    .line 196
    :pswitch_9
    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {p1}, Ld/a/g/g/a;->b(Ld/a/g/g/a;)V

    .line 198
    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {p1}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ld/a/g/i/c;->l(Landroid/content/Context;)I

    move-result p1

    .line 199
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v0, v3, p1}, Ld/a/g/g/a;->a(Ld/a/g/g/a;II)V

    .line 200
    return-void

    .line 183
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ld/a/g/e/a;

    .line 184
    iget-object v0, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {v0}, Ld/a/g/g/a;->d(Ld/a/g/g/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/a/g/c/a;->a(Ld/a/g/e/a;)J

    .line 188
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 189
    const/16 v0, 0xa

    iput v0, p1, Landroid/os/Message;->what:I

    .line 190
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void

    .line 128
    :pswitch_b
    iget-object p1, p0, Ld/a/g/g/a$a;->a:Ld/a/g/g/a;

    invoke-static {p1}, Ld/a/g/g/a;->b(Ld/a/g/g/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-void

    .line 251
    :cond_6
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception p1

    .line 250
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 252
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
