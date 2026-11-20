.class public final Ld/a/g/i/l;
.super Ljava/lang/Object;
.source "HandlerHelper.java"


# static fields
.field public static final a:Ld/a/g/i/l;


# instance fields
.field public b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ld/a/g/i/l;

    invoke-direct {v0}, Ld/a/g/i/l;-><init>()V

    sput-object v0, Ld/a/g/i/l;->a:Ld/a/g/i/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "rp_th"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ld/a/g/i/l;->b:Landroid/os/HandlerThread;

    .line 18
    iget-object v0, p0, Ld/a/g/i/l;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ld/a/g/i/l;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ld/a/g/i/l;->c:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method public static a()Landroid/os/Looper;
    .locals 1

    .line 35
    sget-object v0, Ld/a/g/i/l;->a:Ld/a/g/i/l;

    iget-object v0, v0, Ld/a/g/i/l;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
