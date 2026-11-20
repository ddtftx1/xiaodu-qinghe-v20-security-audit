.class public final Lcom/baidu/iotids/jni/TracerInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public for:Ljava/lang/String;
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "name"
    .end annotation
.end field

.field public if:I
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "pid"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/iotids/jni/TracerInfo;->if:I

    iput-object p2, p0, Lcom/baidu/iotids/jni/TracerInfo;->for:Ljava/lang/String;

    return-void
.end method
