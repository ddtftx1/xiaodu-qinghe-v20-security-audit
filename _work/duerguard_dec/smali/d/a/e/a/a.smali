.class public final Ld/a/e/a/a;
.super Ljava/lang/Object;
.source "PrivacyRecordItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/model/privacy/PrivacyRecordItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/baidu/model/privacy/PrivacyRecordItem;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 120
    new-instance v0, Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-direct {v0}, Lcom/baidu/model/privacy/PrivacyRecordItem;-><init>()V

    .line 121
    .local v0, "item":Lcom/baidu/model/privacy/PrivacyRecordItem;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setId(J)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setPackageName(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setAppName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setPermissionGroup(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setCount(I)V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setMode(I)V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setStartTime(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setEndTime(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setDate(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/model/privacy/PrivacyRecordItem;->setItemType(I)V

    .line 131
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Ld/a/e/a/a;->createFromParcel(Landroid/os/Parcel;)Lcom/baidu/model/privacy/PrivacyRecordItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/baidu/model/privacy/PrivacyRecordItem;
    .locals 1
    .param p1, "size"    # I

    .line 136
    new-array v0, p1, [Lcom/baidu/model/privacy/PrivacyRecordItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Ld/a/e/a/a;->newArray(I)[Lcom/baidu/model/privacy/PrivacyRecordItem;

    move-result-object p1

    return-object p1
.end method
