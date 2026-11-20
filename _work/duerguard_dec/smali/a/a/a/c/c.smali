.class public La/a/a/c/c;
.super Ljava/lang/Object;
.source "InnerHttpsClient.java"

# interfaces
.implements La/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/c/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/HostnameVerifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:[B

.field public c:Ljava/lang/String;

.field public d:Ljava/net/HttpURLConnection;

.field public e:Ljava/io/InputStream;

.field public f:I

.field public g:I

.field public final h:Ljava/net/URL;

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Ljava/util/Map;
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
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, La/a/a/c/c;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x4e20

    iput v0, p0, La/a/a/c/c;->f:I

    .line 3
    iput v0, p0, La/a/a/c/c;->g:I

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/a/c/c;->k:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/c/c;->h:Ljava/net/URL;

    .line 50
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/c/c;->i:Ljava/lang/String;

    .line 51
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, La/a/a/c/c;->j:Z

    return-void
.end method
