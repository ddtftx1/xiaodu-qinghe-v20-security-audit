.class public Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity$a;
.super Ljava/lang/Object;
.source "SingleAppPrivacyRecordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 210
    iput-object p2, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity$a;->b:Ljava/lang/String;

    .line 211
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;

    .line 218
    .local v0, "activity":Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    sget-object v1, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a:Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    iget-object v2, v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity$a;->b:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-virtual {v1, v2, v4, v3}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Ljava/util/List;ILjava/lang/String;)I

    move-result v1

    .line 222
    .local v1, "addCount":I
    iget-object v2, v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->l:Ld/a/b/c/c/h;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 225
    :cond_0
    if-ge v1, v4, :cond_1

    .line 226
    iget-object v2, v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->l:Ld/a/b/c/c/h;

    const/4 v3, 0x3

    .line 227
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 229
    :cond_1
    iget-object v2, v0, Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;->l:Ld/a/b/c/c/h;

    const/4 v3, 0x1

    .line 230
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0    # "activity":Lcom/baidu/duerguard/privacymonitor/SingleAppPrivacyRecordActivity;
    .end local v1    # "addCount":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
