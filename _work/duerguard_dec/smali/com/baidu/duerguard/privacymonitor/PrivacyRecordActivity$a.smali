.class public Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity$a;
.super Ljava/lang/Object;
.source "PrivacyRecordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;
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
            "Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 194
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;

    .line 201
    .local v0, "activity":Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    sget-object v1, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a:Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;

    iget-object v2, v0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->h:Ljava/util/List;

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-virtual {v1, v2, v4, v3}, Lcom/baidu/duerguard/privacymonitor/PrivacyMonitorManager;->a(Ljava/util/List;ILjava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "addCount":I
    iget-object v2, v0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, v0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->i:Ld/a/b/c/c/g;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 208
    :cond_0
    if-ge v1, v4, :cond_1

    .line 209
    iget-object v2, v0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->i:Ld/a/b/c/c/g;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 211
    :cond_1
    iget-object v2, v0, Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;->i:Ld/a/b/c/c/g;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "activity":Lcom/baidu/duerguard/privacymonitor/PrivacyRecordActivity;
    .end local v1    # "addCount":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
