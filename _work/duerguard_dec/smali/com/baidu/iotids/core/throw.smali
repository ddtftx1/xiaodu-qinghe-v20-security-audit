.class public final enum Lcom/baidu/iotids/core/throw;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/iotids/core/while;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "throw"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/iotids/core/throw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/iotids/core/throw;

.field public static final enum b:Lcom/baidu/iotids/core/throw;

.field public static final enum c:Lcom/baidu/iotids/core/throw;

.field public static final synthetic d:[Lcom/baidu/iotids/core/throw;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/baidu/iotids/core/throw;

    const/4 v1, 0x0

    const-string v2, "NOT_SCANNED"

    invoke-direct {v0, v2, v1}, Lcom/baidu/iotids/core/throw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/throw;->a:Lcom/baidu/iotids/core/throw;

    new-instance v0, Lcom/baidu/iotids/core/throw;

    const/4 v2, 0x1

    const-string v3, "SCANNING"

    invoke-direct {v0, v3, v2}, Lcom/baidu/iotids/core/throw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/throw;->b:Lcom/baidu/iotids/core/throw;

    new-instance v0, Lcom/baidu/iotids/core/throw;

    const/4 v3, 0x2

    const-string v4, "SCANNED"

    invoke-direct {v0, v4, v3}, Lcom/baidu/iotids/core/throw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/throw;->c:Lcom/baidu/iotids/core/throw;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/baidu/iotids/core/throw;

    sget-object v5, Lcom/baidu/iotids/core/throw;->a:Lcom/baidu/iotids/core/throw;

    aput-object v5, v4, v1

    sget-object v1, Lcom/baidu/iotids/core/throw;->b:Lcom/baidu/iotids/core/throw;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/baidu/iotids/core/throw;->d:[Lcom/baidu/iotids/core/throw;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/baidu/iotids/core/throw;
    .locals 1

    sget-object v0, Lcom/baidu/iotids/core/throw;->d:[Lcom/baidu/iotids/core/throw;

    invoke-virtual {v0}, [Lcom/baidu/iotids/core/throw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/iotids/core/throw;

    return-object v0
.end method
