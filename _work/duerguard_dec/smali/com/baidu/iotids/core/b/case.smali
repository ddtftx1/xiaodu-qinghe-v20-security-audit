.class public enum Lcom/baidu/iotids/core/b/case;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/iotids/core/b/case;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic case:[Lcom/baidu/iotids/core/b/case;

.field public static final enum for:Lcom/baidu/iotids/core/b/case;

.field public static final enum if:Lcom/baidu/iotids/core/b/case;

.field public static final enum new:Lcom/baidu/iotids/core/b/case;

.field public static final enum try:Lcom/baidu/iotids/core/b/case;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/baidu/iotids/core/b/if;

    const/4 v1, 0x0

    const-string v2, "NOT_FAKE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/iotids/core/b/if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/b/case;->if:Lcom/baidu/iotids/core/b/case;

    new-instance v0, Lcom/baidu/iotids/core/b/for;

    const/4 v2, 0x1

    const-string v3, "MAYBE_FAKE"

    invoke-direct {v0, v3, v2}, Lcom/baidu/iotids/core/b/for;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/b/case;->for:Lcom/baidu/iotids/core/b/case;

    new-instance v0, Lcom/baidu/iotids/core/b/new;

    const/4 v3, 0x2

    const-string v4, "CERTAINLY_FAKE"

    invoke-direct {v0, v4, v3}, Lcom/baidu/iotids/core/b/new;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/b/case;->new:Lcom/baidu/iotids/core/b/case;

    new-instance v0, Lcom/baidu/iotids/core/b/try;

    const/4 v4, 0x3

    const-string v5, "ACCURATELY_FAKE"

    invoke-direct {v0, v5, v4}, Lcom/baidu/iotids/core/b/try;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/core/b/case;->try:Lcom/baidu/iotids/core/b/case;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/baidu/iotids/core/b/case;

    sget-object v6, Lcom/baidu/iotids/core/b/case;->if:Lcom/baidu/iotids/core/b/case;

    aput-object v6, v5, v1

    sget-object v1, Lcom/baidu/iotids/core/b/case;->for:Lcom/baidu/iotids/core/b/case;

    aput-object v1, v5, v2

    sget-object v1, Lcom/baidu/iotids/core/b/case;->new:Lcom/baidu/iotids/core/b/case;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/baidu/iotids/core/b/case;->case:[Lcom/baidu/iotids/core/b/case;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/baidu/iotids/core/b/if;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/iotids/core/b/case;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static if(Ljava/lang/String;)Lcom/baidu/iotids/core/b/case;
    .locals 1

    const-class v0, Lcom/baidu/iotids/core/b/case;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/iotids/core/b/case;

    return-object p0
.end method

.method public static values()[Lcom/baidu/iotids/core/b/case;
    .locals 1

    sget-object v0, Lcom/baidu/iotids/core/b/case;->case:[Lcom/baidu/iotids/core/b/case;

    invoke-virtual {v0}, [Lcom/baidu/iotids/core/b/case;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/iotids/core/b/case;

    return-object v0
.end method
