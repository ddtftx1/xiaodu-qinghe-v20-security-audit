.class public Lcom/baidu/model/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final RESULT_AVP:I = 0x1

.field public static final RESULT_RISK:I = 0x2


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "t"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    .local p0, "this":Lcom/baidu/model/Result;, "Lcom/baidu/model/Result<TT;>;"
    .local p2, "l":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/baidu/model/Result;->type:I

    .line 15
    iput-object p2, p0, Lcom/baidu/model/Result;->list:Ljava/util/List;

    .line 16
    return-void
.end method
