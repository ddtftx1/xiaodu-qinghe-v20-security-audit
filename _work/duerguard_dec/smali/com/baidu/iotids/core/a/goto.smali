.class public enum Lcom/baidu/iotids/core/a/goto;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/iotids/core/a/goto;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic case:[Lcom/baidu/iotids/core/a/goto;

.field public static final enum for:Lcom/baidu/iotids/core/a/goto;

.field public static final enum if:Lcom/baidu/iotids/core/a/goto;

.field public static final enum new:Lcom/baidu/iotids/core/a/goto;

.field public static final enum try:Lcom/baidu/iotids/core/a/goto;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/baidu/iotids/core/a/new;

    const/4 v1, 0x0

    const-string v2, "REAL"

    invoke-direct {v0, v2, v1}, Lcom/baidu/iotids/core/a/new;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/a/goto;->if:Lcom/baidu/iotids/core/a/goto;

    new-instance v0, Lcom/baidu/iotids/core/a/try;

    const/4 v2, 0x1

    const-string v3, "QEMU"

    invoke-direct {v0, v3, v2}, Lcom/baidu/iotids/core/a/try;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/a/goto;->for:Lcom/baidu/iotids/core/a/goto;

    new-instance v0, Lcom/baidu/iotids/core/a/case;

    const/4 v3, 0x2

    const-string v4, "VIRTUALBOX"

    invoke-direct {v0, v4, v3}, Lcom/baidu/iotids/core/a/case;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/a/goto;->new:Lcom/baidu/iotids/core/a/goto;

    new-instance v0, Lcom/baidu/iotids/core/a/else;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lcom/baidu/iotids/core/a/else;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/a/goto;->try:Lcom/baidu/iotids/core/a/goto;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/iotids/core/a/goto;

    sget-object v6, Lcom/baidu/iotids/core/a/goto;->if:Lcom/baidu/iotids/core/a/goto;

    aput-object v6, v5, v1

    sget-object v1, Lcom/baidu/iotids/core/a/goto;->for:Lcom/baidu/iotids/core/a/goto;

    aput-object v1, v5, v2

    sget-object v1, Lcom/baidu/iotids/core/a/goto;->new:Lcom/baidu/iotids/core/a/goto;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/baidu/iotids/core/a/goto;->case:[Lcom/baidu/iotids/core/a/goto;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/baidu/iotids/core/a/new;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/iotids/core/a/goto;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static if(Ljava/lang/String;)Lcom/baidu/iotids/core/a/goto;
    .locals 1

    const-class v0, Lcom/baidu/iotids/core/a/goto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/iotids/core/a/goto;

    return-object p0
.end method

.method public static values()[Lcom/baidu/iotids/core/a/goto;
    .locals 1

    sget-object v0, Lcom/baidu/iotids/core/a/goto;->case:[Lcom/baidu/iotids/core/a/goto;

    invoke-virtual {v0}, [Lcom/baidu/iotids/core/a/goto;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/iotids/core/a/goto;

    return-object v0
.end method
