.class public final Le/C$a;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public a:Le/q;

.field public b:Ljava/net/Proxy;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/z;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/z;",
            ">;"
        }
    .end annotation
.end field

.field public g:Le/v$a;

.field public h:Ljava/net/ProxySelector;

.field public i:Le/p;

.field public j:Le/d;

.field public k:Le/a/a/c;

.field public l:Ljavax/net/SocketFactory;

.field public m:Ljavax/net/ssl/SSLSocketFactory;

.field public n:Le/a/h/c;

.field public o:Ljavax/net/ssl/HostnameVerifier;

.field public p:Le/g;

.field public q:Le/c;

.field public r:Le/c;

.field public s:Le/l;

.field public t:Le/s;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/C$a;->e:Ljava/util/List;

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/C$a;->f:Ljava/util/List;

    .line 474
    new-instance v0, Le/q;

    invoke-direct {v0}, Le/q;-><init>()V

    iput-object v0, p0, Le/C$a;->a:Le/q;

    .line 475
    sget-object v0, Le/C;->a:Ljava/util/List;

    iput-object v0, p0, Le/C$a;->c:Ljava/util/List;

    .line 476
    sget-object v0, Le/C;->b:Ljava/util/List;

    iput-object v0, p0, Le/C$a;->d:Ljava/util/List;

    .line 477
    sget-object v0, Le/v;->a:Le/v;

    invoke-static {v0}, Le/v;->a(Le/v;)Le/v$a;

    move-result-object v0

    iput-object v0, p0, Le/C$a;->g:Le/v$a;

    .line 478
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Le/C$a;->h:Ljava/net/ProxySelector;

    .line 479
    iget-object v0, p0, Le/C$a;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Le/a/g/a;

    invoke-direct {v0}, Le/a/g/a;-><init>()V

    iput-object v0, p0, Le/C$a;->h:Ljava/net/ProxySelector;

    .line 482
    :cond_0
    sget-object v0, Le/p;->a:Le/p;

    iput-object v0, p0, Le/C$a;->i:Le/p;

    .line 483
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Le/C$a;->l:Ljavax/net/SocketFactory;

    .line 484
    sget-object v0, Le/a/h/d;->a:Le/a/h/d;

    iput-object v0, p0, Le/C$a;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 485
    sget-object v0, Le/g;->a:Le/g;

    iput-object v0, p0, Le/C$a;->p:Le/g;

    .line 486
    sget-object v0, Le/c;->a:Le/c;

    iput-object v0, p0, Le/C$a;->q:Le/c;

    .line 487
    iput-object v0, p0, Le/C$a;->r:Le/c;

    .line 488
    new-instance v0, Le/l;

    invoke-direct {v0}, Le/l;-><init>()V

    iput-object v0, p0, Le/C$a;->s:Le/l;

    .line 489
    sget-object v0, Le/s;->a:Le/s;

    iput-object v0, p0, Le/C$a;->t:Le/s;

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/C$a;->u:Z

    .line 491
    iput-boolean v0, p0, Le/C$a;->v:Z

    .line 492
    iput-boolean v0, p0, Le/C$a;->w:Z

    .line 493
    const/4 v0, 0x0

    iput v0, p0, Le/C$a;->x:I

    .line 494
    const/16 v1, 0x2710

    iput v1, p0, Le/C$a;->y:I

    .line 495
    iput v1, p0, Le/C$a;->z:I

    .line 496
    iput v1, p0, Le/C$a;->A:I

    .line 497
    iput v0, p0, Le/C$a;->B:I

    .line 498
    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Le/C$a;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 567
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Le/a/e;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Le/C$a;->y:I

    .line 568
    return-object p0
.end method

.method public a(Le/z;)Le/C$a;
    .locals 2
    .param p1, "interceptor"    # Le/z;

    .line 993
    if-eqz p1, :cond_0

    .line 994
    iget-object v0, p0, Le/C$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    return-object p0

    .line 993
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)Le/C$a;
    .locals 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 818
    if-eqz p1, :cond_0

    .line 819
    iput-object p1, p0, Le/C$a;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 820
    return-object p0

    .line 818
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hostnameVerifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Le/C;
    .locals 1

    .line 1040
    new-instance v0, Le/C;

    invoke-direct {v0, p0}, Le/C;-><init>(Le/C$a;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Le/C$a;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 596
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Le/a/e;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Le/C$a;->z:I

    .line 597
    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Le/C$a;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 626
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Le/a/e;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Le/C$a;->A:I

    .line 627
    return-object p0
.end method
