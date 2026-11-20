.class public Lcom/baidu/sofire/ac/U$3;
.super Ljava/lang/Object;
.source "U.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sofire/ac/U;->handlePluginUpgrade(Lcom/baidu/sofire/core/ApkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/baidu/sofire/ac/U;

.field public final synthetic val$apkInfo:Lcom/baidu/sofire/core/ApkInfo;

.field public final synthetic val$file:Ljava/io/File;

.field public final synthetic val$hostCarePluginKeys:Ljava/util/List;

.field public final synthetic val$networkType:I

.field public final synthetic val$resfile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/baidu/sofire/ac/U;Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;Ljava/io/File;ILjava/util/List;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/baidu/sofire/ac/U$3;->this$0:Lcom/baidu/sofire/ac/U;

    iput-object p2, p0, Lcom/baidu/sofire/ac/U$3;->val$apkInfo:Lcom/baidu/sofire/core/ApkInfo;

    iput-object p3, p0, Lcom/baidu/sofire/ac/U$3;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/baidu/sofire/ac/U$3;->val$resfile:Ljava/io/File;

    iput p5, p0, Lcom/baidu/sofire/ac/U$3;->val$networkType:I

    iput-object p6, p0, Lcom/baidu/sofire/ac/U$3;->val$hostCarePluginKeys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1202
    :try_start_0
    iget-object v0, p0, Lcom/baidu/sofire/ac/U$3;->this$0:Lcom/baidu/sofire/ac/U;

    iget-object v1, p0, Lcom/baidu/sofire/ac/U$3;->val$apkInfo:Lcom/baidu/sofire/core/ApkInfo;

    iget-object v2, p0, Lcom/baidu/sofire/ac/U$3;->val$file:Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/sofire/ac/U$3;->val$resfile:Ljava/io/File;

    iget v4, p0, Lcom/baidu/sofire/ac/U$3;->val$networkType:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/sofire/ac/U;->access$100(Lcom/baidu/sofire/ac/U;Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;Ljava/io/File;I)Z

    move-result v0

    .line 1207
    if-nez v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/baidu/sofire/ac/U$3;->this$0:Lcom/baidu/sofire/ac/U;

    iget-object v1, p0, Lcom/baidu/sofire/ac/U$3;->val$apkInfo:Lcom/baidu/sofire/core/ApkInfo;

    iget-object v2, p0, Lcom/baidu/sofire/ac/U$3;->val$resfile:Ljava/io/File;

    iget v3, p0, Lcom/baidu/sofire/ac/U$3;->val$networkType:I

    iget-object v4, p0, Lcom/baidu/sofire/ac/U$3;->val$hostCarePluginKeys:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/sofire/ac/U;->access$200(Lcom/baidu/sofire/ac/U;Lcom/baidu/sofire/core/ApkInfo;Ljava/io/File;ILjava/util/List;)V

    return-void

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/baidu/sofire/ac/U$3;->val$apkInfo:Lcom/baidu/sofire/core/ApkInfo;

    iget-object v1, p0, Lcom/baidu/sofire/ac/U$3;->val$resfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 1212
    new-instance v0, Lcom/baidu/sofire/core/ApkInfo;

    iget-object v1, p0, Lcom/baidu/sofire/ac/U$3;->val$apkInfo:Lcom/baidu/sofire/core/ApkInfo;

    invoke-direct {v0, v1}, Lcom/baidu/sofire/core/ApkInfo;-><init>(Lcom/baidu/sofire/core/ApkInfo;)V

    .line 1213
    iget v1, v0, Lcom/baidu/sofire/core/ApkInfo;->key:I

    const v2, 0x989680

    add-int/2addr v1, v2

    iput v1, v0, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 1214
    iget-object v1, v0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 1221
    :cond_1
    iget-object v1, p0, Lcom/baidu/sofire/ac/U$3;->this$0:Lcom/baidu/sofire/ac/U;

    invoke-static {v1}, Lcom/baidu/sofire/ac/U;->access$300(Lcom/baidu/sofire/ac/U;)Ld/a/g/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/a/g/a/a;->a(Lcom/baidu/sofire/core/ApkInfo;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    return-void

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1226
    return-void
.end method
