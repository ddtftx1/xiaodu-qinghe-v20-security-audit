.class public enum Lcom/baidu/iotids/core/e/else;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/iotids/core/e/else;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum for:Lcom/baidu/iotids/core/e/else;

.field public static final enum if:Lcom/baidu/iotids/core/e/else;

.field public static final enum new:Lcom/baidu/iotids/core/e/else;

.field public static final synthetic try:[Lcom/baidu/iotids/core/e/else;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/baidu/iotids/core/e/new;

    const/4 v1, 0x0

    const-string v2, "NOT_DOUBLE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/iotids/core/e/new;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/e/else;->if:Lcom/baidu/iotids/core/e/else;

    new-instance v0, Lcom/baidu/iotids/core/e/try;

    const/4 v2, 0x1

    const-string v3, "DOUBLE"

    invoke-direct {v0, v3, v2}, Lcom/baidu/iotids/core/e/try;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/e/else;->for:Lcom/baidu/iotids/core/e/else;

    new-instance v0, Lcom/baidu/iotids/core/e/case;

    const/4 v3, 0x2

    const-string v4, "VIRTUAL"

    invoke-direct {v0, v4, v3}, Lcom/baidu/iotids/core/e/case;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/e/else;->new:Lcom/baidu/iotids/core/e/else;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/baidu/iotids/core/e/else;

    sget-object v5, Lcom/baidu/iotids/core/e/else;->if:Lcom/baidu/iotids/core/e/else;

    aput-object v5, v4, v1

    sget-object v1, Lcom/baidu/iotids/core/e/else;->for:Lcom/baidu/iotids/core/e/else;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/baidu/iotids/core/e/else;->try:[Lcom/baidu/iotids/core/e/else;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/baidu/iotids/core/e/new;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/iotids/core/e/else;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static if(Ljava/lang/String;)Lcom/baidu/iotids/core/e/else;
    .locals 1

    const-class v0, Lcom/baidu/iotids/core/e/else;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/iotids/core/e/else;

    return-object p0
.end method

.method public static values()[Lcom/baidu/iotids/core/e/else;
    .locals 1

    sget-object v0, Lcom/baidu/iotids/core/e/else;->try:[Lcom/baidu/iotids/core/e/else;

    invoke-virtual {v0}, [Lcom/baidu/iotids/core/e/else;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/iotids/core/e/else;

    return-object v0
.end method
