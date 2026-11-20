.class public final Ld/a/g/b;
.super Lcom/baidu/sofire/ac/Callback;
.source "MyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sofire/MyReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/baidu/sofire/MyReceiver;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/baidu/sofire/ac/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/baidu/sofire/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
