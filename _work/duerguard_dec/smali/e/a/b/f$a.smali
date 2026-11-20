.class public final Le/a/b/f$a;
.super Ljava/lang/ref/WeakReference;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Le/a/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/b/f;Ljava/lang/Object;)V
    .locals 0
    .param p1, "referent"    # Le/a/b/f;
    .param p2, "callStackTrace"    # Ljava/lang/Object;

    .line 537
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 538
    iput-object p2, p0, Le/a/b/f$a;->a:Ljava/lang/Object;

    .line 539
    return-void
.end method
