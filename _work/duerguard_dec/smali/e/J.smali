.class public Le/J;
.super Le/K;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/K;->a(Le/A;JLf/h;)Le/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/A;

.field public final synthetic b:J

.field public final synthetic c:Lf/h;


# direct methods
.method public constructor <init>(Le/A;JLf/h;)V
    .locals 0

    .line 224
    iput-object p1, p0, Le/J;->a:Le/A;

    iput-wide p2, p0, Le/J;->b:J

    iput-object p4, p0, Le/J;->c:Lf/h;

    invoke-direct {p0}, Le/K;-><init>()V

    return-void
.end method


# virtual methods
.method public k()J
    .locals 2

    .line 230
    iget-wide v0, p0, Le/J;->b:J

    return-wide v0
.end method

.method public l()Le/A;
    .locals 1

    .line 226
    iget-object v0, p0, Le/J;->a:Le/A;

    return-object v0
.end method

.method public m()Lf/h;
    .locals 1

    .line 234
    iget-object v0, p0, Le/J;->c:Lf/h;

    return-object v0
.end method
