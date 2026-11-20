.class public Lcom/baidu/model/privacy/PrivacyRecordItem;
.super Ljava/lang/Object;
.source "PrivacyRecordItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/model/privacy/PrivacyRecordItem$ItemType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/model/privacy/PrivacyRecordItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appName:Ljava/lang/String;

.field public count:I

.field public date:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public id:J

.field public itemType:I

.field public mode:I

.field public packageName:Ljava/lang/String;

.field public permissionGroup:Ljava/lang/String;

.field public startTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Ld/a/e/a/a;

    invoke-direct {v0}, Ld/a/e/a/a;-><init>()V

    sput-object v0, Lcom/baidu/model/privacy/PrivacyRecordItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->count:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->id:J

    return-wide v0
.end method

.method public getItemType()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->itemType:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->mode:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionGroup()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->permissionGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->appName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 72
    iput p1, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->count:I

    .line 73
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->date:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->endTime:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 40
    iput-wide p1, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->id:J

    .line 41
    return-void
.end method

.method public setItemType(I)V
    .locals 0
    .param p1, "itemType"    # I

    .line 104
    iput p1, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->itemType:I

    .line 105
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 80
    iput p1, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->mode:I

    .line 81
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->packageName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPermissionGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "permissionGroup"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->permissionGroup:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->startTime:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    iget-wide v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->permissionGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lcom/baidu/model/privacy/PrivacyRecordItem;->itemType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
