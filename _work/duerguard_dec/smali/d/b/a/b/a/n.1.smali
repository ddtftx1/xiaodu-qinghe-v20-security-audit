.class public Ld/b/a/b/a/n;
.super Ld/b/a/b/a/o$b;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/b/a/o;->a(Ld/b/a/j;Ljava/lang/reflect/Field;Ljava/lang/String;Ld/b/a/c/a;ZZ)Ld/b/a/b/a/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic d:Ljava/lang/reflect/Field;

.field public final synthetic e:Z

.field public final synthetic f:Ld/b/a/x;

.field public final synthetic g:Ld/b/a/j;

.field public final synthetic h:Ld/b/a/c/a;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Ld/b/a/b/a/o;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLd/b/a/x;Ld/b/a/j;Ld/b/a/c/a;Z)V
    .locals 0
    .param p1, "this$0"    # Ld/b/a/b/a/o;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "serialized"    # Z
    .param p4, "deserialized"    # Z

    .line 118
    iput-object p5, p0, Ld/b/a/b/a/n;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Ld/b/a/b/a/n;->e:Z

    iput-object p7, p0, Ld/b/a/b/a/n;->f:Ld/b/a/x;

    iput-object p8, p0, Ld/b/a/b/a/n;->g:Ld/b/a/j;

    iput-object p9, p0, Ld/b/a/b/a/n;->h:Ld/b/a/c/a;

    iput-boolean p10, p0, Ld/b/a/b/a/n;->i:Z

    invoke-direct {p0, p2, p3, p4}, Ld/b/a/b/a/o$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Ld/b/a/d/b;Ljava/lang/Object;)V
    .locals 2
    .param p1, "reader"    # Ld/b/a/d/b;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Ld/b/a/b/a/n;->f:Ld/b/a/x;

    invoke-virtual {v0, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "fieldValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Ld/b/a/b/a/n;->i:Z

    if-nez v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Ld/b/a/b/a/n;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :cond_1
    return-void
.end method

.method public a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 5
    .param p1, "writer"    # Ld/b/a/d/c;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Ld/b/a/b/a/n;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "fieldValue":Ljava/lang/Object;
    iget-boolean v1, p0, Ld/b/a/b/a/n;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld/b/a/b/a/n;->f:Ld/b/a/x;

    goto :goto_0

    :cond_0
    new-instance v1, Ld/b/a/b/a/v;

    iget-object v2, p0, Ld/b/a/b/a/n;->g:Ld/b/a/j;

    iget-object v3, p0, Ld/b/a/b/a/n;->f:Ld/b/a/x;

    iget-object v4, p0, Ld/b/a/b/a/n;->h:Ld/b/a/c/a;

    .line 124
    invoke-virtual {v4}, Ld/b/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ld/b/a/b/a/v;-><init>(Ld/b/a/j;Ld/b/a/x;Ljava/lang/reflect/Type;)V

    :goto_0
    nop

    .line 125
    .local v1, "t":Ld/b/a/x;
    invoke-virtual {v1, p1, v0}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Ld/b/a/b/a/o$b;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 136
    :cond_0
    iget-object v0, p0, Ld/b/a/b/a/n;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, "fieldValue":Ljava/lang/Object;
    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
