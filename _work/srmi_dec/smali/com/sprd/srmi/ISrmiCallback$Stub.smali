.class public abstract Lcom/sprd/srmi/ISrmiCallback$Stub;
.super Landroid/os/Binder;
.source "ISrmiCallback.java"

# interfaces
.implements Lcom/sprd/srmi/ISrmiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/srmi/ISrmiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/srmi/ISrmiCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onMsgReceived:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.sprd.srmi.ISrmiCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sprd/srmi/ISrmiCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sprd/srmi/ISrmiCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    const-string v0, "com.sprd.srmi.ISrmiCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sprd/srmi/ISrmiCallback;

    if-eqz v1, :cond_1

    .line 37
    move-object v1, v0

    check-cast v1, Lcom/sprd/srmi/ISrmiCallback;

    return-object v1

    .line 39
    :cond_1
    new-instance v1, Lcom/sprd/srmi/ISrmiCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sprd/srmi/ISrmiCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/sprd/srmi/ISrmiCallback;
    .locals 1

    .line 132
    sget-object v0, Lcom/sprd/srmi/ISrmiCallback$Stub$Proxy;->sDefaultImpl:Lcom/sprd/srmi/ISrmiCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/sprd/srmi/ISrmiCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/sprd/srmi/ISrmiCallback;

    .line 122
    sget-object v0, Lcom/sprd/srmi/ISrmiCallback$Stub$Proxy;->sDefaultImpl:Lcom/sprd/srmi/ISrmiCallback;

    if-nez v0, :cond_1

    .line 125
    if-eqz p0, :cond_0

    .line 126
    sput-object p0, Lcom/sprd/srmi/ISrmiCallback$Stub$Proxy;->sDefaultImpl:Lcom/sprd/srmi/ISrmiCallback;

    .line 127
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const-string v0, "com.sprd.srmi.ISrmiCallback"

    .line 48
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 56
    packed-switch p1, :pswitch_data_1

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 52
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v1

    .line 60
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 67
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sprd/srmi/ISrmiCallback$Stub;->onMsgReceived(Ljava/lang/String;II)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
