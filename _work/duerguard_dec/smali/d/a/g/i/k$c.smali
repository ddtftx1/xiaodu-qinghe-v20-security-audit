.class public final Ld/a/g/i/k$c;
.super Ljava/lang/Object;
.source "GdUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/g/i/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 320
    invoke-direct {p0}, Ld/a/g/i/k$c;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ld/a/g/i/k$c;
    .locals 3

    .line 326
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 327
    return-object v1

    .line 331
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 332
    const-string p0, "deviceid"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 333
    const-string v2, "imei"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 338
    :cond_1
    new-instance v2, Ld/a/g/i/k$c;

    invoke-direct {v2}, Ld/a/g/i/k$c;-><init>()V

    .line 339
    iput-object p0, v2, Ld/a/g/i/k$c;->a:Ljava/lang/String;

    .line 340
    iput-object v0, v2, Ld/a/g/i/k$c;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    return-object v2

    .line 335
    :cond_2
    :goto_0
    return-object v1

    .line 342
    :catch_0
    move-exception p0

    .line 343
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 345
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 350
    :try_start_0
    iget-object v0, p0, Ld/a/g/i/k$c;->b:Ljava/lang/String;

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const-string v0, "0"

    .line 354
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ld/a/g/i/k$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    return-object v0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 361
    const/4 v0, 0x0

    return-object v0
.end method
