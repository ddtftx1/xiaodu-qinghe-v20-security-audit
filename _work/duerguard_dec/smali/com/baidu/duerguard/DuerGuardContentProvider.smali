.class public Lcom/baidu/duerguard/DuerGuardContentProvider;
.super Landroid/content/ContentProvider;
.source "DuerGuardContentProvider.java"


# static fields
.field public static a:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Ld/a/b/b;

    invoke-direct {v0}, Ld/a/b/b;-><init>()V

    sput-object v0, Lcom/baidu/duerguard/DuerGuardContentProvider;->a:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 55
    const/4 v0, -0x1

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 60
    const-string v0, "DuerGuardContentProvider"

    const-string v1, "getType"

    invoke-static {v0, v1}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .line 49
    const-string v0, "DuerGuardContentProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Ld/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query selection : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuerGuardContentProvider"

    invoke-static {v1, v0}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "scanDeviceCrack"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "scanApkFile"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "activateContentProviderProcess"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "scanApkFileRisk"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_2

    .line 40
    :cond_1
    sget-object v0, Lcom/baidu/duerguard/DuerGuardContentProvider;->a:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/baidu/duerguard/BinderFetcher$BinderCursor;->a(Landroid/os/IBinder;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 34
    :cond_2
    const-string v0, "com.baidu.duerguard.BuildConfig"

    invoke-static {v0}, Ld/a/a/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    sget-object v0, Lcom/baidu/duerguard/DuerGuardContentProvider;->a:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/baidu/duerguard/BinderFetcher$BinderCursor;->a(Landroid/os/IBinder;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 37
    :cond_3
    return-object v5

    .line 30
    :cond_4
    const-string v0, "duerguard process is activated."

    invoke-static {v1, v0}, Ld/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    nop

    .line 44
    :goto_2
    return-object v5

    :sswitch_data_0
    .sparse-switch
        -0x1ce06616 -> :sswitch_3
        0x444e2a58 -> :sswitch_2
        0x5f6b707b -> :sswitch_1
        0x6a37ba47 -> :sswitch_0
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    return v0
.end method
