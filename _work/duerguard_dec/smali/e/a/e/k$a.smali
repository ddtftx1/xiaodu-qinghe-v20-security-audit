.class public Le/a/e/k$a;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lf/h;

.field public d:Lf/g;

.field public e:Le/a/e/k$b;

.field public f:Le/a/e/u;

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "client"    # Z

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    sget-object v0, Le/a/e/k$b;->a:Le/a/e/k$b;

    iput-object v0, p0, Le/a/e/k$a;->e:Le/a/e/k$b;

    .line 547
    sget-object v0, Le/a/e/u;->a:Le/a/e/u;

    iput-object v0, p0, Le/a/e/k$a;->f:Le/a/e/u;

    .line 556
    iput-boolean p1, p0, Le/a/e/k$a;->g:Z

    .line 557
    return-void
.end method


# virtual methods
.method public a(I)Le/a/e/k$a;
    .locals 0
    .param p1, "pingIntervalMillis"    # I

    .line 584
    iput p1, p0, Le/a/e/k$a;->h:I

    .line 585
    return-object p0
.end method

.method public a(Le/a/e/k$b;)Le/a/e/k$a;
    .locals 0
    .param p1, "listener"    # Le/a/e/k$b;

    .line 574
    iput-object p1, p0, Le/a/e/k$a;->e:Le/a/e/k$b;

    .line 575
    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Lf/h;Lf/g;)Le/a/e/k$a;
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "source"    # Lf/h;
    .param p4, "sink"    # Lf/g;

    .line 566
    iput-object p1, p0, Le/a/e/k$a;->a:Ljava/net/Socket;

    .line 567
    iput-object p2, p0, Le/a/e/k$a;->b:Ljava/lang/String;

    .line 568
    iput-object p3, p0, Le/a/e/k$a;->c:Lf/h;

    .line 569
    iput-object p4, p0, Le/a/e/k$a;->d:Lf/g;

    .line 570
    return-object p0
.end method

.method public a()Le/a/e/k;
    .locals 1

    .line 589
    new-instance v0, Le/a/e/k;

    invoke-direct {v0, p0}, Le/a/e/k;-><init>(Le/a/e/k$a;)V

    return-object v0
.end method
