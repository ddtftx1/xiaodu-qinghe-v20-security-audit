.class public final Ld/a/g/d/n;
.super Ljava/lang/Object;
.source "PluginloaderHub.java"


# static fields
.field public static a:Ld/a/g/d/n;

.field public static b:Landroid/app/Application;

.field public static c:Ljava/util/Random;

.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/baidu/sofire/core/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/baidu/sofire/core/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/baidu/sofire/MyReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    sput-object v0, Ld/a/g/d/n;->a:Ld/a/g/d/n;

    .line 66
    sput-object v0, Ld/a/g/d/n;->b:Landroid/app/Application;

    .line 68
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ld/a/g/d/n;->c:Ljava/util/Random;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ld/a/g/d/n;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ld/a/g/d/n;->g:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld/a/g/d/n;->i:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 10

    .line 568
    const-string v0, "t"

    const-string v1, "n"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    invoke-static {}, Ld/a/g/i/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "p/1/pdl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 570
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 571
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 572
    const-string v6, "pk"

    invoke-virtual {v5, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    const-string p0, "m"

    invoke-virtual {v5, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 575
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    .line 579
    sget-object p1, Ld/a/g/d/n;->b:Landroid/app/Application;

    .line 580
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1, v3, p0, v5, v4}, Ld/a/g/i/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 585
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-gtz p0, :cond_0

    .line 587
    return-object v2

    .line 589
    :cond_0
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 590
    new-instance p1, Landroid/content/pm/PackageInfo;

    invoke-direct {p1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 591
    const-string v3, "p"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 592
    const-string v3, "v"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 593
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 594
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 595
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "."

    if-nez v4, :cond_1

    :try_start_1
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 598
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 599
    iput-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 600
    const-string v3, "a"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 601
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 602
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 603
    nop

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-ge v5, v4, :cond_4

    .line 605
    :try_start_2
    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 606
    if-eqz v4, :cond_3

    .line 607
    new-instance v7, Landroid/content/pm/ActivityInfo;

    invoke-direct {v7}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 608
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 609
    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 610
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 611
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 613
    :cond_2
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 614
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/content/pm/ActivityInfo;->theme:I

    .line 615
    const-string v8, "l"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v7, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 616
    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 617
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 622
    :cond_3
    goto :goto_1

    .line 620
    :catch_0
    move-exception v4

    .line 621
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 603
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 624
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5

    .line 625
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/pm/ActivityInfo;

    .line 626
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/ActivityInfo;

    iput-object p0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 629
    :cond_5
    return-object p1

    .line 630
    :catch_1
    move-exception p0

    .line 631
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 632
    return-object v2
.end method

.method public static a()Ld/a/g/d/n;
    .locals 1

    .line 79
    sget-object v0, Ld/a/g/d/n;->a:Ld/a/g/d/n;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ld/a/g/d/n;
    .locals 2

    const-class v0, Ld/a/g/d/n;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Ld/a/g/d/n;->a:Ld/a/g/d/n;

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sput-object p0, Ld/a/g/d/n;->b:Landroid/app/Application;

    .line 73
    new-instance p0, Ld/a/g/d/n;

    invoke-direct {p0}, Ld/a/g/d/n;-><init>()V

    sput-object p0, Ld/a/g/d/n;->a:Ld/a/g/d/n;

    .line 75
    :cond_0
    sget-object p0, Ld/a/g/d/n;->a:Ld/a/g/d/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 70
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1111
    invoke-static {p0}, Ld/a/g/i/c;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 1112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    return-object p0

    .line 1117
    :cond_0
    invoke-static {}, Ld/a/g/i/c;->e()Z

    move-result p0

    .line 1118
    if-eqz p0, :cond_1

    .line 1119
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    goto :goto_0

    .line 1121
    :cond_1
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 1123
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 1124
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 1125
    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1126
    return-object v4

    .line 1124
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1130
    :cond_3
    if-nez p0, :cond_4

    const-string p0, "armeabi"

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1132
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    aget-object p1, p1, v1

    .line 1133
    const-string v0, "mips"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1134
    return-object p0

    .line 1137
    :cond_4
    nop

    .line 1149
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/IntentFilter;)Ljava/lang/String;
    .locals 9

    .line 147
    const-string v0, ""

    if-nez p0, :cond_0

    .line 148
    return-object v0

    .line 150
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 152
    const/4 v3, 0x0

    const-string v4, "_"

    if-lez v2, :cond_5

    .line 153
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 154
    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_2

    .line 156
    :try_start_2
    invoke-virtual {p0, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 158
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    :cond_1
    goto :goto_1

    .line 160
    :catch_0
    move-exception v7

    .line 161
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 154
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 164
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 165
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 166
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 167
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    goto :goto_2

    :cond_3
    goto :goto_3

    .line 170
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    goto :goto_3

    .line 173
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :goto_3
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    .line 176
    if-lez v2, :cond_a

    .line 177
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 178
    move v6, v3

    :goto_4
    if-ge v6, v2, :cond_7

    .line 180
    :try_start_4
    invoke-virtual {p0, v6}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v7

    .line 181
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 182
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 186
    :cond_6
    goto :goto_5

    .line 184
    :catch_1
    move-exception v7

    .line 185
    :try_start_5
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 178
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 188
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 189
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 190
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 191
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    goto :goto_6

    :cond_8
    goto :goto_7

    .line 194
    :cond_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    goto :goto_7

    .line 197
    :cond_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :goto_7
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v5

    .line 200
    if-lez v5, :cond_f

    .line 201
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 202
    move v6, v3

    :goto_8
    if-ge v6, v2, :cond_c

    .line 204
    :try_start_6
    invoke-virtual {p0, v6}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 206
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 210
    :cond_b
    goto :goto_9

    .line 208
    :catch_2
    move-exception v7

    .line 209
    :try_start_7
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 202
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 212
    :cond_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 213
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 214
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 215
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    goto :goto_a

    :cond_d
    goto :goto_b

    .line 218
    :cond_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    goto :goto_b

    .line 221
    :cond_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :goto_b
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    .line 224
    if-lez v2, :cond_14

    .line 225
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 226
    nop

    :goto_c
    if-ge v3, v2, :cond_11

    .line 228
    :try_start_8
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 230
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 234
    :cond_10
    goto :goto_d

    .line 232
    :catch_3
    move-exception v6

    .line 233
    :try_start_9
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 226
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 236
    :cond_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_13

    .line 237
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 238
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    goto :goto_e

    :cond_12
    goto :goto_f

    .line 242
    :cond_13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    goto :goto_f

    .line 245
    :cond_14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 248
    return-object p0

    .line 249
    :catch_4
    move-exception p0

    .line 250
    return-object v0
.end method

.method public static a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1192
    move-object v1, p0

    const-string v2, ".dex"

    const-string v3, ".so"

    const-string v4, ""

    if-nez v1, :cond_0

    .line 1193
    return-object v4

    .line 1195
    :cond_0
    nop

    .line 1196
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v7, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v4

    .line 1201
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x3

    const-string v9, "lib/"

    const-string v10, ".."

    const/4 v11, 0x1

    const-string v12, "/"

    if-eqz v0, :cond_8

    .line 1202
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1203
    invoke-virtual {v13, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v10, :cond_1

    .line 1204
    nop

    .line 1255
    :try_start_2
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1258
    goto :goto_1

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1204
    :goto_1
    return-object v4

    .line 1206
    :cond_1
    :try_start_3
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz p3, :cond_4

    .line 1207
    invoke-virtual {v13, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1208
    array-length v10, v9

    if-eq v10, v8, :cond_2

    .line 1209
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 1210
    goto :goto_0

    .line 1212
    :cond_2
    aget-object v8, v9, v11

    .line 1213
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1214
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 1215
    goto :goto_0

    .line 1217
    :cond_3
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1218
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1221
    :cond_4
    const/4 v8, 0x0

    .line 1223
    :try_start_4
    invoke-virtual {v13, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p3, :cond_6

    .line 1224
    iget-object v0, v1, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    .line 1225
    invoke-static {v0}, Ld/a/g/d/n;->f(Ljava/lang/String;)Z

    .line 1226
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1230
    :try_start_5
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1231
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 1232
    invoke-static {v9, v6}, Ld/a/g/d/n;->a(Ljava/io/File;Ljava/util/zip/ZipInputStream;)Z

    move-result v0

    .line 1233
    if-eqz v0, :cond_5

    .line 1234
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_4

    .line 1236
    :cond_5
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1237
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1241
    :catch_1
    move-exception v0

    move-object v8, v9

    goto :goto_3

    .line 1248
    :cond_6
    :goto_2
    goto :goto_4

    .line 1241
    :catch_2
    move-exception v0

    .line 1245
    :goto_3
    if-eqz v8, :cond_7

    :try_start_6
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1246
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1249
    :cond_7
    :goto_4
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1250
    goto/16 :goto_0

    .line 1255
    :cond_8
    :try_start_7
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 1258
    :goto_5
    goto :goto_6

    .line 1256
    :catch_3
    move-exception v0

    .line 1257
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_5

    .line 1261
    :goto_6
    if-eqz p3, :cond_10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 1262
    iget-object v0, v1, Lcom/baidu/sofire/core/ApkInfo;->hostContext:Landroid/content/Context;

    invoke-static {v0, v5}, Ld/a/g/d/n;->a(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 1263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1264
    new-instance v2, Ljava/io/File;

    move-object v5, p1

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ld/a/g/d/n;->f(Ljava/lang/String;)Z

    .line 1266
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1269
    :goto_7
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1270
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1271
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_9

    .line 1272
    nop

    .line 1305
    :try_start_9
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 1308
    goto :goto_8

    .line 1306
    :catch_4
    move-exception v0

    .line 1307
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1272
    :goto_8
    return-object v4

    .line 1274
    :cond_9
    :try_start_a
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1275
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1276
    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1277
    array-length v7, v1

    if-eq v7, v8, :cond_a

    .line 1278
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 1279
    goto :goto_7

    .line 1281
    :cond_a
    aget-object v1, v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1282
    invoke-virtual {v6, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v11

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1284
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1290
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 1291
    invoke-static {v6, v5}, Ld/a/g/d/n;->a(Ljava/io/File;Ljava/util/zip/ZipInputStream;)Z

    move-result v1

    .line 1292
    if-eqz v1, :cond_b

    goto :goto_9

    .line 1294
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream UnZip so failed.Report space left."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_c
    move-object/from16 v7, p2

    goto :goto_9

    .line 1275
    :cond_d
    move-object/from16 v7, p2

    goto :goto_9

    .line 1274
    :cond_e
    move-object/from16 v7, p2

    .line 1299
    :goto_9
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 1300
    goto/16 :goto_7

    .line 1301
    :cond_f
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1305
    :try_start_b
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    .line 1308
    :goto_a
    goto :goto_c

    .line 1306
    :catch_5
    move-exception v0

    .line 1307
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_a

    .line 1303
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 1305
    :try_start_c
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    .line 1308
    goto :goto_b

    .line 1306
    :catch_6
    move-exception v0

    .line 1307
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1308
    :goto_b
    throw v1

    .line 1314
    :cond_10
    :goto_c
    return-object v7

    .line 1253
    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 1255
    :try_start_d
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    .line 1258
    goto :goto_d

    .line 1256
    :catch_7
    move-exception v0

    .line 1257
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1258
    :goto_d
    throw v1
.end method

.method public static a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 962
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v4, ".so"

    const-string v5, ".dex"

    const-string v6, "-"

    const-string v7, ""

    if-nez v1, :cond_0

    .line 963
    return-object v7

    .line 965
    :cond_0
    nop

    .line 966
    nop

    .line 967
    nop

    .line 968
    nop

    .line 969
    if-eqz v3, :cond_1

    iget-object v0, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 970
    iget-object v0, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    const-string v9, "."

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 974
    :cond_1
    move-object v9, v7

    :goto_0
    const/4 v11, 0x1

    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v12, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    move-object v12, v0

    goto :goto_1

    .line 1093
    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v12, 0x0

    goto/16 :goto_d

    .line 1088
    :catch_0
    move-exception v0

    move-object/from16 v16, v7

    goto/16 :goto_f

    .line 1085
    :catch_1
    move-exception v0

    move-object/from16 v16, v7

    goto/16 :goto_12

    .line 976
    :catch_2
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 977
    new-instance v0, Ljava/io/File;

    iget-object v13, v1, Lcom/baidu/sofire/core/ApkInfo;->hostContext:Landroid/content/Context;

    .line 978
    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    const-string v14, ".b"

    invoke-direct {v0, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 984
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 985
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 989
    new-instance v0, Ljava/io/File;

    iget-object v14, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 990
    invoke-static {v13, v0}, Ld/a/g/i/c;->a(Ljava/io/File;Ljava/io/File;)V

    .line 991
    iget-object v14, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-static {v14, v11}, Ld/a/g/i/c;->a(Ljava/lang/String;Z)V

    .line 992
    invoke-static {v0}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 993
    iget-object v14, v1, Lcom/baidu/sofire/core/ApkInfo;->hostContext:Landroid/content/Context;

    iget v15, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 994
    invoke-static {v14, v15, v0, v13}, Ld/a/g/h;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 995
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_e

    .line 997
    :try_start_2
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v13, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1000
    move-object v12, v0

    .line 1006
    :goto_1
    :try_start_3
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1007
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v14
    :try_end_3
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v15, v7

    .line 1008
    :goto_2
    :try_start_4
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v8, "/"

    if-eqz v0, :cond_9

    .line 1009
    :try_start_5
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 1010
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1011
    :try_start_6
    const-string v11, ".."

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_6
    .catch Ljava/util/zip/ZipException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v11, :cond_2

    .line 1012
    nop

    .line 1095
    :try_start_7
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 1098
    goto :goto_3

    .line 1096
    :catch_3
    move-exception v0

    .line 1097
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1012
    :goto_3
    return-object v7

    .line 1014
    :cond_2
    :try_start_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "lib/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_4

    if-eqz v3, :cond_4

    .line 1016
    invoke-virtual {v10, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1017
    array-length v11, v8
    :try_end_8
    .catch Ljava/util/zip/ZipException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v16, v7

    const/4 v7, 0x3

    if-ne v11, v7, :cond_8

    .line 1020
    const/4 v7, 0x1

    :try_start_9
    aget-object v8, v8, v7
    :try_end_9
    .catch Ljava/util/zip/ZipException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1021
    :try_start_a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1024
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1025
    if-nez v7, :cond_3

    .line 1026
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    invoke-interface {v13, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    :cond_3
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/util/zip/ZipException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 1088
    :catch_4
    move-exception v0

    move v11, v7

    goto/16 :goto_10

    .line 1085
    :catch_5
    move-exception v0

    move v11, v7

    goto/16 :goto_13

    .line 1014
    :cond_4
    move-object/from16 v16, v7

    .line 1031
    :goto_4
    nop

    .line 1033
    :try_start_b
    invoke-virtual {v10, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_6

    if-nez v3, :cond_6

    .line 1034
    iget-object v7, v1, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    .line 1035
    invoke-static {v7}, Ld/a/g/d/n;->f(Ljava/lang/String;)Z

    .line 1036
    new-instance v10, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1041
    :try_start_c
    invoke-static {v12, v0, v10}, Ld/a/g/d/n;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)Z

    move-result v0

    .line 1042
    if-eqz v0, :cond_5

    .line 1043
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v7, v16

    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1047
    :cond_5
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1048
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    .line 1052
    :catch_6
    move-exception v0

    goto :goto_6

    .line 1059
    :cond_6
    :goto_5
    goto :goto_7

    .line 1052
    :catch_7
    move-exception v0

    const/4 v10, 0x0

    .line 1056
    :goto_6
    if-eqz v10, :cond_7

    :try_start_d
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1057
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1061
    :cond_7
    nop

    .line 1008
    :cond_8
    :goto_7
    move-object/from16 v7, v16

    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1062
    :cond_9
    if-eqz v3, :cond_d

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 1063
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1064
    iget-object v5, v1, Lcom/baidu/sofire/core/ApkInfo;->hostContext:Landroid/content/Context;

    invoke-static {v5, v0}, Ld/a/g/d/n;->a(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 1065
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1066
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ld/a/g/d/n;->f(Ljava/lang/String;)Z

    .line 1068
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1069
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 1070
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 1071
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1072
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10
    :try_end_d
    .catch Ljava/util/zip/ZipException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v11, 0x1

    add-int/2addr v10, v11

    :try_start_e
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1073
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v4, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1074
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1075
    invoke-static {v12, v6, v10}, Ld/a/g/d/n;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)Z

    move-result v6

    .line 1076
    if-eqz v6, :cond_a

    .line 1080
    goto :goto_8

    .line 1078
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "UnZip so failed.Report space left."

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_b
    const/4 v11, 0x1

    goto :goto_9

    .line 1069
    :cond_c
    const/4 v11, 0x1

    .line 1082
    :goto_9
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15
    :try_end_e
    .catch Ljava/util/zip/ZipException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_a

    .line 1088
    :catch_8
    move-exception v0

    const/4 v11, 0x1

    goto/16 :goto_10

    .line 1085
    :catch_9
    move-exception v0

    const/4 v11, 0x1

    goto/16 :goto_13

    .line 1095
    :cond_d
    :goto_a
    :try_start_f
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    .line 1098
    :goto_b
    goto :goto_c

    .line 1096
    :catch_a
    move-exception v0

    .line 1097
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_b

    .line 1102
    :goto_c
    const/4 v11, 0x0

    goto/16 :goto_14

    .line 1088
    :catch_b
    move-exception v0

    goto/16 :goto_10

    .line 1085
    :catch_c
    move-exception v0

    goto/16 :goto_13

    .line 1093
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_d

    .line 1088
    :catch_d
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v15, v16

    goto/16 :goto_10

    .line 1085
    :catch_e
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v15, v16

    goto/16 :goto_13

    .line 998
    :catch_f
    move-exception v0

    move-object/from16 v16, v7

    .line 999
    :try_start_10
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1003
    :cond_e
    move-object/from16 v16, v7

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--file not exists after copy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_f
    move-object/from16 v16, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--backupFile not exists"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 987
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 980
    :cond_10
    move-object/from16 v16, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--backupDir not exists"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 981
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_10
    .catch Ljava/util/zip/ZipException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_10} :catch_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1088
    :catch_10
    move-exception v0

    goto :goto_f

    .line 1085
    :catch_11
    move-exception v0

    goto :goto_12

    .line 1093
    :goto_d
    if-eqz v12, :cond_11

    .line 1095
    :try_start_11
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_12

    .line 1098
    goto :goto_e

    .line 1096
    :catch_12
    move-exception v0

    .line 1097
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1098
    :cond_11
    :goto_e
    throw v1

    .line 1088
    :goto_f
    move-object/from16 v15, v16

    const/4 v12, 0x0

    .line 1090
    :goto_10
    nop

    .line 1093
    if-eqz v12, :cond_12

    .line 1095
    :try_start_12
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_13

    .line 1098
    :goto_11
    goto :goto_14

    .line 1096
    :catch_13
    move-exception v0

    .line 1097
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_11

    .line 1085
    :goto_12
    move-object/from16 v15, v16

    const/4 v12, 0x0

    .line 1087
    :goto_13
    nop

    .line 1093
    if-eqz v12, :cond_12

    .line 1095
    :try_start_13
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_11

    .line 1102
    :cond_12
    :goto_14
    if-eqz v11, :cond_13

    .line 1103
    invoke-static {v1, v2, v9, v3}, Ld/a/g/d/n;->a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1105
    :cond_13
    return-object v15
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    sget-object v1, Lcom/baidu/sofire/ac/U;->sRealtimeMd5Map:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 641
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 642
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    move-object p2, v0

    .line 649
    :cond_0
    nop

    .line 1671
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    if-nez v0, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1674
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1675
    invoke-static {v0}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1676
    new-instance p2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1678
    :cond_2
    invoke-static {v0}, Ld/a/g/i/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    .line 1679
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1680
    new-instance p2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1683
    :cond_3
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1684
    new-instance p2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p2, v0, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1687
    :cond_4
    new-instance p2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1672
    :cond_5
    :goto_0
    new-instance p2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 649
    :goto_1
    nop

    .line 653
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_6

    .line 654
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 655
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "1"

    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string p0, "2"

    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 659
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 660
    const-string p1, "\n"

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 661
    const-string p1, "\t"

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\r"

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 658
    const-string p1, "3"

    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object p0, Ld/a/g/d/n;->b:Landroid/app/Application;

    .line 663
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "1003117"

    invoke-static {p0, p1, p3, v3}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 665
    return v3

    .line 667
    :cond_6
    return v1
.end method

.method public static a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;)Z
    .locals 5

    .line 704
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 705
    return v1

    .line 707
    :cond_0
    iget-object p0, p0, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    .line 708
    nop

    .line 709
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 710
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 712
    const-class p1, Landroid/app/Application;

    sget-object v0, Ld/a/g/d/n;->b:Landroid/app/Application;

    invoke-static {p1, v0, p0}, Ld/a/g/k;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 715
    sget-object p1, Ld/a/g/d/n;->b:Landroid/app/Application;

    .line 1924
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1925
    const-class v2, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1926
    :goto_0
    if-eqz v2, :cond_2

    .line 1928
    :try_start_1
    const-string v3, "mBase"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1929
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1930
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1931
    invoke-virtual {v3, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1935
    :cond_1
    goto :goto_1

    .line 1933
    :catch_0
    move-exception v3

    .line 1934
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1936
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 717
    :cond_2
    invoke-virtual {p0}, Landroid/app/Application;->onCreate()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 723
    nop

    .line 725
    return v1

    .line 718
    :catch_1
    move-exception p0

    .line 722
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/util/zip/ZipInputStream;)Z
    .locals 4

    .line 1318
    nop

    .line 1320
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1322
    const/16 v1, 0x1000

    :try_start_1
    new-array v1, v1, [B

    .line 1323
    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 1324
    invoke-virtual {v2, v1, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1326
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 1327
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ld/a/g/i/c;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1334
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1337
    goto :goto_1

    .line 1335
    :catch_0
    move-exception p0

    .line 1336
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1328
    :goto_1
    return p1

    .line 1332
    :catchall_0
    move-exception p0

    goto :goto_5

    .line 1329
    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_2

    .line 1332
    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_5

    .line 1329
    :catch_2
    move-exception p0

    .line 1330
    :goto_2
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1332
    if-eqz v1, :cond_1

    .line 1334
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 1337
    :goto_3
    goto :goto_4

    .line 1335
    :catch_3
    move-exception p0

    .line 1336
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_3

    .line 1340
    :cond_1
    :goto_4
    return v0

    .line 1332
    :goto_5
    if-eqz v2, :cond_2

    .line 1334
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 1337
    goto :goto_6

    .line 1335
    :catch_4
    move-exception p1

    .line 1336
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1337
    :cond_2
    :goto_6
    throw p0
.end method

.method public static a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)Z
    .locals 3

    .line 1153
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1154
    return v0

    .line 1156
    :cond_0
    nop

    .line 1157
    nop

    .line 1159
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1160
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1161
    const/16 v1, 0x1000

    :try_start_2
    new-array v1, v1, [B

    .line 1163
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 1164
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1166
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1167
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p2, v1}, Ld/a/g/i/c;->a(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1172
    nop

    .line 1174
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1177
    goto :goto_1

    .line 1175
    :catch_0
    move-exception p0

    .line 1176
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1181
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 1184
    goto :goto_2

    .line 1182
    :catch_1
    move-exception p0

    .line 1183
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1168
    :goto_2
    return v1

    .line 1172
    :catchall_0
    move-exception p2

    goto :goto_8

    .line 1169
    :catch_2
    move-exception p2

    goto :goto_3

    .line 1172
    :catchall_1
    move-exception p2

    move-object p1, v1

    goto :goto_8

    .line 1169
    :catch_3
    move-exception p1

    move-object p1, v1

    :goto_3
    move-object v1, p0

    goto :goto_4

    .line 1172
    :catchall_2
    move-exception p2

    move-object p0, v1

    move-object p1, p0

    goto :goto_8

    .line 1169
    :catch_4
    move-exception p0

    move-object p1, v1

    .line 1170
    :goto_4
    :try_start_5
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1172
    if-eqz v1, :cond_2

    .line 1174
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 1177
    goto :goto_5

    .line 1175
    :catch_5
    move-exception p0

    .line 1176
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1179
    :cond_2
    :goto_5
    if-eqz p1, :cond_3

    .line 1181
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 1184
    :goto_6
    goto :goto_7

    .line 1182
    :catch_6
    move-exception p0

    .line 1183
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_6

    .line 1187
    :cond_3
    :goto_7
    return v0

    .line 1172
    :catchall_3
    move-exception p2

    move-object p0, v1

    :goto_8
    if-eqz p0, :cond_4

    .line 1174
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    .line 1177
    goto :goto_9

    .line 1175
    :catch_7
    move-exception p0

    .line 1176
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1179
    :cond_4
    :goto_9
    if-eqz p1, :cond_5

    .line 1181
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    .line 1184
    goto :goto_a

    .line 1182
    :catch_8
    move-exception p0

    .line 1183
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1184
    :cond_5
    :goto_a
    throw p2
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    .line 942
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    .line 944
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 946
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 947
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :cond_1
    nop

    .line 953
    const/4 p0, 0x1

    return p0

    .line 949
    :catch_0
    move-exception p0

    .line 950
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 951
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 730
    const-string v0, "class ForHostApp.ENGINE_IMPL_CLASS_FULL_PATH loaded is null"

    const-string v1, "com.baidu.sofire.engine.EngineImpl"

    const-string v2, "apkDex"

    sget-object v3, Ld/a/g/d/n;->b:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    .line 733
    const/4 v3, 0x1

    invoke-static {p1, p2, v3}, Ld/a/g/d/n;->a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 735
    const-string v4, "java.library.path"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 736
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, ""

    const/16 v7, 0x19

    if-ge v5, v7, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 737
    :cond_0
    move-object v4, v6

    .line 740
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 741
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 744
    :cond_2
    goto :goto_0

    .line 747
    :cond_3
    move-object v3, v4

    .line 749
    :goto_0
    iput-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->libPath:Ljava/lang/String;

    .line 752
    const-class v4, Ld/a/g/d/n;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 756
    nop

    .line 759
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 763
    invoke-static {v5}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 765
    invoke-static {v5}, Ld/a/g/d/n;->f(Ljava/lang/String;)Z

    .line 766
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 780
    new-instance v7, Ld/a/g/d/m;

    iget-object v8, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v7, v8, v5, v3, v4}, Ld/a/g/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v7, p1, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    .line 783
    iget-object v5, p1, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 787
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 850
    return-void

    .line 788
    :cond_4
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :catch_0
    move-exception v5

    .line 796
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 797
    invoke-static {v2}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 798
    new-instance v2, Ljava/io/File;

    const-string v5, "dexDex"

    invoke-direct {v2, p3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 799
    invoke-static {p3}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 800
    invoke-static {p3}, Ld/a/g/d/n;->f(Ljava/lang/String;)Z

    .line 803
    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Ld/a/g/d/n;->a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 807
    new-instance p2, Ld/a/g/d/m;

    invoke-direct {p2, v6, p3, v3, v4}, Ld/a/g/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p2, p1, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    .line 810
    iget-object p2, p1, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 818
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 820
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 822
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 849
    return-void

    .line 823
    :cond_6
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 826
    :catch_1
    move-exception p2

    .line 831
    nop

    .line 832
    :try_start_2
    iget-object p2, p1, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-static {p2}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 833
    sget-object p2, Ld/a/g/d/n;->b:Landroid/app/Application;

    if-eqz p2, :cond_7

    .line 834
    sget-object p2, Ld/a/g/d/n;->b:Landroid/app/Application;

    iget-object p3, p1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/app/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 835
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 834
    invoke-static {p2}, Ld/a/g/i/c;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 840
    :cond_7
    goto :goto_1

    .line 838
    :catch_2
    move-exception p2

    .line 839
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 841
    :goto_1
    nop

    .line 842
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "can\'t load EngineImpl by both dexFile:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and ZipFile:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final declared-synchronized a(Ld/a/g/d/o;)V
    .locals 4

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p1, Ld/a/g/d/o;->d:Landroid/content/IntentFilter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 97
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    iget-object v0, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    iget-object v1, p1, Ld/a/g/d/o;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sofire/core/ApkInfo;

    .line 100
    if-eqz v0, :cond_7

    .line 101
    iget-object v1, v0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    if-nez v1, :cond_1

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    .line 105
    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 106
    iget-object v2, v0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/a/g/d/o;

    .line 107
    invoke-virtual {p1, v2}, Ld/a/g/d/o;->a(Ld/a/g/d/o;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 108
    monitor-exit p0

    return-void

    .line 105
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_3
    :try_start_2
    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p1, Ld/a/g/d/o;->d:Landroid/content/IntentFilter;

    .line 114
    invoke-static {v0}, Ld/a/g/d/n;->a(Landroid/content/IntentFilter;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "____"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 121
    :cond_4
    iget-object v1, p0, Ld/a/g/d/n;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 123
    new-instance v1, Lcom/baidu/sofire/MyReceiver;

    invoke-direct {v1}, Lcom/baidu/sofire/MyReceiver;-><init>()V

    .line 124
    sget-object v2, Ld/a/g/d/n;->b:Landroid/app/Application;

    iget-object v3, p1, Ld/a/g/d/o;->d:Landroid/content/IntentFilter;

    invoke-static {v2, v1, v3}, Ld/a/g/i/c;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 128
    const-wide/16 v2, 0xbb8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    goto :goto_1

    .line 129
    :catch_0
    move-exception v2

    .line 130
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 132
    :goto_1
    sget-object v2, Ld/a/g/d/n;->b:Landroid/app/Application;

    iget-object p1, p1, Ld/a/g/d/o;->d:Landroid/content/IntentFilter;

    invoke-static {v2, v1, p1}, Ld/a/g/i/c;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 135
    :cond_5
    iget-object p1, p0, Ld/a/g/d/n;->i:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 119
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 141
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 139
    :catch_1
    move-exception p1

    .line 140
    :try_start_5
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 95
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/baidu/sofire/core/ApkInfo;)Z
    .locals 7

    monitor-enter p0

    .line 359
    const/4 v0, 0x0

    if-eqz p1, :cond_10

    :try_start_0
    iget-object v1, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 363
    :cond_0
    iget-object v1, p0, Ld/a/g/d/n;->g:Ljava/util/Map;

    iget-object v2, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sofire/core/ApkInfo;

    .line 364
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 370
    monitor-exit p0

    return v2

    .line 372
    :cond_1
    :try_start_1
    iget-object v1, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ld/a/g/d/n;->a(Ljava/lang/String;)Z

    .line 377
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-static {v1}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 384
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 385
    const-string v3, "0"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v2, "1"

    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v2, "2"

    iget-object p1, p1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object p1, Ld/a/g/d/n;->b:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "1003117"

    invoke-static {p1, v2, v1, v0}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    monitor-exit p0

    return v0

    .line 395
    :cond_3
    :try_start_2
    sget-object v1, Ld/a/g/d/n;->b:Landroid/app/Application;

    iput-object v1, p1, Lcom/baidu/sofire/core/ApkInfo;->hostContext:Landroid/content/Context;

    .line 396
    nop

    .line 397
    iget v1, p1, Lcom/baidu/sofire/core/ApkInfo;->apkParseSuc:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v2, :cond_6

    .line 402
    :try_start_3
    iget-object v1, p1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 403
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 407
    iget v1, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    iget-object v5, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Ld/a/g/d/n;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_4

    .line 409
    monitor-exit p0

    return v0

    .line 412
    :cond_4
    :try_start_4
    sget-object v1, Ld/a/g/d/n;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/dex"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/lib/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ld/a/g/d/n;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 419
    sget-object v4, Ld/a/g/d/n;->c:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    invoke-static {v1}, Ld/a/g/d/n;->f(Ljava/lang/String;)Z

    .line 423
    invoke-static {v1, v0}, Ld/a/g/i/c;->a(Ljava/lang/String;Z)V

    .line 425
    invoke-static {v3}, Ld/a/g/d/n;->f(Ljava/lang/String;)Z

    .line 427
    invoke-virtual {p0, p1, v3, v1}, Ld/a/g/d/n;->a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Ld/a/g/d/n;->g:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v1, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v1, p1, Lcom/baidu/sofire/core/ApkInfo;->className:Ljava/lang/String;

    invoke-static {p1, v1}, Ld/a/g/d/n;->a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;)Z

    .line 436
    goto :goto_0

    .line 404
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "packageName or pkgPath miss"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    nop

    .line 434
    :try_start_5
    iget-object v1, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ld/a/g/d/n;->a(Ljava/lang/String;)Z

    .line 435
    invoke-static {}, Ld/a/g/i/c;->a()V

    move v1, v2

    goto :goto_1

    .line 440
    :cond_6
    :goto_0
    move v1, v0

    :goto_1
    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->apkParseSuc:I

    if-ne v3, v2, :cond_7

    if-eqz v1, :cond_c

    .line 446
    :cond_7
    iget-object v1, p1, Lcom/baidu/sofire/core/ApkInfo;->cloudPkgInfo:Landroid/content/pm/PackageInfo;

    .line 447
    if-eqz v1, :cond_8

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 448
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 452
    goto :goto_2

    .line 454
    :cond_8
    sget-object v1, Ld/a/g/d/n;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 455
    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 457
    if-eqz v1, :cond_9

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 458
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 462
    :cond_9
    iget-object v1, p1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-static {v1, v3}, Ld/a/g/d/n;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 463
    if-eqz v1, :cond_e

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 464
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 470
    :cond_a
    :goto_2
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.baidu.sofire"

    .line 471
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 475
    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v5, p1, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    iget-object v6, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Ld/a/g/d/n;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_b

    .line 477
    monitor-exit p0

    return v0

    .line 480
    :cond_b
    :try_start_6
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 485
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iput-object v4, p1, Lcom/baidu/sofire/core/ApkInfo;->className:Ljava/lang/String;

    .line 487
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 488
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    iput-object v4, p1, Lcom/baidu/sofire/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 489
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->theme:I

    iput v3, p1, Lcom/baidu/sofire/core/ApkInfo;->applicationTheme:I

    .line 490
    sget-object v3, Ld/a/g/d/n;->b:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 491
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/lib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ld/a/g/d/n;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 499
    sget-object v5, Ld/a/g/d/n;->c:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    .line 500
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 502
    invoke-static {v3}, Ld/a/g/d/n;->f(Ljava/lang/String;)Z

    .line 503
    invoke-static {v3, v0}, Ld/a/g/i/c;->a(Ljava/lang/String;Z)V

    .line 505
    invoke-static {v4}, Ld/a/g/d/n;->f(Ljava/lang/String;)Z

    .line 507
    invoke-virtual {p0, p1, v4, v3}, Ld/a/g/d/n;->a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v3, p0, Ld/a/g/d/n;->g:Ljava/util/Map;

    iget-object v4, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v3, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    iget-object v4, p1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {p1, v1}, Ld/a/g/d/n;->a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 555
    :cond_c
    nop

    .line 563
    monitor-exit p0

    return v2

    .line 472
    :cond_d
    :try_start_7
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "package name check failed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_e
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "requestCloudPackageInfo failed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 514
    :catch_1
    move-exception v1

    .line 519
    :try_start_8
    iget-object v2, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ld/a/g/d/n;->a(Ljava/lang/String;)Z

    .line 521
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 522
    invoke-static {v1}, Ld/a/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n isUpgrade="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ld/a/g/d/n;->f:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    const-string v3, "space left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 538
    sget-object v3, Ld/a/g/d/n;->b:Landroid/app/Application;

    iget-object v4, p1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 539
    invoke-static {v3, v1, v4}, Ld/a/g/i/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    :cond_f
    const-string v3, "0"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v3, "1"

    iget v4, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v3, "2"

    iget-object p1, p1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string p1, "3"

    .line 545
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\t"

    const-string v4, ""

    .line 546
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\r"

    const-string v4, ""

    .line 547
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object p1, Ld/a/g/d/n;->b:Landroid/app/Application;

    .line 549
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "1003117"

    invoke-static {p1, v1, v2, v0}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 553
    goto :goto_3

    .line 551
    :catch_2
    move-exception p1

    .line 552
    :try_start_9
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 554
    :goto_3
    monitor-exit p0

    return v0

    .line 358
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 360
    :cond_10
    :goto_4
    monitor-exit p0

    return v0
.end method

.method public final a(Lcom/baidu/sofire/core/ApkInfo;Z)Z
    .locals 0

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 349
    iput-boolean p2, p0, Ld/a/g/d/n;->f:Z

    .line 350
    iget-object p2, p1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    iput-object p2, p0, Ld/a/g/d/n;->e:Ljava/lang/String;

    .line 351
    invoke-virtual {p0, p1}, Ld/a/g/d/n;->a(Lcom/baidu/sofire/core/ApkInfo;)Z

    move-result p1

    .line 355
    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .line 855
    iget-object v0, p0, Ld/a/g/d/n;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sofire/core/ApkInfo;

    .line 856
    if-eqz v0, :cond_1

    .line 857
    iget-object v1, p0, Ld/a/g/d/n;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    iget-object p1, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    iget-object v1, v0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iget-object p1, v0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ld/a/g/k/d;->b(Ljava/lang/String;)V

    .line 861
    iget-object p1, v0, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-static {p1}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 862
    sget-object p1, Ld/a/g/d/n;->b:Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 863
    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 864
    invoke-virtual {p1, v0}, Landroid/app/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 866
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 868
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/sofire/core/ApkInfo;",
            ">;"
        }
    .end annotation

    .line 329
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    iget-object v1, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 331
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 332
    iget-object v3, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 334
    :cond_0
    return-object v0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 338
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 339
    :catch_1
    move-exception v0

    .line 340
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized b(Ld/a/g/d/o;)V
    .locals 4

    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p1, Ld/a/g/d/o;->d:Landroid/content/IntentFilter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 258
    monitor-exit p0

    return-void

    .line 260
    :cond_0
    :try_start_1
    iget-object v0, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    iget-object v1, p1, Ld/a/g/d/o;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sofire/core/ApkInfo;

    .line 261
    if-eqz v0, :cond_5

    .line 262
    iget-object v1, v0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 265
    iget-object v3, v0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/a/g/d/o;

    .line 266
    invoke-virtual {p1, v3}, Ld/a/g/d/o;->a(Ld/a/g/d/o;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 272
    iget-object v3, v0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 274
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    goto :goto_1

    .line 275
    :catch_0
    move-exception v2

    .line 276
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 281
    :cond_3
    goto :goto_1

    .line 283
    :cond_4
    iget-object v1, v0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 284
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 285
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    .line 289
    :cond_5
    iget-object p1, p1, Ld/a/g/d/o;->d:Landroid/content/IntentFilter;

    invoke-static {p1}, Ld/a/g/d/n;->a(Landroid/content/IntentFilter;)Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    .line 294
    monitor-exit p0

    return-void

    .line 296
    :cond_6
    :try_start_4
    invoke-virtual {p0}, Ld/a/g/d/n;->b()Ljava/util/List;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sofire/core/ApkInfo;

    .line 298
    iget-object v2, v1, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 299
    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/a/g/d/o;

    .line 300
    iget-object v2, v2, Ld/a/g/d/o;->d:Landroid/content/IntentFilter;

    invoke-static {v2}, Ld/a/g/d/n;->a(Landroid/content/IntentFilter;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 304
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_8

    .line 309
    monitor-exit p0

    return-void

    .line 311
    :cond_8
    goto :goto_3

    .line 313
    :cond_9
    goto :goto_2

    .line 317
    :cond_a
    :try_start_5
    iget-object v0, p0, Ld/a/g/d/n;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sofire/MyReceiver;

    .line 318
    sget-object v1, Ld/a/g/d/n;->b:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    iget-object v0, p0, Ld/a/g/d/n;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 321
    :catch_1
    move-exception p1

    .line 322
    :try_start_6
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    .line 256
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    .line 872
    iget-object v0, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sofire/core/ApkInfo;

    .line 873
    if-eqz v0, :cond_1

    .line 874
    iget-object v1, p0, Ld/a/g/d/n;->g:Ljava/util/Map;

    iget-object v2, v0, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v1, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    invoke-static {p1}, Ld/a/g/k/d;->b(Ljava/lang/String;)V

    .line 879
    iget-object p1, v0, Lcom/baidu/sofire/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-static {p1}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 881
    sget-object p1, Ld/a/g/d/n;->b:Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 882
    iget-object v0, v0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 883
    invoke-virtual {p1, v0}, Landroid/app/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 889
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 891
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;
    .locals 1

    .line 896
    :try_start_0
    iget-object v0, p0, Ld/a/g/d/n;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/sofire/core/ApkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 897
    :catch_0
    move-exception p1

    .line 898
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 899
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;
    .locals 1

    .line 905
    :try_start_0
    iget-object v0, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/sofire/core/ApkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 906
    :catch_0
    move-exception p1

    .line 907
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 908
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 7

    .line 1347
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sofire/core/ApkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1348
    if-eqz v1, :cond_1

    .line 1350
    const/4 v2, 0x1

    :try_start_1
    iget-object v3, v1, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v3, Ld/a/g/d/m;

    .line 1352
    const-string v4, "com.baidu.sofire.engine.EngineImpl"

    .line 1353
    invoke-virtual {v3, v4}, Ld/a/g/d/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1354
    const-string v4, "getInstance"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1355
    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Ld/a/g/d/n;->b:Landroid/app/Application;

    aput-object v6, v5, v0

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1356
    if-eqz v3, :cond_0

    .line 1357
    const-string v4, "unload"

    const/4 v5, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Ld/a/g/i/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1362
    :cond_0
    goto :goto_0

    .line 1360
    :catch_0
    move-exception v3

    .line 1361
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1363
    :goto_0
    iget-object v3, p0, Ld/a/g/d/n;->g:Ljava/util/Map;

    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    iget-object v1, p0, Ld/a/g/d/n;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1365
    return v2

    .line 1367
    :cond_1
    return v0

    .line 1368
    :catch_1
    move-exception p1

    .line 1369
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1371
    return v0
.end method
