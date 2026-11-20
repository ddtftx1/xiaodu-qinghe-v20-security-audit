.class public final Le/a/c/b$a;
.super Lf/i;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public b:J


# direct methods
.method public constructor <init>(Lf/w;)V
    .locals 0
    .param p1, "delegate"    # Lf/w;

    .line 145
    invoke-direct {p0, p1}, Lf/i;-><init>(Lf/w;)V

    .line 146
    return-void
.end method


# virtual methods
.method public a(Lf/f;J)V
    .locals 2
    .param p1, "source"    # Lf/f;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-super {p0, p1, p2, p3}, Lf/i;->a(Lf/f;J)V

    .line 150
    iget-wide v0, p0, Le/a/c/b$a;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Le/a/c/b$a;->b:J

    .line 151
    return-void
.end method
