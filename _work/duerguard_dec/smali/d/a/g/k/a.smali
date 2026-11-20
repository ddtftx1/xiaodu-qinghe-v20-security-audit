.class public final Ld/a/g/k/a;
.super Ljava/lang/Object;
.source "BinderHolder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sofire/mutiprocess/BinderHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/sofire/mutiprocess/BinderHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 2022
    new-instance v0, Lcom/baidu/sofire/mutiprocess/BinderHolder;

    invoke-direct {v0, p1}, Lcom/baidu/sofire/mutiprocess/BinderHolder;-><init>(Landroid/os/Parcel;)V

    .line 19
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 19
    nop

    .line 1027
    new-array p1, p1, [Lcom/baidu/sofire/mutiprocess/BinderHolder;

    .line 19
    return-object p1
.end method
