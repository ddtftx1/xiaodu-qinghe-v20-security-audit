.class public final Le/a/b/d;
.super Ljava/lang/Object;
.source "RouteDatabase.java"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Le/a/b/d;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Le/L;)V
    .locals 1
    .param p1, "route"    # Le/L;

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Le/a/b/d;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 37
    .end local p0    # "this":Le/a/b/d;
    .end local p1    # "route":Le/L;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Le/L;)V
    .locals 1
    .param p1, "failedRoute"    # Le/L;

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Le/a/b/d;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 32
    .end local p0    # "this":Le/a/b/d;
    .end local p1    # "failedRoute":Le/L;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Le/L;)Z
    .locals 1
    .param p1, "route"    # Le/L;

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Le/a/b/d;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Le/a/b/d;
    .end local p1    # "route":Le/L;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
