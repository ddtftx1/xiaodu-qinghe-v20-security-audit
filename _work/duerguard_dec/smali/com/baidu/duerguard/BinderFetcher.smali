.class public final Lcom/baidu/duerguard/BinderFetcher;
.super Ljava/lang/Object;
.source "BinderFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/duerguard/BinderFetcher$BinderCursor;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 26
    const-string v0, "b"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/duerguard/BinderFetcher;->a:[Ljava/lang/String;

    .line 30
    const-string v0, "main"

    filled-new-array {v0}, [Ljava/lang/String;

    return-void
.end method
