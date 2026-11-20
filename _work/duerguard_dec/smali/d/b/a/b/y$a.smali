.class public final Ld/b/a/b/y$a;
.super Ljava/io/Writer;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/b/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/a/b/y$a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Appendable;

.field public final b:Ld/b/a/b/y$a$a;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .line 87
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 85
    new-instance v0, Ld/b/a/b/y$a$a;

    invoke-direct {v0}, Ld/b/a/b/y$a$a;-><init>()V

    iput-object v0, p0, Ld/b/a/b/y$a;->b:Ld/b/a/b/y$a$a;

    .line 88
    iput-object p1, p0, Ld/b/a/b/y$a;->a:Ljava/lang/Appendable;

    .line 89
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 101
    return-void
.end method

.method public flush()V
    .locals 0

    .line 100
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Ld/b/a/b/y$a;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 98
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Ld/b/a/b/y$a;->b:Ld/b/a/b/y$a$a;

    iput-object p1, v0, Ld/b/a/b/y$a$a;->a:[C

    .line 93
    iget-object v1, p0, Ld/b/a/b/y$a;->a:Ljava/lang/Appendable;

    add-int v2, p2, p3

    invoke-interface {v1, v0, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 94
    return-void
.end method
