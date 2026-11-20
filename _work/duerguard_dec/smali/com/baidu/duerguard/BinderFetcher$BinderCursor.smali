.class public Lcom/baidu/duerguard/BinderFetcher$BinderCursor;
.super Landroid/database/MatrixCursor;
.source "BinderFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/duerguard/BinderFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderCursor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/duerguard/BinderFetcher$BinderCursor$BinderParcelable;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 79
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/duerguard/BinderFetcher$BinderCursor;->a:Landroid/os/Bundle;

    .line 80
    if-eqz p2, :cond_0

    .line 81
    new-instance v0, Lcom/baidu/duerguard/BinderFetcher$BinderCursor$BinderParcelable;

    invoke-direct {v0, p2}, Lcom/baidu/duerguard/BinderFetcher$BinderCursor$BinderParcelable;-><init>(Landroid/os/IBinder;)V

    .line 82
    .local v0, "value":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/baidu/duerguard/BinderFetcher$BinderCursor;->a:Landroid/os/Bundle;

    const-string v2, "duerguard_binder"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    .end local v0    # "value":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Landroid/database/Cursor;
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 92
    new-instance v0, Lcom/baidu/duerguard/BinderFetcher$BinderCursor;

    sget-object v1, Lcom/baidu/duerguard/BinderFetcher;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/baidu/duerguard/BinderFetcher$BinderCursor;-><init>([Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/baidu/duerguard/BinderFetcher$BinderCursor;->a:Landroid/os/Bundle;

    return-object v0
.end method
