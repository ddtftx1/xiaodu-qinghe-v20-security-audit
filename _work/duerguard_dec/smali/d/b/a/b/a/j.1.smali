.class public final Ld/b/a/b/a/j;
.super Ld/b/a/d/c;
.source "JsonTreeWriter.java"


# static fields
.field public static final l:Ljava/io/Writer;

.field public static final m:Ld/b/a/t;


# instance fields
.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/b/a/p;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/String;

.field public p:Ld/b/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ld/b/a/b/a/i;

    invoke-direct {v0}, Ld/b/a/b/a/i;-><init>()V

    sput-object v0, Ld/b/a/b/a/j;->l:Ljava/io/Writer;

    .line 46
    new-instance v0, Ld/b/a/t;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ld/b/a/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld/b/a/b/a/j;->m:Ld/b/a/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    sget-object v0, Ld/b/a/b/a/j;->l:Ljava/io/Writer;

    invoke-direct {p0, v0}, Ld/b/a/d/c;-><init>(Ljava/io/Writer;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    .line 55
    sget-object v0, Ld/b/a/q;->a:Ld/b/a/q;

    iput-object v0, p0, Ld/b/a/b/a/j;->p:Ld/b/a/p;

    .line 59
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Ld/b/a/d/c;
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Ld/b/a/b/a/j;->s()Ld/b/a/d/c;

    return-object p0

    .line 166
    :cond_0
    new-instance v0, Ld/b/a/t;

    invoke-direct {v0, p1}, Ld/b/a/t;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Ld/b/a/b/a/j;->a(Ld/b/a/p;)V

    .line 167
    return-object p0
.end method

.method public a(Ljava/lang/Number;)Ld/b/a/d/c;
    .locals 5
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0}, Ld/b/a/b/a/j;->s()Ld/b/a/d/c;

    return-object p0

    .line 188
    :cond_0
    invoke-virtual {p0}, Ld/b/a/d/c;->q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 190
    .local v0, "d":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    .end local v0    # "d":D
    :cond_2
    :goto_0
    new-instance v0, Ld/b/a/t;

    invoke-direct {v0, p1}, Ld/b/a/t;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Ld/b/a/b/a/j;->a(Ld/b/a/p;)V

    .line 196
    return-object p0
.end method

.method public final a(Ld/b/a/p;)V
    .locals 2
    .param p1, "value"    # Ld/b/a/p;

    .line 76
    iget-object v0, p0, Ld/b/a/b/a/j;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p1}, Ld/b/a/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld/b/a/d/c;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p0}, Ld/b/a/b/a/j;->t()Ld/b/a/p;

    move-result-object v0

    check-cast v0, Ld/b/a/r;

    .line 79
    .local v0, "object":Ld/b/a/r;
    iget-object v1, p0, Ld/b/a/b/a/j;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ld/b/a/r;->a(Ljava/lang/String;Ld/b/a/p;)V

    .line 81
    .end local v0    # "object":Ld/b/a/r;
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ld/b/a/b/a/j;->o:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    iput-object p1, p0, Ld/b/a/b/a/j;->p:Ld/b/a/p;

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p0}, Ld/b/a/b/a/j;->t()Ld/b/a/p;

    move-result-object v0

    .line 86
    .local v0, "element":Ld/b/a/p;
    instance-of v1, v0, Ld/b/a/m;

    if-eqz v1, :cond_4

    .line 87
    move-object v1, v0

    check-cast v1, Ld/b/a/m;

    invoke-virtual {v1, p1}, Ld/b/a/m;->a(Ld/b/a/p;)V

    .line 92
    .end local v0    # "element":Ld/b/a/p;
    :goto_0
    return-void

    .line 89
    .restart local v0    # "element":Ld/b/a/p;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public b(Ljava/lang/String;)Ld/b/a/d/c;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/b/a/b/a/j;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Ld/b/a/b/a/j;->t()Ld/b/a/p;

    move-result-object v0

    .line 137
    .local v0, "element":Ld/b/a/p;
    instance-of v1, v0, Ld/b/a/r;

    if-eqz v1, :cond_0

    .line 138
    iput-object p1, p0, Ld/b/a/b/a/j;->o:Ljava/lang/String;

    .line 139
    return-object p0

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 134
    .end local v0    # "element":Ld/b/a/p;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    sget-object v1, Ld/b/a/b/a/j;->m:Ld/b/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Z)Ld/b/a/d/c;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance v0, Ld/b/a/t;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/b/a/t;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Ld/b/a/b/a/j;->a(Ld/b/a/p;)V

    .line 159
    return-object p0
.end method

.method public e(Ljava/lang/String;)Ld/b/a/d/c;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    if-nez p1, :cond_0

    .line 146
    invoke-virtual {p0}, Ld/b/a/b/a/j;->s()Ld/b/a/d/c;

    return-object p0

    .line 148
    :cond_0
    new-instance v0, Ld/b/a/t;

    invoke-direct {v0, p1}, Ld/b/a/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ld/b/a/b/a/j;->a(Ld/b/a/p;)V

    .line 149
    return-object p0
.end method

.method public f(J)Ld/b/a/d/c;
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Ld/b/a/t;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/b/a/t;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Ld/b/a/b/a/j;->a(Ld/b/a/p;)V

    .line 180
    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    return-void
.end method

.method public k()Ld/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Ld/b/a/m;

    invoke-direct {v0}, Ld/b/a/m;-><init>()V

    .line 96
    .local v0, "array":Ld/b/a/m;
    invoke-virtual {p0, v0}, Ld/b/a/b/a/j;->a(Ld/b/a/p;)V

    .line 97
    iget-object v1, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-object p0
.end method

.method public l()Ld/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ld/b/a/r;

    invoke-direct {v0}, Ld/b/a/r;-><init>()V

    .line 115
    .local v0, "object":Ld/b/a/r;
    invoke-virtual {p0, v0}, Ld/b/a/b/a/j;->a(Ld/b/a/p;)V

    .line 116
    iget-object v1, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object p0
.end method

.method public m()Ld/b/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/b/a/b/a/j;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p0}, Ld/b/a/b/a/j;->t()Ld/b/a/p;

    move-result-object v0

    .line 106
    .local v0, "element":Ld/b/a/p;
    instance-of v1, v0, Ld/b/a/m;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    return-object p0

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 103
    .end local v0    # "element":Ld/b/a/p;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public n()Ld/b/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/b/a/b/a/j;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 124
    invoke-virtual {p0}, Ld/b/a/b/a/j;->t()Ld/b/a/p;

    move-result-object v0

    .line 125
    .local v0, "element":Ld/b/a/p;
    instance-of v1, v0, Ld/b/a/r;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    return-object p0

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 122
    .end local v0    # "element":Ld/b/a/p;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public s()Ld/b/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    sget-object v0, Ld/b/a/q;->a:Ld/b/a/q;

    invoke-virtual {p0, v0}, Ld/b/a/b/a/j;->a(Ld/b/a/p;)V

    .line 154
    return-object p0
.end method

.method public final t()Ld/b/a/p;
    .locals 2

    .line 72
    iget-object v0, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/b/a/p;

    return-object v0
.end method

.method public v()Ld/b/a/p;
    .locals 3

    .line 65
    iget-object v0, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Ld/b/a/b/a/j;->p:Ld/b/a/p;

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/b/a/b/a/j;->n:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
