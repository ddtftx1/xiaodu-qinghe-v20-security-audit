.class public final Lb/a/a/a/a;
.super Ljava/lang/Object;
.source "ArchTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 45
    invoke-static {}, Lb/a/a/a/c;->b()Lb/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/c;->b(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method
