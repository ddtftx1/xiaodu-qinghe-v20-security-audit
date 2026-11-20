.class public abstract Le/v;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/v$a;
    }
.end annotation


# static fields
.field public static final a:Le/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Le/t;

    invoke-direct {v0}, Le/t;-><init>()V

    sput-object v0, Le/v;->a:Le/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/v;)Le/v$a;
    .locals 1
    .param p0, "listener"    # Le/v;

    .line 57
    new-instance v0, Le/u;

    invoke-direct {v0, p0}, Le/u;-><init>(Le/v;)V

    return-object v0
.end method


# virtual methods
.method public a(Le/f;)V
    .locals 0
    .param p1, "call"    # Le/f;

    .line 270
    return-void
.end method

.method public a(Le/f;J)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "byteCount"    # J

    .line 215
    return-void
.end method

.method public a(Le/f;Le/F;)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "request"    # Le/F;

    .line 194
    return-void
.end method

.method public a(Le/f;Le/I;)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "response"    # Le/I;

    .line 238
    return-void
.end method

.method public a(Le/f;Le/j;)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "connection"    # Le/j;

    .line 160
    return-void
.end method

.method public a(Le/f;Le/w;)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "handshake"    # Le/w;

    .line 128
    return-void
.end method

.method public a(Le/f;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "ioe"    # Ljava/io/IOException;

    .line 278
    return-void
.end method

.method public a(Le/f;Ljava/lang/String;)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "domainName"    # Ljava/lang/String;

    .line 85
    return-void
.end method

.method public a(Le/f;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p3, "inetAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    return-void
.end method

.method public a(Le/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;

    .line 105
    return-void
.end method

.method public a(Le/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lokhttp3/Protocol;

    .line 139
    return-void
.end method

.method public a(Le/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lokhttp3/Protocol;
    .param p5, "ioe"    # Ljava/io/IOException;

    .line 151
    return-void
.end method

.method public b(Le/f;)V
    .locals 0
    .param p1, "call"    # Le/f;

    .line 73
    return-void
.end method

.method public b(Le/f;J)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "byteCount"    # J

    .line 261
    return-void
.end method

.method public b(Le/f;Le/j;)V
    .locals 0
    .param p1, "call"    # Le/f;
    .param p2, "connection"    # Le/j;

    .line 171
    return-void
.end method

.method public c(Le/f;)V
    .locals 0
    .param p1, "call"    # Le/f;

    .line 207
    return-void
.end method

.method public d(Le/f;)V
    .locals 0
    .param p1, "call"    # Le/f;

    .line 183
    return-void
.end method

.method public e(Le/f;)V
    .locals 0
    .param p1, "call"    # Le/f;

    .line 250
    return-void
.end method

.method public f(Le/f;)V
    .locals 0
    .param p1, "call"    # Le/f;

    .line 227
    return-void
.end method

.method public g(Le/f;)V
    .locals 0
    .param p1, "call"    # Le/f;

    .line 120
    return-void
.end method
