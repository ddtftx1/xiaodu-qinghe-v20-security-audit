.class public Le/a/e/n;
.super Le/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/k$d;->a(ZLe/a/e/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/k$d;


# direct methods
.method public varargs constructor <init>(Le/a/e/k$d;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Le/a/e/k$d;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 722
    iput-object p1, p0, Le/a/e/n;->b:Le/a/e/k$d;

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 724
    iget-object v0, p0, Le/a/e/n;->b:Le/a/e/k$d;

    iget-object v0, v0, Le/a/e/k$d;->c:Le/a/e/k;

    iget-object v1, v0, Le/a/e/k;->c:Le/a/e/k$b;

    invoke-virtual {v1, v0}, Le/a/e/k$b;->a(Le/a/e/k;)V

    .line 725
    return-void
.end method
