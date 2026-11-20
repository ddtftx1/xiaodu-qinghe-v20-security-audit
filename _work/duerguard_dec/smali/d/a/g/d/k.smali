.class public final Ld/a/g/d/k;
.super Ljava/lang/Object;
.source "MethodImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/g/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/sofire/ac/Callback;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:[Ljava/lang/Class;

.field public final synthetic f:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/baidu/sofire/ac/Callback;Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0

    .line 956
    iput-object p1, p0, Ld/a/g/d/k;->a:Lcom/baidu/sofire/ac/Callback;

    iput-object p2, p0, Ld/a/g/d/k;->b:Landroid/content/Context;

    iput p3, p0, Ld/a/g/d/k;->c:I

    iput-object p4, p0, Ld/a/g/d/k;->d:Ljava/lang/String;

    iput-object p5, p0, Ld/a/g/d/k;->e:[Ljava/lang/Class;

    iput-object p6, p0, Ld/a/g/d/k;->f:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 959
    iget-object v0, p0, Ld/a/g/d/k;->a:Lcom/baidu/sofire/ac/Callback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 960
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/baidu/sofire/ac/Callback;->onBegin([Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    :cond_0
    iget-object v0, p0, Ld/a/g/d/k;->b:Landroid/content/Context;

    iget v2, p0, Ld/a/g/d/k;->c:I

    iget-object v3, p0, Ld/a/g/d/k;->d:Ljava/lang/String;

    iget-object v4, p0, Ld/a/g/d/k;->e:[Ljava/lang/Class;

    iget-object v5, p0, Ld/a/g/d/k;->f:[Ljava/lang/Object;

    .line 963
    invoke-static {v0, v2, v3, v4, v5}, Ld/a/g/d/l;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 965
    iget-object v2, p0, Ld/a/g/d/k;->a:Lcom/baidu/sofire/ac/Callback;

    if-eqz v2, :cond_2

    .line 966
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 967
    iget-object v2, p0, Ld/a/g/d/k;->a:Lcom/baidu/sofire/ac/Callback;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 969
    :cond_1
    iget-object v2, p0, Ld/a/g/d/k;->a:Lcom/baidu/sofire/ac/Callback;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/baidu/sofire/ac/Callback;->onEnd([Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    :cond_2
    return-void
.end method
