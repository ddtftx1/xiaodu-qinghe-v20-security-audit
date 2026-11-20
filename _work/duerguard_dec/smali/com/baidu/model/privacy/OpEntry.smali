.class public Lcom/baidu/model/privacy/OpEntry;
.super Ljava/lang/Object;
.source "OpEntry.java"


# static fields
.field public static final INVALID_ID:I = -0x1


# instance fields
.field public endTime:J

.field public id:J

.field public mode:I

.field public op:I

.field public packageName:Ljava/lang/String;

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/model/privacy/OpEntry;->id:J

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .param p3, "mode"    # I
    .param p4, "startTime"    # J
    .param p6, "endTime"    # J

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/model/privacy/OpEntry;->id:J

    .line 16
    iput-object p1, p0, Lcom/baidu/model/privacy/OpEntry;->packageName:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/baidu/model/privacy/OpEntry;->op:I

    .line 18
    iput p3, p0, Lcom/baidu/model/privacy/OpEntry;->mode:I

    .line 19
    iput-wide p4, p0, Lcom/baidu/model/privacy/OpEntry;->startTime:J

    .line 20
    iput-wide p6, p0, Lcom/baidu/model/privacy/OpEntry;->endTime:J

    .line 21
    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/baidu/model/privacy/OpEntry;->endTime:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/baidu/model/privacy/OpEntry;->id:J

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/baidu/model/privacy/OpEntry;->mode:I

    return v0
.end method

.method public getOp()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/baidu/model/privacy/OpEntry;->op:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/baidu/model/privacy/OpEntry;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/baidu/model/privacy/OpEntry;->startTime:J

    return-wide v0
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .line 68
    iput-wide p1, p0, Lcom/baidu/model/privacy/OpEntry;->endTime:J

    .line 69
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 28
    iput-wide p1, p0, Lcom/baidu/model/privacy/OpEntry;->id:J

    .line 29
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 52
    iput p1, p0, Lcom/baidu/model/privacy/OpEntry;->mode:I

    .line 53
    return-void
.end method

.method public setOp(I)V
    .locals 0
    .param p1, "op"    # I

    .line 44
    iput p1, p0, Lcom/baidu/model/privacy/OpEntry;->op:I

    .line 45
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/baidu/model/privacy/OpEntry;->packageName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .line 60
    iput-wide p1, p0, Lcom/baidu/model/privacy/OpEntry;->startTime:J

    .line 61
    return-void
.end method
