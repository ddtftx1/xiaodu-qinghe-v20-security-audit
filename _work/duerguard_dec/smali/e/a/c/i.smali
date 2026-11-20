.class public final Le/a/c/i;
.super Le/K;
.source "RealResponseBody.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Lf/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLf/h;)V
    .locals 0
    .param p1, "contentTypeString"    # Ljava/lang/String;
    .param p2, "contentLength"    # J
    .param p4, "source"    # Lf/h;

    .line 33
    invoke-direct {p0}, Le/K;-><init>()V

    .line 34
    iput-object p1, p0, Le/a/c/i;->a:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Le/a/c/i;->b:J

    .line 36
    iput-object p4, p0, Le/a/c/i;->c:Lf/h;

    .line 37
    return-void
.end method


# virtual methods
.method public k()J
    .locals 2

    .line 44
    iget-wide v0, p0, Le/a/c/i;->b:J

    return-wide v0
.end method

.method public l()Le/A;
    .locals 1

    .line 40
    iget-object v0, p0, Le/a/c/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/A;->b(Ljava/lang/String;)Le/A;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public m()Lf/h;
    .locals 1

    .line 48
    iget-object v0, p0, Le/a/c/i;->c:Lf/h;

    return-object v0
.end method
