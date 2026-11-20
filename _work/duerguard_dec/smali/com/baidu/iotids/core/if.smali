.class public final Lcom/baidu/iotids/core/if;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final case:Ljava/lang/String; = "AppStatus"

.field public static else:Lcom/baidu/iotids/core/if;


# instance fields
.field public for:J

.field public if:Z

.field public new:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public try:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/iotids/core/if;

    invoke-direct {v0}, Lcom/baidu/iotids/core/if;-><init>()V

    sput-object v0, Lcom/baidu/iotids/core/if;->else:Lcom/baidu/iotids/core/if;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/iotids/core/if;->if:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/iotids/core/if;->for:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/iotids/core/if;->new:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/iotids/core/if;->try:Ljava/util/ArrayList;

    return-void
.end method

.method private for()J
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static new()Lcom/baidu/iotids/core/if;
    .locals 1

    sget-object v0, Lcom/baidu/iotids/core/if;->else:Lcom/baidu/iotids/core/if;

    return-object v0
.end method


# virtual methods
.method public break()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/iotids/core/if;->if:Z

    iget-object v0, p0, Lcom/baidu/iotids/core/if;->new:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/baidu/iotids/core/if;->for()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/iotids/core/if;->new:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStatus"

    invoke-static {v1, v0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public case()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/iotids/core/if;->new:Ljava/util/ArrayList;

    return-object v0
.end method

.method public catch()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/iotids/core/if;->if:Z

    iget-object v0, p0, Lcom/baidu/iotids/core/if;->try:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/baidu/iotids/core/if;->for()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/iotids/core/if;->try:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStatus"

    invoke-static {v1, v0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public else()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/iotids/core/if;->try:Ljava/util/ArrayList;

    return-object v0
.end method

.method public for(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/iotids/core/if;->try:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public goto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/iotids/core/if;->if:Z

    return v0
.end method

.method public if()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/iotids/core/if;->for:J

    return-wide v0
.end method

.method public if(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/iotids/core/if;->new:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public this()V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/iotids/core/if;->for()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/iotids/core/if;->for:J

    return-void
.end method

.method public try()J
    .locals 4

    iget-wide v0, p0, Lcom/baidu/iotids/core/if;->for:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/iotids/core/if;->for()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/iotids/core/if;->for:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
