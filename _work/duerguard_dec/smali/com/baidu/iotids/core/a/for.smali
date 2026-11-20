.class public Lcom/baidu/iotids/core/a/for;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public for:Lcom/baidu/iotids/core/a/goto;
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "type"
    .end annotation
.end field

.field public if:Z
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "isEmulator"
    .end annotation
.end field

.field public new:Ljava/lang/String;
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "name"
    .end annotation
.end field

.field public try:Ljava/lang/String;
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "detail"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/iotids/core/a/goto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/iotids/core/a/for;->if:Z

    sget-object v0, Lcom/baidu/iotids/core/a/goto;->if:Lcom/baidu/iotids/core/a/goto;

    iput-object v0, p0, Lcom/baidu/iotids/core/a/for;->for:Lcom/baidu/iotids/core/a/goto;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/iotids/core/a/for;->new:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/iotids/core/a/for;->try:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/iotids/core/a/for;->if:Z

    iput-object p1, p0, Lcom/baidu/iotids/core/a/for;->for:Lcom/baidu/iotids/core/a/goto;

    iput-object p2, p0, Lcom/baidu/iotids/core/a/for;->new:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/iotids/core/a/for;->try:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public if()Ld/b/a/p;
    .locals 2

    new-instance v0, Ld/b/a/k;

    invoke-direct {v0}, Ld/b/a/k;-><init>()V

    invoke-virtual {v0}, Ld/b/a/k;->c()Ld/b/a/k;

    invoke-virtual {v0}, Ld/b/a/k;->a()Ld/b/a/j;

    move-result-object v0

    const-class v1, Lcom/baidu/iotids/core/a/for;

    invoke-virtual {v0, p0, v1}, Ld/b/a/j;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ld/b/a/p;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/p;->c()Ld/b/a/r;

    move-result-object v0

    return-object v0
.end method
