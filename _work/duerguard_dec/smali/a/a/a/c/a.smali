.class public final La/a/a/c/a;
.super Ljava/lang/Object;
.source "HttpsClient.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public final d:La/a/a/c/b;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, La/a/a/c/a;->a:I

    .line 3
    iput v0, p0, La/a/a/c/a;->b:I

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/c/a;->c:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/a/c/a;->e:Ljava/util/Map;

    .line 13
    new-instance v0, La/a/a/c/c;

    invoke-direct {v0, p1}, La/a/a/c/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/c/a;->d:La/a/a/c/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)La/a/a/c/a;
    .locals 1

    .line 1
    new-instance v0, La/a/a/c/a;

    invoke-direct {v0, p0}, La/a/a/c/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
