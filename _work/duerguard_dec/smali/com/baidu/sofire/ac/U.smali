.class public Lcom/baidu/sofire/ac/U;
.super Ljava/lang/Object;
.source "U.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sofire/ac/U$UpgradeResult;
    }
.end annotation


# static fields
.field public static final FROM_DAILY_ALARM:I = 0x6

.field public static final FROM_DEFAULT:I = 0x0

.field public static final FROM_HANDLE_REMOVE:I = 0x4

.field public static final FROM_HOST_CALL:I = 0x7

.field public static final FROM_INIT:I = 0x1

.field public static final FROM_INIT_ALARM:I = 0x2

.field public static final FROM_NET_CHANGE:I = 0x3

.field public static final FROM_OUT_FLASH:I = 0x5

.field public static final MINUTE:I = 0xea60

.field public static final MODULE_LOAD_ERROR_CHECK_FAIL:I = 0x4

.field public static final MODULE_LOAD_ERROR_CLOUD_NULL:I = 0x5

.field public static final MODULE_LOAD_ERROR_DECRYPT_FAIL:I = 0x3

.field public static final MODULE_LOAD_ERROR_EXCEPTION:I = 0x6

.field public static final MODULE_LOAD_ERROR_HOST_INFO:I = 0x7

.field public static final MODULE_LOAD_ERROR_LOAD_FAIL:I = 0x2

.field public static final MODULE_LOAD_ERROR_NETWORK:I = 0x1

.field public static final MODULE_LOAD_ERROR_OTHER:I = 0xb

.field public static final MODULE_LOAD_ERROR_POLICY:I = 0xa

.field public static final MODULE_LOAD_ERROR_PROCESS:I = 0x9

.field public static final MODULE_LOAD_ERROR_TOO_CLOSE:I = 0x8

.field public static final NETWORK_TYPE_2G:I = 0x1

.field public static final NETWORK_TYPE_3G:I = 0x2

.field public static final NETWORK_TYPE_4G:I = 0x3

.field public static final NETWORK_TYPE_MOBILE:I = 0x5

.field public static final NETWORK_TYPE_UNCONNECTED:I = -0x1

.field public static final NETWORK_TYPE_UNKNOWN:I = -0x2

.field public static final NETWORK_TYPE_WIFI:I = 0x4

.field public static final OUT_AES_FAIL:I = 0x8

.field public static final OUT_FINISH:I = 0x1

.field public static final OUT_NO_INTERNET:I = 0x3

.field public static final OUT_NULL_APPKEY:I = 0x5

.field public static final OUT_NULL_HOST_PKGINFO:I = 0x6

.field public static final OUT_NULL_PLUGIN_JSON:I = 0xa

.field public static final OUT_NULL_RESPONSE_JSON:I = 0x9

.field public static final OUT_OTHER_THROWABLE:I = 0xb

.field public static final OUT_PING_FAIL:I = 0x4

.field public static final OUT_RESPONSE_EMPTY:I = 0x7

.field public static final OUT_TIME_TOO_CLOSE:I = 0x2

.field public static final OUT_UNSET:I = 0x0

.field public static final TYPE_END:I = 0x1

.field public static final TYPE_START:I = 0x0

.field public static final UPGRADE_DECRYPT_FAIL:I = 0x7

.field public static final UPGRADE_DOWNLOAD_FAIL:I = 0x4

.field public static final UPGRADE_ERROR_CRASH_TIMES:I = 0x6

.field public static final UPGRADE_LOAD_FAIL:I = 0x5

.field public static final UPGRADE_MD5_FAIL:I = 0x8

.field public static final UPGRADE_NETWORK_CHECK_FAIL:I = 0x3

.field public static final UPGRADE_RESULT_EXCEPTION:I = 0x2

.field public static final UPGRADE_RESULT_SUCCESS:I = 0x1

.field public static sCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/baidu/sofire/ac/BDModuleLoadCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sIsRunning:Z

.field public static sLastCheckTime:J

.field public static sMonitorNetworkWhenUpgradeNoNet:Z

.field public static volatile sOutGoing:Z

.field public static sRealtimeMd5Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sRetryDownoadHostCareApksTimesCount:I

.field public static sRetryPingTimesCount:I

.field public static sSetRetrmAlarm:Z


# instance fields
.field public context:Landroid/content/Context;

.field public forHostAPP:Ld/a/g/d/f;

.field public loadedPluginDB:Ld/a/g/a/a;

.field public mCloudKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDownloadPluginsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mEndReason:I

.field public mFrom:I

.field public mOut:Z

.field public mPreferenceManager:Ld/a/g/h/a;

.field public mStartKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mStartNetwork:I

.field public mUnloadPluginsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUpgradeResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/baidu/sofire/ac/U$UpgradeResult;",
            ">;"
        }
    .end annotation
.end field

.field public mWholeJson:Lorg/json/JSONObject;

.field public tmpDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/sofire/ac/U;->sCallbackMap:Ljava/util/Map;

    .line 118
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/sofire/ac/U;->sLastCheckTime:J

    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/sofire/ac/U;->sOutGoing:Z

    .line 124
    sput-boolean v0, Lcom/baidu/sofire/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    .line 125
    sput v0, Lcom/baidu/sofire/ac/U;->sRetryPingTimesCount:I

    .line 126
    sput v0, Lcom/baidu/sofire/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    .line 127
    sput-boolean v0, Lcom/baidu/sofire/ac/U;->sSetRetrmAlarm:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/sofire/ac/U;->mFrom:I

    .line 122
    iput v0, p0, Lcom/baidu/sofire/ac/U;->mEndReason:I

    .line 123
    iput-boolean v0, p0, Lcom/baidu/sofire/ac/U;->mOut:Z

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mCloudKeyMap:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mUnloadPluginsList:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mDownloadPluginsList:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    .line 134
    const/4 v0, -0x2

    iput v0, p0, Lcom/baidu/sofire/ac/U;->mStartNetwork:I

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/sofire/ac/U;->mFrom:I

    .line 122
    iput v0, p0, Lcom/baidu/sofire/ac/U;->mEndReason:I

    .line 123
    iput-boolean v0, p0, Lcom/baidu/sofire/ac/U;->mOut:Z

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mCloudKeyMap:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mUnloadPluginsList:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mDownloadPluginsList:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    .line 134
    const/4 v0, -0x2

    iput v0, p0, Lcom/baidu/sofire/ac/U;->mStartNetwork:I

    .line 154
    iput-object p1, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    .line 155
    invoke-static {p1}, Ld/a/g/a/a;->a(Landroid/content/Context;)Ld/a/g/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    .line 156
    invoke-static {p1}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 157
    invoke-static {p1}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->forHostAPP:Ld/a/g/d/f;

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, ".tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->tmpDir:Ljava/io/File;

    .line 159
    iput p2, p0, Lcom/baidu/sofire/ac/U;->mFrom:I

    .line 160
    iput-boolean p3, p0, Lcom/baidu/sofire/ac/U;->mOut:Z

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLorg/json/JSONObject;)V
    .locals 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/sofire/ac/U;->mFrom:I

    .line 122
    iput v0, p0, Lcom/baidu/sofire/ac/U;->mEndReason:I

    .line 123
    iput-boolean v0, p0, Lcom/baidu/sofire/ac/U;->mOut:Z

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mCloudKeyMap:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mUnloadPluginsList:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mDownloadPluginsList:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    .line 134
    const/4 v0, -0x2

    iput v0, p0, Lcom/baidu/sofire/ac/U;->mStartNetwork:I

    .line 164
    iput-object p1, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    .line 165
    invoke-static {p1}, Ld/a/g/a/a;->a(Landroid/content/Context;)Ld/a/g/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    .line 166
    invoke-static {p1}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 167
    invoke-static {p1}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->forHostAPP:Ld/a/g/d/f;

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, ".tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->tmpDir:Ljava/io/File;

    .line 169
    iput p2, p0, Lcom/baidu/sofire/ac/U;->mFrom:I

    .line 170
    iput-boolean p3, p0, Lcom/baidu/sofire/ac/U;->mOut:Z

    .line 171
    iput-object p4, p0, Lcom/baidu/sofire/ac/U;->mWholeJson:Lorg/json/JSONObject;

    .line 172
    return-void
.end method

.method public static synthetic access$000(Lcom/baidu/sofire/ac/U;Lcom/baidu/sofire/core/ApkInfo;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/baidu/sofire/ac/U;->handlePluginUpgrade(Lcom/baidu/sofire/core/ApkInfo;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/baidu/sofire/ac/U;Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;Ljava/io/File;I)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/sofire/ac/U;->handlePluginDownload(Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;Ljava/io/File;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/baidu/sofire/ac/U;Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;ILjava/util/List;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/sofire/ac/U;->handlePluginDownError(Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;ILjava/util/List;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/sofire/ac/U;)Ld/a/g/a/a;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    return-object p0
.end method

.method public static declared-synchronized addCallback(ILcom/baidu/sofire/ac/BDModuleLoadCallback;)V
    .locals 3

    const-class v0, Lcom/baidu/sofire/ac/U;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/baidu/sofire/ac/U;->sCallbackMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 192
    if-nez v1, :cond_0

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object p1, Lcom/baidu/sofire/ac/U;->sCallbackMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit v0

    return-void

    .line 190
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handlePluginDownError(Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sofire/core/ApkInfo;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget v1, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 1095
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v1, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 1097
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/baidu/sofire/ac/U$UpgradeResult;

    const/4 v3, 0x4

    invoke-direct {v2, p0, p3, v3}, Lcom/baidu/sofire/ac/U$UpgradeResult;-><init>(Lcom/baidu/sofire/ac/U;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :cond_0
    iget p3, p0, Lcom/baidu/sofire/ac/U;->mFrom:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v2, 0x3

    if-ne p3, v2, :cond_4

    .line 1100
    :cond_1
    if-eqz p4, :cond_2

    iget p1, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/baidu/sofire/ac/U;->sSetRetrmAlarm:Z

    if-nez p1, :cond_2

    .line 1102
    sput-boolean v1, Lcom/baidu/sofire/ac/U;->sSetRetrmAlarm:Z

    .line 1103
    iget-object p1, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    sget p3, Lcom/baidu/sofire/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    invoke-static {p1, p3, v0}, Ld/a/g/i/a;->a(Landroid/content/Context;IZ)V

    .line 1105
    sget p1, Lcom/baidu/sofire/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    add-int/2addr p1, v1

    sput p1, Lcom/baidu/sofire/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    .line 1107
    :cond_2
    sget-boolean p1, Lcom/baidu/sofire/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    if-nez p1, :cond_4

    .line 1108
    new-instance p1, Landroid/content/IntentFilter;

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p1, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1110
    sget-object p3, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    if-nez p3, :cond_3

    .line 1111
    new-instance p3, Lcom/baidu/sofire/MyReceiver;

    invoke-direct {p3}, Lcom/baidu/sofire/MyReceiver;-><init>()V

    invoke-virtual {p3}, Lcom/baidu/sofire/MyReceiver;->a()Lcom/baidu/sofire/MyReceiver;

    move-result-object p3

    sput-object p3, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    goto :goto_0

    .line 1113
    :cond_3
    invoke-virtual {p3}, Lcom/baidu/sofire/MyReceiver;->a()Lcom/baidu/sofire/MyReceiver;

    .line 1115
    :goto_0
    iget-object p3, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    sget-object p4, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    invoke-static {p3, p4, p1}, Ld/a/g/i/c;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 1116
    sput-boolean v1, Lcom/baidu/sofire/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    .line 1121
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iget-object p1, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 6427
    iget-object v2, p1, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    const-string v5, "pu_ap_fd"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 6428
    cmp-long v2, v5, v3

    if-nez v2, :cond_5

    .line 6429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 6430
    invoke-virtual {p1}, Ld/a/g/h/a;->d()V

    .line 6432
    :cond_5
    nop

    .line 1121
    sub-long/2addr p3, v5

    const-wide/32 v2, 0x5265c00

    cmp-long p1, p3, v2

    if-lez p1, :cond_7

    .line 1123
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1124
    iget-object p3, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {p3}, Ld/a/g/i/c;->e(Landroid/content/Context;)Z

    move-result p3

    const-string p4, "1"

    const-string v2, "0"

    if-eqz p3, :cond_6

    .line 1125
    iget-object p3, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {p3}, Ld/a/g/h/a;->e()I

    move-result p3

    add-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    iget-object p3, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {p3}, Ld/a/g/h/a;->f()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1128
    :cond_6
    iget-object p3, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {p3}, Ld/a/g/h/a;->e()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    iget-object p3, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {p3}, Ld/a/g/h/a;->f()I

    move-result p3

    add-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    :goto_1
    iget-object p3, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {p3, v0}, Ld/a/g/h/a;->a(I)V

    .line 1132
    iget-object p3, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {p3, v0}, Ld/a/g/h/a;->b(I)V

    .line 1133
    iget-object p3, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {p3}, Ld/a/g/h/a;->d()V

    .line 1134
    iget-object p3, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    const-string p4, "1003116"

    invoke-static {p3, p4, p1, v0}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1135
    goto :goto_2

    .line 1136
    :cond_7
    iget-object p1, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {p1}, Ld/a/g/i/c;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1137
    iget-object p1, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 1138
    invoke-virtual {p1}, Ld/a/g/h/a;->e()I

    move-result p3

    add-int/2addr p3, v1

    invoke-virtual {p1, p3}, Ld/a/g/h/a;->a(I)V

    goto :goto_2

    .line 1140
    :cond_8
    iget-object p1, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 1141
    invoke-virtual {p1}, Ld/a/g/h/a;->f()I

    move-result p3

    add-int/2addr p3, v1

    invoke-virtual {p1, p3}, Ld/a/g/h/a;->b(I)V

    .line 1148
    :goto_2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1149
    return-void
.end method

.method private handlePluginDownload(Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;Ljava/io/File;I)Z
    .locals 6

    .line 1021
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1022
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1024
    :cond_0
    const-string v1, "com.baidu.input_huawei"

    iget-object v2, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    iget-object v1, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v1}, Ld/a/g/h/a;->w()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1026
    return v0

    .line 1031
    :cond_1
    iget-object v1, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v1}, Ld/a/g/i/r;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1032
    new-instance v1, Ld/a/g/i/r;

    iget-object v2, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Ld/a/g/i/r;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/baidu/sofire/core/ApkInfo;->downloadURL:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Ld/a/g/i/r;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    goto :goto_0

    .line 1034
    :cond_2
    new-instance v1, Ld/a/g/i/m;

    iget-object v2, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Ld/a/g/i/m;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/baidu/sofire/core/ApkInfo;->downloadURL:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Ld/a/g/i/m;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    .line 1041
    :goto_0
    if-eqz v1, :cond_6

    .line 1042
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1046
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 1049
    :cond_3
    new-instance v2, Lcom/baidu/sofire/jni/Asc;

    invoke-direct {v2}, Lcom/baidu/sofire/jni/Asc;-><init>()V

    .line 1051
    iget-object v2, p1, Lcom/baidu/sofire/core/ApkInfo;->signMD5:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1052
    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->signMD5:Ljava/lang/String;

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1053
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1054
    invoke-static {p2, p3, v2}, Ld/a/g/i/h;->a(Ljava/io/File;Ljava/io/File;[B)I

    move-result v2

    .line 1055
    if-eqz v2, :cond_5

    .line 1059
    iget-object v1, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget v2, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 1060
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1061
    iget-object v1, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v2, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/baidu/sofire/ac/U$UpgradeResult;

    const/4 v4, 0x7

    invoke-direct {v3, p0, p4, v4}, Lcom/baidu/sofire/ac/U$UpgradeResult;-><init>(Lcom/baidu/sofire/ac/U;II)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    :cond_4
    move v1, v0

    .line 1066
    :cond_5
    goto :goto_1

    .line 1067
    :cond_6
    iget-object v2, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 1068
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1069
    iget-object v2, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/baidu/sofire/ac/U$UpgradeResult;

    const/4 v5, 0x4

    invoke-direct {v4, p0, p4, v5}, Lcom/baidu/sofire/ac/U$UpgradeResult;-><init>(Lcom/baidu/sofire/ac/U;II)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :cond_7
    :goto_1
    invoke-static {p3}, Ld/a/g/i/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    .line 1081
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1082
    if-eqz v1, :cond_8

    iget-object p1, p1, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_8

    .line 1083
    const/4 p1, 0x1

    return p1

    .line 1087
    :cond_8
    goto :goto_2

    .line 1085
    :catch_0
    move-exception p1

    .line 1086
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1088
    :goto_2
    return v0
.end method

.method private handlePluginUpgrade(Lcom/baidu/sofire/core/ApkInfo;)V
    .locals 17

    .line 1153
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v0, "-"

    const/4 v10, 0x3

    :try_start_0
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v1}, Ld/a/g/i/c;->k(Landroid/content/Context;)I

    move-result v13

    .line 1157
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v1}, Ld/a/g/h/a;->p()Ljava/util/List;

    move-result-object v14

    .line 1158
    iget v1, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1159
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    iget v2, v9, Lcom/baidu/sofire/core/ApkInfo;->network:I

    invoke-static {v1, v2}, Ld/a/g/i/c;->b(Landroid/content/Context;I)Z

    move-result v1

    .line 1160
    if-nez v1, :cond_1

    .line 1161
    iget-object v0, v8, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget v1, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 1162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    iget-object v0, v8, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v1, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/baidu/sofire/ac/U$UpgradeResult;

    invoke-direct {v2, v8, v13, v10}, Lcom/baidu/sofire/ac/U$UpgradeResult;-><init>(Lcom/baidu/sofire/ac/U;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    :cond_0
    return-void

    .line 1169
    :cond_1
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->tmpDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1170
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->tmpDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1172
    :cond_2
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v2, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    const v15, 0x989680

    add-int/2addr v2, v15

    .line 1173
    invoke-virtual {v1, v2}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v7

    .line 1174
    new-instance v4, Ljava/io/File;

    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->tmpDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1175
    new-instance v6, Ljava/io/File;

    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->tmpDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1177
    nop

    .line 1178
    nop

    .line 1179
    nop

    .line 1180
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1182
    invoke-static {v6}, Ld/a/g/i/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1183
    iget-object v1, v9, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1187
    nop

    .line 1188
    const/4 v0, 0x0

    const/16 v16, 0x1

    goto :goto_0

    .line 1195
    :cond_3
    const/4 v0, 0x1

    const/16 v16, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 1196
    iget-boolean v0, v9, Lcom/baidu/sofire/core/ApkInfo;->isNextLoad:Z

    if-eqz v0, :cond_4

    .line 1198
    iget-object v0, v8, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object v0

    new-instance v5, Lcom/baidu/sofire/ac/U$3;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v11, v5

    move-object v5, v6

    move-object v10, v6

    move v6, v13

    move-object v12, v7

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sofire/ac/U$3;-><init>(Lcom/baidu/sofire/ac/U;Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;Ljava/io/File;ILjava/util/List;)V

    invoke-virtual {v0, v11}, Ld/a/g/i/w;->a(Ljava/lang/Runnable;)I

    goto :goto_1

    .line 1229
    :cond_4
    move-object v10, v6

    move-object v12, v7

    invoke-direct {v8, v9, v4, v10, v13}, Lcom/baidu/sofire/ac/U;->handlePluginDownload(Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;Ljava/io/File;I)Z

    move-result v16

    .line 1233
    nop

    .line 1234
    xor-int/lit8 v11, v16, 0x1

    if-eqz v12, :cond_6

    .line 1235
    iget-object v0, v8, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v1, v12, Lcom/baidu/sofire/core/ApkInfo;->key:I

    add-int/2addr v1, v15

    invoke-virtual {v0, v1}, Ld/a/g/a/a;->h(I)V

    .line 1236
    iget-object v0, v12, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1237
    new-instance v0, Ljava/io/File;

    iget-object v1, v12, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1239
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1195
    :cond_5
    move-object v10, v6

    move-object v12, v7

    .line 1245
    :goto_1
    const/4 v11, 0x0

    :cond_6
    :goto_2
    if-eqz v16, :cond_7

    .line 1250
    invoke-direct {v8, v10, v9, v13}, Lcom/baidu/sofire/ac/U;->pluginUpdate(Ljava/io/File;Lcom/baidu/sofire/core/ApkInfo;I)V

    goto/16 :goto_7

    .line 1253
    :cond_7
    nop

    .line 1255
    const/4 v0, 0x0

    if-eqz v12, :cond_f

    .line 1259
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v2, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v1, v2}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v1

    .line 1260
    if-eqz v1, :cond_9

    .line 1262
    iget-object v2, v12, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    iget-object v1, v1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 1263
    invoke-static {v2, v1}, Ld/a/g/i/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    .line 1271
    :cond_9
    :goto_3
    const/4 v1, 0x1

    .line 1273
    :goto_4
    iget-object v2, v12, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1274
    iget-object v2, v12, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    iget-object v3, v9, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1278
    nop

    .line 1279
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v2, v12, Lcom/baidu/sofire/core/ApkInfo;->key:I

    add-int/2addr v2, v15

    iget-object v3, v12, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ld/a/g/a/a;->a(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 1284
    :cond_a
    nop

    .line 1285
    iget-object v2, v12, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1286
    new-instance v2, Ljava/io/File;

    iget-object v3, v12, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 1285
    :cond_b
    move-object v2, v0

    .line 1288
    :goto_5
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v1, :cond_e

    .line 1290
    invoke-static {v2}, Ld/a/g/i/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1291
    iget-object v3, v12, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1292
    iget v1, v12, Lcom/baidu/sofire/core/ApkInfo;->key:I

    sub-int/2addr v1, v15

    iput v1, v12, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 1293
    iget-object v1, v12, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1294
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 1300
    :cond_c
    nop

    .line 1301
    invoke-direct {v8, v2, v12, v13}, Lcom/baidu/sofire/ac/U;->pluginUpdate(Ljava/io/File;Lcom/baidu/sofire/core/ApkInfo;I)V

    const/4 v1, 0x1

    goto :goto_6

    .line 1303
    :cond_d
    nop

    .line 1304
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v3, v12, Lcom/baidu/sofire/core/ApkInfo;->key:I

    add-int/2addr v3, v15

    iget-object v4, v12, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ld/a/g/a/a;->a(ILjava/lang/String;)V

    .line 1307
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1309
    const/4 v1, 0x0

    goto :goto_6

    .line 1310
    :cond_e
    const/4 v1, 0x0

    goto :goto_6

    .line 1255
    :cond_f
    const/4 v1, 0x0

    .line 1313
    :goto_6
    if-nez v1, :cond_10

    .line 1317
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    .line 1319
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld/a/g/d/n;->a(Landroid/content/Context;)Ld/a/g/d/n;

    move-result-object v1

    .line 1320
    iget-object v2, v9, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 1321
    invoke-virtual {v1, v2}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v1

    .line 1322
    if-nez v1, :cond_10

    .line 1323
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->forHostAPP:Ld/a/g/d/f;

    iget v2, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget-object v3, v9, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Ld/a/g/d/f;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z

    .line 1327
    :cond_10
    :goto_7
    if-eqz v11, :cond_11

    .line 1329
    invoke-direct {v8, v9, v10, v13, v14}, Lcom/baidu/sofire/ac/U;->handlePluginDownError(Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :cond_11
    return-void

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1335
    const/4 v1, 0x2

    :try_start_1
    iget-object v0, v8, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, v8, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget v2, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 1336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1337
    iget-object v0, v8, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/c;->k(Landroid/content/Context;)I

    move-result v0

    .line 1338
    iget-object v2, v8, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget v3, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/baidu/sofire/ac/U$UpgradeResult;

    invoke-direct {v4, v8, v0, v1}, Lcom/baidu/sofire/ac/U$UpgradeResult;-><init>(Lcom/baidu/sofire/ac/U;II)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1343
    :cond_12
    goto :goto_8

    .line 1341
    :catch_1
    move-exception v0

    .line 1342
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1345
    :goto_8
    :try_start_2
    iget-object v0, v8, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v0}, Ld/a/g/h/a;->p()Ljava/util/List;

    move-result-object v0

    .line 1346
    iget v2, v8, Lcom/baidu/sofire/ac/U;->mFrom:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_13

    iget v2, v8, Lcom/baidu/sofire/ac/U;->mFrom:I

    if-eq v2, v1, :cond_13

    iget v1, v8, Lcom/baidu/sofire/ac/U;->mFrom:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    .line 1347
    :cond_13
    iget v1, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/baidu/sofire/ac/U;->sSetRetrmAlarm:Z

    if-nez v0, :cond_14

    .line 1349
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/sofire/ac/U;->sSetRetrmAlarm:Z

    .line 1350
    iget-object v0, v8, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    sget v1, Lcom/baidu/sofire/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ld/a/g/i/a;->a(Landroid/content/Context;IZ)V

    .line 1352
    sget v0, Lcom/baidu/sofire/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/baidu/sofire/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    .line 1354
    :cond_14
    sget-boolean v0, Lcom/baidu/sofire/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    if-nez v0, :cond_16

    .line 1355
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1357
    sget-object v1, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    if-nez v1, :cond_15

    .line 1358
    new-instance v1, Lcom/baidu/sofire/MyReceiver;

    invoke-direct {v1}, Lcom/baidu/sofire/MyReceiver;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/sofire/MyReceiver;->a()Lcom/baidu/sofire/MyReceiver;

    move-result-object v1

    sput-object v1, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    goto :goto_9

    .line 1360
    :cond_15
    sget-object v1, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    invoke-virtual {v1}, Lcom/baidu/sofire/MyReceiver;->a()Lcom/baidu/sofire/MyReceiver;

    .line 1362
    :goto_9
    iget-object v1, v8, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    sget-object v2, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    invoke-static {v1, v2, v0}, Ld/a/g/i/c;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 1364
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/sofire/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1370
    :cond_16
    return-void

    .line 1368
    :catch_2
    move-exception v0

    .line 1369
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1373
    return-void
.end method

.method private handleThreadEnd(Ljava/lang/String;)V
    .locals 16

    .line 737
    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    iget-object v4, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 738
    invoke-virtual {v4}, Ld/a/g/h/a;->s()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ld/a/g/h/a;->g(I)V

    .line 739
    iget v0, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    iget v4, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    iget v6, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    .line 741
    invoke-virtual {v5, v3, v6}, Ld/a/g/h/a;->a(II)I

    move-result v5

    add-int/2addr v5, v3

    .line 740
    invoke-virtual {v0, v3, v4, v5}, Ld/a/g/h/a;->a(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :cond_0
    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 746
    :goto_0
    const/4 v4, 0x0

    .line 748
    const/4 v5, 0x0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 749
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mStartKeyMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "1"

    if-eqz v6, :cond_1

    .line 750
    :try_start_2
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mStartKeyMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string v6, "2"

    iget-object v8, v1, Lcom/baidu/sofire/ac/U;->mStartKeyMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_1
    const-string v6, "3"

    iget v8, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mCloudKeyMap:Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 755
    const-string v6, "4"

    iget-object v8, v1, Lcom/baidu/sofire/ac/U;->mCloudKeyMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string v6, "5"

    iget-object v8, v1, Lcom/baidu/sofire/ac/U;->mCloudKeyMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :cond_2
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mUnloadPluginsList:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 759
    const-string v6, "6"

    iget-object v8, v1, Lcom/baidu/sofire/ac/U;->mUnloadPluginsList:Ljava/util/List;

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_3
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mDownloadPluginsList:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 762
    const-string v6, "7"

    iget-object v8, v1, Lcom/baidu/sofire/ac/U;->mDownloadPluginsList:Ljava/util/List;

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_4
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v6, :cond_7

    .line 765
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 766
    iget-object v8, v1, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 767
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 768
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 769
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/sofire/ac/U$UpgradeResult;

    .line 770
    if-eqz v9, :cond_5

    .line 771
    iget v12, v9, Lcom/baidu/sofire/ac/U$UpgradeResult;->networkId:I

    invoke-virtual {v10, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 772
    const-string v12, "0"

    iget v9, v9, Lcom/baidu/sofire/ac/U$UpgradeResult;->resultId:I

    invoke-virtual {v10, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 774
    :cond_5
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 775
    goto :goto_1

    .line 776
    :cond_6
    const-string v7, "8"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    :cond_7
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    invoke-virtual {v6}, Ld/a/g/a/a;->b()Ljava/util/Map;

    move-result-object v4

    .line 780
    const-string v6, "9"

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string v6, "10"

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string v6, "11"

    iget v7, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 785
    const-string v6, "12"

    const-string v7, "\n"

    .line 786
    move-object/from16 v8, p1

    invoke-virtual {v8, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\r"

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    :cond_8
    const-string v2, "13"

    iget v6, v1, Lcom/baidu/sofire/ac/U;->mStartNetwork:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const-string v2, "14"

    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v6}, Ld/a/g/i/c;->k(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v2, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    const-string v6, "1003129"

    invoke-static {v2, v6, v0, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 793
    goto :goto_2

    .line 791
    :catch_1
    move-exception v0

    .line 792
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 795
    :goto_2
    :try_start_3
    sget-object v0, Lcom/baidu/sofire/ac/U;->sCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 796
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 797
    nop

    .line 798
    nop

    .line 799
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 800
    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/16 v11, 0x8

    const/4 v12, 0x3

    const/4 v13, 0x5

    const/16 v14, 0xb

    if-eqz v4, :cond_9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 802
    goto/16 :goto_4

    .line 803
    :cond_9
    iget-object v15, v1, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz v15, :cond_10

    iget-object v15, v1, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 805
    iget-object v3, v1, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/sofire/ac/U$UpgradeResult;

    .line 806
    iget v3, v3, Lcom/baidu/sofire/ac/U$UpgradeResult;->resultId:I

    if-eq v3, v8, :cond_f

    if-eq v3, v12, :cond_e

    if-eq v3, v7, :cond_d

    if-eq v3, v13, :cond_c

    if-eq v3, v10, :cond_b

    if-eq v3, v11, :cond_a

    .line 826
    nop

    .line 829
    move v3, v5

    goto/16 :goto_4

    .line 823
    :cond_a
    nop

    .line 824
    move v3, v5

    move v14, v7

    goto/16 :goto_4

    .line 820
    :cond_b
    nop

    .line 821
    move v3, v5

    move v14, v12

    goto/16 :goto_4

    .line 817
    :cond_c
    nop

    .line 818
    move v3, v5

    move v14, v8

    goto/16 :goto_4

    .line 814
    :cond_d
    nop

    .line 815
    move v3, v5

    const/4 v14, 0x1

    goto/16 :goto_4

    .line 811
    :cond_e
    nop

    .line 812
    move v3, v5

    const/4 v14, 0x1

    goto/16 :goto_4

    .line 808
    :cond_f
    nop

    .line 809
    move v3, v5

    move v14, v9

    goto/16 :goto_4

    .line 831
    :cond_10
    iget v3, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    packed-switch v3, :pswitch_data_0

    .line 870
    :pswitch_0
    move v3, v5

    goto :goto_4

    .line 867
    :pswitch_1
    nop

    .line 868
    move v3, v5

    move v14, v9

    goto :goto_4

    .line 864
    :pswitch_2
    nop

    .line 865
    move v3, v5

    move v14, v13

    goto :goto_4

    .line 861
    :pswitch_3
    nop

    .line 862
    move v3, v5

    move v14, v13

    goto :goto_4

    .line 858
    :pswitch_4
    nop

    .line 859
    move v3, v5

    move v14, v12

    goto :goto_4

    .line 855
    :pswitch_5
    nop

    .line 856
    move v3, v5

    const/4 v14, 0x1

    goto :goto_4

    .line 852
    :pswitch_6
    nop

    .line 853
    move v3, v5

    move v14, v10

    goto :goto_4

    .line 849
    :pswitch_7
    nop

    .line 850
    move v3, v5

    const/4 v14, 0x1

    goto :goto_4

    .line 846
    :pswitch_8
    nop

    .line 847
    move v3, v5

    const/4 v14, 0x1

    goto :goto_4

    .line 843
    :pswitch_9
    nop

    .line 844
    move v3, v5

    move v14, v11

    goto :goto_4

    .line 834
    :pswitch_a
    iget-object v3, v1, Lcom/baidu/sofire/ac/U;->mCloudKeyMap:Ljava/util/Map;

    if-eqz v3, :cond_11

    iget-object v3, v1, Lcom/baidu/sofire/ac/U;->mCloudKeyMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 836
    move v3, v5

    move v14, v13

    goto :goto_4

    .line 839
    :cond_11
    nop

    .line 841
    move v3, v5

    .line 874
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/sofire/ac/BDModuleLoadCallback;

    .line 875
    if-eqz v3, :cond_12

    .line 876
    invoke-interface {v7, v6}, Lcom/baidu/sofire/ac/BDModuleLoadCallback;->onSuccess(I)V

    goto :goto_5

    .line 878
    :cond_12
    invoke-interface {v7, v6, v14}, Lcom/baidu/sofire/ac/BDModuleLoadCallback;->onFailure(II)V

    .line 880
    goto :goto_5

    .line 881
    :cond_13
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 882
    :cond_14
    sget-object v0, Lcom/baidu/sofire/ac/U;->sCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 883
    sput-boolean v5, Lcom/baidu/sofire/ac/U;->sIsRunning:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 886
    return-void

    .line 884
    :catch_2
    move-exception v0

    .line 885
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 887
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleThreadStart()V
    .locals 12

    .line 894
    const/16 v0, 0xb

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 5845
    iget-object v4, v4, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v5, "slruct"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 894
    nop

    .line 895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 896
    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    sub-long v4, v8, v4

    const-wide/32 v10, 0x5265c00

    cmp-long v4, v4, v10

    if-lez v4, :cond_2

    .line 897
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 898
    const-string v5, "1"

    iget-object v6, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v6}, Ld/a/g/h/a;->r()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object v5, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v5, v3}, Ld/a/g/h/a;->f(I)V

    .line 900
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 901
    move v6, v2

    :goto_0
    if-gt v6, v1, :cond_0

    .line 902
    iget-object v7, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v7, v3, v6}, Ld/a/g/h/a;->a(II)I

    move-result v7

    .line 903
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 904
    iget-object v7, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v7, v3, v6, v3}, Ld/a/g/h/a;->a(III)V

    .line 901
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 906
    :cond_0
    const-string v6, "2"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string v5, "3"

    iget-object v6, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v6}, Ld/a/g/h/a;->s()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    iget-object v5, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v5, v3}, Ld/a/g/h/a;->g(I)V

    .line 909
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 910
    move v6, v2

    :goto_1
    if-gt v6, v0, :cond_1

    .line 911
    iget-object v7, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v7, v2, v6}, Ld/a/g/h/a;->a(II)I

    move-result v7

    .line 912
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 913
    iget-object v7, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v7, v2, v6, v3}, Ld/a/g/h/a;->a(III)V

    .line 910
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 915
    :cond_1
    const-string v6, "4"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v5, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    const-string v6, "1003128"

    invoke-static {v5, v6, v4, v3}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 917
    iget-object v4, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v4, v8, v9}, Ld/a/g/h/a;->a(J)V

    .line 918
    goto :goto_5

    :cond_2
    if-nez v6, :cond_3

    .line 920
    iget-object v4, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v4, v8, v9}, Ld/a/g/h/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :cond_3
    goto :goto_5

    .line 922
    :catch_0
    move-exception v4

    .line 925
    :try_start_1
    iget-object v4, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v4, v3}, Ld/a/g/h/a;->f(I)V

    .line 926
    iget-object v4, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v4, v3}, Ld/a/g/h/a;->g(I)V

    .line 927
    move v4, v2

    :goto_2
    if-gt v4, v1, :cond_4

    .line 928
    iget-object v5, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v5, v3, v4, v3}, Ld/a/g/h/a;->a(III)V

    .line 927
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 930
    :cond_4
    move v1, v2

    :goto_3
    if-gt v1, v0, :cond_5

    .line 931
    iget-object v4, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v4, v2, v1, v3}, Ld/a/g/h/a;->a(III)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 930
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 935
    :cond_5
    goto :goto_4

    .line 933
    :catch_1
    move-exception v0

    .line 934
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 936
    :goto_4
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 940
    :goto_5
    :try_start_2
    iget-object v0, p0, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    invoke-virtual {v0}, Ld/a/g/a/a;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mStartKeyMap:Ljava/util/Map;

    .line 941
    iget-object v0, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    iget-object v1, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 942
    invoke-virtual {v1}, Ld/a/g/h/a;->r()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ld/a/g/h/a;->f(I)V

    .line 943
    iget v0, p0, Lcom/baidu/sofire/ac/U;->mFrom:I

    if-eqz v0, :cond_6

    .line 944
    iget-object v0, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    iget v1, p0, Lcom/baidu/sofire/ac/U;->mFrom:I

    iget-object v4, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    iget v5, p0, Lcom/baidu/sofire/ac/U;->mFrom:I

    .line 945
    invoke-virtual {v4, v3, v5}, Ld/a/g/h/a;->a(II)I

    move-result v4

    add-int/2addr v4, v2

    .line 944
    invoke-virtual {v0, v3, v1, v4}, Ld/a/g/h/a;->a(III)V

    .line 947
    :cond_6
    iget-object v0, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/i/c;->k(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/sofire/ac/U;->mStartNetwork:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 950
    return-void

    .line 948
    :catch_2
    move-exception v0

    .line 949
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 952
    return-void
.end method

.method private pluginUpdate(Ljava/io/File;Lcom/baidu/sofire/core/ApkInfo;I)V
    .locals 10

    .line 955
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ld/a/g/i/c;->a(Ljava/lang/String;Z)V

    .line 957
    iget-object v0, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v0}, Ld/a/g/h/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".b"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 960
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 963
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 964
    invoke-static {p1, v2}, Ld/a/g/i/c;->a(Ljava/io/File;Ljava/io/File;)V

    .line 965
    iget-object v0, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    iget v3, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 966
    invoke-static {v0, v3, p1, v2}, Ld/a/g/h;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 969
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "before update, time="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", downloadAPK path:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", exists="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", canRead="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isFile="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",length"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 979
    iget-object v2, p0, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v7, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v2, v7}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v2

    .line 980
    if-nez v2, :cond_2

    .line 981
    const-string v2, "apkInDB == null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 983
    :cond_2
    new-instance v7, Ljava/io/File;

    iget-object v2, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "origAPK path:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 984
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    :goto_0
    iget-object v0, p0, Lcom/baidu/sofire/ac/U;->forHostAPP:Ld/a/g/d/f;

    .line 990
    invoke-virtual {v0, p2, p1}, Ld/a/g/d/f;->a(Lcom/baidu/sofire/core/ApkInfo;Ljava/lang/String;)Z

    move-result p1

    .line 994
    iget-object v0, p0, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v2, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    const v3, 0x989680

    add-int/2addr v2, v3

    iget-object v3, p2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ld/a/g/a/a;->a(ILjava/lang/String;)V

    .line 996
    if-nez p1, :cond_3

    .line 997
    iget-object p1, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    iget v0, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 998
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 999
    iget-object p1, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    iget p2, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/baidu/sofire/ac/U$UpgradeResult;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p3, v1}, Lcom/baidu/sofire/ac/U$UpgradeResult;-><init>(Lcom/baidu/sofire/ac/U;II)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1004
    :cond_3
    iget-object p1, p0, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v0, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {p1, v0}, Ld/a/g/a/a;->g(I)I

    move-result p1

    .line 1008
    const/4 v0, 0x3

    if-ge p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 1009
    iget-object v0, p0, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v2, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    add-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Ld/a/g/a/a;->b(II)V

    .line 1011
    :cond_4
    iget-object p1, p0, Lcom/baidu/sofire/ac/U;->mUpgradeResultMap:Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 1012
    iget p2, p2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/baidu/sofire/ac/U$UpgradeResult;

    invoke-direct {v0, p0, p3, v1}, Lcom/baidu/sofire/ac/U$UpgradeResult;-><init>(Lcom/baidu/sofire/ac/U;II)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    :cond_5
    return-void
.end method


# virtual methods
.method public handleWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 178
    iput-object p1, p0, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    .line 179
    invoke-static {p1}, Ld/a/g/a/a;->a(Landroid/content/Context;)Ld/a/g/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    .line 180
    invoke-static {p1}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->tmpDir:Ljava/io/File;

    .line 182
    invoke-static {p1}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sofire/ac/U;->forHostAPP:Ld/a/g/d/f;

    .line 183
    const-string v0, "from"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/baidu/sofire/ac/U;->mFrom:I

    .line 187
    invoke-static {p1}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object p1

    invoke-virtual {p1, p0}, Ld/a/g/i/w;->b(Ljava/lang/Runnable;)I

    .line 188
    return-void
.end method

.method public declared-synchronized run()V
    .locals 30

    move-object/from16 v1, p0

    monitor-enter p0

    .line 202
    const/4 v2, 0x1

    :try_start_0
    iget-boolean v3, v1, Lcom/baidu/sofire/ac/U;->mOut:Z

    if-eqz v3, :cond_1

    .line 203
    sget-boolean v3, Lcom/baidu/sofire/ac/U;->sOutGoing:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 204
    monitor-exit p0

    return-void

    .line 206
    :cond_0
    :try_start_1
    sput-boolean v2, Lcom/baidu/sofire/ac/U;->sOutGoing:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :cond_1
    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2d

    .line 209
    :catch_0
    move-exception v0

    .line 210
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    :goto_0
    const/4 v3, 0x0

    :try_start_3
    const-class v4, Lcom/baidu/sofire/ac/U;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 215
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/baidu/sofire/ac/U;->handleThreadStart()V

    .line 216
    iget v5, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    const-wide/32 v6, 0x927c0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eq v5, v2, :cond_4

    iget v5, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    if-eq v5, v9, :cond_4

    iget v5, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    if-eq v5, v10, :cond_4

    iget-boolean v5, v1, Lcom/baidu/sofire/ac/U;->mOut:Z

    if-nez v5, :cond_4

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-wide v13, Lcom/baidu/sofire/ac/U;->sLastCheckTime:J

    sub-long/2addr v11, v13

    cmp-long v5, v11, v6

    if-gez v5, :cond_4

    .line 219
    iget v2, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    if-nez v2, :cond_2

    .line 220
    iput v9, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    .line 221
    invoke-direct {v1, v8}, Lcom/baidu/sofire/ac/U;->handleThreadEnd(Ljava/lang/String;)V

    .line 223
    :cond_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 725
    :try_start_5
    iget-boolean v2, v1, Lcom/baidu/sofire/ac/U;->mOut:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/baidu/sofire/ac/U;->sOutGoing:Z

    if-eqz v2, :cond_3

    .line 726
    sput-boolean v3, Lcom/baidu/sofire/ac/U;->sOutGoing:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 730
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 728
    :catch_1
    move-exception v0

    .line 729
    :try_start_6
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 225
    :cond_4
    :try_start_7
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v5}, Ld/a/g/i/c;->f(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sput-wide v11, Lcom/baidu/sofire/ac/U;->sLastCheckTime:J

    .line 228
    :cond_5
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2027
    :try_start_8
    const-string v11, "tvshield"

    const-string v12, "sofire"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2028
    goto/16 :goto_3

    .line 2030
    :cond_6
    invoke-static {v5}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v11

    .line 2032
    nop

    .line 2809
    iget-object v12, v11, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v13, "appal_te"

    const/16 v14, 0x18

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 2032
    int-to-long v12, v12

    const-wide/32 v14, 0x36ee80

    mul-long/2addr v12, v14

    .line 2038
    const-string v14, "alarm"

    .line 2039
    invoke-virtual {v5, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AlarmManager;

    .line 2041
    new-instance v15, Landroid/content/Intent;

    const-string v8, "com.baidu.action.SOFIRE.VIEW"

    invoke-direct {v15, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2042
    const-class v8, Lcom/baidu/sofire/MyService;

    invoke-virtual {v15, v5, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2043
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2044
    const-string v8, "com.baidu.category.SOFIRE"

    invoke-virtual {v15, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2045
    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v15, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2047
    const-string v8, "from_plugin_package"

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2048
    const-string v8, "target_class"

    const-class v9, Lcom/baidu/sofire/ac/U;

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2049
    const-string v8, "target_method"

    const-string v9, "handleWork"

    invoke-virtual {v15, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2050
    const-string v8, "from"

    const/4 v9, 0x6

    invoke-virtual {v15, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2052
    const/16 v8, 0x3e8

    const/high16 v9, 0x8000000

    .line 2053
    invoke-static {v5, v8, v15, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v12

    sub-long/2addr v8, v6

    const-wide v6, 0x41324f8000000000L    # 1200000.0

    .line 2064
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    mul-double/2addr v12, v6

    double-to-long v6, v12

    add-long/2addr v8, v6

    .line 2065
    nop

    .line 3353
    iget-object v6, v11, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v7, "npuct"

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3354
    iget-object v6, v11, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2073
    :try_start_9
    invoke-virtual {v14, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2078
    goto :goto_2

    .line 2074
    :catch_2
    move-exception v0

    .line 2081
    :goto_2
    :try_start_a
    invoke-virtual {v14, v2, v8, v9, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2086
    goto :goto_3

    .line 2082
    :catch_3
    move-exception v0

    .line 2089
    goto :goto_3

    .line 2087
    :catch_4
    move-exception v0

    .line 2088
    :try_start_b
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 229
    :goto_3
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v5}, Ld/a/g/d/q;->a(Landroid/content/Context;)V

    .line 231
    iget v5, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    if-eq v5, v2, :cond_7

    iget v5, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    if-ne v5, v10, :cond_8

    .line 232
    :cond_7
    sput v3, Lcom/baidu/sofire/ac/U;->sRetryPingTimesCount:I

    .line 233
    sput v3, Lcom/baidu/sofire/ac/U;->sRetryDownoadHostCareApksTimesCount:I

    .line 234
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v5, v3, v2}, Ld/a/g/i/a;->a(Landroid/content/Context;IZ)V

    .line 235
    sput-boolean v3, Lcom/baidu/sofire/ac/U;->sSetRetrmAlarm:Z

    .line 237
    :cond_8
    iget v5, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 238
    sput-boolean v3, Lcom/baidu/sofire/ac/U;->sSetRetrmAlarm:Z

    .line 241
    :cond_9
    nop

    .line 242
    const-string v5, "com.baidu.input_huawei"

    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 243
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v5}, Ld/a/g/h/a;->w()Z

    move-result v5

    xor-int/2addr v5, v2

    goto :goto_4

    .line 242
    :cond_a
    move v5, v3

    .line 246
    :goto_4
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v6}, Ld/a/g/i/c;->f(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4e

    if-eqz v5, :cond_b

    goto/16 :goto_26

    .line 272
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/baidu/sofire/ac/U;->sLastCheckTime:J

    .line 274
    sget-object v5, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    if-eqz v5, :cond_d

    sget-boolean v5, Lcom/baidu/sofire/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    if-nez v5, :cond_c

    sget-boolean v5, Ld/a/g/i/c;->a:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v5, :cond_d

    .line 278
    :cond_c
    :try_start_c
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    .line 279
    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 282
    goto :goto_5

    .line 280
    :catch_5
    move-exception v0

    .line 281
    :try_start_d
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 285
    :cond_d
    :goto_5
    sput-boolean v3, Lcom/baidu/sofire/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    .line 286
    sput-boolean v3, Ld/a/g/i/c;->a:Z

    .line 288
    iget v5, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    if-eq v5, v2, :cond_e

    .line 289
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v5}, Ld/a/g/i/c;->n(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/sofire/ac/U;->mWholeJson:Lorg/json/JSONObject;

    .line 291
    :cond_e
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->mWholeJson:Lorg/json/JSONObject;

    if-nez v5, :cond_14

    .line 292
    iget v5, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    if-eq v5, v2, :cond_f

    iget v5, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f

    iget v5, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    if-ne v5, v10, :cond_10

    sget-boolean v5, Lcom/baidu/sofire/ac/U;->sSetRetrmAlarm:Z

    if-nez v5, :cond_10

    :cond_f
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 295
    invoke-virtual {v5}, Ld/a/g/h/a;->p()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 296
    sput-boolean v2, Lcom/baidu/sofire/ac/U;->sSetRetrmAlarm:Z

    .line 297
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    sget v6, Lcom/baidu/sofire/ac/U;->sRetryPingTimesCount:I

    invoke-static {v5, v6, v3}, Ld/a/g/i/a;->a(Landroid/content/Context;IZ)V

    .line 298
    sget v5, Lcom/baidu/sofire/ac/U;->sRetryPingTimesCount:I

    add-int/2addr v5, v2

    sput v5, Lcom/baidu/sofire/ac/U;->sRetryPingTimesCount:I

    .line 300
    :cond_10
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 302
    sget-object v6, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    if-nez v6, :cond_11

    .line 303
    new-instance v6, Lcom/baidu/sofire/MyReceiver;

    invoke-direct {v6}, Lcom/baidu/sofire/MyReceiver;-><init>()V

    invoke-virtual {v6}, Lcom/baidu/sofire/MyReceiver;->a()Lcom/baidu/sofire/MyReceiver;

    move-result-object v6

    sput-object v6, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    goto :goto_6

    .line 305
    :cond_11
    sget-object v6, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    invoke-virtual {v6}, Lcom/baidu/sofire/MyReceiver;->a()Lcom/baidu/sofire/MyReceiver;

    .line 307
    :goto_6
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    sget-object v7, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    invoke-static {v6, v7, v5}, Ld/a/g/i/c;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 309
    sput-boolean v2, Lcom/baidu/sofire/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    .line 310
    iget v2, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    if-nez v2, :cond_13

    .line 311
    sget v2, Ld/a/g/i/c;->d:I

    if-eqz v2, :cond_12

    .line 312
    sget v2, Ld/a/g/i/c;->d:I

    iput v2, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    goto :goto_7

    .line 314
    :cond_12
    const/4 v2, 0x4

    iput v2, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    .line 317
    :cond_13
    :goto_7
    new-instance v2, Landroid/accounts/NetworkErrorException;

    const-string v5, "ping faild"

    invoke-direct {v2, v5}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :cond_14
    sput v3, Lcom/baidu/sofire/ac/U;->sRetryPingTimesCount:I

    .line 322
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->forHostAPP:Ld/a/g/d/f;

    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mWholeJson:Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Ld/a/g/d/f;->a(Lorg/json/JSONObject;)V

    .line 324
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    invoke-virtual {v5}, Ld/a/g/a/a;->d()V

    .line 326
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 3755
    iget-object v6, v6, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v7, "rtqe"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 327
    add-int/2addr v6, v2

    .line 4750
    iget-object v7, v5, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v8, "rtqe"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4751
    iget-object v5, v5, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    invoke-virtual {v5}, Ld/a/g/a/a;->a()Ljava/util/List;

    move-result-object v5

    .line 333
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 335
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 336
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 338
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v11, v1, Lcom/baidu/sofire/ac/U;->mWholeJson:Lorg/json/JSONObject;

    const-string v12, "5"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 342
    if-nez v11, :cond_16

    .line 343
    iget v2, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    if-nez v2, :cond_15

    .line 344
    const/16 v2, 0xa

    iput v2, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    .line 346
    :cond_15
    new-instance v2, Landroid/accounts/NetworkErrorException;

    const-string v5, "plugin json is null"

    invoke-direct {v2, v5}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 349
    :cond_16
    nop

    .line 350
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 352
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 353
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 354
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 355
    const-string v15, "l"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 356
    const-string v10, "v"

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 357
    iget-object v3, v1, Lcom/baidu/sofire/ac/U;->mCloudKeyMap:Ljava/util/Map;

    if-eqz v3, :cond_17

    .line 358
    iget-object v3, v1, Lcom/baidu/sofire/ac/U;->mCloudKeyMap:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_17
    const-string v2, "u"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 361
    const-string v2, "m"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    const-string v3, "sm"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 363
    if-eqz v2, :cond_18

    .line 364
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 366
    :cond_18
    move-object/from16 v22, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 367
    sget-object v16, Lcom/baidu/sofire/ac/U;->sRealtimeMd5Map:Ljava/util/Map;

    if-nez v16, :cond_19

    .line 368
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    sput-object v16, Lcom/baidu/sofire/ac/U;->sRealtimeMd5Map:Ljava/util/Map;

    .line 370
    :cond_19
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1a

    .line 371
    move-object/from16 v23, v12

    sget-object v12, Lcom/baidu/sofire/ac/U;->sRealtimeMd5Map:Ljava/util/Map;

    invoke-interface {v12, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 370
    :cond_1a
    move-object/from16 v23, v12

    .line 373
    :goto_9
    if-eqz v3, :cond_1b

    .line 374
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 376
    :cond_1b
    const-string v11, "o"

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1c

    const/4 v11, 0x1

    goto :goto_a

    :cond_1c
    const/4 v11, 0x0

    .line 377
    :goto_a
    const-string v12, "d"

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v24, v6

    const/4 v6, 0x1

    if-ne v12, v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_b

    :cond_1d
    const/4 v6, 0x0

    .line 378
    :goto_b
    const-string v12, "r"

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 379
    if-eqz v11, :cond_1e

    .line 380
    move-object/from16 v25, v7

    iget-object v7, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 5414
    move-object/from16 v26, v9

    iget-object v9, v7, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    move-object/from16 v27, v5

    const-string v5, "opi"

    move-object/from16 v28, v3

    const/4 v3, 0x0

    invoke-interface {v9, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 5415
    if-le v12, v5, :cond_1f

    .line 5416
    iget-object v3, v7, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v5, "opi"

    invoke-interface {v3, v5, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5417
    iget-object v3, v7, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c

    .line 379
    :cond_1e
    move-object/from16 v28, v3

    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v9

    .line 382
    :cond_1f
    :goto_c
    if-eqz v11, :cond_20

    if-eqz v6, :cond_20

    .line 383
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 384
    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v6, v24

    move-object/from16 v7, v25

    move-object/from16 v9, v26

    move-object/from16 v5, v27

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x3

    goto/16 :goto_8

    .line 388
    :cond_20
    :try_start_e
    new-instance v3, Landroid/content/pm/PackageInfo;

    invoke-direct {v3}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 389
    const-string v5, "p"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 390
    iput-object v10, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 391
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 392
    const-string v6, "n"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 393
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    const-string v7, "."

    .line 394
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 397
    :cond_21
    const-string v6, "t"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 398
    iput-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 399
    const-string v5, "a"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 400
    if-eqz v5, :cond_27

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_27

    .line 401
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 402
    const/4 v7, 0x0

    :goto_d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-ge v7, v9, :cond_26

    .line 404
    :try_start_f
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 405
    if-eqz v9, :cond_24

    .line 406
    new-instance v12, Landroid/content/pm/ActivityInfo;

    invoke-direct {v12}, Landroid/content/pm/ActivityInfo;-><init>()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 407
    move-object/from16 v16, v5

    :try_start_10
    const-string v5, "n"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 408
    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object/from16 v29, v8

    :try_start_11
    const-string v8, "."

    .line 409
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_e

    .line 408
    :cond_22
    move-object/from16 v29, v8

    .line 412
    :cond_23
    :goto_e
    iput-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 413
    const-string v5, "t"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v12, Landroid/content/pm/ActivityInfo;->theme:I

    .line 414
    const-string v5, "l"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v12, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 415
    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 416
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_f

    .line 419
    :catch_6
    move-exception v0

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_10

    .line 405
    :cond_24
    move-object/from16 v16, v5

    move-object/from16 v29, v8

    .line 421
    :cond_25
    :goto_f
    goto :goto_12

    .line 419
    :catch_8
    move-exception v0

    move-object/from16 v16, v5

    :goto_10
    move-object/from16 v29, v8

    .line 420
    :goto_11
    :try_start_12
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 402
    :goto_12
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v16

    move-object/from16 v8, v29

    goto :goto_d

    .line 423
    :cond_26
    move-object/from16 v29, v8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_28

    .line 424
    nop

    .line 425
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/pm/ActivityInfo;

    .line 426
    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/ActivityInfo;

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_13

    .line 429
    :catch_9
    move-exception v0

    goto :goto_14

    .line 400
    :cond_27
    move-object/from16 v29, v8

    .line 432
    :cond_28
    :goto_13
    goto :goto_15

    .line 429
    :catch_a
    move-exception v0

    move-object/from16 v29, v8

    .line 430
    :goto_14
    nop

    .line 431
    :try_start_13
    invoke-static {}, Ld/a/g/i/c;->a()V

    const/4 v3, 0x0

    .line 434
    :goto_15
    new-instance v5, Lcom/baidu/sofire/core/ApkInfo;

    move-object/from16 v16, v5

    move/from16 v17, v15

    move-object/from16 v18, v13

    move-object/from16 v19, v10

    move-object/from16 v21, v2

    invoke-direct/range {v16 .. v21}, Lcom/baidu/sofire/core/ApkInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    if-eqz v11, :cond_29

    const/4 v2, 0x1

    goto :goto_16

    :cond_29
    const/4 v2, 0x0

    :goto_16
    iput v2, v5, Lcom/baidu/sofire/core/ApkInfo;->isOnce:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 438
    :try_start_14
    const-string v2, "pr"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lcom/baidu/sofire/core/ApkInfo;->priority:I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 441
    goto :goto_17

    .line 439
    :catch_b
    move-exception v0

    .line 440
    const/4 v2, -0x1

    :try_start_15
    iput v2, v5, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 442
    :goto_17
    const-string v2, "mem"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2a

    const/4 v2, 0x1

    goto :goto_18

    :cond_2a
    const/4 v2, 0x0

    :goto_18
    iput-boolean v2, v5, Lcom/baidu/sofire/core/ApkInfo;->isMem:Z

    .line 443
    if-eqz v3, :cond_2b

    .line 444
    iput-object v3, v5, Lcom/baidu/sofire/core/ApkInfo;->cloudPkgInfo:Landroid/content/pm/PackageInfo;

    .line 446
    :cond_2b
    const-string v2, "e"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 447
    if-eqz v2, :cond_2c

    .line 448
    const-string v3, "d"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 449
    const-string v6, "n"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 450
    iput v3, v5, Lcom/baidu/sofire/core/ApkInfo;->duration:I

    .line 451
    iput v2, v5, Lcom/baidu/sofire/core/ApkInfo;->network:I

    .line 453
    :cond_2c
    nop

    .line 454
    const-string v2, "ext"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 455
    if-eqz v2, :cond_2f

    .line 456
    const-string v3, "nl"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2d

    const/4 v3, 0x1

    goto :goto_19

    :cond_2d
    const/4 v3, 0x0

    .line 460
    :goto_19
    const-string v6, "a"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 461
    const/4 v6, 0x1

    if-ne v2, v6, :cond_30

    .line 462
    iget-object v2, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    .line 463
    invoke-virtual {v2}, Ld/a/g/h/a;->p()Ljava/util/List;

    move-result-object v2

    .line 467
    if-lez v15, :cond_30

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    .line 468
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 470
    const/4 v7, 0x0

    :goto_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2e

    .line 471
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    .line 470
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 473
    :cond_2e
    iget-object v2, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v2, v6}, Ld/a/g/h/a;->a([I)V

    goto :goto_1b

    .line 455
    :cond_2f
    const/4 v3, 0x0

    .line 478
    :cond_30
    :goto_1b
    move-object/from16 v2, v28

    iput-object v2, v5, Lcom/baidu/sofire/core/ApkInfo;->signMD5:Ljava/lang/String;

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/baidu/sofire/core/ApkInfo;->startTime:J

    .line 480
    move-object/from16 v2, v27

    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 484
    new-instance v7, Lcom/baidu/sofire/core/ApkInfo;

    invoke-direct {v7, v5}, Lcom/baidu/sofire/core/ApkInfo;-><init>(Lcom/baidu/sofire/core/ApkInfo;)V

    .line 485
    iget-object v8, v5, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_31

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 489
    :cond_31
    invoke-interface {v2, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 490
    if-ltz v7, :cond_32

    .line 491
    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 493
    :cond_32
    if-ltz v6, :cond_3b

    .line 495
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/sofire/core/ApkInfo;

    .line 497
    iget-object v8, v5, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    iget-object v9, v7, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 498
    invoke-static {v8, v9}, Ld/a/g/i/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 501
    iget v8, v7, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    iget v9, v5, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    if-eq v8, v9, :cond_33

    .line 502
    iget-object v8, v1, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v9, v5, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget v10, v5, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    invoke-virtual {v8, v9, v10}, Ld/a/g/a/a;->c(II)V

    .line 505
    :cond_33
    iget-object v8, v1, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v7, v7, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v8, v7}, Ld/a/g/a/a;->e(I)Z

    move-result v7

    if-nez v7, :cond_38

    .line 506
    if-eqz v3, :cond_34

    .line 512
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/baidu/sofire/core/ApkInfo;->isNextLoad:Z

    .line 514
    :cond_34
    sget-object v3, Ld/a/g/d/f;->d:Ljava/util/List;

    if-eqz v3, :cond_36

    sget-object v3, Ld/a/g/d/f;->d:Ljava/util/List;

    iget v7, v5, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 515
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 517
    move-object/from16 v3, v26

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v25

    goto :goto_1d

    .line 515
    :cond_35
    move-object/from16 v3, v26

    goto :goto_1c

    .line 514
    :cond_36
    move-object/from16 v3, v26

    .line 519
    :goto_1c
    move-object/from16 v8, v25

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :goto_1d
    iget-object v7, v1, Lcom/baidu/sofire/ac/U;->mDownloadPluginsList:Ljava/util/List;

    if-eqz v7, :cond_37

    .line 522
    iget-object v7, v1, Lcom/baidu/sofire/ac/U;->mDownloadPluginsList:Ljava/util/List;

    iget v5, v5, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v24

    goto :goto_1e

    .line 521
    :cond_37
    move-object/from16 v9, v24

    goto :goto_1e

    .line 505
    :cond_38
    move-object/from16 v8, v25

    move-object/from16 v3, v26

    move-object/from16 v9, v24

    goto :goto_1e

    .line 526
    :cond_39
    move-object/from16 v8, v25

    move-object/from16 v3, v26

    iget v9, v7, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    iget v10, v5, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    if-eq v9, v10, :cond_3a

    .line 527
    iget v9, v5, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    iput v9, v7, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 528
    iget-object v9, v1, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v10, v5, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget v5, v5, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    invoke-virtual {v9, v10, v5}, Ld/a/g/a/a;->c(II)V

    .line 532
    :cond_3a
    move-object/from16 v9, v24

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :goto_1e
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 536
    move-object v5, v2

    move-object v7, v8

    move-object v6, v9

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v8, v29

    const/4 v2, 0x1

    const/4 v10, 0x3

    move-object v9, v3

    const/4 v3, 0x0

    goto/16 :goto_8

    .line 537
    :cond_3b
    move-object/from16 v9, v24

    move-object/from16 v8, v25

    move-object/from16 v3, v26

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mDownloadPluginsList:Ljava/util/List;

    if-eqz v6, :cond_3c

    .line 539
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mDownloadPluginsList:Ljava/util/List;

    iget v5, v5, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_3c
    move-object v5, v2

    move-object v7, v8

    move-object v6, v9

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v8, v29

    const/4 v2, 0x1

    const/4 v10, 0x3

    move-object v9, v3

    const/4 v3, 0x0

    goto/16 :goto_8

    .line 352
    :cond_3d
    move-object v2, v5

    move-object/from16 v29, v8

    move-object v3, v9

    move-object v9, v6

    move-object v8, v7

    .line 544
    sget-object v5, Ld/a/g/d/f;->d:Ljava/util/List;

    if-eqz v5, :cond_3e

    .line 545
    sget-object v5, Ld/a/g/d/f;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 553
    :cond_3e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/ApkInfo;

    .line 557
    iget-object v6, v5, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    move-object/from16 v7, v29

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 560
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mUnloadPluginsList:Ljava/util/List;

    if-eqz v6, :cond_3f

    .line 561
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mUnloadPluginsList:Ljava/util/List;

    iget v10, v5, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_3f
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->forHostAPP:Ld/a/g/d/f;

    iget-object v5, v5, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ld/a/g/d/f;->a(Ljava/lang/String;)V

    .line 564
    move-object/from16 v29, v7

    goto :goto_1f

    .line 557
    :cond_40
    move-object/from16 v29, v7

    goto :goto_1f

    .line 565
    :cond_41
    iget-object v2, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v2}, Ld/a/g/i/c;->c(Landroid/content/Context;)V

    .line 570
    iget-object v2, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    .line 571
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ld/a/g/d/n;->a(Landroid/content/Context;)Ld/a/g/d/n;

    move-result-object v2

    .line 573
    iget-object v5, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v5}, Ld/a/g/h/a;->q()Ljava/util/List;

    move-result-object v5

    .line 574
    iget-object v6, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v6}, Ld/a/g/h/a;->p()Ljava/util/List;

    move-result-object v6

    .line 576
    const/4 v7, 0x0

    :goto_20
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_43

    .line 577
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_42

    .line 578
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 581
    :cond_43
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 582
    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 583
    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 584
    new-instance v7, Lcom/baidu/sofire/ac/U$1;

    invoke-direct {v7, v1, v5}, Lcom/baidu/sofire/ac/U$1;-><init>(Lcom/baidu/sofire/ac/U;Ljava/util/List;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 622
    const/4 v5, 0x0

    :goto_21
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4c

    .line 623
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/sofire/core/ApkInfo;

    .line 624
    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 625
    iget-object v10, v7, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 626
    invoke-virtual {v2, v10}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v10

    .line 627
    if-nez v10, :cond_49

    .line 629
    iget-object v10, v1, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v11, v7, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v10, v11}, Ld/a/g/a/a;->g(I)I

    move-result v10

    .line 630
    nop

    .line 631
    const/4 v11, 0x3

    if-ne v10, v11, :cond_44

    .line 635
    const/4 v10, 0x0

    goto :goto_22

    .line 631
    :cond_44
    const/4 v10, 0x1

    .line 637
    :goto_22
    iget-object v11, v1, Lcom/baidu/sofire/ac/U;->mPreferenceManager:Ld/a/g/h/a;

    invoke-virtual {v11}, Ld/a/g/h/a;->c()Z

    move-result v11

    if-eqz v11, :cond_47

    if-eqz v10, :cond_47

    .line 638
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    .line 639
    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v12, ".b"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 640
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_45

    .line 641
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 644
    :cond_45
    new-instance v11, Ljava/io/File;

    iget-object v12, v7, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 645
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v7, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v10, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 647
    invoke-static {v12}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_46

    .line 648
    invoke-static {v11, v12}, Ld/a/g/i/c;->a(Ljava/io/File;Ljava/io/File;)V

    .line 650
    :cond_46
    iget-object v10, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    iget v13, v7, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 651
    invoke-static {v10, v13, v11, v12}, Ld/a/g/h;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 652
    goto :goto_23

    .line 654
    :cond_47
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    .line 655
    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v12, ".b"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 656
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_48

    .line 657
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v7, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 659
    invoke-static {v11}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_48

    .line 660
    invoke-static {v11}, Ld/a/g/h;->a(Ljava/io/File;)V

    .line 661
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 670
    :cond_48
    :goto_23
    iget-object v10, v1, Lcom/baidu/sofire/ac/U;->forHostAPP:Ld/a/g/d/f;

    iget v11, v7, Lcom/baidu/sofire/core/ApkInfo;->key:I

    iget-object v7, v7, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v7, v12}, Ld/a/g/d/f;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z

    .line 672
    :cond_49
    goto :goto_24

    .line 673
    :cond_4a
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 674
    iget-object v10, v1, Lcom/baidu/sofire/ac/U;->loadedPluginDB:Ld/a/g/a/a;

    iget v11, v7, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v10, v11}, Ld/a/g/a/a;->e(I)Z

    move-result v10

    if-nez v10, :cond_4b

    .line 676
    invoke-direct {v1, v7}, Lcom/baidu/sofire/ac/U;->handlePluginUpgrade(Lcom/baidu/sofire/core/ApkInfo;)V

    .line 622
    :cond_4b
    :goto_24
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_21

    .line 680
    :cond_4c
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v5, Lcom/baidu/sofire/ac/U$2;

    invoke-direct {v5, v1, v3}, Lcom/baidu/sofire/ac/U$2;-><init>(Lcom/baidu/sofire/ac/U;Ljava/util/List;)V

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 691
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 692
    :try_start_16
    iget v2, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    if-nez v2, :cond_4d

    .line 693
    const/4 v2, 0x1

    iput v2, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    .line 695
    :cond_4d
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/baidu/sofire/ac/U;->handleThreadEnd(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 725
    :try_start_17
    iget-boolean v2, v1, Lcom/baidu/sofire/ac/U;->mOut:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/baidu/sofire/ac/U;->sOutGoing:Z

    if-eqz v2, :cond_3

    .line 726
    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/sofire/ac/U;->sOutGoing:Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_1

    .line 728
    :catch_c
    move-exception v0

    .line 729
    :goto_25
    :try_start_18
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 732
    monitor-exit p0

    return-void

    .line 248
    :cond_4e
    :goto_26
    :try_start_19
    iget v2, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4f

    iget v2, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4f

    iget v2, v1, Lcom/baidu/sofire/ac/U;->mFrom:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_51

    .line 254
    :cond_4f
    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/sofire/ac/U;->sMonitorNetworkWhenUpgradeNoNet:Z

    .line 255
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 257
    sget-object v3, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    if-nez v3, :cond_50

    .line 258
    new-instance v3, Lcom/baidu/sofire/MyReceiver;

    invoke-direct {v3}, Lcom/baidu/sofire/MyReceiver;-><init>()V

    invoke-virtual {v3}, Lcom/baidu/sofire/MyReceiver;->a()Lcom/baidu/sofire/MyReceiver;

    move-result-object v3

    sput-object v3, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    .line 260
    :cond_50
    iget-object v3, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    sget-object v6, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    invoke-static {v3, v6, v2}, Ld/a/g/i/c;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 263
    :cond_51
    iget v2, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    if-nez v2, :cond_52

    .line 264
    const/4 v2, 0x3

    iput v2, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    .line 266
    :cond_52
    if-eqz v5, :cond_53

    .line 267
    new-instance v2, Landroid/accounts/NetworkErrorException;

    const-string v3, "blocked by Huawei Input"

    invoke-direct {v2, v3}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_53
    new-instance v2, Landroid/accounts/NetworkErrorException;

    const-string v3, "no internet"

    invoke-direct {v2, v3}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 691
    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :try_start_1a
    throw v2
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 724
    :catchall_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2b

    .line 696
    :catch_d
    move-exception v0

    move-object v2, v0

    .line 697
    :try_start_1b
    iget-object v3, v1, Lcom/baidu/sofire/ac/U;->context:Landroid/content/Context;

    invoke-static {v3}, Ld/a/g/i/c;->i(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_55

    instance-of v3, v2, Ljava/lang/UnsupportedOperationException;

    if-nez v3, :cond_54

    goto :goto_27

    .line 698
    :cond_54
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 704
    :cond_55
    :goto_27
    :try_start_1c
    iget-object v3, v1, Lcom/baidu/sofire/ac/U;->forHostAPP:Ld/a/g/d/f;

    invoke-virtual {v3}, Ld/a/g/d/f;->c()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 707
    goto :goto_28

    .line 705
    :catch_e
    move-exception v0

    .line 706
    :try_start_1d
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 709
    :goto_28
    :try_start_1e
    iget v3, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    if-nez v3, :cond_58

    .line 710
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response is empty"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 711
    const/4 v3, 0x7

    iput v3, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    goto :goto_29

    .line 712
    :cond_56
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "aes is fail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 713
    const/16 v3, 0x8

    iput v3, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    goto :goto_29

    .line 715
    :cond_57
    const/16 v3, 0xb

    iput v3, v1, Lcom/baidu/sofire/ac/U;->mEndReason:I

    .line 718
    :cond_58
    :goto_29
    invoke-static {v2}, Ld/a/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/sofire/ac/U;->handleThreadEnd(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 721
    goto :goto_2a

    .line 719
    :catch_f
    move-exception v0

    .line 720
    :try_start_1f
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 725
    :goto_2a
    :try_start_20
    iget-boolean v2, v1, Lcom/baidu/sofire/ac/U;->mOut:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/baidu/sofire/ac/U;->sOutGoing:Z

    if-eqz v2, :cond_3

    .line 726
    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/sofire/ac/U;->sOutGoing:Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto/16 :goto_1

    .line 728
    :catch_10
    move-exception v0

    goto/16 :goto_25

    .line 725
    :goto_2b
    :try_start_21
    iget-boolean v3, v1, Lcom/baidu/sofire/ac/U;->mOut:Z

    if-eqz v3, :cond_59

    sget-boolean v3, Lcom/baidu/sofire/ac/U;->sOutGoing:Z

    if-eqz v3, :cond_59

    .line 726
    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/sofire/ac/U;->sOutGoing:Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 730
    :cond_59
    goto :goto_2c

    .line 728
    :catch_11
    move-exception v0

    .line 729
    :try_start_22
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 730
    :goto_2c
    throw v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 201
    :goto_2d
    monitor-exit p0

    throw v2
.end method
