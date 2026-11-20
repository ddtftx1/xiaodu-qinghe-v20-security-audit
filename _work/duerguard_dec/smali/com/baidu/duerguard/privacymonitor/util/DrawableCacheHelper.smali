.class public final enum Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;
.super Ljava/lang/Enum;
.source "DrawableCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

.field public static final synthetic b:[Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;


# instance fields
.field public c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->a:Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    sget-object v2, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->a:Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->b:[Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 16
    const-class v0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    return-object v0
.end method

.method public static values()[Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;
    .locals 1

    .line 16
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->b:[Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    invoke-virtual {v0}, [Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "applicationCtx"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .line 24
    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 26
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 27
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 28
    iget-object v3, p0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public a()V
    .locals 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 44
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 45
    nop

    .line 46
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/util/DrawableCacheHelper;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
