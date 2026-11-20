.class public Le/G;
.super Le/H;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/H;->a(Le/A;[BII)Le/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/A;

.field public final synthetic b:I

.field public final synthetic c:[B

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Le/A;I[BI)V
    .locals 0

    .line 88
    iput-object p1, p0, Le/G;->a:Le/A;

    iput p2, p0, Le/G;->b:I

    iput-object p3, p0, Le/G;->c:[B

    iput p4, p0, Le/G;->d:I

    invoke-direct {p0}, Le/H;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 94
    iget v0, p0, Le/G;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Lf/g;)V
    .locals 3
    .param p1, "sink"    # Lf/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Le/G;->c:[B

    iget v1, p0, Le/G;->d:I

    iget v2, p0, Le/G;->b:I

    invoke-interface {p1, v0, v1, v2}, Lf/g;->write([BII)Lf/g;

    .line 99
    return-void
.end method

.method public b()Le/A;
    .locals 1

    .line 90
    iget-object v0, p0, Le/G;->a:Le/A;

    return-object v0
.end method
