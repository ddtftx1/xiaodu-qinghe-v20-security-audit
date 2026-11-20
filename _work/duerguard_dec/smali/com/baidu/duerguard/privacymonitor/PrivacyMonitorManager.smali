.class public final enum Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;
.super Ljava/lang/Enum;
.source "PrivacyMonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic e:[Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 37
    new-instance v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a:Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    .line 36
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    sget-object v3, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a:Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    aput-object v3, v2, v1

    sput-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->e:[Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    .line 69
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->c:Ljava/util/Map;

    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->d:Ljava/util/Map;

    .line 79
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.android.systemui"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.duershow.statistic"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.duer.ota"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.duer.ota:ota"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.oases"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.duershow.h5container"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.launcher"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.launcher:remote"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.duershow.media"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.duershow.visionserver"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.duershow.camera"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.duershow.rtc"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.atomkit.service"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.pcdn"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->b:Ljava/util/List;

    const-string v3, "com.baidu.duershow.media.mediaplayerservice"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->c:Ljava/util/Map;

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->c:Ljava/util/Map;

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "MICROPHONE"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v2, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "LOCATION"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->c:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->c:Ljava/util/Map;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "STORAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->c:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->d:Ljava/util/Map;

    const-string v1, "\u8bfb\u5199\u5b58\u50a8\u7a7a\u95f4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->d:Ljava/util/Map;

    const-string v1, "\u4f7f\u7528\u9ea6\u514b\u98ce"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->d:Ljava/util/Map;

    const-string v1, "\u83b7\u53d6\u5730\u7406\u4f4d\u7f6e\u4fe1\u606f"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->d:Ljava/util/Map;

    const-string v1, "\u4f7f\u7528\u6444\u50cf\u5934"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 44
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 46
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    return-object v0
.end method

.method public static values()[Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;
    .locals 1

    .line 36
    sget-object v0, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->e:[Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    invoke-virtual {v0}, [Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/List;ILjava/lang/String;)I
    .locals 25
    .param p2, "pageSize"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/model/privacy/PrivacyRecordItem;",
            ">;I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .local p1, "privacyRecordItems":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/PrivacyRecordItem;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v6, p2

    monitor-enter p0

    .line 311
    const/4 v1, 0x0

    .line 313
    .local v1, "addCount":I
    :try_start_0
    invoke-static {}, Ld/a/a/c;->a()J

    move-result-wide v10

    .line 314
    .local v10, "timestamp":J
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Ljava/util/List;)Lcom/baidu/model/privacy/PrivacyRecordItem;

    move-result-object v0

    .line 315
    .local v0, "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    if-nez v0, :cond_0

    const-wide/16 v12, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getId()J

    move-result-wide v12

    .line 316
    .local v12, "lastId":J
    :goto_0
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v9

    move/from16 v14, p2

    move-object/from16 v15, p3

    invoke-static/range {v9 .. v15}, Ld/a/b/c/c/f;->a(Landroid/content/Context;JJILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 318
    .local v9, "opEntries":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/DbOpEntry;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .end local v1    # "addCount":I
    .local v14, "addCount":I
    const/4 v1, 0x0

    .line 320
    .local v1, "lastDayTime":Ljava/lang/String;
    const/4 v15, 0x0

    .line 321
    .local v15, "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    const/16 v16, 0x0

    .line 322
    .local v16, "dayTime":Ljava/lang/String;
    const/16 v17, 0x0

    .line 323
    .local v17, "nextEntry":Lcom/baidu/model/privacy/DbOpEntry;
    const/16 v18, 0x0

    .line 324
    .local v18, "nextDayTime":Ljava/lang/String;
    const/4 v4, 0x0

    move/from16 v20, v4

    move-object/from16 v24, v1

    move-object v1, v0

    move/from16 v0, v20

    move-object/from16 v20, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v24

    .local v0, "i":I
    .local v1, "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .local v15, "lastDayTime":Ljava/lang/String;
    .local v16, "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .local v17, "dayTime":Ljava/lang/String;
    .local v18, "nextEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .local v20, "nextDayTime":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 325
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Ljava/util/List;)Lcom/baidu/model/privacy/PrivacyRecordItem;

    move-result-object v5

    .line 326
    .end local v1    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .local v5, "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    if-nez v5, :cond_1

    const/16 v21, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getDate()Ljava/lang/String;

    move-result-object v21

    :goto_2
    move-object/from16 v15, v21

    .line 327
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/baidu/model/privacy/DbOpEntry;

    move-object/from16 v16, v21

    .line 328
    invoke-virtual/range {v16 .. v16}, Lcom/baidu/model/privacy/OpEntry;->getStartTime()J

    move-result-wide v1

    const-string v3, "yyyy-MM-dd"

    invoke-static {v1, v2, v3}, Ld/a/a/c;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 329
    .end local v17    # "dayTime":Ljava/lang/String;
    .local v3, "dayTime":Ljava/lang/String;
    invoke-virtual {v7, v9, v0}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Ljava/util/List;I)Lcom/baidu/model/privacy/DbOpEntry;

    move-result-object v1

    move-object/from16 v18, v1

    .line 330
    if-eqz v18, :cond_2

    .line 331
    invoke-virtual/range {v18 .. v18}, Lcom/baidu/model/privacy/OpEntry;->getStartTime()J

    move-result-wide v1

    const-string v4, "yyyy-MM-dd"

    invoke-static {v1, v2, v4}, Ld/a/a/c;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .end local p0    # "this":Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;
    :cond_2
    const/4 v1, 0x0

    :goto_3
    move-object v4, v1

    .line 332
    .end local v20    # "nextDayTime":Ljava/lang/String;
    .local v4, "nextDayTime":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 333
    if-nez v5, :cond_4

    .line 335
    new-instance v1, Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-direct {v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;-><init>()V

    .line 336
    .local v1, "segmentItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    invoke-virtual {v1, v3}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setDate(Ljava/lang/String;)V

    .line 337
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    .line 338
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    move-wide/from16 v22, v10

    move-object/from16 v10, v16

    .end local v16    # "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .local v10, "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .local v22, "timestamp":J
    invoke-virtual {v7, v10}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Lcom/baidu/model/privacy/DbOpEntry;)Lcom/baidu/model/privacy/PrivacyRecordItem;

    move-result-object v11

    .line 341
    .local v11, "item":Lcom/baidu/model/privacy/PrivacyRecordItem;
    invoke-virtual {v11, v3}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setDate(Ljava/lang/String;)V

    .line 342
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 343
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 345
    :cond_3
    const/4 v2, 0x4

    :try_start_2
    invoke-virtual {v11, v2}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :goto_4
    :try_start_3
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    move-object/from16 v19, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    const/4 v11, 0x4

    .end local v1    # "segmentItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .end local v11    # "item":Lcom/baidu/model/privacy/PrivacyRecordItem;
    goto/16 :goto_7

    .line 388
    .end local v0    # "i":I
    .end local v3    # "dayTime":Ljava/lang/String;
    .end local v4    # "nextDayTime":Ljava/lang/String;
    .end local v5    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .end local v9    # "opEntries":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/DbOpEntry;>;"
    .end local v10    # "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .end local v12    # "lastId":J
    .end local v15    # "lastDayTime":Ljava/lang/String;
    .end local v18    # "nextEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .end local v22    # "timestamp":J
    :catch_0
    move-exception v0

    move v11, v2

    goto/16 :goto_9

    .line 350
    .restart local v0    # "i":I
    .restart local v3    # "dayTime":Ljava/lang/String;
    .restart local v4    # "nextDayTime":Ljava/lang/String;
    .restart local v5    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .restart local v9    # "opEntries":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/DbOpEntry;>;"
    .local v10, "timestamp":J
    .restart local v12    # "lastId":J
    .restart local v15    # "lastDayTime":Ljava/lang/String;
    .restart local v16    # "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .restart local v18    # "nextEntry":Lcom/baidu/model/privacy/DbOpEntry;
    :cond_4
    move-wide/from16 v22, v10

    move-object/from16 v10, v16

    .end local v16    # "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .local v10, "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .restart local v22    # "timestamp":J
    invoke-static {v15, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 351
    invoke-virtual {v5}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getItemType()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 352
    const/4 v11, 0x4

    :try_start_4
    invoke-virtual {v5, v11}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    const/4 v1, 0x3

    goto :goto_5

    .line 354
    :cond_5
    const/4 v11, 0x4

    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 350
    :cond_6
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v11, 0x4

    .line 360
    :goto_5
    move/from16 v17, v1

    move-object/from16 v1, p0

    move v11, v2

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    .end local v3    # "dayTime":Ljava/lang/String;
    .local v19, "dayTime":Ljava/lang/String;
    move-object/from16 v16, v4

    .end local v4    # "nextDayTime":Ljava/lang/String;
    .local v16, "nextDayTime":Ljava/lang/String;
    move-object v4, v15

    move-object/from16 v17, v5

    .end local v5    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .local v17, "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    move-object/from16 v5, v16

    move-object v6, v10

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/model/privacy/DbOpEntry;)V

    const/4 v11, 0x4

    goto/16 :goto_7

    .line 362
    .end local v17    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .end local v19    # "dayTime":Ljava/lang/String;
    .end local v22    # "timestamp":J
    .restart local v3    # "dayTime":Ljava/lang/String;
    .restart local v4    # "nextDayTime":Ljava/lang/String;
    .restart local v5    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .local v10, "timestamp":J
    .local v16, "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    :cond_7
    move-object/from16 v19, v3

    move-object/from16 v17, v5

    move-wide/from16 v22, v10

    move-object/from16 v10, v16

    const/4 v11, 0x1

    move-object/from16 v16, v4

    .end local v3    # "dayTime":Ljava/lang/String;
    .end local v4    # "nextDayTime":Ljava/lang/String;
    .end local v5    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .local v10, "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .local v16, "nextDayTime":Ljava/lang/String;
    .restart local v17    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .restart local v19    # "dayTime":Ljava/lang/String;
    .restart local v22    # "timestamp":J
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v1, v11

    if-ne v0, v1, :cond_b

    .line 363
    :try_start_6
    invoke-virtual {v7, v10}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Lcom/baidu/model/privacy/DbOpEntry;)Lcom/baidu/model/privacy/PrivacyRecordItem;

    move-result-object v1

    .line 364
    .local v1, "item":Lcom/baidu/model/privacy/PrivacyRecordItem;
    move-object/from16 v6, v19

    .end local v19    # "dayTime":Ljava/lang/String;
    .local v6, "dayTime":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setDate(Ljava/lang/String;)V

    .line 365
    invoke-static {v15, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_9

    .line 366
    move/from16 v5, p2

    if-ge v14, v5, :cond_8

    .line 367
    const/4 v4, 0x3

    :try_start_7
    invoke-virtual {v1, v4}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    const/4 v11, 0x4

    goto :goto_6

    .line 369
    :cond_8
    const/4 v4, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    const/4 v11, 0x4

    goto :goto_6

    .line 372
    :cond_9
    move/from16 v5, p2

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-instance v2, Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-direct {v2}, Lcom/baidu/model/privacy/PrivacyRecordItem;-><init>()V

    .line 373
    .local v2, "segmentItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    invoke-virtual {v2, v6}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setDate(Ljava/lang/String;)V

    .line 374
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    .line 375
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 377
    if-ge v14, v5, :cond_a

    .line 378
    const/4 v11, 0x4

    :try_start_8
    invoke-virtual {v1, v11}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    goto :goto_6

    .line 380
    :cond_a
    const/4 v11, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    .line 383
    .end local v2    # "segmentItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    :goto_6
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    move-object/from16 v19, v6

    .end local v1    # "item":Lcom/baidu/model/privacy/PrivacyRecordItem;
    goto :goto_7

    .line 388
    .end local v0    # "i":I
    .end local v6    # "dayTime":Ljava/lang/String;
    .end local v9    # "opEntries":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/DbOpEntry;>;"
    .end local v10    # "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .end local v12    # "lastId":J
    .end local v15    # "lastDayTime":Ljava/lang/String;
    .end local v16    # "nextDayTime":Ljava/lang/String;
    .end local v17    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .end local v18    # "nextEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .end local v22    # "timestamp":J
    :catch_1
    move-exception v0

    move/from16 v5, p2

    goto :goto_8

    .line 385
    .restart local v0    # "i":I
    .restart local v9    # "opEntries":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/DbOpEntry;>;"
    .restart local v10    # "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .restart local v12    # "lastId":J
    .restart local v15    # "lastDayTime":Ljava/lang/String;
    .restart local v16    # "nextDayTime":Ljava/lang/String;
    .restart local v17    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .restart local v18    # "nextEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .restart local v19    # "dayTime":Ljava/lang/String;
    .restart local v22    # "timestamp":J
    :cond_b
    move/from16 v5, p2

    move-object/from16 v6, v19

    const/4 v4, 0x3

    const/4 v11, 0x4

    .end local v19    # "dayTime":Ljava/lang/String;
    .restart local v6    # "dayTime":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v15

    move-object/from16 v5, v16

    .end local v6    # "dayTime":Ljava/lang/String;
    .restart local v19    # "dayTime":Ljava/lang/String;
    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/model/privacy/DbOpEntry;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 324
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, p2

    move-object/from16 v20, v16

    move-object/from16 v1, v17

    move-object/from16 v17, v19

    const/4 v4, 0x0

    move-object/from16 v16, v10

    move-wide/from16 v10, v22

    goto/16 :goto_1

    .line 388
    .end local v0    # "i":I
    .end local v9    # "opEntries":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/DbOpEntry;>;"
    .end local v10    # "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .end local v12    # "lastId":J
    .end local v15    # "lastDayTime":Ljava/lang/String;
    .end local v16    # "nextDayTime":Ljava/lang/String;
    .end local v17    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .end local v18    # "nextEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .end local v19    # "dayTime":Ljava/lang/String;
    .end local v22    # "timestamp":J
    :catch_2
    move-exception v0

    goto :goto_9

    .line 324
    .restart local v0    # "i":I
    .local v1, "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .restart local v9    # "opEntries":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/DbOpEntry;>;"
    .local v10, "timestamp":J
    .restart local v12    # "lastId":J
    .restart local v15    # "lastDayTime":Ljava/lang/String;
    .local v16, "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .local v17, "dayTime":Ljava/lang/String;
    .restart local v18    # "nextEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .restart local v20    # "nextDayTime":Ljava/lang/String;
    :cond_c
    move-wide/from16 v22, v10

    const/4 v11, 0x4

    .line 390
    .end local v0    # "i":I
    .end local v1    # "lastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .end local v9    # "opEntries":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/DbOpEntry;>;"
    .end local v10    # "timestamp":J
    .end local v12    # "lastId":J
    .end local v15    # "lastDayTime":Ljava/lang/String;
    .end local v16    # "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .end local v17    # "dayTime":Ljava/lang/String;
    .end local v18    # "nextEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .end local v20    # "nextDayTime":Ljava/lang/String;
    goto :goto_a

    .line 388
    :catch_3
    move-exception v0

    :goto_8
    const/4 v11, 0x4

    goto :goto_9

    .line 310
    .end local v14    # "addCount":I
    .end local p1    # "privacyRecordItems":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/PrivacyRecordItem;>;"
    .end local p2    # "pageSize":I
    .end local p3    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_c

    .line 388
    .local v1, "addCount":I
    .restart local p1    # "privacyRecordItems":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/PrivacyRecordItem;>;"
    .restart local p2    # "pageSize":I
    .restart local p3    # "packageName":Ljava/lang/String;
    :catch_4
    move-exception v0

    const/4 v11, 0x4

    move v14, v1

    .line 389
    .end local v1    # "addCount":I
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v14    # "addCount":I
    :goto_9
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_a
    if-nez v14, :cond_e

    .line 394
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Ljava/util/List;)Lcom/baidu/model/privacy/PrivacyRecordItem;

    move-result-object v0

    .line 395
    .local v0, "tempLastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    if-eqz v0, :cond_e

    .line 396
    invoke-virtual {v0}, Lcom/baidu/model/privacy/PrivacyRecordItem;->getItemType()I

    move-result v1

    .line 397
    .local v1, "tempLastItemType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 398
    invoke-virtual {v0, v11}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    goto :goto_b

    .line 399
    :cond_d
    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 400
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 408
    .end local v0    # "tempLastItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    .end local v1    # "tempLastItemType":I
    :cond_e
    :goto_b
    monitor-exit p0

    return v14

    .line 310
    .end local v14    # "addCount":I
    .end local p1    # "privacyRecordItems":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/PrivacyRecordItem;>;"
    .end local p2    # "pageSize":I
    .end local p3    # "packageName":Ljava/lang/String;
    :goto_c
    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/List;I)Lcom/baidu/model/privacy/DbOpEntry;
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/model/privacy/DbOpEntry;",
            ">;I)",
            "Lcom/baidu/model/privacy/DbOpEntry;"
        }
    .end annotation

    .line 446
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/DbOpEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_0

    .line 447
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/model/privacy/DbOpEntry;

    return-object v0

    .line 449
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/baidu/model/privacy/DbOpEntry;)Lcom/baidu/model/privacy/PrivacyRecordItem;
    .locals 4
    .param p1, "opEntry"    # Lcom/baidu/model/privacy/DbOpEntry;

    .line 460
    new-instance v0, Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-direct {v0}, Lcom/baidu/model/privacy/PrivacyRecordItem;-><init>()V

    .line 461
    .local v0, "item":Lcom/baidu/model/privacy/PrivacyRecordItem;
    invoke-virtual {p1}, Lcom/baidu/model/privacy/OpEntry;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setId(J)V

    .line 462
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/model/privacy/OpEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld/a/a/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setAppName(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Lcom/baidu/model/privacy/DbOpEntry;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setCount(I)V

    .line 464
    invoke-virtual {p1}, Lcom/baidu/model/privacy/OpEntry;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setMode(I)V

    .line 465
    invoke-virtual {p1}, Lcom/baidu/model/privacy/OpEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setPackageName(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Lcom/baidu/model/privacy/DbOpEntry;->getPermissionGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setPermissionGroup(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Lcom/baidu/model/privacy/OpEntry;->getStartTime()J

    move-result-wide v1

    const-string v3, "HH:mm"

    invoke-static {v1, v2, v3}, Ld/a/a/c;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setStartTime(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1}, Lcom/baidu/model/privacy/OpEntry;->getEndTime()J

    move-result-wide v1

    invoke-static {v1, v2, v3}, Ld/a/a/c;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setEndTime(Ljava/lang/String;)V

    .line 469
    return-object v0
.end method

.method public final a(Ljava/util/List;)Lcom/baidu/model/privacy/PrivacyRecordItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/model/privacy/PrivacyRecordItem;",
            ">;)",
            "Lcom/baidu/model/privacy/PrivacyRecordItem;"
        }
    .end annotation

    .line 440
    .local p1, "privacyRecordItems":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/PrivacyRecordItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 441
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/model/privacy/PrivacyRecordItem;

    :goto_0
    nop

    .line 442
    .local v0, "item":Lcom/baidu/model/privacy/PrivacyRecordItem;
    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 412
    :try_start_0
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld/a/b/c/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    .line 411
    .end local p0    # "this":Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/model/privacy/DbOpEntry;)V
    .locals 3
    .param p2, "dayTime"    # Ljava/lang/String;
    .param p3, "lastDayTime"    # Ljava/lang/String;
    .param p4, "nextDayTime"    # Ljava/lang/String;
    .param p5, "opEntry"    # Lcom/baidu/model/privacy/DbOpEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/model/privacy/PrivacyRecordItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/model/privacy/DbOpEntry;",
            ")V"
        }
    .end annotation

    .line 417
    .local p1, "privacyRecordItems":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/PrivacyRecordItem;>;"
    invoke-virtual {p0, p5}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Lcom/baidu/model/privacy/DbOpEntry;)Lcom/baidu/model/privacy/PrivacyRecordItem;

    move-result-object v0

    .line 418
    .local v0, "item":Lcom/baidu/model/privacy/PrivacyRecordItem;
    invoke-virtual {v0, p2}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setDate(Ljava/lang/String;)V

    .line 419
    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    goto :goto_0

    .line 423
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    goto :goto_0

    .line 426
    :cond_1
    new-instance v1, Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-direct {v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;-><init>()V

    .line 427
    .local v1, "segmentItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    invoke-virtual {v1, p2}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setDate(Ljava/lang/String;)V

    .line 428
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    .line 429
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    goto :goto_0

    .line 433
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    .line 436
    .end local v1    # "segmentItem":Lcom/baidu/model/privacy/PrivacyRecordItem;
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method
