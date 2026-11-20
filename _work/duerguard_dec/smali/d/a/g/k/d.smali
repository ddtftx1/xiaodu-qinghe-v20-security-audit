.class public Ld/a/g/k/d;
.super Ljava/lang/Object;
.source "SubProcessManager.java"


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ld/a/g/k/b;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ld/a/g/k/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ld/a/g/k/d;->b:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ld/a/g/k/d;->c:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ld/a/g/k/d;->d:Ljava/util/List;

    .line 94
    new-instance v0, Ld/a/g/k/c;

    invoke-direct {v0}, Ld/a/g/k/c;-><init>()V

    sput-object v0, Ld/a/g/k/d;->e:Ld/a/g/k/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;Z)I
    .locals 5

    .line 228
    const/16 v0, -0xc8

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const/16 p0, -0xc9

    return p0

    .line 231
    :cond_0
    sget-object v1, Ld/a/g/k/d;->b:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 232
    return v0

    .line 234
    :cond_1
    sget-object v1, Ld/a/g/k/d;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/a/g/k/b;

    .line 235
    if-nez v1, :cond_2

    .line 236
    const/16 p0, -0xca

    return p0

    .line 238
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 240
    const-string v3, "bundle_key_ctrl_action"

    if-eqz p2, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string v3, "bundle_key_plugin_package_name"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-interface {v1, v2}, Ld/a/g/k/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 244
    const-string v2, "bundle_key_error_code"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 246
    if-nez v1, :cond_6

    sget-object v2, Ld/a/g/k/d;->c:Ljava/util/Map;

    if-eqz v2, :cond_6

    .line 247
    sget-object v2, Ld/a/g/k/d;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 248
    if-nez v2, :cond_4

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    sget-object v3, Ld/a/g/k/d;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 253
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_5
    if-nez p2, :cond_6

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 255
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_6
    :goto_1
    return v1

    .line 262
    :catch_0
    move-exception p0

    .line 263
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 265
    return v0

    .line 259
    :catch_1
    move-exception p0

    .line 260
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 261
    const/16 p0, -0xcb

    return p0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 0

    .line 178
    invoke-static {p0}, Ld/a/g/i/c;->a(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static a(I)Landroid/os/Bundle;
    .locals 2

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    const-string v1, "bundle_key_error_code"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    return-object v0
.end method

.method public static a(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 298
    const/16 v0, -0xc8

    if-nez p1, :cond_0

    .line 299
    const/16 p0, -0xc9

    :try_start_0
    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 301
    :cond_0
    sget-object v1, Ld/a/g/k/d;->b:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 302
    invoke-static {v0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 304
    :cond_1
    sget-object v1, Ld/a/g/k/d;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld/a/g/k/b;

    .line 305
    if-nez p0, :cond_2

    .line 306
    const/16 p0, -0xca

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 308
    :cond_2
    invoke-interface {p0, p1}, Ld/a/g/k/b;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 312
    :catch_0
    move-exception p0

    .line 313
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 316
    :try_start_1
    invoke-static {v0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 317
    :catch_1
    move-exception p0

    .line 318
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 320
    const/4 p0, 0x0

    return-object p0

    .line 309
    :catch_2
    move-exception p0

    .line 310
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 311
    const/16 p0, -0xcb

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 391
    const/16 v0, -0xc8

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const/16 p0, -0xc9

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 394
    :cond_0
    sget-object v1, Ld/a/g/k/d;->b:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 395
    invoke-static {v0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 397
    :cond_1
    sget-object v1, Ld/a/g/k/d;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld/a/g/k/b;

    .line 398
    if-nez p0, :cond_2

    .line 399
    const/16 p0, -0xca

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 401
    :cond_2
    invoke-interface {p0, p1}, Ld/a/g/k/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 405
    :catch_0
    move-exception p0

    .line 406
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 408
    invoke-static {v0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 402
    :catch_1
    move-exception p0

    .line 403
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 404
    const/16 p0, -0xcb

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 471
    :try_start_0
    sget-object v0, Ld/a/g/k/d;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 472
    const/16 p0, -0xcc

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 474
    :cond_0
    if-nez p0, :cond_1

    .line 475
    const/16 p0, -0xc9

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 477
    :cond_1
    sget-object v0, Ld/a/g/k/d;->a:Landroid/content/Context;

    const-string v1, "sub_process_call_main_plugin"

    invoke-static {v0, v1, p0}, Ld/a/g/i/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 479
    :catch_0
    move-exception p0

    .line 480
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 482
    const/16 p0, -0xc8

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "register_sub_process"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p1}, Ld/a/g/k/d;->e(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "call_main_plugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 192
    invoke-static {p1}, Ld/a/g/k/d;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 194
    :cond_1
    const/16 p0, -0x12c

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    return-object v0

    .line 277
    :cond_0
    sget-object v1, Ld/a/g/k/d;->b:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 278
    return-object v0

    .line 280
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 281
    sget-object v2, Ld/a/g/k/d;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 282
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, p0, v5}, Ld/a/g/k/d;->a(ILjava/lang/String;Z)I

    move-result v4

    .line 283
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_0

    .line 285
    :cond_2
    return-object v1

    .line 286
    :catch_0
    move-exception p0

    .line 287
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 289
    return-object v0
.end method

.method public static a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ld/a/g/k/d;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 211
    return-object v0

    .line 213
    :cond_0
    sget-object v1, Ld/a/g/k/d;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 217
    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .line 370
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    return-void

    .line 373
    :cond_0
    sget-object v0, Ld/a/g/k/d;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 374
    if-eqz p1, :cond_1

    .line 375
    sget-object p1, Ld/a/g/k/d;->d:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 377
    :cond_1
    sget-object p1, Ld/a/g/k/d;->d:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_2
    return-void

    .line 380
    :catch_0
    move-exception p0

    .line 381
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 383
    return-void
.end method

.method public static synthetic b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 24
    invoke-static {p0}, Ld/a/g/k/d;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 444
    if-nez p0, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    :try_start_0
    const-string v0, "ampf"

    .line 448
    invoke-static {p0, v0}, Ld/a/g/i/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    return-void

    .line 451
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ld/a/g/k/d;->a:Landroid/content/Context;

    .line 452
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 454
    const-string v2, "bundle_key_pid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    new-instance v1, Lcom/baidu/sofire/mutiprocess/BinderHolder;

    sget-object v2, Ld/a/g/k/d;->e:Ld/a/g/k/b;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/sofire/mutiprocess/BinderHolder;-><init>(Landroid/os/IBinder;)V

    .line 456
    const-string v2, "bundle_key_binder_holder"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 457
    const-string v1, "sub_process_register_sub_process"

    invoke-static {p0, v1, v0}, Ld/a/g/i/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    return-void

    .line 459
    :catch_0
    move-exception p0

    .line 460
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 462
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .line 417
    :try_start_0
    sget-object v0, Ld/a/g/k/d;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 418
    return-void

    .line 420
    :cond_0
    sget-object v0, Ld/a/g/k/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 421
    if-nez v0, :cond_1

    .line 422
    return-void

    .line 424
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 425
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 426
    if-eqz v2, :cond_2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 427
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 428
    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Ld/a/g/k/d;->a(ILjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_2
    goto :goto_0

    .line 433
    :cond_3
    return-void

    .line 431
    :catch_0
    move-exception p0

    .line 432
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 434
    return-void
.end method

.method public static synthetic c(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 24
    invoke-static {p0}, Ld/a/g/k/d;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 24
    invoke-static {p0}, Ld/a/g/k/d;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 126
    :try_start_0
    const-string v0, "bundle_key_method_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "bundle_key_plugin_package_name"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v2

    .line 135
    if-nez v2, :cond_1

    .line 136
    const/16 p0, -0x66

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 138
    :cond_1
    invoke-virtual {v2, v1}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v1

    .line 139
    invoke-static {}, Ld/a/g/d/f;->a()Ld/a/g/d/f;

    move-result-object v2

    .line 140
    if-nez v2, :cond_2

    .line 141
    const/16 p0, -0x69

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 143
    :cond_2
    iget v1, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v1, v0, v4, v3}, Ld/a/g/d/f;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 148
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    .line 149
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 150
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    .line 151
    const-string v0, "bundle_key_error_code"

    invoke-virtual {p0, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    return-object p0

    .line 154
    :cond_3
    const/16 p0, -0x67

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 157
    :cond_4
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 132
    :cond_5
    :goto_0
    const/16 p0, -0x65

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 159
    :catch_0
    move-exception p0

    .line 160
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 163
    const/16 p0, -0x64

    :try_start_1
    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 164
    :catch_1
    move-exception p0

    .line 165
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 167
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 513
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const/16 p0, -0x65

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 516
    :cond_0
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v0

    .line 517
    if-nez v0, :cond_1

    .line 518
    const/16 p0, -0x66

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 520
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 521
    invoke-virtual {v0, p0}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    const-string v0, "status"

    const/4 v2, 0x0

    const-string v3, "bundle_key_error_code"

    if-nez p0, :cond_2

    .line 523
    :try_start_1
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 524
    const/4 p0, -0x1

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    return-object v1

    .line 527
    :cond_2
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 528
    const/4 p0, 0x1

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 529
    return-object v1

    .line 531
    :catch_0
    move-exception p0

    .line 532
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 534
    const/16 p0, -0x64

    :try_start_2
    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    .line 535
    :catch_1
    move-exception p0

    .line 536
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 539
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 326
    :try_start_0
    const-class v0, Ld/a/g/k/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 327
    const-string v0, "bundle_key_pid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 331
    const-string v1, "bundle_key_binder_holder"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/baidu/sofire/mutiprocess/BinderHolder;

    .line 332
    if-lez v0, :cond_6

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/baidu/sofire/mutiprocess/BinderHolder;->a:Landroid/os/IBinder;

    if-nez p0, :cond_0

    goto :goto_2

    .line 335
    :cond_0
    nop

    .line 336
    invoke-static {p0}, Ld/a/g/k/b$a;->a(Landroid/os/IBinder;)Ld/a/g/k/b;

    move-result-object p0

    .line 337
    sget-object v1, Ld/a/g/k/d;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object p0, Ld/a/g/k/d;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x0

    if-gtz p0, :cond_1

    .line 339
    invoke-static {v1}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 341
    :cond_1
    invoke-static {}, Ld/a/g/d/f;->a()Ld/a/g/d/f;

    move-result-object p0

    .line 342
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v2

    .line 345
    if-eqz p0, :cond_5

    if-nez v2, :cond_2

    goto :goto_1

    .line 348
    :cond_2
    sget-object v3, Ld/a/g/k/d;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 349
    invoke-virtual {v2, v4}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v4

    .line 350
    if-nez v4, :cond_3

    .line 351
    invoke-static {v1}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 354
    :cond_3
    iget v4, v4, Lcom/baidu/sofire/core/ApkInfo;->key:I

    const-string v5, "notifyNewSubProcess"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    new-array v6, v6, [Ljava/lang/Object;

    .line 355
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    .line 354
    invoke-virtual {p0, v4, v5, v7, v6}, Ld/a/g/d/f;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    .line 356
    goto :goto_0

    .line 357
    :cond_4
    invoke-static {v1}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 346
    :cond_5
    :goto_1
    invoke-static {v1}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 333
    :cond_6
    :goto_2
    const/16 p0, -0x65

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 358
    :catch_0
    move-exception p0

    .line 359
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 361
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 488
    :try_start_0
    const-string v0, "bundle_key_ctrl_action"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 492
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 498
    const/16 p0, -0x6a

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 496
    :cond_0
    invoke-static {p0}, Ld/a/g/k/d;->h(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 494
    :cond_1
    invoke-static {p0}, Ld/a/g/k/d;->g(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 500
    :catch_0
    move-exception p0

    .line 501
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 503
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 548
    :try_start_0
    sget-object v0, Ld/a/g/k/d;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 549
    const/16 p0, -0x68

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 551
    :cond_0
    const-string v0, "bundle_key_plugin_package_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 552
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    const/16 p0, -0x65

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 558
    :cond_1
    sget-object v0, Ld/a/g/k/d;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    move-result-object v0

    .line 559
    if-nez v0, :cond_2

    .line 560
    const/16 p0, -0x69

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 562
    :cond_2
    invoke-virtual {v0, p0}, Ld/a/g/d/f;->b(Ljava/lang/String;)Z

    move-result p0

    .line 563
    if-eqz p0, :cond_3

    .line 564
    const/4 p0, 0x0

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 566
    :cond_3
    const/16 p0, -0x64

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 568
    :catch_0
    move-exception p0

    .line 569
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 571
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 580
    :try_start_0
    sget-object v0, Ld/a/g/k/d;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 581
    const/16 p0, -0x68

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 583
    :cond_0
    const-string v0, "bundle_key_plugin_package_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 587
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    const/16 p0, -0x65

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 590
    :cond_1
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v0

    .line 591
    if-nez v0, :cond_2

    .line 592
    const/16 p0, -0x66

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 595
    :cond_2
    invoke-virtual {v0, p0}, Ld/a/g/d/n;->e(Ljava/lang/String;)Z

    move-result p0

    .line 596
    if-eqz p0, :cond_3

    .line 598
    const/4 p0, 0x0

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 601
    :cond_3
    const/16 p0, -0x64

    invoke-static {p0}, Ld/a/g/k/d;->a(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 603
    :catch_0
    move-exception p0

    .line 604
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 606
    const/4 p0, 0x0

    return-object p0
.end method
