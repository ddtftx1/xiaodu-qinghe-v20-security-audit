.class public final Lf/y;
.super Lf/z;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lf/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lf/z;
    .locals 0
    .param p1, "deadlineNanoTime"    # J

    .line 54
    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lf/z;
    .locals 0
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 50
    return-object p0
.end method

.method public e()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    return-void
.end method
