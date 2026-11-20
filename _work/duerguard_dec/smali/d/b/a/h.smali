.class public final Ld/b/a/h;
.super Ld/b/a/x;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/j;->a(Ld/b/a/x;)Ld/b/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/b/a/x<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ld/b/a/x;


# direct methods
.method public constructor <init>(Ld/b/a/x;)V
    .locals 0

    .line 353
    iput-object p1, p0, Ld/b/a/h;->a:Ld/b/a/x;

    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-virtual {p0, p1}, Ld/b/a/h;->a(Ld/b/a/d/b;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/b/a/d/b;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 4
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Ld/b/a/h;->a:Ld/b/a/x;

    invoke-virtual {v0, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 359
    .local v0, "value":Ljava/lang/Number;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object v1
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ld/b/a/h;->a(Ld/b/a/d/c;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method public a(Ld/b/a/d/c;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 3
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "value"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Ld/b/a/h;->a:Ld/b/a/x;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 356
    return-void
.end method
