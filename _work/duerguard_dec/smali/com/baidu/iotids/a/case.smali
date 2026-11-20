.class public enum Lcom/baidu/iotids/a/case;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/iotids/a/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/iotids/a/case;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum for:Lcom/baidu/iotids/a/case;

.field public static final enum if:Lcom/baidu/iotids/a/case;

.field public static final synthetic new:[Lcom/baidu/iotids/a/case;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/baidu/iotids/a/new;

    const/4 v1, 0x0

    const-string v2, "POST"

    invoke-direct {v0, v2, v1}, Lcom/baidu/iotids/a/new;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/a/case;->if:Lcom/baidu/iotids/a/case;

    new-instance v0, Lcom/baidu/iotids/a/try;

    const/4 v2, 0x1

    const-string v3, "GET"

    invoke-direct {v0, v3, v2}, Lcom/baidu/iotids/a/try;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/iotids/a/case;->for:Lcom/baidu/iotids/a/case;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/baidu/iotids/a/case;

    sget-object v4, Lcom/baidu/iotids/a/case;->if:Lcom/baidu/iotids/a/case;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/baidu/iotids/a/case;->new:[Lcom/baidu/iotids/a/case;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILd/a/c/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/iotids/a/case;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static if(Ljava/lang/String;)Lcom/baidu/iotids/a/case;
    .locals 1

    const-class v0, Lcom/baidu/iotids/a/case;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/iotids/a/case;

    return-object p0
.end method

.method public static values()[Lcom/baidu/iotids/a/case;
    .locals 1

    sget-object v0, Lcom/baidu/iotids/a/case;->new:[Lcom/baidu/iotids/a/case;

    invoke-virtual {v0}, [Lcom/baidu/iotids/a/case;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/iotids/a/case;

    return-object v0
.end method
