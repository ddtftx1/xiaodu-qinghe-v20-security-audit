.class public Lcom/baidu/model/privacy/DbOpEntry;
.super Lcom/baidu/model/privacy/OpEntry;
.source "DbOpEntry.java"


# instance fields
.field public count:I

.field public permissionGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/baidu/model/privacy/OpEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/baidu/model/privacy/DbOpEntry;->count:I

    return v0
.end method

.method public getPermissionGroup()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/baidu/model/privacy/DbOpEntry;->permissionGroup:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 18
    iput p1, p0, Lcom/baidu/model/privacy/DbOpEntry;->count:I

    .line 19
    return-void
.end method

.method public setPermissionGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "permissionGroup"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/baidu/model/privacy/DbOpEntry;->permissionGroup:Ljava/lang/String;

    .line 27
    return-void
.end method
