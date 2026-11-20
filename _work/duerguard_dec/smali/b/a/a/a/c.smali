.class public Lb/a/a/a/c;
.super Lb/a/a/a/e;
.source "ArchTaskExecutor.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static volatile a:Lb/a/a/a/c;


# instance fields
.field public b:Lb/a/a/a/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public c:Lb/a/a/a/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lb/a/a/a/a;

    invoke-direct {v0}, Lb/a/a/a/a;-><init>()V

    .line 50
    new-instance v0, Lb/a/a/a/b;

    invoke-direct {v0}, Lb/a/a/a/b;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lb/a/a/a/e;-><init>()V

    .line 58
    new-instance v0, Lb/a/a/a/d;

    invoke-direct {v0}, Lb/a/a/a/d;-><init>()V

    iput-object v0, p0, Lb/a/a/a/c;->c:Lb/a/a/a/e;

    .line 59
    iget-object v0, p0, Lb/a/a/a/c;->c:Lb/a/a/a/e;

    iput-object v0, p0, Lb/a/a/a/c;->b:Lb/a/a/a/e;

    .line 60
    return-void
.end method

.method public static b()Lb/a/a/a/c;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 69
    sget-object v0, Lb/a/a/a/c;->a:Lb/a/a/a/c;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lb/a/a/a/c;->a:Lb/a/a/a/c;

    return-object v0

    .line 72
    :cond_0
    const-class v0, Lb/a/a/a/c;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lb/a/a/a/c;->a:Lb/a/a/a/c;

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Lb/a/a/a/c;

    invoke-direct {v1}, Lb/a/a/a/c;-><init>()V

    sput-object v1, Lb/a/a/a/c;->a:Lb/a/a/a/c;

    .line 76
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object v0, Lb/a/a/a/c;->a:Lb/a/a/a/c;

    return-object v0

    .line 76
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 96
    iget-object v0, p0, Lb/a/a/a/c;->b:Lb/a/a/a/e;

    invoke-virtual {v0, p1}, Lb/a/a/a/e;->a(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public a()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lb/a/a/a/c;->b:Lb/a/a/a/e;

    invoke-virtual {v0}, Lb/a/a/a/e;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 101
    iget-object v0, p0, Lb/a/a/a/c;->b:Lb/a/a/a/e;

    invoke-virtual {v0, p1}, Lb/a/a/a/e;->b(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method
