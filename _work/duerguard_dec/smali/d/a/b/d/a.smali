.class public Ld/a/b/d/a;
.super Ljava/lang/Object;
.source "Reporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/duerguard/report/Reporter;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/baidu/duerguard/report/Reporter;


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/report/Reporter;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/duerguard/report/Reporter;

    .line 114
    iput-object p1, p0, Ld/a/b/d/a;->b:Lcom/baidu/duerguard/report/Reporter;

    iput-boolean p2, p0, Ld/a/b/d/a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 117
    iget-boolean v0, p0, Ld/a/b/d/a;->a:Z

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 121
    .local v0, "random":Ljava/util/Random;
    const/16 v1, 0xe10

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 122
    .local v1, "randomSleepTime":I
    mul-int/lit16 v2, v1, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "random":Ljava/util/Random;
    .end local v1    # "randomSleepTime":I
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v1, p0, Ld/a/b/d/a;->b:Lcom/baidu/duerguard/report/Reporter;

    const/16 v2, 0x7d0

    const-wide/32 v3, 0x5265c00

    const/16 v5, 0xa

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static/range {v1 .. v6}, Lcom/baidu/duerguard/report/Reporter;->a(Lcom/baidu/duerguard/report/Reporter;IJI[Ljava/lang/Object;)V

    .line 130
    return-void
.end method
